import cudaq

cudaq.set_target("equal1", emulate=True, url="http://host.docker.internal:62123")


# pipeline without qubit mapping
@cudaq.kernel
def wrong_count():
    q = cudaq.qvector(4)
    x(q[0])
    x(q[2])
    reg = mz(q)


# pipeline without qubit mapping
# pipeline with all mapping
@cudaq.kernel
def wrong_count_bell():
    q = cudaq.qvector(4)
    h(q[0])
    x.ctrl(q[0], q[2])
    x.ctrl(q[0], q[1])
    reg = mz(q)


# pipeline without qubit mapping
@cudaq.kernel
def wrong_count_different_registers():
    q = cudaq.qvector(4)
    h(q[0])
    x.ctrl(q[0], q[2])
    x.ctrl(q[0], q[1])
    reg0 = mz(q[0])
    reg1 = mz(q[1])
    reg2 = mz(q[2])
    reg3 = mz(q[3])


counts = cudaq.sample(wrong_count_bell, shots_count=1000)

print(counts)


# print(cudaq.draw(wrong_count))
