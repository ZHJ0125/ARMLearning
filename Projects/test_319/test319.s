; ”√¿¥≤‚ ‘◊¥Ã¨ºƒ¥Ê∆˜∑√Œ ÷∏¡Ó
	area dseg,data,readwrite
data1 dcb 0x20,0x40
	area cseg,code,readonly
	entry
start
	MRS R0, CPSR
	ORR R0, R0, #0x80000000
	MSR CPSR_c, R0
	MSR CPSR_f, R0
	
	MRS R0, CPSR
	BIC R0, R0, #0x80
	MSR CPSR_f, #0x00
	;MSR CPSR_f, #0xffff		;ERROR
	MSR CPSR_c, R0
	
	MRS R0, CPSR
	BIC R0, R0, #0x1F
	ORR R0, R0, #0x11
	MSR CPSR_c, R0
	
	mrs r1,cpsr
	bic r1,r1,#0xc0
	msr cpsr_c,r1
	
	nop
	nop
	b start
	end