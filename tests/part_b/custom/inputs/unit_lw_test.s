addi t1, x0, 0x00000068  # 68 = 0b1101000
addi t2, t1, 0x00000068
addi s4, x0, -777
addi t0, x0, 55   # 55 = 0b110111
addi t2, x0, 65   # 65 = 0b1000001
addi a0, x0, 75   # 75 = 0b1001011
sw t0, 0(t1)
sw a0, 8(t1)
lw s0, 0(t1)
sw s3, -4(t2)
sw s3, -8(t2)
sw s4, 4(t2)
