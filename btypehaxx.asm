@To insert this routine, place the pointer (+1) at 0xB08E8 and a bx r1 (08 47) at 0xB08B6.

@ Also, as a note,
@ 08030F12
@ Changes the ball that the Safari Zone menu uses

.thumb
.thumb_func

main:
ldr r0, safari_balls
mov r1, #0x1
strb r1, [r0]
ldr r1, var_decrypt
ldr r0, var_4fff
bl bx_r1
ldrh r0, [r0]
cmp r0, #0x0
beq normalbattle
b store
normalbattle:
mov r0, #0x0

store:
ldr r1, battle_flag
strh r0, [r1]
ldr r0, return

bx_r0:
bx r0

bx_r1:
bx r1

.align 2

battle_flag: .word 0x02022FEC
safari_balls: .word 0x0203A04C
var_decrypt: .word 0x0809D694+1
var_4fff: .word 0x00004FFF
return: .word 0x080B08BA+1
