jalr x0, x0, 8
addi s0, x0, 1
entry_one: jalr ra, x0, 16
addi s0, s0, 1
entry_two: jalr t0, x0, 24
addi s0, s0, 1
entry_three: jalr s2, x0, 32
addi s0, s0, 1
entry_four: jalr a5, x0, 40
addi s0, s0, 1
entry_five: addi s4, x0, 55
jalr a5, s4, -3
jalr x0, a5, 12
addi s0, s0, 1    # traget
jalr x0, a5, 0    # jump backwards 
addi s0, s0, 1



