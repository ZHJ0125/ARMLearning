; ��������Э������ָ��
	area dseg,data,readwrite
data1 dcb 0x20,0x40
data2 dcb 0x12, 0x34, 0x56, 0x78
	area cseg,code,readonly
	entry
start
	;ldr r1, =data1
	;ldr r0, =data2
	;cdp p15,2,c12,c10,c3,4
	
	mrc p15, 0, r0, c0, c0, 0	; ������ʾ���Ĵ��������ݶ���AMR�Ĵ���R0��
	mrc p15, 0, r0, c0, c0, 1	; ��cache���ͱ�ʶ���Ĵ��������ݶ���AMR�Ĵ���R0��
	mrc p15, 0, r0, c5, c0, 0	; ��������ʧЧ״̬�Ĵ���
	mrc p15, 0, r0, c5, c0, 1	; ����ָ��״̬ʧЧ�Ĵ���
	mrc p15, 0, r0, c6, c0, 0	; ��������ʧЧ��ַ�Ĵ���
	mrc p15, 0, r0, c6, c0, 2	; ����ָ��ʧЧ��ַ�Ĵ���
	
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