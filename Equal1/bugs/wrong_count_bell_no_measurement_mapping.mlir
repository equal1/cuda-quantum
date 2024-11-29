// -----// IR Dump Before LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = cc.loop while ((%arg0 = %c0_i64) -> (i64)) {
      %9 = arith.cmpi slt, %arg0, %c4_i64 : i64
      cc.condition %9(%arg0 : i64)
    } do {
    ^bb0(%arg0: i64):
      %9 = quake.extract_ref %0[%arg0] : (!quake.veq<4>, i64) -> !quake.ref
      %measOut = quake.mz %9 name "reg" : (!quake.ref) -> !quake.measure
      %10 = quake.discriminate %measOut : (!quake.measure) -> i1
      %11 = cc.compute_ptr %4[%arg0] : (!cc.ptr<!cc.array<i8 x 4>>, i64) -> !cc.ptr<i8>
      %12 = cc.cast unsigned %10 : (i1) -> i8
      cc.store %12, %11 : !cc.ptr<i8>
      cc.continue %arg0 : i64
    } step {
    ^bb0(%arg0: i64):
      %9 = arith.addi %arg0, %c1_i64 : i64
      cc.continue %9 : i64
    } {invariant}
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %7 = cc.stdvec_init %6, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %8 = cc.alloca !cc.stdvec<i1>
    cc.store %7, %8 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump After LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %measOut = quake.mz %5 name "reg" : (!quake.ref) -> !quake.measure
    %6 = quake.discriminate %measOut : (!quake.measure) -> i1
    %7 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.cast unsigned %6 : (i1) -> i8
    cc.store %8, %7 : !cc.ptr<i8>
    %9 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %measOut_0 = quake.mz %9 name "reg" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %11 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %12 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %12, %11 : !cc.ptr<i8>
    %13 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %measOut_1 = quake.mz %13 name "reg" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %17 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %17 name "reg" : (!quake.ref) -> !quake.measure
    %18 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %19 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %20 = cc.cast unsigned %18 : (i1) -> i8
    cc.store %20, %19 : !cc.ptr<i8>
    %21 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %22 = cc.stdvec_init %21, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %23 = cc.alloca !cc.stdvec<i1>
    cc.store %22, %23 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %measOut = quake.mz %5 name "reg" : (!quake.ref) -> !quake.measure
    %6 = quake.discriminate %measOut : (!quake.measure) -> i1
    %7 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.cast unsigned %6 : (i1) -> i8
    cc.store %8, %7 : !cc.ptr<i8>
    %9 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %measOut_0 = quake.mz %9 name "reg" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %11 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %12 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %12, %11 : !cc.ptr<i8>
    %13 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %measOut_1 = quake.mz %13 name "reg" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %17 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %17 name "reg" : (!quake.ref) -> !quake.measure
    %18 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %19 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %20 = cc.cast unsigned %18 : (i1) -> i8
    cc.store %20, %19 : !cc.ptr<i8>
    %21 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %22 = cc.stdvec_init %21, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %23 = cc.alloca !cc.stdvec<i1>
    cc.store %22, %23 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before ConstPropComplex (const-prop-complex) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %measOut = quake.mz %5 name "reg" : (!quake.ref) -> !quake.measure
    %6 = quake.discriminate %measOut : (!quake.measure) -> i1
    %7 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.cast unsigned %6 : (i1) -> i8
    cc.store %8, %7 : !cc.ptr<i8>
    %9 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %measOut_0 = quake.mz %9 name "reg" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %11 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %12 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %12, %11 : !cc.ptr<i8>
    %13 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %measOut_1 = quake.mz %13 name "reg" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %17 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %17 name "reg" : (!quake.ref) -> !quake.measure
    %18 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %19 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %20 = cc.cast unsigned %18 : (i1) -> i8
    cc.store %20, %19 : !cc.ptr<i8>
    %21 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %22 = cc.stdvec_init %21, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %23 = cc.alloca !cc.stdvec<i1>
    cc.store %22, %23 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %measOut = quake.mz %5 name "reg" : (!quake.ref) -> !quake.measure
    %6 = quake.discriminate %measOut : (!quake.measure) -> i1
    %7 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.cast unsigned %6 : (i1) -> i8
    cc.store %8, %7 : !cc.ptr<i8>
    %9 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %measOut_0 = quake.mz %9 name "reg" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %11 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %12 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %12, %11 : !cc.ptr<i8>
    %13 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %measOut_1 = quake.mz %13 name "reg" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %17 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %17 name "reg" : (!quake.ref) -> !quake.measure
    %18 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %19 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %20 = cc.cast unsigned %18 : (i1) -> i8
    cc.store %20, %19 : !cc.ptr<i8>
    %21 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %22 = cc.stdvec_init %21, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %23 = cc.alloca !cc.stdvec<i1>
    cc.store %22, %23 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %measOut = quake.mz %5 name "reg" : (!quake.ref) -> !quake.measure
    %6 = quake.discriminate %measOut : (!quake.measure) -> i1
    %7 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.cast unsigned %6 : (i1) -> i8
    cc.store %8, %7 : !cc.ptr<i8>
    %9 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %measOut_0 = quake.mz %9 name "reg" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %11 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %12 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %12, %11 : !cc.ptr<i8>
    %13 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %measOut_1 = quake.mz %13 name "reg" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %17 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %17 name "reg" : (!quake.ref) -> !quake.measure
    %18 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %19 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %20 = cc.cast unsigned %18 : (i1) -> i8
    cc.store %20, %19 : !cc.ptr<i8>
    %21 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %22 = cc.stdvec_init %21, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %23 = cc.alloca !cc.stdvec<i1>
    cc.store %22, %23 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump After CSE (cse) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before LiftArrayAlloc (lift-array-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before GlobalizeArrayValues (globalize-array-values) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before StatePreparation (state-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before UnitarySynthesis (unitary-synthesis) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before ApplySpecialization (apply-op-specialization) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before ConvertToDirectCalls (indirect-to-direct-calls) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before Inliner (inline) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before CheckKernelCalls (check-kernel-calls) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before ExpandMeasurements (expand-measurements) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump Before MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.alloca !cc.stdvec<i1>
    cc.store %19, %20 : !cc.ptr<!cc.stdvec<i1>>
    return
  }
}


// -----// IR Dump After MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.undef !cc.stdvec<i1>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %c4_i64 = arith.constant 4 : i64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    %18 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<!cc.array<i1 x ?>>
    %19 = cc.stdvec_init %18, %c4_i64 : (!cc.ptr<!cc.array<i1 x ?>>, i64) -> !cc.stdvec<i1>
    %20 = cc.undef !cc.stdvec<i1>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before LoopNormalize (cc-loop-normalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before UpdateRegisterNames (update-register-names) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump After UpdateRegisterNames (update-register-names) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before LowerToCFG (lower-to-cfg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before MultiControlDecompositionPass (multicontrol-decomposition) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump After CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
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
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before ApplyControlNegations (apply-control-negations) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
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
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump Before QuakeAddDeallocs (add-dealloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
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
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    return
  }
}


// -----// IR Dump After QuakeAddDeallocs (add-dealloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
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
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    cf.br ^bb1
  ^bb1:  // pred: ^bb0
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
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
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[%c3_i64] : (!quake.veq<4>, i64) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    cf.br ^bb1
  ^bb1:  // pred: ^bb0
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before FactorQuantumAllocations (factor-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %2 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %3 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    quake.x [%1] %3 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %3 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %14 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %measOut_2 = quake.mz %14 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %17 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %17, %16 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After FactorQuantumAllocations (factor-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    quake.x [%0] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%0] %1 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %0 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2 = quake.mz %3 name "reg%3" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %3 : !quake.ref
    return
  }
}


// -----// IR Dump Before MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    quake.x [%0] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%0] %1 : (!quake.ref, !quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %measOut = quake.mz %0 name "reg%0" : (!quake.ref) -> !quake.measure
    %5 = quake.discriminate %measOut : (!quake.measure) -> i1
    %6 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.cast unsigned %5 : (i1) -> i8
    cc.store %7, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %8 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %9 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2 = quake.mz %3 name "reg%3" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %3 : !quake.ref
    return
  }
}


// -----// IR Dump After MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before AddWireset (add-wireset) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After AddWireset (add-wireset) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before AssignWireIndices (assign-wire-indices) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.null_wire
    %1 = quake.null_wire
    %2 = quake.null_wire
    %3 = quake.null_wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.sink %wires : !quake.wire
    quake.sink %wires_1 : !quake.wire
    quake.sink %wires_3 : !quake.wire
    quake.sink %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After AssignWireIndices (assign-wire-indices) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before MappingPrep (qubit-mapping-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After MappingPrep (qubit-mapping-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before MappingFunc (qubit-mapping-func) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint"} {
    %0 = quake.borrow_wire @wires[0] : !quake.wire
    %1 = quake.borrow_wire @wires[1] : !quake.wire
    %2 = quake.borrow_wire @wires[2] : !quake.wire
    %3 = quake.borrow_wire @wires[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5:2 = quake.x [%4] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %6:2 = quake.x [%5#0] %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %7 = cc.alloca !cc.array<i8 x 4>
    %measOut, %wires = quake.mz %6#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %8 = quake.discriminate %measOut : (!quake.measure) -> i1
    %9 = cc.cast %7 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.cast unsigned %8 : (i1) -> i8
    cc.store %10, %9 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %6#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.compute_ptr %7[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %13 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %13, %12 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %5#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %14 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %15 = cc.compute_ptr %7[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %16 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %16, %15 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %18 = cc.compute_ptr %7[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %19 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %19, %18 : !cc.ptr<i8>
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After MappingFunc (qubit-mapping-func) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.borrow_wire @mapped_wireset[0] : !quake.wire
    %1 = quake.borrow_wire @mapped_wireset[1] : !quake.wire
    %2 = quake.borrow_wire @mapped_wireset[2] : !quake.wire
    %3 = quake.borrow_wire @mapped_wireset[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10:2 = quake.swap %4, %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %11:2 = quake.x [%10#1] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %12:2 = quake.x [%11#0] %10#0 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %12#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %13 = quake.discriminate %measOut : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %6 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %12#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %15 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %7 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %11#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %18 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %18, %8 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %19 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %20 = cc.cast unsigned %19 : (i1) -> i8
    cc.store %20, %9 : !cc.ptr<i8>
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.borrow_wire @mapped_wireset[0] : !quake.wire
    %1 = quake.borrow_wire @mapped_wireset[1] : !quake.wire
    %2 = quake.borrow_wire @mapped_wireset[2] : !quake.wire
    %3 = quake.borrow_wire @mapped_wireset[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10:2 = quake.swap %4, %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %11:2 = quake.x [%10#1] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %12:2 = quake.x [%11#0] %10#0 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %12#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %13 = quake.discriminate %measOut : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %6 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %12#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %15 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %7 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %11#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %18 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %18, %8 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %19 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %20 = cc.cast unsigned %19 : (i1) -> i8
    cc.store %20, %9 : !cc.ptr<i8>
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump Before RegToMem (regtomem) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.borrow_wire @mapped_wireset[0] : !quake.wire
    %1 = quake.borrow_wire @mapped_wireset[1] : !quake.wire
    %2 = quake.borrow_wire @mapped_wireset[2] : !quake.wire
    %3 = quake.borrow_wire @mapped_wireset[3] : !quake.wire
    %4 = quake.h %0 : (!quake.wire) -> !quake.wire
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10:2 = quake.swap %4, %1 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %11:2 = quake.x [%10#1] %2 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %12:2 = quake.x [%11#0] %10#0 : (!quake.wire, !quake.wire) -> (!quake.wire, !quake.wire)
    %measOut, %wires = quake.mz %12#0 name "reg%0" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %13 = quake.discriminate %measOut : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %6 : !cc.ptr<i8>
    %measOut_0, %wires_1 = quake.mz %12#1 name "reg%1" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %15 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %7 : !cc.ptr<i8>
    %measOut_2, %wires_3 = quake.mz %11#1 name "reg%2" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %17 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %18 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %18, %8 : !cc.ptr<i8>
    %measOut_4, %wires_5 = quake.mz %3 name "reg%3" : (!quake.wire) -> (!quake.measure, !quake.wire)
    %19 = quake.discriminate %measOut_4 : (!quake.measure) -> i1
    %20 = cc.cast unsigned %19 : (i1) -> i8
    cc.store %20, %9 : !cc.ptr<i8>
    quake.return_wire %wires_1 : !quake.wire
    quake.return_wire %wires : !quake.wire
    quake.return_wire %wires_3 : !quake.wire
    quake.return_wire %wires_5 : !quake.wire
    return
  }
}


// -----// IR Dump After RegToMem (regtomem) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %6 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    quake.swap %0, %1 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %0 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %9 = quake.discriminate %measOut : (!quake.measure) -> i1
    %10 = cc.cast unsigned %9 : (i1) -> i8
    cc.store %10, %5 : !cc.ptr<i8>
    %measOut_0 = quake.mz %0 name "reg%1" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %12, %6 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %13 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %7 : !cc.ptr<i8>
    %measOut_2 = quake.mz %3 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %8 : !cc.ptr<i8>
    quake.dealloc %3 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %0 : !quake.ref
    return
  }
}


// -----// IR Dump Before CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.ref
    %1 = quake.alloca !quake.ref
    %2 = quake.alloca !quake.ref
    %3 = quake.alloca !quake.ref
    quake.h %0 : (!quake.ref) -> ()
    %4 = cc.alloca !cc.array<i8 x 4>
    %5 = cc.cast %4 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %6 = cc.compute_ptr %4[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %4[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %4[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    quake.swap %0, %1 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%1] %0 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %1 name "reg%0" : (!quake.ref) -> !quake.measure
    %9 = quake.discriminate %measOut : (!quake.measure) -> i1
    %10 = cc.cast unsigned %9 : (i1) -> i8
    cc.store %10, %5 : !cc.ptr<i8>
    %measOut_0 = quake.mz %0 name "reg%1" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %12 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %12, %6 : !cc.ptr<i8>
    %measOut_1 = quake.mz %2 name "reg%2" : (!quake.ref) -> !quake.measure
    %13 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %7 : !cc.ptr<i8>
    %measOut_2 = quake.mz %3 name "reg%3" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %8 : !cc.ptr<i8>
    quake.dealloc %3 : !quake.ref
    quake.dealloc %2 : !quake.ref
    quake.dealloc %1 : !quake.ref
    quake.dealloc %0 : !quake.ref
    return
  }
}


// -----// IR Dump After CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    quake.swap %1, %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before DelayMeasurements (delay-measurements) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    quake.swap %1, %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before BasisConversionPass (basis-conversion) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.h %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    quake.swap %1, %2 : (!quake.ref, !quake.ref) -> ()
    quake.x [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.x [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After BasisConversionPass (basis-conversion) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %cst = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %cst_0 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_0) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_1 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_1) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_2 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_2) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_3 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_3) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %cst_4 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_4) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_5 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_5) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_6 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_6) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_7 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_7) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_8 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_8) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_9 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_9) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_10 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_10 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_11 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_11 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_12 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_12 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before DelayMeasurements (delay-measurements) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %cst = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %cst_0 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_0) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_1 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_1) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_2 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_2) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_3 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_3) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %cst_4 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_4) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_5 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_5) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_6 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_6) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_7 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_7) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_8 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_8) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_9 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_9) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_10 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_10 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_11 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_11 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_12 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_12 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    %cst = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %cst_0 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_0) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_1 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_1) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_2 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_2) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%1] %2 : (!quake.ref, !quake.ref) -> ()
    %cst_3 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_3) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %cst_4 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_4) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_5 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_5) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %cst_6 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_6) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    %cst_7 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_7) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    %cst_8 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_8) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    %cst_9 = arith.constant -1.5707963267948966 : f64
    quake.ry (%cst_9) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_10 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_10 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_11 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_11 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_12 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_12 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before SymbolDCE (symbol-dce) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  quake.wire_set @mapped_wireset[4] adjacency sparse<[[0, 1], [1, 2], [1, 0], [2, 3], [2, 1], [3, 2]], true> : tensor<4x4xi1> attributes {sym_visibility = "private"}
  quake.wire_set @wires[2147483647] attributes {sym_visibility = "private"}
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After SymbolDCE (symbol-dce) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ApplyControlNegations (apply-control-negations) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ConvertToDirectCalls (indirect-to-direct-calls) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Inliner (inline) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CheckKernelCalls (check-kernel-calls) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before UnwindLowering (unwind-lowering) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ApplySpecialization (apply-op-specialization) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ExpandMeasurements (expand-measurements) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before MemToReg (memtoreg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before QuakeAddDeallocs (add-dealloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before QuakeAddMetadata (quake-add-metadata) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before LoopNormalize (cc-loop-normalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before LoopUnroll (cc-loop-unroll) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before LowerToCFG (lower-to-cfg) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After CombineQuantumAllocations (combine-quantum-alloc) ('func.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %6 = cc.alloca !cc.array<i8 x 4>
    %7 = cc.cast %6 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %6[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %6[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.compute_ptr %6[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%3] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%3] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %3 name "reg%0" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut : (!quake.measure) -> i1
    %12 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %12, %7 : !cc.ptr<i8>
    %measOut_0 = quake.mz %2 name "reg%1" : (!quake.ref) -> !quake.measure
    %13 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %8 : !cc.ptr<i8>
    %measOut_1 = quake.mz %4 name "reg%2" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %9 : !cc.ptr<i8>
    %measOut_2 = quake.mz %5 name "reg%3" : (!quake.ref) -> !quake.measure
    %17 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %18 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %18, %10 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %6 = cc.alloca !cc.array<i8 x 4>
    %7 = cc.cast %6 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %6[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %6[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %10 = cc.compute_ptr %6[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%3] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.z [%3] %4 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %4 : (f64, !quake.ref) -> ()
    quake.z %4 : (!quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    quake.z [%3] %2 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %2 : (f64, !quake.ref) -> ()
    quake.z %2 : (!quake.ref) -> ()
    %measOut = quake.mz %3 name "reg%0" : (!quake.ref) -> !quake.measure
    %11 = quake.discriminate %measOut : (!quake.measure) -> i1
    %12 = cc.cast unsigned %11 : (i1) -> i8
    cc.store %12, %7 : !cc.ptr<i8>
    %measOut_0 = quake.mz %2 name "reg%1" : (!quake.ref) -> !quake.measure
    %13 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %14 = cc.cast unsigned %13 : (i1) -> i8
    cc.store %14, %8 : !cc.ptr<i8>
    %measOut_1 = quake.mz %4 name "reg%2" : (!quake.ref) -> !quake.measure
    %15 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %16 = cc.cast unsigned %15 : (i1) -> i8
    cc.store %16, %9 : !cc.ptr<i8>
    %measOut_2 = quake.mz %5 name "reg%3" : (!quake.ref) -> !quake.measure
    %17 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %18 = cc.cast unsigned %17 : (i1) -> i8
    cc.store %18, %10 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before CSE (cse) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ConvertMathToFuncs (convert-math-to-funcs) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before SymbolDCE (symbol-dce) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump Before ConvertToQIR (quake-to-qir) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  func.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
    %cst = arith.constant -1.5707963267948966 : f64
    %0 = quake.alloca !quake.veq<4>
    %1 = quake.extract_ref %0[0] : (!quake.veq<4>) -> !quake.ref
    %2 = quake.extract_ref %0[1] : (!quake.veq<4>) -> !quake.ref
    %3 = quake.extract_ref %0[2] : (!quake.veq<4>) -> !quake.ref
    %4 = quake.extract_ref %0[3] : (!quake.veq<4>) -> !quake.ref
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %5 = cc.alloca !cc.array<i8 x 4>
    %6 = cc.cast %5 : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %7 = cc.compute_ptr %5[1] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %8 = cc.compute_ptr %5[2] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
    %9 = cc.compute_ptr %5[3] : (!cc.ptr<!cc.array<i8 x 4>>) -> !cc.ptr<i8>
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
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.z [%2] %3 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %3 : (f64, !quake.ref) -> ()
    quake.z %3 : (!quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    quake.z [%2] %1 : (!quake.ref, !quake.ref) -> ()
    quake.ry (%cst) %1 : (f64, !quake.ref) -> ()
    quake.z %1 : (!quake.ref) -> ()
    %measOut = quake.mz %2 name "reg%0" : (!quake.ref) -> !quake.measure
    %10 = quake.discriminate %measOut : (!quake.measure) -> i1
    %11 = cc.cast unsigned %10 : (i1) -> i8
    cc.store %11, %6 : !cc.ptr<i8>
    %measOut_0 = quake.mz %1 name "reg%1" : (!quake.ref) -> !quake.measure
    %12 = quake.discriminate %measOut_0 : (!quake.measure) -> i1
    %13 = cc.cast unsigned %12 : (i1) -> i8
    cc.store %13, %7 : !cc.ptr<i8>
    %measOut_1 = quake.mz %3 name "reg%2" : (!quake.ref) -> !quake.measure
    %14 = quake.discriminate %measOut_1 : (!quake.measure) -> i1
    %15 = cc.cast unsigned %14 : (i1) -> i8
    cc.store %15, %8 : !cc.ptr<i8>
    %measOut_2 = quake.mz %4 name "reg%3" : (!quake.ref) -> !quake.measure
    %16 = quake.discriminate %measOut_2 : (!quake.measure) -> i1
    %17 = cc.cast unsigned %16 : (i1) -> i8
    cc.store %17, %9 : !cc.ptr<i8>
    quake.dealloc %0 : !quake.veq<4>
    return
  }
}


// -----// IR Dump After ConvertToQIR (quake-to-qir) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfilePrep (qir-profile-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump After QIRToQIRProfilePrep (qir-profile-prep) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__ry__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__z__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__mz__to__register__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cnot__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__result_record_output) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__read_result__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__mz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cz) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__cnot) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__qubit_release_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__mz__to__register) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @invokeWithControlQubits) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__z__ctl) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__z) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__qis__ry) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__array_get_element_ptr_1d) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__quantum__rt__qubit_allocate_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %39 = llvm.load %38 : !llvm.ptr<i1>
    %40 = llvm.zext %39 : i1 to i8
    llvm.store %40, %21 : !llvm.ptr<i8>
    %41 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %43 = llvm.call @__quantum__qis__mz__to__register(%6, %42) {registerName = "reg%1"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %44 = llvm.bitcast %43 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %45 = llvm.load %44 : !llvm.ptr<i1>
    %46 = llvm.zext %45 : i1 to i8
    llvm.store %46, %22 : !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %49 = llvm.call @__quantum__qis__mz__to__register(%14, %48) {registerName = "reg%2"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.bitcast %49 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %51 = llvm.load %50 : !llvm.ptr<i1>
    %52 = llvm.zext %51 : i1 to i8
    llvm.store %52, %23 : !llvm.ptr<i8>
    %53 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %55 = llvm.call @__quantum__qis__mz__to__register(%18, %54) {registerName = "reg%3"} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %56 = llvm.bitcast %55 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %57 = llvm.load %56 : !llvm.ptr<i1>
    %58 = llvm.zext %57 : i1 to i8
    llvm.store %58, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump After QIRToQIRProfileFunc (quake-to-qir-func) ('llvm.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0", result.index = 0 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.mlir.constant(0 : i64) : i64
    %39 = llvm.inttoptr %38 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %40 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%39, %41) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %42 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %43 = llvm.load %42 : !llvm.ptr<i1>
    %44 = llvm.zext %43 : i1 to i8
    llvm.store %44, %21 : !llvm.ptr<i8>
    %45 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%6, %46) {registerName = "reg%1", result.index = 1 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.mlir.constant(1 : i64) : i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%49, %51) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %52 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %53 = llvm.load %52 : !llvm.ptr<i1>
    %54 = llvm.zext %53 : i1 to i8
    llvm.store %54, %22 : !llvm.ptr<i8>
    %55 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %57 = llvm.call @__quantum__qis__mz__to__register(%14, %56) {registerName = "reg%2", result.index = 2 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %58 = llvm.mlir.constant(2 : i64) : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %60 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%59, %61) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %62 = llvm.bitcast %57 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %63 = llvm.load %62 : !llvm.ptr<i1>
    %64 = llvm.zext %63 : i1 to i8
    llvm.store %64, %23 : !llvm.ptr<i8>
    %65 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %67 = llvm.call @__quantum__qis__mz__to__register(%18, %66) {registerName = "reg%3", result.index = 3 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %68 = llvm.mlir.constant(3 : i64) : i64
    %69 = llvm.inttoptr %68 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %70 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %71 = llvm.bitcast %70 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%69, %71) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %72 = llvm.bitcast %67 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %73 = llvm.load %72 : !llvm.ptr<i1>
    %74 = llvm.zext %73 : i1 to i8
    llvm.store %74, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before QIRToQIRProfile (convert-to-qir-profile) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
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
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.alloca %19 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %22 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.getelementptr %20[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.getelementptr %20[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %25 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %26 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%26, %25, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %27 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %28 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%28, %27, %6, %10) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %10) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%10) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %29 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%30, %29, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %31 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %32 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%32, %31, %10, %14) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %14) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%14) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %33 = llvm.mlir.addressof @__quantum__qis__z__ctl : !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>
    %34 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @invokeWithControlQubits(%34, %33, %10, %6) : (i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry(%0, %6) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z(%6) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %35 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %37 = llvm.call @__quantum__qis__mz__to__register(%10, %36) {registerName = "reg%0", result.index = 0 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %38 = llvm.mlir.constant(0 : i64) : i64
    %39 = llvm.inttoptr %38 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %40 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%39, %41) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %42 = llvm.bitcast %37 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %43 = llvm.load %42 : !llvm.ptr<i1>
    %44 = llvm.zext %43 : i1 to i8
    llvm.store %44, %21 : !llvm.ptr<i8>
    %45 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %47 = llvm.call @__quantum__qis__mz__to__register(%6, %46) {registerName = "reg%1", result.index = 1 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %48 = llvm.mlir.constant(1 : i64) : i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %50 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%49, %51) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %52 = llvm.bitcast %47 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %53 = llvm.load %52 : !llvm.ptr<i1>
    %54 = llvm.zext %53 : i1 to i8
    llvm.store %54, %22 : !llvm.ptr<i8>
    %55 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %57 = llvm.call @__quantum__qis__mz__to__register(%14, %56) {registerName = "reg%2", result.index = 2 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %58 = llvm.mlir.constant(2 : i64) : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %60 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%59, %61) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %62 = llvm.bitcast %57 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %63 = llvm.load %62 : !llvm.ptr<i1>
    %64 = llvm.zext %63 : i1 to i8
    llvm.store %64, %23 : !llvm.ptr<i8>
    %65 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    %67 = llvm.call @__quantum__qis__mz__to__register(%18, %66) {registerName = "reg%3", result.index = 3 : i64} : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
    %68 = llvm.mlir.constant(3 : i64) : i64
    %69 = llvm.inttoptr %68 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %70 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %71 = llvm.bitcast %70 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%69, %71) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %72 = llvm.bitcast %67 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %73 = llvm.load %72 : !llvm.ptr<i1>
    %74 = llvm.zext %73 : i1 to i8
    llvm.store %74, %24 : !llvm.ptr<i8>
    llvm.call @__quantum__rt__qubit_release_array(%2) : (!llvm.ptr<struct<"Array", opaque>>) -> ()
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump After QIRToQIRProfile (convert-to-qir-profile) ('builtin.module' operation) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__ry__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__z__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__mz__to__register__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cnot__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__result_record_output) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__read_result__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__mz__body) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cz) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__cnot) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__qubit_release_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__mz__to__register) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @invokeWithControlQubits) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__z__ctl) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__z) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__qis__ry) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__array_get_element_ptr_1d) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__quantum__rt__qubit_allocate_array) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


// -----// IR Dump Before VerifyQIRProfile (verify-qir-profile) ('llvm.func' operation: @__nvqpp__mlirgen__wrong_count_bell) //----- //
module attributes {quake.mangled_name_map = {__nvqpp__mlirgen__wrong_count_bell = "__nvqpp__mlirgen__wrong_count_bell_PyKernelEntryPointRewrite"}} {
  llvm.func @__quantum__qis__ry__body(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z__body(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__mz__to__register__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__result_record_output(!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>)
  llvm.func @__quantum__qis__read_result__body(!llvm.ptr<struct<"Result", opaque>>) -> i1
  llvm.func @__quantum__qis__mz__body(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) attributes {passthrough = ["irreversible"]}
  llvm.func @__quantum__qis__cz(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz__to__register(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<i8>) -> !llvm.ptr<struct<"Result", opaque>> attributes {passthrough = ["irreversible"]}
  llvm.func @invokeWithControlQubits(i64, !llvm.ptr<func<void (ptr<struct<"Array", opaque>>, ptr<struct<"Qubit", opaque>>)>>, ...)
  llvm.func @__quantum__qis__z__ctl(!llvm.ptr<struct<"Array", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__z(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__nvqpp__mlirgen__wrong_count_bell() attributes {"cudaq-entrypoint", mapping_reorder_idx = [1, 0, 2, 3], mapping_v2p = [1, 0, 2, 3], passthrough = ["entry_point", ["qir_profiles", "adaptive_profile"], ["output_labeling_schema", "schema_id"], ["output_names", "[[[0,[1,\22reg%0\22]],[1,[0,\22reg%1\22]],[2,[2,\22reg%2\22]],[3,[3,\22reg%3\22]]]]"], ["requiredQubits", "4"], ["requiredResults", "4"]]} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(2 : i64) : i64
    %3 = llvm.mlir.constant(3 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1.5707963267948966 : f64) : f64
    %6 = llvm.add %0, %0  : i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %8 = llvm.add %0, %1  : i64
    %9 = llvm.inttoptr %8 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %10 = llvm.add %0, %2  : i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    %12 = llvm.add %0, %3  : i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr<struct<"Qubit", opaque>>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %14 = llvm.alloca %4 x !llvm.array<4 x i8> : (i32) -> !llvm.ptr<array<4 x i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i8>> to !llvm.ptr<i8>
    %16 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.getelementptr %14[0, 3] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%7, %9) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %9) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%9) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %11) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %11) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%11) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__cz__body(%9, %7) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__ry__body(%5, %7) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> ()
    llvm.call @__quantum__qis__z__body(%7) : (!llvm.ptr<struct<"Qubit", opaque>>) -> ()
    %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%9, %19) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %20 = llvm.inttoptr %0 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %21 = llvm.mlir.addressof @cstr.726567253000 : !llvm.ptr<array<6 x i8>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%20, %22) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %23 = llvm.call @__quantum__qis__read_result__body(%19) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %24 = llvm.zext %23 : i1 to i8
    llvm.store %24, %15 : !llvm.ptr<i8>
    %25 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%7, %25) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %26 = llvm.inttoptr %1 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %27 = llvm.mlir.addressof @cstr.726567253100 : !llvm.ptr<array<6 x i8>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%26, %28) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %29 = llvm.call @__quantum__qis__read_result__body(%25) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %30 = llvm.zext %29 : i1 to i8
    llvm.store %30, %16 : !llvm.ptr<i8>
    %31 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%11, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %32 = llvm.inttoptr %2 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %33 = llvm.mlir.addressof @cstr.726567253200 : !llvm.ptr<array<6 x i8>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%32, %34) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %35 = llvm.call @__quantum__qis__read_result__body(%31) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %36 = llvm.zext %35 : i1 to i8
    llvm.store %36, %17 : !llvm.ptr<i8>
    %37 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    llvm.call @__quantum__qis__mz__body(%13, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Result", opaque>>) -> ()
    %38 = llvm.inttoptr %3 : i64 to !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.addressof @cstr.726567253300 : !llvm.ptr<array<6 x i8>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<6 x i8>> to !llvm.ptr<i8>
    llvm.call @__quantum__rt__result_record_output(%38, %40) : (!llvm.ptr<struct<"Result", opaque>>, !llvm.ptr<i8>) -> ()
    %41 = llvm.call @__quantum__qis__read_result__body(%37) : (!llvm.ptr<struct<"Result", opaque>>) -> i1
    %42 = llvm.zext %41 : i1 to i8
    llvm.store %42, %18 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.mlir.global private constant @cstr.726567253000("reg%0\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253100("reg%1\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253200("reg%2\00") {addr_space = 0 : i32}
  llvm.mlir.global private constant @cstr.726567253300("reg%3\00") {addr_space = 0 : i32}
}


{ 
  __global__ : { 0000:510 1110:490 }
   reg%0 : { 0:510 1:490 }
   reg%1 : { 0:510 1:490 }
   reg%2 : { 0:510 1:490 }
   reg%3 : { 0:1000 }
}

