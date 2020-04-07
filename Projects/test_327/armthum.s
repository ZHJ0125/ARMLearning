	area cseg, code, readonly
	entry
	code32
start
	adr r0, run1+1
	bx r0
	code16
run1
	mov r1, #13
	mov r2, #14
	mov r3, #15
	mov r4, #25
	bl addsum
stop
	mov r0, #0x18
	ldr r1, =0x20026
	swi 0xab
addsum
	mov r0, #0
	add r0, r1, r2
	add r0, r3, r4
	mov pc, lr
	end