.text
.globl main
main:
#x->s0, y->s1, z->s2
#100000 = 186A0 / 200000 = 30D40
addi $t0,$zero,1#t0 = 1
sll $t0,$t0,16#t0 = 1 0000
ori $t0,$t0,0x86A0#t0 = 186A0
addi $s0,$t0,0#x = 100000
addi $t0,$zero,3#t0 = 3
sll $t0,$t0,16#t0 = 3 0000
ori $t0,$t0,0x0D40#t0 = 10d40
addi $s1,$t0,0#y = 200000
add $s3,$s0,$s1#z = x+y


.data