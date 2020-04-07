	area csseg, code, readonly
	entry
start
	mov r0, #15
	mov r1, #32
	;B指令不带返回地址
	;mov lr, pc
	;b addsum
	;BL指令会将返回地址存到LR中
	bl addsum
	;BX带模式切换的跳转方式
	;bx addsum
	;BXL带模式切换且自动保存返回地址
	;bxl addsum
	mov r3,r2
	nop
	nop
	b start
addsum
	add r2, r0, r1
	mov pc, lr
	end