/*******************************************************************************
 * Copyright (c) 2022 - 2024 NVIDIA Corporation & Affiliates.                  *
 * All rights reserved.                                                        *
 *                                                                             *
 * This source code and the accompanying materials are made available under    *
 * the terms of the Apache License 2.0 which accompanies this distribution.    *
 ******************************************************************************/

#include "PassDetails.h"
#include "cudaq/Optimizer/Dialect/CC/CCOps.h"
#include "cudaq/Optimizer/Dialect/Quake/QuakeInterfaces.h"
#include "cudaq/Optimizer/Dialect/Quake/QuakeOps.h"
#include "cudaq/Optimizer/Dialect/Quake/QuakeTypes.h"
#include "cudaq/Optimizer/Transforms/Passes.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/Passes.h"
#include <algorithm>
#include <cstddef>
#include <iostream>
#include <llvm/ADT/MapVector.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/ADT/SetVector.h>
#include <llvm/Support/Casting.h>
#include <mlir/IR/BuiltinTypes.h>
#include <mlir/IR/PatternMatch.h>
#include <mlir/IR/ValueRange.h>
#include <mlir/Support/LLVM.h>
#include <mlir/Support/LogicalResult.h>
#include <set>
#include <unordered_map>

namespace cudaq::opt {
#define GEN_PASS_DEF_MEASUREMENTMAPPING
#include "cudaq/Optimizer/Transforms/Passes.h.inc"
} // namespace cudaq::opt

#define DEBUG_TYPE "measurement-mapping"

using namespace mlir;

namespace {
class MeasurementMappingPass
    : public cudaq::opt::impl::MeasurementMappingBase<MeasurementMappingPass> {
private:
public:
  using MeasurementMappingBase::MeasurementMappingBase;

  std::size_t allocationSize(quake::AllocaOp alloc) {
    if (isa<quake::RefType>(alloc.getType()))
      return 1;
    auto veq = cast<quake::VeqType>(alloc.getType());
    assert(veq.hasSpecifiedSize() && "veq type must have constant size");
    return veq.getSize();
  }

  void runOnOperation() override {
    auto func = getOperation();
    LLVM_DEBUG(llvm::dbgs() << "Function before measurement mapping:\n"
                            << func << "\n\n");

    // Scan for references to qubits and measurements.
    SmallVector<quake::ExtractRefOp> extractRefs;
    SmallVector<quake::MeasurementInterface> measurements;

    for (auto &block : func.getRegion())
      for (auto &op : block)
        if (isa<quake::ExtractRefOp>(op))
          extractRefs.push_back(dyn_cast<quake::ExtractRefOp>(op));
        else if (isa<quake::MeasurementInterface>(op))
          measurements.push_back(dyn_cast<quake::MeasurementInterface>(op));

    // Check that all qubit references point to the same vector.
    if (!llvm::all_of(extractRefs, [&](auto &extractRef) {
          auto vecOp = llvm::dyn_cast_or_null<quake::AllocaOp>(
              extractRef.getVeq().getDefiningOp());
          return vecOp;
        })) {
      LLVM_DEBUG(llvm::dbgs()
                 << "Not all qubit references point to the same vector.\n");
      signalPassFailure();
      return;
    }

    // If there are no qubit references or measurements then there is nothing
    // to.
    if (extractRefs.empty() && measurements.empty()) {
      LLVM_DEBUG(llvm::dbgs()
                 << "No qubit references or measurements found.\n");
      return;
    }

    // If there are no qubit references but there are measurements then we can't
    // interract with the qubits.
    if (extractRefs.empty() && !measurements.empty()) {
      LLVM_DEBUG(llvm::dbgs() << "No qubit references found.\n");
      signalPassFailure();
      return;
    }

    llvm::sort(extractRefs, [](auto &lhs, auto &rhs) {
      return lhs.getRawIndex() < rhs.getRawIndex();
    });

    // Check that all qubits can be referenced.
    auto vecOp =
        dyn_cast<quake::AllocaOp>(extractRefs.front().getVeq().getDefiningOp());
    auto numQubits = allocationSize(vecOp);

    if (extractRefs.size() != numQubits) {
      LLVM_DEBUG(llvm::dbgs() << "Number of extracted references does not "
                                 "match the number of allocated qubits.\n");
      signalPassFailure();
      return;
    }
    for (std::size_t i = 0; i < numQubits; i++) {
      if (extractRefs[i].getRawIndex() != i) {
        LLVM_DEBUG(llvm::dbgs() << "Qubit " << i << " is not referenced.\n");
        signalPassFailure();
        return;
      }
    }

    SetVector<unsigned> mQubits(measurementQubits.begin(),
                                measurementQubits.end());
    mQubits.remove_if([&](unsigned qubit) { return qubit >= numQubits; });

    std::unordered_map<unsigned, bool> qubitIsMeasured;
    for (auto qubit : mQubits) {
      qubitIsMeasured[qubit] = false;
    }

    // Add necessary swaps and sets for the mapping.
    std::reverse(measurements.begin(), measurements.end());
    for (auto &measurement : measurements) {
      auto targets = measurement.getTargets();

      if (targets.size() != 1) {
        LLVM_DEBUG(llvm::dbgs()
                   << "Measurement should have exactly one target.\n");
        signalPassFailure();
        return;
      }

      for (const auto &target : targets) {
        if (isa<quake::RefType>(target.getType())) {
          auto refOp = dyn_cast<quake::ExtractRefOp>(target.getDefiningOp());
          auto index = refOp.getRawIndex();

          // Find the closest qubit from the mQubits
          auto targetQubitIndex = *std::min_element(
              mQubits.begin(), mQubits.end(), [&](unsigned a, unsigned b) {
                return std::abs(static_cast<int>(a) - static_cast<int>(index)) <
                       std::abs(static_cast<int>(b) - static_cast<int>(index));
              });
          auto targetRefOp = extractRefs[targetQubitIndex];
          std::cout << "Closest measured qubit to qubit " << index << " is "
                    << targetQubitIndex << ".\n";

          OpBuilder builder(measurement);

          // If the closest measurement qubit is not the same as the current
          // qubit, then swap them.
          if (targetQubitIndex != index) {

            // TODO: Support other topologies than linear.
            int dir = targetQubitIndex < index ? -1 : 1;
            bool reverseSwaps = qubitIsMeasured[targetQubitIndex];
            for (unsigned i = index; i != targetQubitIndex; i += dir) {
              auto qubitA = extractRefs[i].getResult();
              auto qubitB = extractRefs[i + dir].getResult();
              builder.setInsertionPoint(measurement);
              builder.create<quake::SwapOp>(measurement.getLoc(),
                                            ValueRange{qubitA, qubitB});

              // TODO: Optimize to avoid unnecessary swaps.
              if (reverseSwaps) {
                builder.setInsertionPointAfter(measurement);
                builder.create<quake::SwapOp>(measurement.getLoc(),
                                              ValueRange{qubitB, qubitA});
              }
            }
          }

          // If this is not the last measurement of the qubit, then reset it.
          if (qubitIsMeasured[targetQubitIndex]) {
            builder.setInsertionPointAfter(measurement);
            builder.create<quake::ResetOp>(measurement.getLoc(), TypeRange{},
                                           targetRefOp.getResult());
          }

          // Replace the measurement target with the closest measurement
          // qubit.
          auto measurementOp = measurement.getOperation();
          auto newTarget = targetRefOp.getResult();
          measurementOp->replaceUsesOfWith(target, newTarget);

          qubitIsMeasured[targetQubitIndex] = true;
        }
      }
    }
  }
};
} // namespace