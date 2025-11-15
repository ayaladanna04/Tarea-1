	.file	"productos.c"
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
	.globl	cargarProductos
	.type	cargarProductos, @function
cargarProductos:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-384(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	.L2
	movq	-384(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L12
.L2:
	movl	$0, -356(%rbp)
	jmp	.L4
.L11:
	leaq	-336(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movb	$0, -336(%rbp,%rax)
	leaq	-336(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.L5
	movl	-356(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L5:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.L6
	movl	-356(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	leaq	100(%rax), %rdx
	movq	-344(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L6:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.L7
	movl	-356(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-376(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, 200(%rbx)
.L7:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.L8
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movl	-356(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 204(%rax)
.L8:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.L9
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movl	-356(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 208(%rax)
.L9:
	addl	$1, -356(%rbp)
.L4:
	movq	-352(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L10
	cmpl	$199, -356(%rbp)
	jle	.L11
.L10:
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-356(%rbp), %eax
.L12:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cargarProductos, .-cargarProductos
	.section	.rodata
.LC4:
	.string	"w"
	.align 8
.LC5:
	.string	"Error: No se pudo abrir el archivo %s para escritura\n"
.LC6:
	.string	"%s,%s,%d,%.2f,%.2f\n"
	.text
	.globl	guardarProductos
	.type	guardarProductos, @function
guardarProductos:
.LFB7:
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
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	$0, -12(%rbp)
	jmp	.L17
.L18:
	movl	-12(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	208(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	204(%rax), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$212, %rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	200(%rax), %edi
	movl	-12(%rbp), %eax
	cltq
	imulq	$212, %rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	leaq	100(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	imulq	$212, %rax, %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L17:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	guardarProductos, .-guardarProductos
	.globl	buscarProducto
	.type	buscarProducto, @function
buscarProducto:
.LFB8:
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
	movl	$0, -4(%rbp)
	jmp	.L20
.L23:
	movl	-4(%rbp), %eax
	cltq
	imulq	$212, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	movl	-4(%rbp), %eax
	jmp	.L22
.L21:
	addl	$1, -4(%rbp)
.L20:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L23
	movl	$-1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	buscarProducto, .-buscarProducto
	.section	.rodata
.LC7:
	.string	"%d"
	.text
	.globl	obtenerUltimaFactura
	.type	obtenerUltimaFactura, @function
obtenerUltimaFactura:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-344(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L30
.L25:
	movl	$0, -332(%rbp)
	jmp	.L27
.L29:
	leaq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	-336(%rbp), %eax
	cmpl	%eax, -332(%rbp)
	jge	.L27
	movl	-336(%rbp), %eax
	movl	%eax, -332(%rbp)
.L27:
	movq	-328(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L29
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-332(%rbp), %eax
.L30:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	obtenerUltimaFactura, .-obtenerUltimaFactura
	.section	.rodata
.LC8:
	.string	"a"
.LC9:
	.string	"%d,%s,%s,%d,%.2f,%.2f,%s\n"
	.text
	.globl	registrarVenta
	.type	registrarVenta, @function
registrarVenta:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L33
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
	leaq	216(%rax), %rdi
	movq	-24(%rbp), %rax
	movss	212(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movss	208(%rax), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	movq	-24(%rbp), %rax
	movl	204(%rax), %r8d
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r10
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rsi, %rcx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	registrarVenta, .-registrarVenta
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
