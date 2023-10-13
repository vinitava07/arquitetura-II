.text
.globl main
main:
addi $t0,$t0,0x1001
sll $t0,$t0,16

addi $t1,$t1,0x1001
sll $t1,$t1,16
addi $t1,$t1,4

addi $t2,$t2,0x1001
sll $t2,$t2,16
addi $t2,$t2,8

addi $t3,$t3,0x1001
sll $t3,$t3,16
addi $t3,$t3,12
#t3 = x
sw $t2,0($t3)
sw $t1,0($t2)
sw $t0,0($t1)

lw $s1,0($t3)
lw $s1,0($s1)
lw $s1,0($s1)
lw $s1,0($s1)

sll $s1,$s1,1

lw $s2,0($t3)
lw $s2,0($s2)
lw $s2,0($s2)
sw $s1,($s2)

.data
x: .word 2