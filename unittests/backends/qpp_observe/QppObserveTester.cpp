/*******************************************************************************
 * Copyright (c) 2022 - 2025 NVIDIA Corporation & Affiliates.                  *
 * All rights reserved.                                                        *
 *                                                                             *
 * This source code and the accompanying materials are made available under    *
 * the terms of the Apache License 2.0 which accompanies this distribution.    *
 ******************************************************************************/

#include "CUDAQTestUtils.h"
#include "QPPObserveBackend.cpp"
#include "cudaq/algorithm.h"
#include <gtest/gtest.h>

CUDAQ_TEST(QPPBackendTester, checkBackendObserve) {

  cudaq::QppObserveTester qpp;
  auto q0 = qpp.allocateQubit();
  auto q1 = qpp.allocateQubit();

  qpp.x(q0);
  qpp.ry(.59, q1);
  qpp.x({q1}, q0);

  cudaq::spin_op h =
      5.907 - 2.1433 * cudaq::spin_op::x(0) * cudaq::spin_op::x(1) -
      2.1433 * cudaq::spin_op::y(0) * cudaq::spin_op::y(1) +
      .21829 * cudaq::spin_op::z(0) - 6.125 * cudaq::spin_op::z(1);

  auto expVal = qpp.observe(h);
  EXPECT_NEAR(expVal.expectation(), -1.74, 1e-2);
  EXPECT_NEAR(expVal.raw_data().expectation(h.to_string()), -1.74, 1e-2);

  struct ansatzTest {
    auto operator()(double theta) __qpu__ {
      // Programmer would just write this...
      cudaq::qvector q(2);
      x(q[0]);
      ry(theta, q[1]);
      x<cudaq::ctrl>(q[1], q[0]);
    }
  };

  double energy = cudaq::observe(ansatzTest{}, h, .59);
  EXPECT_NEAR(energy, -1.74, 1e-2);
  double energy_async = cudaq::observe_async(ansatzTest{}, h, .59).get();
  EXPECT_NEAR(energy_async, -1.74, 1e-2);
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
