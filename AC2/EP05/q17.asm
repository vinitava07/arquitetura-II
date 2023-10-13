.text
.globl main
main:
#s0 = x, s1 = y, s2 = k
addi $t0,$t0,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
lw $s1,4($t0)
addi $t1,$zero,0 #contador = 1
add $t7,$zero,$s0 
add $t6,$zero,$zero

loop:
slt $t2,$t1,$s1 # if contador < y
beq $t2,$zero,fim
add $t6,$t6,$t7
addi $t1,$t1,1
j loop

fim:
add $s2,$zero,$t6
sw $s2,8($t0)

.data
x: .word 5
y: .word 6
k: .word 0