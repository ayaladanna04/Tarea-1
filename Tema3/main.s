	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%Y-%m-%d"
	.text
	.globl	obtenerFechaActual
	.type	obtenerFechaActual, @function
obtenerFechaActual:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movl	$20, %esi
	movq	%rax, %rdi
	call	strftime@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	obtenerFechaActual, .-obtenerFechaActual
	.globl	limpiarBuffer
	.type	limpiarBuffer, @function
limpiarBuffer:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	nop
.L5:
	call	getchar@PLT
	movl	%eax, -4(%rbp)
	cmpl	$10, -4(%rbp)
	je	.L6
	cmpl	$-1, -4(%rbp)
	jne	.L5
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	limpiarBuffer, .-limpiarBuffer
	.section	.rodata
.LC1:
	.string	"vendedores.txt"
.LC2:
	.string	"productos.txt"
	.align 8
.LC3:
	.string	"Error: No se pudieron cargar usuarios."
	.align 8
.LC4:
	.string	"Error: No se pudieron cargar productos."
.LC5:
	.string	"=== SISTEMA DE VENTAS ==="
.LC6:
	.string	"\nUsuario: "
.LC7:
	.string	"%31s"
.LC8:
	.string	"Error al leer usuario.\n"
.LC9:
	.string	"Clave: "
.LC10:
	.string	"Error al leer clave.\n"
.LC11:
	.string	"\n\302\241Bienvenido %s!\n"
	.align 8
.LC12:
	.string	"Credenciales incorrectas. Intento %d de 3\n"
	.align 8
.LC13:
	.string	"\nDemasiados intentos fallidos. Sistema cerrado."
.LC14:
	.string	"ventas.txt"
.LC15:
	.string	"\n=== NUEVA VENTA ==="
.LC16:
	.string	"Fecha: %s\n"
.LC17:
	.string	"Factura No: %d\n"
.LC18:
	.string	"==================\n"
.LC19:
	.string	"Codigo del producto: "
.LC20:
	.string	"Error al leer c\303\263digo.\n"
.LC21:
	.string	"Producto no encontrado."
	.align 8
.LC22:
	.string	"\302\277Agregar otro producto? (s/n): "
.LC23:
	.string	"%c"
.LC24:
	.string	"Producto: %s\n"
.LC25:
	.string	"Disponible: %d\n"
.LC26:
	.string	"Precio: $%.2f\n"
.LC27:
	.string	"Cantidad a vender: "
.LC28:
	.string	"%d"
	.align 8
.LC29:
	.string	"Error: ingresa un n\303\272mero v\303\241lido.\n"
	.align 8
.LC30:
	.string	"Error: No hay suficiente inventario."
	.align 8
.LC31:
	.string	"\n\302\277Agregar otro producto? (s/n): "
.LC32:
	.string	"\nNo se registraron productos."
	.align 8
.LC33:
	.string	"\n\302\277Realizar otra venta? (s/n): "
.LC34:
	.string	"\n=== RESUMEN DE VENTA ==="
.LC35:
	.string	"Factura: %d\n"
.LC36:
	.string	"------------------------"
.LC37:
	.string	"Total"
.LC38:
	.string	"P.Unit"
.LC39:
	.string	"Cant."
.LC40:
	.string	"Producto"
.LC41:
	.string	"Codigo"
.LC42:
	.string	"%-10s %-20s %8s %10s %10s\n"
	.align 8
.LC43:
	.string	"----------------------------------------------------------------"
	.align 8
.LC45:
	.string	"%-10s %-20s %8d %10.2f %10.2f\n"
.LC46:
	.string	"TOTAL: $%.2f\n"
.LC47:
	.string	"\n\302\277Confirmar venta? (s/n): "
	.align 8
.LC48:
	.string	"\n\302\241Venta registrada exitosamente!"
.LC49:
	.string	"\nVenta cancelada."
	.align 8
.LC50:
	.string	"\nGracias por usar el sistema. \302\241Hasta pronto!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-65536(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$3968, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-57632(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cargarUsuarios@PLT
	movl	%eax, -69464(%rbp)
	leaq	-42624(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cargarProductos@PLT
	movl	%eax, -69460(%rbp)
	cmpl	$0, -69464(%rbp)
	jne	.L8
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L41
.L8:
	cmpl	$0, -69460(%rbp)
	jne	.L10
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L41
.L10:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -69488(%rbp)
	movl	$-1, -69484(%rbp)
	jmp	.L11
.L17:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L12
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L41
.L12:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L14
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L41
.L14:
	leaq	-112(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movl	-69464(%rbp), %esi
	leaq	-57632(%rbp), %rax
	movq	%rax, %rdi
	call	verificarUsuario@PLT
	movl	%eax, -69484(%rbp)
	cmpl	$-1, -69484(%rbp)
	je	.L15
	leaq	-57632(%rbp), %rax
	movl	-69484(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$300, %rdx, %rdx
	addq	$192, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L16
.L15:
	addl	$1, -69488(%rbp)
	movl	-69488(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L11:
	cmpl	$2, -69488(%rbp)
	jle	.L17
.L16:
	cmpl	$-1, -69484(%rbp)
	jne	.L18
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L41
.L18:
	movb	$115, -69494(%rbp)
	jmp	.L19
.L40:
	movl	$0, -69480(%rbp)
	movb	$115, -69493(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	obtenerUltimaFactura@PLT
	addl	$1, %eax
	movl	%eax, -69456(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	obtenerFechaActual
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-69456(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L20
.L29:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L21
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$0, %eax
	call	limpiarBuffer
	jmp	.L20
.L21:
	leaq	-112(%rbp), %rdx
	movl	-69460(%rbp), %ecx
	leaq	-42624(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	buscarProducto@PLT
	movl	%eax, -69452(%rbp)
	cmpl	$-1, -69452(%rbp)
	jne	.L23
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	limpiarBuffer
	leaq	-69493(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L20
.L23:
	leaq	-42624(%rbp), %rax
	movl	-69452(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$212, %rdx, %rdx
	addq	$96, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-69452(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42424, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-69452(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42416, %rax
	movss	(%rax), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-69492(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L24
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$0, %eax
	call	limpiarBuffer
	jmp	.L20
.L24:
	movl	-69452(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42424, %rax
	movl	(%rax), %edx
	movl	-69492(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L25
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	limpiarBuffer
	leaq	-69493(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L20
.L25:
	movl	-69480(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	leaq	-69440(%rax), %rdx
	movl	-69456(%rbp), %eax
	movl	%eax, (%rdx)
	leaq	-42624(%rbp), %rdx
	movl	-69452(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rax, %rdx
	leaq	-69440(%rbp), %rcx
	movl	-69480(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-42624(%rbp), %rax
	movl	-69452(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$212, %rdx, %rdx
	addq	$96, %rdx
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	leaq	-69440(%rbp), %rax
	movl	-69480(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$236, %rcx, %rcx
	addq	$96, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	-69492(%rbp), %eax
	movl	-69480(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$236, %rdx, %rdx
	addq	%rbp, %rdx
	subq	$69236, %rdx
	movl	%eax, (%rdx)
	movl	-69452(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42420, %rax
	movss	(%rax), %xmm0
	movl	-69480(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69232, %rax
	movss	%xmm0, (%rax)
	movl	-69452(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42416, %rax
	movss	(%rax), %xmm0
	movl	-69480(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69228, %rax
	movss	%xmm0, (%rax)
	leaq	-69440(%rbp), %rax
	movl	-69480(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$236, %rdx, %rdx
	addq	$208, %rdx
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	addl	$1, -69480(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	limpiarBuffer
	leaq	-69493(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L20:
	movzbl	-69493(%rbp), %eax
	cmpb	$115, %al
	je	.L27
	movzbl	-69493(%rbp), %eax
	cmpb	$83, %al
	jne	.L28
.L27:
	cmpl	$49, -69480(%rbp)
	jle	.L29
.L28:
	cmpl	$0, -69480(%rbp)
	jne	.L30
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	limpiarBuffer
	leaq	-69494(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L19
.L30:
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-69456(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC37(%rip), %r9
	leaq	.LC38(%rip), %r8
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -69476(%rbp)
	movl	$0, -69472(%rbp)
	jmp	.L32
.L33:
	movl	-69472(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69236, %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	-69472(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69228, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -69444(%rbp)
	movss	-69476(%rbp), %xmm0
	addss	-69444(%rbp), %xmm0
	movss	%xmm0, -69476(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-69444(%rbp), %xmm0
	movl	-69472(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69228, %rax
	movss	(%rax), %xmm1
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	movq	%xmm3, %rdx
	movl	-69472(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69236, %rax
	movl	(%rax), %eax
	leaq	-69440(%rbp), %rcx
	movl	-69472(%rbp), %esi
	movslq	%esi, %rsi
	imulq	$236, %rsi, %rsi
	addq	$96, %rsi
	addq	%rsi, %rcx
	leaq	8(%rcx), %rdi
	leaq	-69440(%rbp), %rsi
	movl	-69472(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$236, %rcx, %rcx
	addq	%rsi, %rcx
	leaq	4(%rcx), %rsi
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %ecx
	movq	%rdi, %rdx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	addl	$1, -69472(%rbp)
.L32:
	movl	-69472(%rbp), %eax
	cmpl	-69480(%rbp), %eax
	jl	.L33
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	-69476(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	limpiarBuffer
	leaq	-69492(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-69492(%rbp), %eax
	cmpb	$115, %al
	je	.L34
	movzbl	-69492(%rbp), %eax
	cmpb	$83, %al
	jne	.L35
.L34:
	movl	$0, -69468(%rbp)
	jmp	.L36
.L38:
	leaq	-69440(%rbp), %rdx
	movl	-69468(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movl	-69460(%rbp), %ecx
	leaq	-42624(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	buscarProducto@PLT
	movl	%eax, -69448(%rbp)
	cmpl	$-1, -69448(%rbp)
	je	.L37
	movl	-69448(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42424, %rax
	movl	(%rax), %edx
	movl	-69468(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rbp, %rax
	subq	$69236, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	-69448(%rbp), %eax
	cltq
	imulq	$212, %rax, %rax
	addq	%rbp, %rax
	subq	$42424, %rax
	movl	%edx, (%rax)
.L37:
	leaq	-69440(%rbp), %rdx
	movl	-69468(%rbp), %eax
	cltq
	imulq	$236, %rax, %rax
	addq	%rdx, %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	registrarVenta@PLT
	addl	$1, -69468(%rbp)
.L36:
	movl	-69468(%rbp), %eax
	cmpl	-69480(%rbp), %eax
	jl	.L38
	movl	-69460(%rbp), %ecx
	leaq	-42624(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	guardarProductos@PLT
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L39
.L35:
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L39:
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	limpiarBuffer
	leaq	-69494(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L19:
	movzbl	-69494(%rbp), %eax
	cmpb	$115, %al
	je	.L40
	movzbl	-69494(%rbp), %eax
	cmpb	$83, %al
	je	.L40
	leaq	.LC50(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L41:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
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
