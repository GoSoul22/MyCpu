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
addi s0, s0, 1
