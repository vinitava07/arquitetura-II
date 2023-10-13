.text
.globl main
main: 
#x-> s0, y->s1, z->s3;
addi $s0,$zero,3#x = 3
addi $s1,$zero,4#y = 4
sll $t0,$s0,4 #t0 = x * 16
sub $t0,$t0,$s0# t0 = t0 - x
sll $t1,$s1,6#t1 = 64y
add $t1,$t1,$s1#65y
add $t1,$t1,$s1#66y
add $t1,$t1,$s1#67y
add $t2,$t0,$t1#15x + 67y
sll $s3,$t2,2#z = 15x + 67y * 4

.data
