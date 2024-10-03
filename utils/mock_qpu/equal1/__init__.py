# ============================================================================ #
# Copyright (c) 2022 - 2024 NVIDIA Corporation & Affiliates.                   #
# All rights reserved.                                                         #
#                                                                              #
# This source code and the accompanying materials are made available under     #
# the terms of the Apache License 2.0 which accompanies this distribution.     #
# ============================================================================ #

import cudaq
from fastapi import FastAPI, HTTPException, Header, Request
from typing import Union
import uvicorn, uuid, base64, ctypes
from pydantic import BaseModel
from llvmlite import binding as llvm

# Define the REST Server App
app = FastAPI()

# Jobs look like the following type
class Job(BaseModel):
    target: str
    format: str
    program: str
    programName: str
    shots: int

# Keep track of Job Ids to their Names
createdJobs = {}

# Could how many times the client has requested the Job
countJobGetRequests = 0

# Save how many qubits were needed for each test (emulates real backend)
numQubitsRequired = 0

llvm.initialize()
llvm.initialize_native_target()
llvm.initialize_native_asmprinter()
target = llvm.Target.from_default_triple()
targetMachine = target.create_target_machine()
backing_mod = llvm.parse_assembly("")
engine = llvm.create_mcjit_compiler(backing_mod, targetMachine)


def getKernelFunction(module):
    for f in module.functions:
        if not f.is_declaration:
            return f
    return None


def getNumRequiredQubits(function):
    for a in function.attributes:
        if "requiredQubits" in str(a):
            return int(
                str(a).split("requiredQubits\"=")[-1].split(" ")[0].replace(
                    "\"", ""))


class MyFormat(BaseModel):
    target : str

# Here we expose a way to post jobs,
# Must have a Access Token, Job Program must be Adaptive Profile
# with entry_point tag

@app.post("/jobs")
async def postJob(job: Job):
    global createdJobs, shots, numQubitsRequired

    print('Posting job with shots = ', job.shots)
    newId = str(uuid.uuid4())
    shots = 1500
    program = job.program
    decoded = base64.b64decode(program)
    m = llvm.module.parse_bitcode(decoded)
    mstr = str(m)
    assert ('entry_point' in mstr)

    # Get the function, number of qubits, and kernel name
    function = getKernelFunction(m)
    if function == None:
        raise Exception("Could not find kernel function")
    numQubitsRequired = getNumRequiredQubits(function)
    kernelFunctionName = function.name

    print("Kernel name = ", kernelFunctionName)
    print("Requires {} qubits".format(numQubitsRequired))

    # JIT Compile and get Function Pointer
    engine.add_module(m)
    engine.finalize_object()
    engine.run_static_constructors()
    funcPtr = engine.get_function_address(kernelFunctionName)
    kernel = ctypes.CFUNCTYPE(None)(funcPtr)

    # Invoke the Kernel
    cudaq.testing.toggleDynamicQubitManagement()
    qubits, context = cudaq.testing.initialize(numQubitsRequired, shots)
    kernel()
    results = cudaq.testing.finalize(qubits, context)
    results.dump()
    createdJobs[newId] =  (job.programName, results)

    engine.remove_module(m)

    # Job "created", return the id
    return {"job_id": newId}

# Retrieve the job, simulate having to wait by counting to 3
# until we return the job results
@app.get("/jobs/{jobId}")
async def getResults(jobId: str):
    global countJobGetRequests, createdJobs, shots

    # Simulate asynchronous execution
    if countJobGetRequests < 3:
        countJobGetRequests += 1
        return {"status": "executing"}

    countJobGetRequests = 0
    name, results = createdJobs[jobId]

    print(results)
    res = {"status": "done", "results": results.serialize() }
    return res



def startServer(port):
    uvicorn.run(app, port=port, host='0.0.0.0', log_level="debug", access_log=True)


if __name__ == '__main__':
    startServer(62444)
