	area dataseg, data, readwrite
str1 dcd 0x1234,0x5678,0x3333,0x4444
str2 dcd 0,0,0,0
str3 dcd 0,0,0,0
	area codeseg, code,readonly
	entry
start
	ldr r13,=str3
	ldr r0, =str1
	ldmia r0!,{r1,r3,r2,r4}
	stmfa r13!,{r1-r4}
	nop
	nop
	nop
	end