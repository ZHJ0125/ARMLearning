; �˳���������֤MOVָ�����������Ҫ��
; MOVָ���Ҫ���ǣ���������������Ч��8bit���ݣ�����ż������λ�õ����������ſ���
	area cseg,code,readonly
entry
start
	MOV R0,#0x12000000
	MOV R7,#0x12345678
	MOV R6,#0x12348765
	MOV R5,#0x12786678
	MOV R4,#0x56781234
	MOV R11,#0x11111111
	MOV R10,#0x11112222
	MOV R9,#0x22223333
	MOV R6,#0x44466688
	adds r0, r4,R8
	adcs R1,R5,R9
	adcs R2,R6,R10
	adc R3,R7,R11
	nop
	nop
	nop
	end
