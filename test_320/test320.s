; 用来测试协处理器指令
	area dseg,data,readwrite
data1 dcb 0x20,0x40
data2 dcb 0x12, 0x34, 0x56, 0x78
	area cseg,code,readonly
	entry
start
	;ldr r1, =data1
	;ldr r0, =data2
	;cdp p15,2,c12,c10,c3,4
	
	mrc p15, 0, r0, c0, c0, 0	; 将主标示符寄存器的内容读到AMR寄存器R0中
	mrc p15, 0, r0, c0, c0, 1	; 将cache类型标识符寄存器的内容读到AMR寄存器R0中
	mrc p15, 0, r0, c5, c0, 0	; 访问数据失效状态寄存器
	mrc p15, 0, r0, c5, c0, 1	; 访问指令状态失效寄存器
	mrc p15, 0, r0, c6, c0, 0	; 访问数据失效地址寄存器
	mrc p15, 0, r0, c6, c0, 2	; 访问指令失效地址寄存器
	
	;mcr p15, 3, r0, c4, c5, 6
	;ldc p6, c4, [r4]
	;ldc p6, c4, [r2, #4]
	;stc p15, c8, [r0, #4]!
	;stc p8, c9, [r2], #-16
	
	;movs r2, #0x80000000
	
	nop
	nop
	b start
	end