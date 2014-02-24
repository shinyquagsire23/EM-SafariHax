@Place pointer to this routine at 0x0805653C and a bx r1 (08 47) at 0x080564CA
@This routine hijacks the ball chance table and allows all Pokeballs to temporarily become Master Balls. This routine also serves as the function to reset variable 0x4FFF

.thumb
.thumb_func

main:
push {r0-r3}
ldr r1, var_decrypt
ldr r0, var_4fff
bl bx_r1
mov r1, r0
cmp r1, #0x80
beq over9000
mov r1, #0x0
strh r1, [r0]

pop {r0-r3}
ldr r1, chance_table
ldrh r0, [r2]
sub r0, #0x2
add r0, r0, r1
ldrb r4, [r0]

goback:
ldr r0, return
bx r0

over9000:
mov r1, #0x0
strh r1, [r0]
pop {r0-r3}
mov r4, #0x0
sub r4, #0x1 @Makes r4 0xFFFFFFFF (or 0xFFFFFFFE, not sure. :/)
b goback

bx_r1:
bx r1

.align 2

return: .word 0x080564D2+1
var_decrypt: .word 0x0809D694+1
var_4fff: .word 0x00004FFF
chance_table: .word 0x0831C48D
