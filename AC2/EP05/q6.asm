.text
.globl main
main:
#x->s1, y->s2, z->s3
#300000 = 493E0
addi $t0,$zero,0x7FFF
sll $t0,$t0,16
ori $s0,$t0,0xFFFF
addi $t1,$zero,4
sll $t1,$t1,16
ori $s1,$t1,0x93E0
sll $t1,$s1,2
sub $s3,$s0,$t1

.data