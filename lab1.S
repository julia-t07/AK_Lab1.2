.global lab1
.syntax unified
#define A #1
#define B #2
#define C #3
lab1:

	push {lr}
	mov r0, A
	mov r1, B
	mov r2, C
	sub r3, r0, r1
	cmp r3, #0
	it ge
	addge r3, r1, r0
	sdiv r3, r2
	pop {pc}
