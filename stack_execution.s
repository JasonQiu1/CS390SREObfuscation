; PATCH INTO MAIN ASSEMBLY CODE
; 83042403c3 must be the first 10 characters of the password
	mov	rax, -16[rbp]
	push  	rax
	mov	rbx, rsp
	call	rbx
	call 	r12
	pop	rax
