auipc s1, 20000
addi s2, x0, 666
sw s1, 0(s1)
lb t0 0(s1)
lb t0 1(s1)
lb t0 2(s1)
lb t0 3(s1)
addi s1, s1, 4
lb t1 -4(s1)
lb t1 -3(s1)
lb t1 -2(s1)
lb t1 -1(s1)
addi t1, x0, 0x0000168
addi t0, x0, -30
sw t0, 0(t1)
sb t0, 4(t1)
lb s0, 1(t1)
lb s1, 2(t1)
lb a0, 4(t1)
addi t1, x0, 0x00000098
addi t0, x0, 30
sw t0, 0(t1)
sb t0, 4(t1)
lb s0, -1(t1)
lb s1, -2(t1)
lb a0, -4(t1)
