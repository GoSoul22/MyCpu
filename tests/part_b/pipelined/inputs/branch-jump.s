add s0 x0 x0                # s0 = 0
addi a0 x0 -1               # a0 = -1
bne s0 s0 never_reach       # branch will not be taken
addi s0 s0 -1
lui s1 0 #end               # s1 = 0
addi s1 s1 36 #end          # s1 = 36
jr s1                       # jump to instr at address 36
never_reach:
  addi s0, s0, 1
  j end 
end:
  addi a0 a0 1
