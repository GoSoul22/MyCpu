addi s0, x0, 1			# s0 = 1
and s0, s0, x0		        # s0 = s0 and x0 = 0
addi s0, x0, 213		# s0 = 0b 1101 0101
addi s1, x0, 888		# s1 = 0b 0011 0111 1000
and s1, s1, s0			# s1 = s0 and s1     -> s1 = 0x00000050
addi s0, s0, -22
and s1, s1, s0 			# s1 = 0x00000010
