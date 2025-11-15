	.file	"usuarios.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"Error: No se pudo abrir el archivo %s\n"
.LC2:
	.string	"\n"
.LC3:
	.string	","
	.text
	.globl	cargarUsuarios
	.type	cargarUsuarios, @function
cargarUsuarios:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-368(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.L2
	movq	-368(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L10
.L2:
	movl	$0, -340(%rbp)
	jmp	.L4
.L9:
	leaq	-320(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movb	$0, -320(%rbp,%rax)
	leaq	-320(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.L5
	movl	-340(%rbp), %eax
	cltq
	imulq	$300, %rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L5:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.L6
	movl	-340(%rbp), %eax
	cltq
	imulq	$300, %rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	leaq	100(%rax), %rdx
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L6:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.L7
	movl	-340(%rbp), %eax
	cltq
	imulq	$300, %rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	leaq	200(%rax), %rdx
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L7:
	addl	$1, -340(%rbp)
.L4:
	movq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L8
	cmpl	$49, -340(%rbp)
	jle	.L9
.L8:
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-340(%rbp), %eax
.L10:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cargarUsuarios, .-cargarUsuarios
	.globl	verificarUsuario
	.type	verificarUsuario, @function
verificarUsuario:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L16:
	movl	-4(%rbp), %eax
	cltq
	imulq	$300, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movl	-4(%rbp), %eax
	cltq
	imulq	$300, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	100(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movl	-4(%rbp), %eax
	jmp	.L15
.L14:
	addl	$1, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L16
	movl	$-1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	verificarUsuario, .-verificarUsuario
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
