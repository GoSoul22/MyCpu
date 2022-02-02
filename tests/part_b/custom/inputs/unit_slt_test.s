add s0, x0, x0			# s0 = 0 
addi s1, x0, -1			# s1 = -1 
slt s0, s0, s1			# s0 = 0     rs1 > rs2
slt s0, s1, s0			# s0 = 1     rs1 < rs2
addi t0, x0, -1			# t0 = -1
slt t0, t0, s1			# t0 = 0     rs1 = rs2 

