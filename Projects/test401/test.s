; 已知 32 位有符号数 X 存放在存储器的地址 0x90010 中，
; 要求实现一个分段函数。X>0时，Y=1；X=0时，Y=0；X<0时，Y=-1
    area cseg,code,readonly
    entry
    code32
start  ldr r1,=0x90010
    ldr r2,[r1]				;加载变量 X 的地址->R1
    cmp r2,#0				;与 0 比较
    beq zero				;为 0 则跳转到 ZERO 处理
    bgt plus				;大于 0 则跳转到 PLUS 处理
    mov r0,#-1				;否则小于 0, 将 R0 设置为-1
    b finish				;跳转到结束
plus   mov r0,#1			;大于 0, 将 R0 设置为 0
    b finish				;跳转到结束
zero   mov r0,#0			;等于 0, 将 R0 设置为 0
finish str r0,[r1]			;将结果 R0 保存
    b start
    end