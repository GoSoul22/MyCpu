auipc t1, 20000
addi s2, x0, 666
sw s2 0(t1)
lh t2 0(t1)
lh t2 1(t1)
lh t2 2(t1)
addi t1, t1, 4
lh t3 -4(t1)
lh t3 -3(t1)
lh t3 -2(t1)
addi t1, x0, 0x00000064
addi t0, x0, 105    # t0 = 105  105 = 0b1101001
addi t2, x0, -777
sw t2, -4(t1)
lh s3, -4(t1)
sw t0, 0(t1)
addi t0, t0, 55  # t0 = 160 160 = 0b10100000
sw t0, 4(t1)
lh s0, 2(t1)
lh s1, 5(t1)


