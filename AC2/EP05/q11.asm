.text
.globl main
main: 
#x ->s1, z -> s2, 300000 = 493E0
addi $t0,$zero,0x1001
sll $t0,$t0,16
addi $t1,$zero,0x4
sll $t1,$t1,16
ori $t1,$t1,0x93E0#t1 = 300000
lw $s1,0($t0)
lw $s2,4($t0)
sub $s3,$s1,$s2
add $s3,$s3,$t1
sw $s3,8($t0)


.data
x: .word 100000
z: .word 200000
y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa.