section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, nama
	mov edx, 5
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, nama2
	mov edx, 7
	int 0x80

section .data
nama db "amay "
nama2 db "ganteng"