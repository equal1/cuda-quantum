from mqt.bench import get_benchmark, TKETSettings, CompilerSettings
from typing import Tuple
import cudaq
import time
import re
import ast
import numpy as np
import pandas as pd
from tqdm import tqdm
from omegaconf import OmegaConf
import argparse
from dataclasses import dataclass
from typing import List
from uuid import uuid4
import os


def benchmark_algorithm(algorithm) -> Tuple[str, float]:
    kernel = cudaq.make_kernel()

    # Allocate the qubits
    for q_register in algorithm.q_registers:
        code = f"{q_register.name} = kernel.qalloc({q_register.size})"
        exec(code)

    # Translate tket commands to cudaq commands
    for command in algorithm.get_commands():
        if command.op.get_name() == "Barrier":
            continue
        elif command.op.get_name() == "Measure":
            assert len(command.qubits) == 1
            assert len(command.bits) == 1
            code = f"kernel.mz({command.qubits[0]}, '{command.bits[0]}')"
        else:
            op_name = command.op.get_name().lower()
            if len(command.op.params) > 0:
                op_name = op_name.split("(")[0]

            if op_name == "sx":
                code = f"kernel.rx(np.pi/2, {','.join([str(q_register) for q_register in command.qubits])})"
            else:
                code = f"kernel.{op_name}({','.join([str(param) for param in command.op.params] + [str(q_register) for q_register in command.qubits])})"

        exec(code)

    # Sample the kernel
    start = time.perf_counter()
    counts = cudaq.sample(kernel)
    end = time.perf_counter()

    return counts, end - start


def sample_result_to_dict(counts) -> dict:
    counts_str = str(counts)
    counts_str = re.sub(r"(\S+)\s?:", r'"\1":', counts_str)
    counts_str = counts_str.replace("}", "},")
    counts_str = re.sub(r"(\S+:\S+)", r"\1,", counts_str)
    counts_str = counts_str[:-2]

    counts_dict = ast.literal_eval(counts_str)

    return counts_dict


def run_benchmarks(benchmarks, min_qubits, max_qubits) -> pd.DataFrame:
    i = 0
    df = pd.DataFrame(
        columns=["benchmark", "qubits", "gates", "depth", "sample_time", "counts"],
    )
    for benchmark_name in benchmarks:
        for qubits in tqdm(range(min_qubits, max_qubits + 1), desc=benchmark_name):
            algorithm = get_benchmark(
                benchmark_name=benchmark_name,
                level="nativegates",
                circuit_size=qubits,
                compiler="tket",
                provider_name="ibm",
                compiler_settings=compiler_settings,
            )

            counts, sample_time = benchmark_algorithm(algorithm)
            counts_dict = sample_result_to_dict(counts)

            df.loc[i] = [
                algorithm.name,
                algorithm.n_qubits,
                algorithm.n_gates,
                algorithm.depth(),
                sample_time,
                counts_dict,
            ]
            i += 1

    return df


@dataclass
class BenchmarkConfig:
    benchmarks: List[str]
    min_qubits: int = 2
    max_qubits: int = 8
    target: str = "nvidia"
    emulate: bool = False
    url: str = "http://host.docker.internal:62123"
    precision: str = "fp32"
    output_path: str = uuid4()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        prog="benchmark.py", description="Benchmark the cudaq simulator."
    )
    parser.add_argument(
        "--config",
        type=str,
        default="config.yaml",
        help="Path to the configuration file.",
    )
    args = parser.parse_args()

    conf = OmegaConf.structured(BenchmarkConfig)
    yml_conf = OmegaConf.load(args.config)
    conf = OmegaConf.merge(conf, yml_conf)

    if conf.target == "equal1":
        cudaq.set_target(
            conf.target,
            emulate=conf.emulate,
            url=conf.url,
        )
    else:
        cudaq.set_target(
            conf.target,
            emulate=conf.emulate,
            option=conf.precision,
        )

    compiler_settings = CompilerSettings(tket=TKETSettings(placement="linplacement"))
    df = run_benchmarks(conf.benchmarks, conf.min_qubits, conf.max_qubits)

    # Save the results
    df.to_csv(os.path.join(conf.output_path, "benchmark_results.csv"), index=False)
    OmegaConf.save(config=conf, f=os.path.join(conf.output_path, "config.yaml"))
