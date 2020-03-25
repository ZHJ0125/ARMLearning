; 实现两个128位二进制数相加
	area dseg, data, readwrite
; 第一个128位数的数据
number1_a dcb 0x11, 0x22, 0x33, 0x44
number1_b dcb 0x55, 0x66, 0x77, 0x88
number1_c dcb 0x78, 0x56, 0x34, 0x12
number1_d dcb 0x12, 0x34, 0x56, 0x78
; 第二个128位数的数据
number2_a dcb 0x12, 0x34, 0x56, 0x78
number2_b dcb 0x78, 0x56, 0x34, 0x12
number2_c dcb 0x55, 0x66, 0x77, 0x88
number2_d dcb 0x11, 0x22, 0x33, 0x44
	area cseg, code, readonly
	entry
start
    ; 第一个数的数据装入寄存器 R4-R7
    ldr r4, number1_a
    ldr r5, number1_b
    ldr r6, number1_c
    ldr r7, number1_d
    ; 第二个数的数据装入寄存器 R8-R11
    ldr r8, number2_a
    ldr r9, number2_b
    ldr r10, number2_c
    ldr r11, number2_d
    ; 将相加结果装入 R0-R3
    ; 带进位加法运算，同时影响标志位
    adds r0, r4, r8
    adcs r1, r5, r9
    adcs r2, r6, r10
    adcs r3, r7, r11
    nop
	nop
	end
