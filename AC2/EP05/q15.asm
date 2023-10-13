.text
.globl main
main:
#s0 = i;
addi $t0,$zero,0x1001
sll $t0,$t0,16
addi $s0,$zero,0

loop:
slti $t1,$s0,100 # i < 101 -> 1
beq $t1,$zero,fim # t1 == 0 -> fim
sll $t2,$s0,1
addi $t2,$t2,1
sw $t2,0($t0)
addi $t0,$t0,4
addi $s0,$s0,1
j loop

fim:



.data
