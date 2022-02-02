jal ra, label
addi s0, x0, -1
jal x0, entry_one
label: jalr x0, ra, 0
entry_two: beq x0, x0, end
entry_one: jal t0, entry_two
end:addi s0, x0, 1
