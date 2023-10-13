.text
.globl main
main:
addi $t0,$t0,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
andi $t1,$s0,1
beq $t1,$zero,par 
sw $t1,4($t0)
j fim
par:
sw $zero,4($t0)

fim:

.data
a: .word 3