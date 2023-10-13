.text
.globl main

main:
#x->s0, y->s1, z->s3
addi $s0,$zero,3
addi $s1,$zero,4
add $t0,$s0,$s0# t0 = x+x = 2x
add $t0,$t0,$t0#add 2x+2x = 4x
add $t0,$t0,$t0#add 2x+2x = 8x
add $t0,$t0,$t0#add 2x+2x = 16x
sub $t0,$t0,$s0#sub 16x - x = 15x

add $t1,$s1,$s1 # 2y
add $t1,$t1,$t1#4y
add $t1,$t1,$t1#8y
add $t1,$t1,$t1#16y
add $t1,$t1,$t1#32y
add $t1,$t1,$t1#64y
add $t1,$t1,$s1#65y
add $t1,$t1,$s1#66y
add $t1,$t1,$s1#67y
add $t3,$t0,$t1#z
add $t3,$t3,$t3#2z
add $t3,$t3,$t3#4z

add $s3,$zero,$t3# z = 14x + 67y * 4

.data
