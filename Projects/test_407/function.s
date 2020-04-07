	area sum, code, readonly
	export sum
start
	adds r0, r0, r2
	adc r1, r1, r3
	mov pc, lr
	end