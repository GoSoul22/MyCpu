add s0, x0, x0		# s0 = 0
addi s1, x0, 1998	# s1 = 1998
sub s1, s1, s0		# s1 = s1 - s0 = 1998 - 0
addi s0, s0, -8		# s0 = -8
sub s1, s1, s0		# s1 = s1 - s0 = 1998 - (-8) = 2016
addi t0, x0, 1998       # t0 = 1998
sub s1, s1, t0		# s1 = s1 - t0 = 2016 - 1998 = 8
