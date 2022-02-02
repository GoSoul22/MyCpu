addi s0, x0, 2                  # s0 = 2
addi s1, x0, 2                  # s1 = 2
beq s0, s1, entry_one
add s0, s0, s1                  # s0 = s0 + s1     Note: This inst should be killed.
add s1, s0, s1                  # s1 = s0 + s1     Note: This inst should not be fetched.


entry_one:
    addi s0, s0, 2          	# s0 = 4
    addi t0, x0, 4				# t0 = 4
    bge t0, s0, good_exit_one       
    addi a0, x0, 5


good_exit_one:
    addi a0, x0, -1				# a0 = -1
    addi t1, x0, 1				# t1 = 1
    addi a1, x0, 1				# a1 = 1
    bge a0, t1, never_reach		# a0 < t1           Note: This branch will not be taken 
    bge t1, a0, reachable		# t1 > a0			Note: This branch will be taken 
    addi a1, x0, 999			

    
    
never_reach: 
    addi a1, x0, 3
    
not_taken: 
    addi a1, x0, 4
    
reachable:
    blt a1, a0, not_taken   	# a1 = 1, a0 = -1 	     Note: This branch will not be taken    
    add a0, a0, a0				# a0 will exit with code -2
    add a1, a1, a1				# a1 will exit with code 2
