@This routine prevents the use of the RUN option. Overwrite the code at 08159436. Because this really isn't that much code just use the precompiled version: 30 BC 01 BC 00 47

.thumb
.thumb_func

main:
pop {r4,r5}
pop {r0}
bx r0

