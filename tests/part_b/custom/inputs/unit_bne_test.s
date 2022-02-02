addi s0, x0, 2                  # s0 = 2
addi s1, x0, 2                  # s1 = 2
beq s0, s1, entry_one
add s0, s0, s1                  # s0 = s0 + s1     Note: This inst should be killed.
add s1, s0, s1                  # s1 = s0 + s1     Note: This inst should not be fetched.


entry_one:
    addi s0, s0, 2          	# s0 = 4
    add t0, x0, x0				# t0 = 0
    bne t0, s0, good_exit       
    addi a0, x0, 5


good_exit:
    addi a0, x0, 1
