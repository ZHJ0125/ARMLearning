	area dseg,data,readwrite    	;定义数据段
data1  dcd 2,5,0,3,-4,5,0,10,9    	;数组 data1
data2  dcd 3,5,4,-2,0,8,3,-10,5    	;数组 data2
sptop % 500
	area cseg,code,readonly
	entry
start
	ldr r0, =data1
	ldr r1, =data2
	ldr sp, =sptop
	b start
	end