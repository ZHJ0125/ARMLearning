; 用来测试ARM数据加载指令LDR&ldmia&ldrb
	area dseg, data, readwrite
str1 dcb 0x12, 0x34, 0x56, 0x78
str2 dcw 0x12, 0x34, 0x56, 0x78
str3 dcd 0x12, 0x34, 0x56, 0x78
	area cseg, code, readonly
	entry
start
	ldr r0, =str1
	ldr r1, =str2
	ldr r2, =str3
	
	ldmia r0, {r3-r6}
	ldmia r1, {r7-r10}
	ldmia r2, {r11-r14}
	ldrb r5, [r0]
	ldrb r6, [r1]
	ldrb r7, [r2]
	
	mov r0, #0x78		;#0x00000078
	mov r1, #0x67
	mov r2, pc
	nop
	nop
loop b start
	end