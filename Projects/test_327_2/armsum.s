	area cseg, code, readonly
	entry
start
	;��ʼ������
	mov r5, #0
	mov r1, #10
addsum
	add r5,r5,r1
	subs r1,r1,#1
	mov sp, lr
	bne addsum
	nop
	nop
	end