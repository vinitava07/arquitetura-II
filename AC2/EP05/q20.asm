.text 
.globl main
main:
#s0 = x
addi $t0,$zero,0x1001 #t0 = 0x1001
sll $t0,$t0,16 #t0 = pos 1 mem
addi $t1,$zero,5 #t1 = 5 - pow
addi $t2,$zero,1 # t2 = contador
lw $s0,0($t0) # load mem pos t0 in s0
add $t7,$zero,$s0

add $t3,$zero,$s0 #t3 = x
andi $t3,$t3,0x1 #and t3,1 verifica o ultimo bit
beq $t3,$zero,par #se t3 = 0 -> par, se nao goto impar
j impar

par:
addi $t1,$t1,-1 # subtrai 1 da potencia
loop:
slt $t4,$t2,$t1 #verifica se contador < pow
beq $t4,$zero,par2 # se contador >= pow chama prox op para proxima pow
mult $t7,$s0
mflo $t7
addi $t2,$t2,1
j loop

par2:
addi $t1,$t1,-1
addi $t2,$zero,1 # t2 = contador
addi $t8,$t7,0 # t8 = total
add $t7,$zero,$s0 # t7 = x novamente
loop2:
slt $t4,$t2,$t1
beq $t4,$zero,par3
mult $t7,$s0
mflo $t7
addi $t2,$t2,1
j loop2

par3:
addi $t1,$t1,-1
addi $t2,$zero,1 # t2 = contador
add $t8,$t7,$t8 # t8 = total
add $t7,$zero,$s0 # t7 = x novamente
loop3:
slt $t4,$t2,$t1
beq $t4,$zero,fimpar
mult $t7,$s0
mflo $t7
addi $t2,$t2,1
j loop3

fimpar:
addi $t9,$0,-2 # -2 em t9
mult $t7,$t9 # multiplica x ^2 por -2
mflo $t7
add $t8,$t8,$t7 #add final
sw $t8,4($t0)
j fim
#o impar funciona semelhante ao par, mudando somente os numeros
impar:
slt $t4,$t2,$t1
beq $t4,$zero,impar2
mult $t7,$s0
mflo $t7
addi $t2,$t2,1
j impar

impar2:
addi $t1,$t1,-2
addi $t2,$zero,1 # t2 = contador
addi $t8,$t7,0 # t8 = total
add $t7,$zero,$s0 # t7 = x novamente
loopImpar:
slt $t4,$t2,$t1
beq $t4,$zero,impar3
mult $t7,$s0
mflo $t7
addi $t2,$t2,1
j loopImpar

impar3:
sub $t8,$t8,$t7
addi $t8,$t8,1
sw $t8,4($t0)

fim:


.data
x: .word 3
y: .word 0