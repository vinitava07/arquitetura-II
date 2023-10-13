.text
.globl main
#s0 = x
main:
addi $t0,$zero,0x1001
sll $t0,$t0,16
addi $t9,$zero,4 # potencia = 4
addi $t2,$zero,1 # contador
lw $s0,0($t0)
addi $t8,$s0,0 # t8 = x
slti $t1,$s0,0 #verifica se x é menor que 0
beq $t1,$zero,maior #se x for maior que 0 goto maior
loop:
slt $t4,$t2,$t9 # verifica se contador < potencia
beq $t4,$zero,fim1 # contador >= potencia goto fim1, se nao faz a op de pow
mult $t8,$s0
mflo $t8
addi $t2,$t2,1
j loop

fim1:
addi $t8,$t8,-1
sw $t8,4($t0)
j fim
#caso ele seja maior o funcionamento é o mesmo só que potencia--
maior:
addi $t9,$t9,-1
loop2:
slt $t4,$t2,$t9
beq $t4,$zero,fim2
mult $t8,$s0
mflo $t8
addi $t2,$t2,1
j loop2

fim2:
addi $t8,$t8,1
sw $t8,4($t0)

fim:



.data
x: .word 5
y: .word 0
