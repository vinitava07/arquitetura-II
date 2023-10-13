.text
.globl main
main:
#s0 = x, s1 = y, s2 = k
addi $t0,$zero,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
lw $s1,4($t0)
addi $t1,$s0,0
addi $t2,$s1,0
addi $t7,$zero,1 # contador
add $t5,$s0,$zero # t5 = x
addi $t4,$zero,0 #t4 = total mult
pow:
slt $t3,$t7,$t2
beq $t3,$0,fim
addi $t7,$t7,1
addi $t6,$zero,0 #contador mult
addi $t4,$zero,0 #t4 = total mult
loop:
slt $t3,$t6,$s0
beq $t3,$zero,att_t5
add $t4,$t4,$t5
addi $t6,$t6,1
j loop
att_t5:
add $t5,$zero,$t4
j pow
fim:
add $s2,$t5,$zero
sw $s2,8($t0)

.data

x: .word 2
y: .word 5
k: .word 0
