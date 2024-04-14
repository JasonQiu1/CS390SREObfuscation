	.file	"finalproject.c"
	.intel_syntax noprefix
	.text
	.globl	redacted
	.data
	.align 8
	.type	redacted, @object
	.size	redacted, 9
redacted:
	.string	"redacted"
	.globl	prefix
	.type	prefix, @object
	.size	prefix, 5
prefix:
	.ascii	"\"1P]U"
	.globl	section1
	.align 16
	.type	section1, @object
	.size	section1, 24
section1:
	.long	45
	.long	16
	.long	64
	.long	14
	.long	21
	.long	80
	.globl	section3
	.align 16
	.type	section3, @object
	.size	section3, 28
section3:
	.long	41
	.long	77
	.long	67
	.long	76
	.long	241
	.long	209
	.long	238
	.globl	location
	.align 32
	.type	location, @object
	.size	location, 120
location:
	.long	42
	.long	61
	.long	64
	.long	77
	.long	81
	.long	28
	.long	33
	.long	17
	.long	45
	.long	92
	.long	8
	.long	95
	.long	50
	.long	99
	.long	72
	.long	1
	.long	30
	.long	0
	.long	66
	.long	22
	.long	30
	.long	85
	.long	6
	.long	0
	.long	86
	.long	59
	.long	14
	.long	88
	.long	1
	.long	82
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
	.globl	indirection
	.type	indirection, @function
indirection:
	add 	DWORD PTR [RSP], 9
	ret
	.size	indirection, .-indirection
	.globl	checkPrefix
	.type	checkPrefix, @function
checkPrefix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rax, 4
	ja	.L12
	mov	eax, 0
	jmp	.L13
.L12:
	mov	DWORD PTR -4[rbp], 97
	mov	DWORD PTR -8[rbp], 0
	jmp	.L14
.L16:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	xor	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, prefix[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	movsx	eax, al
	cmp	edx, eax
	jne	.L15
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	jmp	.L14
.L15:
	mov	eax, 0
	jmp	.L13
.L14:
	cmp	DWORD PTR -8[rbp], 4
	jle	.L16
	mov	eax, 1
.L13:
	leave
	ret
	.size	checkPrefix, .-checkPrefix
	.globl	checkSparko
	.type	checkSparko, @function
checkSparko:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
.L21:
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 6
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	ecx, al
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, section1[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	cmp	eax, 128
	je	.L19
	mov	eax, 0
	jmp	.L20
.L19:
	add	DWORD PTR -4[rbp], 1
.L18:
	cmp	DWORD PTR -4[rbp], 5
	jle	.L21
	mov	eax, 1
.L20:
	pop	rbp
	ret
	.size	checkSparko, .-checkSparko
	.globl	checkLink
	.type	checkLink, @function
checkLink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	eax, 0
	call	cocomelon2
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 13
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L23
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 14
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L23
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 15
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 2
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L23
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 16
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 3
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
	movzx	eax, al
	jmp	.L22
.L23:
.L22:
	leave
	ret
	.size	checkLink, .-checkLink
	.globl	checkOshotse
	.type	checkOshotse, @function
checkOshotse:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 18
	mov	DWORD PTR -8[rbp], 7
	mov	DWORD PTR -12[rbp], 0
	mov	eax, 0
	call	garbage
	call 	indirection
	mov rdi, QWORD PTR -24[rbp]
	call checkSparko
	jmp	.L26
.L29:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 18
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	xor	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, section3[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	je	.L27
	mov	eax, 0
	jmp	.L28
.L27:
	add	DWORD PTR -4[rbp], 34
	add	DWORD PTR -12[rbp], 1
	sub	DWORD PTR -8[rbp], 1
.L26:
	cmp	DWORD PTR -8[rbp], 0
	jg	.L29
	mov	eax, 1
.L28:
	leave
	ret
	.size	checkOshotse, .-checkOshotse
	.globl	checkQiu
	.type	checkQiu, @function
checkQiu:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -4[rbp], -559038737
	mov	DWORD PTR -8[rbp], 1
	jmp	.L31
.L32:
	mov	eax, DWORD PTR -8[rbp]
	xor	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L31:
	cmp	DWORD PTR -8[rbp], 25
	jle	.L32
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	cocomelon3
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L33
.L36:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 26[rdx]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	movzx	edx, BYTE PTR [rdx]
	movsx	edx, dl
	add	edx, 3
	cmp	eax, edx
	je	.L34
	mov	eax, 0
	jmp	.L35
.L34:
	add	DWORD PTR -12[rbp], 1
.L33:
	cmp	DWORD PTR -12[rbp], 2
	jle	.L36
	mov	eax, 1
.L35:
	leave
	ret
	.size	checkQiu, .-checkQiu
	.globl	cocomelon
	.type	cocomelon, @function
cocomelon:
	push	rbp
	mov	rbp, rsp
	mov	BYTE PTR str.2[rip], 115
	mov	BYTE PTR str.2[rip+1], 101
	mov	BYTE PTR str.2[rip+2], 99
	mov	BYTE PTR str.2[rip+3], 114
	mov	BYTE PTR str.2[rip+4], 101
	mov	BYTE PTR str.2[rip+5], 116
	lea	rax, str.2[rip]
	pop	rbp
	ret
	.size	cocomelon, .-cocomelon
	.globl	cocomelon2
	.type	cocomelon2, @function
cocomelon2:
	push	rbp
	mov	rbp, rsp
	mov	BYTE PTR str.1[rip], 76
	mov	BYTE PTR str.1[rip+1], 49
	mov	BYTE PTR str.1[rip+2], 110
	mov	BYTE PTR str.1[rip+3], 107
	lea	rax, str.1[rip]
	pop	rbp
	ret
	.size	cocomelon2, .-cocomelon2
	.globl	cocomelon3
	.type	cocomelon3, @function
cocomelon3:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	BYTE PTR str.0[rip], 84
	mov	BYTE PTR str.0[rip+1], 52
	mov	BYTE PTR str.0[rip+2], 120
	lea	rax, str.0[rip]
	pop	rbp
	ret
	.size	cocomelon3, .-cocomelon3
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
.LC6:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	mov	eax, 0
	call	cocomelon
	mov	QWORD PTR -16[rbp], rax
	cmp	DWORD PTR -36[rbp], 1
	jne	.L44
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
	jg	.L45
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L46
.L45:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
.L46:
	mov	eax, 0
	jmp	.L47
.L44:
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	checkPrefix
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L48
	lea	rax, redacted[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L49
.L48:
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	add	rax, 5
	movzx	eax, BYTE PTR [rax]
	cmp	al, 123
	jne	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	checkSparko
	test	eax, eax
	je	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	add	rax, 12
	movzx	eax, BYTE PTR [rax]
	cmp	al, 95
	jne	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	checkLink
	test	eax, eax
	je	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	add	rax, 17
	movzx	eax, BYTE PTR [rax]
	cmp	al, 95
	jne	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	checkOshotse
	test	eax, eax
	je	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	add	rax, 25
	movzx	eax, BYTE PTR [rax]
	cmp	al, 95
	jne	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	checkQiu
	test	eax, eax
	je	.L49
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	add	rax, 29
	movzx	eax, BYTE PTR [rax]
	cmp	al, 125
	jne	.L49
	mov	DWORD PTR -4[rbp], 0
	jmp	.L50
.L51:
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	ecx, al
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, location[rip]
	mov	eax, DWORD PTR [rdx+rax]
	xor	eax, ecx
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
.L50:
	cmp	DWORD PTR -4[rbp], 29
	jle	.L51
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
.L49:
	mov	eax, 0
.L47:
	leave
	ret
	.size	main, .-main
	.data
	.type	str.2, @object
	.size	str.2, 7
str.2:
	.string	".dynsy"
	.type	str.1, @object
	.size	str.1, 5
str.1:
	.string	"__gm"
	.type	str.0, @object
	.size	str.0, 4
str.0:
	.string	".ab"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
