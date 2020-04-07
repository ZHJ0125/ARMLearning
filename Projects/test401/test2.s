	area dseg,data,readwrite    	;定义数据段
data1  dcd 2,5,0,3,-4,5,0,10,9    	;数组 data1
data2  dcd 3,5,4,-2,0,8,3,-10,5    	;数组 data2
sum    dcd 0,0,0,0,0,0,0,0,0        ;数组 sum

	area cseg,code,readonly			;定义代码段
	entry      
	code32
start  ldr r1,=data1		;数组 data1 的首地址存入到 r1
	ldr r2,=data2			;数组 data2 的首地址存入到 r2
	ldr r3,=sum				;数组 sum 的首地址存入到 r3
	mov r0,#0				;计数器 r0 的初始值置 0
loop   ldr r4,[r1],#04		;取 data1 数组的一个数,同时修改地址指针
	ldr r5,[r2],#04			;取 data1 数组的一个数,同时修改地址指针
	adds r4,r4,r5			;相加并影响标志位
	add r0,r0,#1			;计数器加 1
	str r4,[r3],#04			;保存结果到 sum 中,同时修改地址指针
	bne loop				;若相加的结果不为 0 则循环
	end