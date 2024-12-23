# ============================================================================ #
# Copyright (c) 2022 - 2024 NVIDIA Corporation & Affiliates.                   #
# All rights reserved.                                                         #
#                                                                              #
# This source code and the accompanying materials are made available under     #
# the terms of the Apache License 2.0 which accompanies this distribution.     #
# ============================================================================ #

from ..mlir._mlir_libs._quakeDialects import cudaq_runtime
from ..mlir import ir as mlir
from ..mlir.dialects import func as func

from cudaq.kernel.kernel_builder import PyKernel

def compile(kernel : PyKernel , *args):
    ctx = cudaq_runtime.ExecutionContext("compile")
    cudaq_runtime.setExecutionContext(ctx)

    kernel(*args)

    cudaq_runtime.resetExecutionContext()

    assert(len(ctx.codes) == 1)

    newKernel = PyKernel([])
    newModule = mlir.Module.parse(asm = ctx.codes[0], context=newKernel.ctx)

    #TODO: implement some clone mechanism
    newKernel.metadata = kernel.metadata
    newKernel.regCounter = kernel.regCounter
    newKernel.funcName = kernel.funcName
    newKernel.funcNameEntryPoint = kernel.funcNameEntryPoint
    newKernel.name = kernel.name

    newFunc = next(op for op in newModule.body.operations if isinstance(op, func.FuncOp) and op.attributes.__contains__('cudaq-entrypoint'))

    #We need to have an entry-point
    assert(isinstance(newFunc, func.FuncOp))

    newKernel.fucOp = newFunc
    newKernel.arguments = []

    newKernel.insertPoint = mlir.InsertionPoint.at_block_terminator(newFunc.regions[0].blocks[0])
    newKernel.module = newModule

    return newKernel
