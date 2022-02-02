add s0, x0, x0		#s0 = 0 
addi s0, s0, 1		#s0 = 1		    s0 = 0b0001
addi s1, s0, 1		#s1 = 2
sll s0, s0, s0 		#s0 = s0 << s0   -> s0 = 0b0010
sll s0, s0, s1 		#s0 = s0 << s1   -> s0 = 0b1000
addi s0, s0, -8		#s0 = s0 + (-8)  -> s0 = 0b0000

