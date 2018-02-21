section .data
	printtxt db "Hello, what is your name?",10
	rettxt db "Nice to meet you, ",10

section .bss
	inputname resb 20

section .text
	global _start

_start:

	mov rax, 1
	mov rdi, 1
	mov rsi, printtxt
	mov rdx, 26
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, inputname
	mov rdx, 20
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, rettxt
	mov rdx, 19
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, inputname
	mov rdx, 20
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
