addi s0, x0, 2                  # s0 = ob00000010
addi t0, x0, 9                  # t0 = 0b00001001
or s1, s0, t0 			# s1 = s0 or t0 
or s1, s1, x0			# s1 = s1 or x0 			s1 = 0x0000000B
