addi s0, x0, 2                  		# s0 = 2
addi t0, x0, 9                  		# t0 = 0b00001001
sra  t0, t0, s0                		        # t0 = t0 >> s0         -> t0 = 2
addi s0, x0, -1					# s0 = -1
sra t0, t0, s0					# t0 = t0 >> s0 		-> t0 = 0
addi t1, x0, -1					# t1 = 0xffff ffff
addi t0, x0, 5					# t0 = 5
sra t1, t1, t0					# t1 = t1 >> t0.        -> t1 = -1
