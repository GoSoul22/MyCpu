jalr x0, x0, 8
addi s0, x0, 1
entry_one: jalr ra, x0, 16
addi s0, s0, 1
entry_two: jalr t0, x0, 24
addi s0, s0, 1
entry_three: jalr s1, x0, 32
addi s0, s0, 1
entry_four: jalr t1, x0, 40
addi s0, s0, 1
entry_five: addi t2, x0, 55
jalr t1, t2, -3
addi s0, s0, 1
addi s0, s0, 1    # target
entry_six: addi t2, x0, 61
jalr t1, t2, 11
addi s0, s0, 1
addi s0, s0, 1
addi s0, s0, 1	   # target     72
