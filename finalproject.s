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
	mov	BYTE PTR str.0[rip], 115
	mov	BYTE PTR str.0[rip+1], 101
	mov	BYTE PTR str.0[rip+2], 99
	mov	BYTE PTR str.0[rip+3], 114
	mov	BYTE PTR str.0[rip+4], 101
	mov	BYTE PTR str.0[rip+5], 116
	lea	rax, str.0[rip]
	pop	rbp
	ret
	.size	cocomelon, .-cocomelon
	.section	.rodata
.LC0:
	.string	"red herring?"
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
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, 0
	call	cocomelon
	mov	QWORD PTR -8[rbp], rax
	cmp	DWORD PTR -20[rbp], 1
	jne	.L12
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	transform
	mov	esi, eax
	mov word ptr[rbp - 70], 0x6854
	mov word ptr[rbp - 68], 0x2065
	mov word ptr[rbp - 66], 0x6966
	mov word ptr[rbp - 64], 0x7372
	mov word ptr[rbp - 62], 0x2074
	mov word ptr[rbp - 60], 0x756e
	mov word ptr[rbp - 58], 0x626d
	mov word ptr[rbp - 56], 0x7265
	mov word ptr[rbp - 54], 0x6920
	mov word ptr[rbp - 52], 0x2073
	mov word ptr[rbp - 50], 0x6425
	mov word ptr[rbp - 48], 0x0a2e
	mov word ptr[rbp - 46], 0x0000
	lea rax, [rbp-70]
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
	jg	.L13
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
.L13:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
.L14:
	mov	eax, 0
	jmp	.L15
.L12:
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L16
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L17
.L16:
	mov word ptr[rbp - 70], 0x6f79
	mov word ptr[rbp - 68], 0x2075
	mov word ptr[rbp - 66], 0x6964
	mov word ptr[rbp - 64], 0x6e64
	mov word ptr[rbp - 62], 0x7427
	mov word ptr[rbp - 60], 0x6520
	mov word ptr[rbp - 58], 0x746e
	mov word ptr[rbp - 56], 0x7265
	mov word ptr[rbp - 54], 0x7420
	mov word ptr[rbp - 52], 0x6568
	mov word ptr[rbp - 50], 0x6320
	mov word ptr[rbp - 48], 0x726f
	mov word ptr[rbp - 46], 0x6572
	mov word ptr[rbp - 44], 0x7463
	mov word ptr[rbp - 42], 0x7020
	mov word ptr[rbp - 40], 0x7361
	mov word ptr[rbp - 38], 0x7773
	mov word ptr[rbp - 36], 0x726f
	mov word ptr[rbp - 34], 0x0064
	lea rax, [rbp-70]
	mov	rdi, rax
	call	puts@PLT
.L17:
	mov	eax, 0
.L15:
	leave
	ret
	.size	main, .-main
	.data
	.type	str.0, @object
	.size	str.0, 7
str.0:
	.string	".dynsy"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
