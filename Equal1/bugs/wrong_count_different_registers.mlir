// -----// IR Dump Before LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before ConstPropComplex (const-prop-complex) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before CSE (cse) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before LiftArrayAlloc (lift-array-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before GlobalizeArrayValues (globalize-array-values) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before StatePreparation (state-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before UnitarySynthesis (unitary-synthesis) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before ApplySpecialization (apply-op-specialization) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before ConvertToDirectCalls (indirect-to-direct-calls) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Inliner (inline) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before CheckKernelCalls (check-kernel-calls) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before ExpandMeasurements (expand-measurements) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before LoopNormalize (cc-loop-normalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before UpdateRegisterNames (update-register-names) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before LowerToCFG (lower-to-cfg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before MultiControlDecompositionPass (multicontrol-decomposition) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump After CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before ApplyControlNegations (apply-control-negations) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump Before QuakeAddDeallocs (add-dealloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    return
  }
}


// -----// IR Dump After QuakeAddDeallocs (add-dealloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    cf.br ^bb1
  ^bb1:  // pred: ^bb0
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    cf.br ^bb1
  ^bb1:  // pred: ^bb0
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before FactorQuantumAllocations (factor-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %3 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After FactorQuantumAllocations (factor-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    quake.x [%0] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%0] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %0 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %3 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %3 : !quake.ref
    return
  }
}


// -----// IR Dump Before MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    quake.x [%0] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%0] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %0 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %3 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %3 : !quake.ref
    return
  }
}


// -----// IR Dump After MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before AddWireset (add-wireset) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After AddWireset (add-wireset) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before AssignWireIndices (assign-wire-indices) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After AssignWireIndices (assign-wire-indices) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before RegToMem (regtomem) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %6#0 name "reg0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %measOut_4, %wires_5 = quake.mz %3 name "reg3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After RegToMem (regtomem) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    quake.x [%0] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%0] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %0 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %3 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %3 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %0 : !quake.ref
    return
  }
}


// -----// IR Dump Before CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    quake.x [%0] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%0] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %0 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %2 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %3 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %3 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %0 : !quake.ref
    return
  }
}


// -----// IR Dump After CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %2 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %3 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before DelayMeasurements (delay-measurements) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %2 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %3 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before MeasurementMapping (measurement-mapping) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    %measOut_0 = quake.mz %2 name "reg1" : (!quake.ref) -> !quake.measure
    %measOut_1 = quake.mz %3 name "reg2" : (!quake.ref) -> !quake.measure
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After MeasurementMapping (measurement-mapping) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.swap %2, %1 : (!quake.ref, !quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.swap %3, %4 : (!quake.ref, !quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.swap %4, %3 : (!quake.ref, !quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before BasisConversionPass (basis-conversion) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.swap %2, %1 : (!quake.ref, !quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.swap %3, %4 : (!quake.ref, !quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.swap %4, %3 : (!quake.ref, !quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After BasisConversionPass (basis-conversion) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %cst = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_0 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_0) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_1 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_1) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_2 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_2) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_3 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_3) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    %cst_4 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_4) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_5 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_5) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %cst_6 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_6) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_7 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_7) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_8 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_8) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_9 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_9) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_10 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    %cst_11 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_11) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_12 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_12) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_13 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_13) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    %cst_14 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_14) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %cst_15 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_15) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_16 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_16) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_17 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    %cst_18 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_18) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    %cst_19 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_19) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %cst_20 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_20) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_21 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_21) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_22 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_22) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    %cst_23 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_23) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_24 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %cst = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_0 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_0) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_1 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_1) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_2 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_2) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_3 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_3) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    %cst_4 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_4) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_5 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_5) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %cst_6 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_6) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_7 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_7) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_8 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_8) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_9 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_9) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_10 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    %cst_11 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_11) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_12 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_12) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_13 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_13) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    %cst_14 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_14) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %cst_15 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_15) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_16 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_16) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_17 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    %cst_18 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_18) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    %cst_19 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_19) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %cst_20 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_20) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_21 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_21) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_22 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_22) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    %cst_23 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_23) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_24 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before SymbolDCE (symbol-dce) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After SymbolDCE (symbol-dce) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ApplyControlNegations (apply-control-negations) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ConvertToDirectCalls (indirect-to-direct-calls) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Inliner (inline) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CheckKernelCalls (check-kernel-calls) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before UnwindLowering (unwind-lowering) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ApplySpecialization (apply-op-specialization) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ExpandMeasurements (expand-measurements) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before QuakeAddDeallocs (add-dealloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before QuakeAddMetadata (quake-add-metadata) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before LoopNormalize (cc-loop-normalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before LowerToCFG (lower-to-cfg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c0_i64 = arith.constant 0 : i64
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.subveq %0, %c0_i64, %c3_i64 : (!quake.veq<4>, i64, i64) -> !quake.veq<4>
    %2 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %4 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %5 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%2] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %2 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%3] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %2 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%5] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.z [%4] %5 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%5] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %5 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %5 : (!quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.z [%4] %5 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%5] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.z [%4] %5 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %5 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %c0_i64 = arith.constant 0 : i64
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.subveq %0, %c0_i64, %c3_i64 : (!quake.veq<4>, i64, i64) -> !quake.veq<4>
    %2 = quake.extract_ref %0[%c0_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %3 = quake.extract_ref %0[%c1_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %4 = quake.extract_ref %0[%c2_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %5 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%2] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %2 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%3] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %2 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%5] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.z [%4] %5 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%5] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %5 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %5 : (!quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.z [%4] %5 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%5] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    quake.z [%4] %5 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %5 : (f64, !quake.ref) -> ()
    quake.z %5 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %5 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ConvertMathToFuncs (convert-math-to-funcs) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before SymbolDCE (symbol-dce) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ConvertToQIR (quake-to-qir) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%1] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %1 name "reg0" : (!quake.ref) -> !quake.measure
    quake.reset %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut_0 = quake.mz %1 name "reg1" : (!quake.ref) -> !quake.measure
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %measOut_1 = quake.mz %4 name "reg2" : (!quake.ref) -> !quake.measure
    quake.reset %4 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%4] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    %measOut_2 = quake.mz %4 name "reg3" : (!quake.ref) -> !quake.measure
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After ConvertToQIR (quake-to-qir) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfilePrep (qir-profile-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump After QIRToQIRProfilePrep (qir-profile-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__ry__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__z__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__mz__to__register__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__reset__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cnot__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__result_record_output) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__read_result__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__mz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cz) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cnot) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__qubit_release_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__reset) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__mz__to__register) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @invokeWithControlQubits) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__z__ctl) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__z) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__ry) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__array_get_element_ptr_1d) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__qubit_allocate_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint"} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %27 = llvm.load %26 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %28 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %29 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%29, %28, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %30 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%31, %30, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %36 = llvm.call @__quantum__qis__mz__to__register(%6, %35) {registerName = "reg1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %38 = llvm.load %37 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %39 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %40 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%40, %39, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %41 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %42 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%42, %41, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %43 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%44, %43, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %45 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%18, %46) {registerName = "reg2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %50 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%51, %50, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %52 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%53, %52, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %54 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %55 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%55, %54, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %56 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %58 = llvm.call @__quantum__qis__mz__to__register(%18, %57) {registerName = "reg3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %59 = llvm.bitcast %58 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %60 = llvm.load %59 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump After QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) {StartingOffset = 0 : i64} : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0", result.index = 0 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %28 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%27, %29) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %30 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %31 = llvm.load %30 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %35 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%35, %34, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %36 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %37 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%37, %36, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %38 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %40 = llvm.call @__quantum__qis__mz__to__register(%6, %39) {registerName = "reg1", result.index = 1 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %41 = llvm.mlir.constant(1 : i64) : i64
    %42 = llvm.inttoptr %41 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %43 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%42, %44) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %45 = llvm.bitcast %40 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %46 = llvm.load %45 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %47 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %48 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%48, %47, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %49 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %50 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%50, %49, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %51 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%52, %51, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %53 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg2", result.index = 2 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.mlir.constant(2 : i64) : i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %58 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%57, %59) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %60 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %61 = llvm.load %60 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %62 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %63 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%63, %62, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %64 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %65 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%65, %64, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %66 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %67 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%67, %66, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %68 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %70 = llvm.call @__quantum__qis__mz__to__register(%18, %69) {registerName = "reg3", result.index = 3 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %73 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %74 = llvm.bitcast %73 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%72, %74) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %75 = llvm.bitcast %70 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %76 = llvm.load %75 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfile (convert-to-qir-profile) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.call @__quantum__rt__qubit_allocate_array(%1) {StartingOffset = 0 : i64} : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %11) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %15 = llvm.mlir.constant(3 : i64) : i64
    %16 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%2, %15) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %20 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%20, %19, %6, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %22 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%22, %21, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %23 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %25 = llvm.call @__quantum__qis__mz__to__register(%6, %24) {registerName = "reg0", result.index = 0 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %28 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%27, %29) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %30 = llvm.bitcast %25 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %31 = llvm.load %30 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %32 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %33 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%33, %32, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %34 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %35 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%35, %34, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %36 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %37 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%37, %36, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %38 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %40 = llvm.call @__quantum__qis__mz__to__register(%6, %39) {registerName = "reg1", result.index = 1 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %41 = llvm.mlir.constant(1 : i64) : i64
    %42 = llvm.inttoptr %41 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %43 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%42, %44) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %45 = llvm.bitcast %40 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %46 = llvm.load %45 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %47 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %48 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%48, %47, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %49 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %50 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%50, %49, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %51 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%52, %51, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %53 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg2", result.index = 2 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.mlir.constant(2 : i64) : i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %58 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%57, %59) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %60 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %61 = llvm.load %60 : !llvm.ptr<i1>
    llvm.call @__quantum__qis__reset(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %62 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %63 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%63, %62, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %64 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %65 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%65, %64, %18, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %66 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %67 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%67, %66, %14, %18) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %18) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%18) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %68 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    %70 = llvm.call @__quantum__qis__mz__to__register(%18, %69) {registerName = "reg3", result.index = 3 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %73 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %74 = llvm.bitcast %73 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%72, %74) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %75 = llvm.bitcast %70 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %76 = llvm.load %75 : !llvm.ptr<i1>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump After QIRToQIRProfile (convert-to-qir-profile) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__ry__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__z__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__mz__to__register__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__reset__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cnot__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__result_record_output) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__read_result__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__mz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cz) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cnot) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__qubit_release_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__reset) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__mz__to__register) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @invokeWithControlQubits) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__z__ctl) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__z) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__ry) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__array_get_element_ptr_1d) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__qubit_allocate_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__nvqpp__mlirgen__wrong_count_different_registers) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_different_registers = "__nvqpp__mlirgen__wrong_count_different_registers_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__reset__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__reset(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_different_registers() attributes {"cudaq-entrypoint", passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[0,\22reg0\22]],[1,[0,\22reg1\22]],[2,[3,\22reg2\22]],[3,[3,\22reg3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(3 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %5 = llvm.add %0, %0  : i64
    %6 = llvm.inttoptr %5 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %7 = llvm.add %0, %1  : i64
    %8 = llvm.inttoptr %7 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %9 = llvm.add %0, %3  : i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %11 = llvm.add %0, %2  : i64
    %12 = llvm.inttoptr %11 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %13 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %13) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %14 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %15 = llvm.mlir.addressof @cstr.7265673000 : !llvm.ptr<array<5 x i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%14, %16) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%8, %6) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%6, %8) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %8) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%8) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %17 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%6, %17) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %19 = llvm.mlir.addressof @cstr.7265673100 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%18, %20) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %21 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %21) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %22 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %23 = llvm.mlir.addressof @cstr.7265673200 : !llvm.ptr<array<5 x i8>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%22, %24) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.call @__quantum__qis__reset__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%12, %10) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%10, %12) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%4, %12) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%12) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%12, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.7265673300 : !llvm.ptr<array<5 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<5 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.7265673000("reg0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673100("reg1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673200("reg2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.7265673300("reg3\00") {addr_space = 0 : i32}
}


{ 
  __global__ : { 0:1000 }
   reg0 : { 0:485 1:515 }
   reg1 : { 1:1000 }
   reg2 : { 1:1000 }
   reg3 : { 0:1000 }
}

