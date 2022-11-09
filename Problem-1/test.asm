section     .text
global      _start

_start:
mov	eax, 0xFFEC
mov	word[eax], 0xAB

mov	eax, 1
mov	ebx, 1
int	0x80

section     .data
addr1 	equ 0x1234
