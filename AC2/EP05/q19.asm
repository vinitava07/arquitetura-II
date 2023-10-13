.text
.globl main
main:
addi $t0,$zero,0x1001
sll $t0,$t0,16
addi $t1,$zero,-1
lw $s0,0($t0)
lw $s1,4($t0)
addi $t6,$s0,0
addi $t7,$s1,0
addi $t2,$zero,0
addi $t3,$zero,0
slti $t0,$s0,0
beq $t0,$zero,loop1
j loop1neg
num2:
slti $t0,$s1,0
beq $t0,$zero,loop2
j loop2neg
#t2 = contador l1, t3 = contador l2

loop1:#loop1 pos
beq $t6,$zero,num2
sra $t6,$t6,1
addi $t2,$t2,1
j loop1

loop1neg:#loop1 neg
beq $t6,$t1,num2
sra $t6,$t6,1
addi $t2,$t2,1
j loop1neg

loop2:#loop2 pos
beq $t7,$zero,multi
sra $t7,$t7,1
addi $t3,$t3,1
j loop2

loop2neg:#loop2 neg
beq $t7,$t1,multi
sra $t7,$t7,1
addi $t3,$t3,1
j loop2neg

multi:
add $t3,$t3,$t2
slti $t4,$t3,32
beq $t4,$zero,reg2
mult $s0,$s1
mflo $s2
j fim

reg2:
mult $s0,$s1
mflo $s2
mfhi $s3

fim:


.data
x: .word -10
y: .word 5