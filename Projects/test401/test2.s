	area dseg,data,readwrite    	;�������ݶ�
data1  dcd 2,5,0,3,-4,5,0,10,9    	;���� data1
data2  dcd 3,5,4,-2,0,8,3,-10,5    	;���� data2
sum    dcd 0,0,0,0,0,0,0,0,0        ;���� sum

	area cseg,code,readonly			;��������
	entry      
	code32
start  ldr r1,=data1		;���� data1 ���׵�ַ���뵽 r1
	ldr r2,=data2			;���� data2 ���׵�ַ���뵽 r2
	ldr r3,=sum				;���� sum ���׵�ַ���뵽 r3
	mov r0,#0				;������ r0 �ĳ�ʼֵ�� 0
loop   ldr r4,[r1],#04		;ȡ data1 �����һ����,ͬʱ�޸ĵ�ַָ��
	ldr r5,[r2],#04			;ȡ data1 �����һ����,ͬʱ�޸ĵ�ַָ��
	adds r4,r4,r5			;��Ӳ�Ӱ���־λ
	add r0,r0,#1			;�������� 1
	str r4,[r3],#04			;�������� sum ��,ͬʱ�޸ĵ�ַָ��
	bne loop				;����ӵĽ����Ϊ 0 ��ѭ��
	end