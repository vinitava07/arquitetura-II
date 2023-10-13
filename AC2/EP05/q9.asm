.text
.globl main
main:
addi $t0,$zero,0x1001
sll $t0,$t0,16
lw $s0,0($t0)
lw $s1,4($t0)
lw $s2,8($t0)
lw $s3,12($t0)

add $s0,$s0,$s1
add $s2,$s2,$s3
add $s0,$s0,$s2

sw $s0,16($t0)

.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1