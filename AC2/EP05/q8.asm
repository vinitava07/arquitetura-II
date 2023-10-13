.text
.globl main
main:
#s8 = 0x12345678
addi $8,$zero,0x1234
sll $8,$8,16
ori $8,$8,0x5678
srl $9,$8,24
srl $10,$8,16
andi $10,$10,0x00FF
sll $11,$8,16
srl $11,$11,24
sll $12,$8,16
srl $12,$12,16
andi $12,$12,0x00FF


.data