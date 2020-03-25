; 用来测试ARM的比较指令
	area dseg,data,readwrite
data1 dcb 0x20,0x40
	area cseg,code,readonly
	entry
start
	;Test TEQ instruction
	mov r0, #1
	mov r1, #1
	mov r2, #-1
	mov r3, #3
	teq r0, r1
	teq r0, r2
	teq r0, r3

	;Test TST instruction
	;mov r0, #0xf1
	;tst r0, #0x01
	;tst r0, #0xf0
	;tst r0, #0x02

	;Test CMN instruction
	;mov r0, #-1
	;mov r1, #1
	;mov r2, #-2
	;mov r3, #2
	;cmn r1, r0	; 1  -1
	;cmn r1, r2	; 1  -2
	;cmn r0, r3	; -1  2
	

	;Test CMP instruction
	;mov r0, #1
	;mov r1, #1
	;mov r2, #2
	;cmp r0, r1	; r0==r1
	;cmp r0, r2	; r0 < r2
	;cmp r2, r0	; r2 > r0

	;Test BIC instruction
	;mov r0, #0xff
	;bic r0, r0, #0xf

	;Test EOR instruction
	;mov r0, #0xf0
	;mov r1, #0x0f
	;eor r2, r0, r1
	;eor r0, r0, #0x00ff

	;Test ORR instruction
	;mov r0, #0xf0
	;mov r1, #0x0f
	;orr r2, r0, r1
	;orr r0, r0, #1

	;Test MVN instruction
	;mov r0, #0xfffffffe
	;mvn r1, #0xfffffffe
	;mvn r2, r0

	;Test SUB instruction
	;mov r0, #5
	;mov r1, #3
	;sub r2, r0, r1
;loop
	;subs r0, r0, #1
	;add r3, r3, #1
	;bne loop

	;Test AND instruction
	;mov r0, #0xf0
	;mov r1, #0x0f
	;and r2, r0, r1

	;Test ADC instruction
	;mov r0, #0xfffffffe
	;mov r1, #1
	;mov r2, #0x3
	;mov r3, #1
	;adds r4, r0, r2 
	;adc r5, r1, r3

	;Test MOV and ADD instruction
	;ldr r1,=data1
	;ldrb r0,[r1]
	
	;Test ADD instruction
	;add r0, r0, #1
	;add r2, r0, r0, lsl #3
	;add r3, pc, #2
	
	;Test MOV instruction
	;mov r5,#512
	;mov r6,#32
	;mov r7,#4
	;mov r8,#35
	;mov r2,r0,lsl r5
	;mov r3,r0,lsl r6
	;mov r4,r0,lsl r7
	;mov r9,r0,lsl r8
	
	nop
	nop
	;b start
	end