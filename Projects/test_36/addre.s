	area dataseg, data, readwrite
str1 dcd 0x1234, 0x5678, 0x3333, 0x4444
str2 dcd 0, 0, 0, 0
	area codeseg, code, readonly
	entry
start
	ldr r13, =str2
	ldr r0,  =str1
	ldmia r0!, {r1-r4}
	ldmfd r13!, {r1-r4}
	nop
	nop
	nop
	end