	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	mov r3,#1       @L1=1
	mov r4,#-1	@L2=-1
	mov r5,#0	@total=0

	@ END CODE MODIFICATION
loop:
	add r5,r3,r4	@total=L1+L2
	mov r4,r3	@L2=L1
	mov r3,r5	@L1=total
	subs r0,r0,#1	@x--
	
	cmp r0,#0	@while (x>=0)
	bge loop

	mov r0,r5  @retun value
	pop {r3,r4,r5,pc}
	
	.size fibonacci, .-fibonacci
	.end
