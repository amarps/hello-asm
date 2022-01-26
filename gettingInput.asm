section .data
	inMsg db ">"
	lenInMsg equ $-inMsg
	outMsg db "Executing("
	lenOutMsg equ $-outMsg
	closePharentesis db ")", 0xa

section .bss
	inputMsg resb 5

section .text
	global _start

_start:

; text asking to get input
	mov eax, 4
	mov ebx, 1
	mov ecx, inMsg
	mov edx, lenInMsg
	int 80h

; getting input
	mov eax, 3
	mov ebx, 2
	mov ecx, inputMsg
	mov edx, 5
	int 80h

; outputing out msg
	mov eax, 4
	mov ebx, 1
	mov ecx, outMsg
	mov edx, lenOutMsg
	int 80h

; outputting usermsg
	mov eax, 4
	mov ebx, 1
	mov ecx, inputMsg
	mov edx, 5
	int 80h

; outputing out msg
	mov eax, 4
	mov ebx, 1
	mov ecx, closePharentesis
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h