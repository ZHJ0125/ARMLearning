	area csseg, code, readonly
	entry
start
	mov r0, #15
	mov r1, #32
	;Bָ������ص�ַ
	;mov lr, pc
	;b addsum
	;BLָ��Ὣ���ص�ַ�浽LR��
	bl addsum
	;BX��ģʽ�л�����ת��ʽ
	;bx addsum
	;BXL��ģʽ�л����Զ����淵�ص�ַ
	;bxl addsum
	mov r3,r2
	nop
	nop
	b start
addsum
	add r2, r0, r1
	mov pc, lr
	end