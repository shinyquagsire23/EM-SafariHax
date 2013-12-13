@This routine prevents the use of the RUN option. Place the pointer to this function at 08012904 and BX R5 (28 47) at 080128A6

.thumb
.thumb_func

main:
push {r0-r2}
ldr r0, var_8005
ldrh r0, [r0]
cmp r0, #0x80
bge skips
pop {r0-r2}
ldr r5, someoffset
lsl r2, r1, #0x8
ldr r1, return
bx r1

skips:
pop {r0-r2}
ldr r1, skipit
bx r1

var_8005: 	.word 0x0202E8CE
someoffset: 	.word 0x02024D1E
return:		.word 0x080129A8+1
skipit:		.word 0x080129B2+1
