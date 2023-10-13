.text
.globl main
main:
addi $t0,$zero,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
slti $t1,$s0,0
bne $t1,$zero,abs
j fim

abs:
sra $t2,$s0,31
xor $s0,$s0,$t2
sub $s0,$s0,$t2
sw $s0,0($t0)

fim:

.data

A: .word -5