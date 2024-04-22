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
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	add	DWORD PTR -24[rbp], eax
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	jb	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	transform, .-transform
	.globl	garbage
	.type	garbage, @function
garbage:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
.L7:
	mov	DWORD PTR -4[rbp], 0
	add	DWORD PTR -4[rbp], 5
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 4
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
.L6:
	cmp	DWORD PTR -12[rbp], 4
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	garbage, .-garbage
	.globl	indirection
	.type	indirection, @function
indirection:
.LFB8:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	indirection, .-indirection
	.globl	checkPrefix
	.type	checkPrefix, @function
checkPrefix:
.LFB9:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
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
	mov	DWORD PTR -8[rbp], 97
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
.L16:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	xor	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, prefix[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	movsx	eax, al
	cmp	edx, eax
	jne	.L15
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	jmp	.L14
.L15:
	mov	eax, 0
	jmp	.L13
.L14:
	cmp	DWORD PTR -4[rbp], 4
	jle	.L16
	mov	eax, 1
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	checkPrefix, .-checkPrefix
	.globl	checkSparko
	.type	checkSparko, @function
checkSparko:
.LFB10:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
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
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	checkSparko, .-checkSparko
	.globl	checkLink
	.type	checkLink, @function
checkLink:
.LFB11:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
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
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	checkLink, .-checkLink
	.globl	checkOshotse
	.type	checkOshotse, @function
checkOshotse:
.LFB12:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -12[rbp], 18
	mov	DWORD PTR -8[rbp], 7
	mov	DWORD PTR -4[rbp], 0
	mov	eax, 0
	call	garbage
	call 	indirection
	mov rdi, QWORD PTR -24[rbp]
	call checkSparko
	jmp	.L26
.L29:
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 18
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	xor	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, section3[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	je	.L27
	mov	eax, 0
	jmp	.L28
.L27:
	add	DWORD PTR -12[rbp], 34
	add	DWORD PTR -4[rbp], 1
	sub	DWORD PTR -8[rbp], 1
.L26:
	cmp	DWORD PTR -8[rbp], 0
	jg	.L29
	mov	eax, 1
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	checkOshotse, .-checkOshotse
	.globl	checkQiu
	.type	checkQiu, @function
checkQiu:
.LFB13:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -20[rbp], -559038737
	mov	DWORD PTR -16[rbp], 1
	jmp	.L31
.L32:
	mov	eax, DWORD PTR -16[rbp]
	xor	DWORD PTR -20[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L31:
	cmp	DWORD PTR -16[rbp], 25
	jle	.L32
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	cocomelon3
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L33
.L36:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -8[rbp]
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
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	checkQiu, .-checkQiu
	.globl	cocomelon
	.type	cocomelon, @function
cocomelon:
.LFB14:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	BYTE PTR str.2[rip], 115
	mov	BYTE PTR str.2[rip+1], 101
	mov	BYTE PTR str.2[rip+2], 99
	mov	BYTE PTR str.2[rip+3], 114
	mov	BYTE PTR str.2[rip+4], 101
	mov	BYTE PTR str.2[rip+5], 116
	lea	rax, str.2[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	cocomelon, .-cocomelon
	.globl	cocomelon2
	.type	cocomelon2, @function
cocomelon2:
.LFB15:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	BYTE PTR str.1[rip], 76
	mov	BYTE PTR str.1[rip+1], 49
	mov	BYTE PTR str.1[rip+2], 110
	mov	BYTE PTR str.1[rip+3], 107
	lea	rax, str.1[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	cocomelon2, .-cocomelon2
	.globl	cocomelon3
	.type	cocomelon3, @function
cocomelon3:
.LFB16:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	BYTE PTR str.0[rip], 84
	mov	BYTE PTR str.0[rip+1], 52
	mov	BYTE PTR str.0[rip+2], 120
	lea	rax, str.0[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	cocomelon3, .-cocomelon3
	.globl	convertTwoDigitHexStringToNumber
	.type	convertTwoDigitHexStringToNumber, @function
convertTwoDigitHexStringToNumber:
.LFB17:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -11[rbp]
	mov	edx, 2
	mov	rsi, rcx
	mov	rdi, rax
	call	strncpy@PLT
	mov	BYTE PTR -9[rbp], 0
	lea	rax, -11[rbp]
	mov	edx, 16
	mov	esi, 0
	mov	rdi, rax
	call	strtol@PLT
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	convertTwoDigitHexStringToNumber, .-convertTwoDigitHexStringToNumber
	.section	.rodata
.LC0:
	.string	"\n"
.LC1:
	.string	"which branch?"
.LC2:
	.string	"AWOOGA!"
.LC3:
	.string	"HMMMMMM"
.LC4:
	.string	"%d\n"
.LC5:
	.string	"red herring?"
	.text
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -48[rbp], 1
	mov	eax, 0
	lea r15, cocomelon
	lea r14, [rip+5]
	push r14
	push r15
	ret
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	nop
	lea r15, .L48
	push r15
	ret
.L83:
	cmp	DWORD PTR -48[rbp], 12
	ja	.L48
	mov	eax, DWORD PTR -48[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, .L50[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L50[rip]
	add	rax, rdx
	notrack jmp	rax
	.section	.rodata
	.align 4
	.align 4
.L50:
	.long	.L48-.L50
	.long	.L61-.L50
	.long	.L60-.L50
	.long	.L59-.L50
	.long	.L58-.L50
	.long	.L57-.L50
	.long	.L56-.L50
	.long	.L55-.L50
	.long	.L54-.L50
	.long	.L53-.L50
	.long	.L52-.L50
	.long	.L51-.L50
	.long	.L49-.L50
	.text
.L61:
	cmp	DWORD PTR -52[rbp], 2
	je	.L62
	mov	DWORD PTR -48[rbp], 12
	lea r15, .L48
	push r15
	ret
.L62:
	mov	DWORD PTR -48[rbp], 4
	lea r15, .L48
	push r15
	ret
.L60:
	mov	DWORD PTR -44[rbp], 0
	lea r15, .L65
	push r15
	ret
.L66:
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	ecx, al
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, location[rip]
	mov	eax, DWORD PTR [rdx+rax]
	xor	eax, ecx
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -44[rbp], 1
.L65:
	cmp	DWORD PTR -44[rbp], 29
	jle	.L66
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	DWORD PTR -48[rbp], 8
	lea r15, .L48
	push r15
	ret
.L59:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	lea r15, transform
	lea r14, [rip+5]
	push r14
	push r15
	ret
	cmp	eax, 999
	jg	.L67
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea r15, .L68
	push r15
	ret
.L67:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L68:
	mov	DWORD PTR -48[rbp], 0
	lea r15, .L48
	push r15
	ret
.L58:
	mov	DWORD PTR -40[rbp], 0
	lea r15, .L69
	push r15
	ret
.L70:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	lea r15, convertTwoDigitHexStringToNumber
	lea r14, [rip+5]
	push r14
	push r15
	ret
	mov	edx, DWORD PTR -40[rbp]
	movsx	rdx, edx
	mov	BYTE PTR -16[rbp+rdx], al
	add	QWORD PTR -32[rbp], 2
	add	DWORD PTR -40[rbp], 1
.L69:
	cmp	DWORD PTR -40[rbp], 4
	jle	.L70
	mov	rax, -16[rbp]
	push  	rax
	mov	rbx, rsp
	call	rbx
	call 	r12
	pop	rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	lea r15, checkPrefix
	lea r14, [rip+5]
	push r14
	push r15
	ret
	mov	DWORD PTR -36[rbp], eax
	cmp	DWORD PTR -36[rbp], 0
	jne	.L71
	mov	DWORD PTR -48[rbp], 5
	lea r15, .L48
	push r15
	ret
.L71:
	mov	DWORD PTR -48[rbp], 11
	lea r15, .L48
	push r15
	ret
.L57:
	lea	rax, redacted[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	DWORD PTR -48[rbp], 0
	lea r15, .L48
	push r15
	ret
.L56:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	lea r15, checkQiu
	lea r14, [rip+5]
	push r14
	push r15
	ret
	test	eax, eax
	je	.L73
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 29
	movzx	eax, BYTE PTR [rax]
	cmp	al, 125
	jne	.L73
	mov	DWORD PTR -48[rbp], 2
	lea r15, .L48
	push r15
	ret
.L73:
	mov	DWORD PTR -48[rbp], 8
	lea r15, .L48
	push r15
	ret
.L55:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	lea r15, checkSparko
	lea r14, [rip+5]
	push r14
	push r15
	ret
	test	eax, eax
	je	.L75
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 12
	movzx	eax, BYTE PTR [rax]
	cmp	al, 95
	jne	.L75
	mov	DWORD PTR -48[rbp], 9
	lea r15, .L48
	push r15
	ret
.L75:
	mov	DWORD PTR -48[rbp], 8
	lea r15, .L48
	push r15
	ret
.L54:
	mov	DWORD PTR -48[rbp], 0
	lea r15, .L48
	push r15
	ret
.L53:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	lea r15, checkLink
	lea r14, [rip+5]
	push r14
	push r15
	ret
	test	eax, eax
	je	.L77
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 17
	movzx	eax, BYTE PTR [rax]
	cmp	al, 95
	jne	.L77
	mov	DWORD PTR -48[rbp], 10
	lea r15, .L48
	push r15
	ret
.L77:
	mov	DWORD PTR -48[rbp], 8
	lea r15, .L48
	push r15
	ret
.L52:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	lea r15, checkOshotse
	lea r14, [rip+5]
	push r14
	push r15
	ret
	test	eax, eax
	je	.L79
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 25
	movzx	eax, BYTE PTR [rax]
	cmp	al, 95
	jne	.L79
	mov	DWORD PTR -48[rbp], 6
	lea r15, .L48
	push r15
	ret
.L79:
	mov	DWORD PTR -48[rbp], 8
	lea r15, .L48
	push r15
	ret
.L51:
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 5
	movzx	eax, BYTE PTR [rax]
	cmp	al, 123
	jne	.L81
	mov	DWORD PTR -48[rbp], 7
	lea r15, .L48
	push r15
	ret
.L81:
	mov	DWORD PTR -48[rbp], 8
	lea r15, .L48
	push r15
	ret
.L49:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	lea r15, transform
	lea r14, [rip+5]
	push r14
	push r15
	ret
	mov	esi, eax
	# hiding string
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
	lea r15, garbage
	lea r14, [rip+5]
	push r14
	push r15
	ret
	mov	esi, eax
	# hiding string
	mov word ptr[rbp - 70], 0x6854
	mov word ptr[rbp - 68], 0x2065
	mov word ptr[rbp - 66], 0x6573
	mov word ptr[rbp - 64], 0x6f63
	mov word ptr[rbp - 62], 0x646e
	mov word ptr[rbp - 60], 0x6e20
	mov word ptr[rbp - 58], 0x6d75
	mov word ptr[rbp - 56], 0x6562
	mov word ptr[rbp - 54], 0x2072
	mov word ptr[rbp - 52], 0x7369
	mov word ptr[rbp - 50], 0x2520
	mov word ptr[rbp - 48], 0x2e64
	mov word ptr[rbp - 46], 0x000a
	lea rax, [rbp-70]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -48[rbp], 3
	nop
.L48:
	cmp	DWORD PTR -48[rbp], 0
	jne	.L83
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	pop r15
	jmp r15
	.cfi_endproc
.LFE18:
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
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
