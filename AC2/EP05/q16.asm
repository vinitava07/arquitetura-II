.text
.globl main
main:
#s0 = x, #s1 = y, #s2 = z
addi $s0,$zero,0x186A
sll $s0,$s0,8
addi $s1,$zero,0x1388
sll $s1,$s1,4
addi $s2,$zero,0x61A8
sll $s2,$s2,4
add $t0,$zero,$s1
addi $t7,$zero,0x1001
sll $t7,$t7,16
addi $t6,$zero,0x186A
sll $t6,$t6,8

loop:
slt $t1,$zero,$t0
beq $t1,$zero,fim
add $s0,$s0,$t6
addi $t1,$t1,-1
j loop
fim:

.data
