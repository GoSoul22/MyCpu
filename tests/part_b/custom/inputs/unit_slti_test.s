slti t0, x0, 1  # t0 = 1
addi t1, t0, 1  # t1 = 2
slti t2, t1, 3  # t2 = 1
slti s0, t1, 1  # s0 = 0
addi s1, x0, 2047
slti a0, s1, 2047 # a0 = 0
