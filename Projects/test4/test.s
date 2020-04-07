	area cseg, code, readonly
	global cseg
start
	add r0, r0, r1
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	
	ldmfd sp!, {r5,r6,r7,r8}
	
	sub r0, r0, r5
	sub r0, r0, r6
	sub r0, r0, r7
	sub r0, r0, r8
	
	mov pc, lr
	end