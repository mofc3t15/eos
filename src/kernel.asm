BITS 	32
section			.text
	align			4
	dd				0x1BADB002
	dd				0x00
	dd				- (0x1BADB002+0x00)

global start
EXTERN kmain		; this function is gonna be located in our c code(kernel.c)
start:

	cli         		; clears the interrupts 
	call kmain		; send processor to continue excution from the kernalMain function (in 'kernal.c' file) 
	hlt 				; halts the cpu(pause it from executing from this address)