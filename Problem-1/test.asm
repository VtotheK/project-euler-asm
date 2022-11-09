section     .text
global      _start

_start:

mov 	eax, 65
call 	print_num
call 	exit

print_num:
mov	ecx, 10
div	ecx	;edx remainder, eax quotinent
add	eax, 48
mov 	[value], eax
mov	ecx, value
mov 	edx, 4
mov	eax, 4
mov	ebx, 1
int	0x80 	;print value in ecx which is edx bytes length
ret

exit:
mov 	eax, 1
int	0x80

section .data
value	DW 0

