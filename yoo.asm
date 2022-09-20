global main
extern printf, scanf

section .text
	
main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	xor eax, eax
	lea rdi, [prompt1]
	call printf
	
	mov eax, 0
	lea rdi, [format1]
	lea rsi, [inti]
	call scanf

	xor eax, eax
	lea rdi, [format3]
	call printf

	xor eax, eax
	lea rdi, [prompt2]
	call printf

	mov eax, 0
	lea rdi, [format2]
	lea rsi, [strin]
	call scanf

	xor eax, eax
	lea rdi, [format4]
	call printf


	xor eax, eax
	mov edx, [inti]
	call printf

	xor eax, eax
	lea rdi, [format3]
	call printf

	xor eax, eax
	lea rdi, [format5]
	call printf

	xor eax, eax
	lea rdi, [strin]
	call printf

	xor eax, eax
	lea rdi, [format3]
	call printf

	add rsp, 16
	leave
	ret

section .data
	prompt1: db "Enter an Integer: ",0
	prompt2: db "Enter a String: ",0
	format1: db "%d",0
	format2: db "%s",0
	format3: db " ",10
	format4: db "The integer is: "
	format5: db "The string is: "

section .bss
	inti resb 8
	strin resb 100000
