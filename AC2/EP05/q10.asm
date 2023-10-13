.text
.globl main
main: 
#x -> s0, z -> s1
addi $t0,$zero,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
lw $s1,4($t0)
sll $t1,$s0,7
sub $s1,$t1,$s1
sll $t2,$s1,6
add $s1,$t2,$s1
sub $s0,$s0,$s1
addi $s0,$s0,1
sw $s0,8($t0)


.data
x: .word 5
z: .word 7
y: .word 0
