; ��֪ 32 λ�з����� X ����ڴ洢���ĵ�ַ 0x90010 �У�
; Ҫ��ʵ��һ���ֶκ�����X>0ʱ��Y=1��X=0ʱ��Y=0��X<0ʱ��Y=-1
    area cseg,code,readonly
    entry
    code32
start  ldr r1,=0x90010
    ldr r2,[r1]				;���ر��� X �ĵ�ַ->R1
    cmp r2,#0				;�� 0 �Ƚ�
    beq zero				;Ϊ 0 ����ת�� ZERO ����
    bgt plus				;���� 0 ����ת�� PLUS ����
    mov r0,#-1				;����С�� 0, �� R0 ����Ϊ-1
    b finish				;��ת������
plus   mov r0,#1			;���� 0, �� R0 ����Ϊ 0
    b finish				;��ת������
zero   mov r0,#0			;���� 0, �� R0 ����Ϊ 0
finish str r0,[r1]			;����� R0 ����
    b start
    end