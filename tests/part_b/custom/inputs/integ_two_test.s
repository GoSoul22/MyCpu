addi t0, x0, 1		# t0 = 1
addi t1, x0, 2 		# t1 = 2
addi t2, x0, 12 	# t2 = 12
slti a0, t0, 1 
add t3, x0, x0 
addi t3, t3, 32
jalr x11, t3 -4
addi t3, t3, 32
addi t3, t3, 32
addi t3, t3, 32
jal ra, entry_one
entry_one:
	jal ra entry_two
entry_two:
	jal ra entry_three 
entry_three:
lui s1 912092
addi s1 s1 -273
addi t3, t3, 32
addi t3, t3, 32
addi t3, t3, 32
