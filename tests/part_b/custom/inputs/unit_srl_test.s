addi s0, x0, 2			# s0 = 2
addi t0, x0, 9			# t0 = 0b00001001
srl  t0, t0, s0			# t0 = t0 >> s0		-> t0 = 0b00000010
addi s0, x0, -1			# s0 = -1
srl t0, t0, s0			# t0 = t0 >> s0 		-> t0 = 0
