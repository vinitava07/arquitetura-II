.text
.globl main
main:
addi $t0,$0,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
lw $s1,4($t0)
addi $a0,$s0,0
addi $a1,$s1,0
jal pow
nop
j fim

pow:
addi $s0,$a0,0
addi $s1,$a1,0
addi $t1,$0,0
addi $t2,$0,1
loop:
beq $t1,$s1,floop
mult $t2,$s0
mflo $t2
addi $t1,$t1,1
j loop
floop:
addi $v0,$t2,0
jr $ra

fim:
addi $s3,$v0,0
sw $s3,8($t0)




.data
numbers: .word 5,3