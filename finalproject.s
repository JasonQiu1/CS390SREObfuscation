	.file	"finalproject.c"
	.intel_syntax noprefix
	.text
	.globl	transform
	.type	transform, @function
transform:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	add	DWORD PTR -20[rbp], eax
	add	DWORD PTR -24[rbp], 1
.L2:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	jb	.L3
	mov	eax, DWORD PTR -20[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	transform, .-transform
	.globl	garbage
	.type	garbage, @function
garbage:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L7:
	mov	DWORD PTR -12[rbp], 0
	add	DWORD PTR -12[rbp], 5
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, edx
	sal	eax, 4
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L6:
	cmp	DWORD PTR -4[rbp], 4
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	garbage, .-garbage
	.globl	cocomelon
	.type	cocomelon, @function
cocomelon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edi, 7
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L10
	mov	edi, 1
	call	exit@PLT
.L10:
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 1280669505
	mov	WORD PTR 4[rax], 25927
	mov	BYTE PTR 6[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], 115
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	mov	BYTE PTR [rax], 101
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 2
	mov	BYTE PTR [rax], 99
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 3
	mov	BYTE PTR [rax], 114
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 4
	mov	BYTE PTR [rax], 101
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 5
	mov	BYTE PTR [rax], 116
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	.size	cocomelon, .-cocomelon
	.section	.rodata
.LC0:
	.string	"red herring?"
.LC1:
	.string	"The first number is %d.\n"
.LC2:
	.string	"The second number is %d.\n"
.LC3:
	.string	"which branch?"
.LC4:
	.string	"AWOOGA!"
.LC5:
	.string	"HMMMMMM"
	.align 8
.LC6:
	.string	"Correct password entered, the location is: ..."
	.align 8
.LC7:
	.string	"you didn't enter the correct password"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, 0
	call	cocomelon
	mov	QWORD PTR -8[rbp], rax
	cmp	DWORD PTR -20[rbp], 1
	jne	.L13
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	transform
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	call	garbage
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	transform
	cmp	eax, 999
	jg	.L14
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L15
.L14:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
.L15:
	mov	eax, 0
	jmp	.L16
.L13:
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L17
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L18
.L17:
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
.L18:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, 0
.L16:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
