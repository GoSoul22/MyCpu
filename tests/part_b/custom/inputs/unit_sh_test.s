auipc t1, 20000
addi s1, x0, 666
sh s1 0(t1)
lh s2 0(t1)
sh s1 1(t1)
lh s2 1(t1)
sh s1 2(t1)
lh s2 2(t1)
addi t1, t1, 4
sh s1 -4(t1)
lh s2 -4(t1)
sh s1 -3(t1)
lh s2 -3(t1)
sh s1 -2(t1)
lh s2 -2(t1)
