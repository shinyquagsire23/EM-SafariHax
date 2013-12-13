@Needed to put this somewhere
@ 08016AE2
@Changes the ball that the Safari Zone menu uses

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

battle_flag: .word 0x02022B4D @Ruby = 020239F8
safari_balls: .word 0x02039994 @Ruby = 02038808
var_decrypt: .word 0x0806E454+1
var_4fff: .word 0x00004FFF
return: .word 0x0807F8D8+1
