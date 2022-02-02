jal x0, entry_one
add x0, x0, x0
add x0, x0, x0
add x0, x0, x0
add x0, x0, x0
auipc t0, 666
entry_two:
	addi t1, t1, 1
    blt t1, t0, entry_two
entry_dummpy:
entry_one: 
	auipc s1, 0
    auipc t0 32
    auipc t0 1048575
    
    
addi a0, x0 ,0 
