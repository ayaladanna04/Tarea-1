
productos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cargarProductos>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  10:	48 89 bd 88 fe ff ff 	mov    %rdi,-0x178(%rbp)
  17:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2b:	31 c0                	xor    %eax,%eax
  2d:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
  34:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 3b <cargarProductos+0x3b>
  3b:	48 89 d6             	mov    %rdx,%rsi
  3e:	48 89 c7             	mov    %rax,%rdi
  41:	e8 00 00 00 00       	call   46 <cargarProductos+0x46>
  46:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  4d:	48 83 bd a0 fe ff ff 	cmpq   $0x0,-0x160(%rbp)
  54:	00 
  55:	75 28                	jne    7f <cargarProductos+0x7f>
  57:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
  5e:	48 89 c6             	mov    %rax,%rsi
  61:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 68 <cargarProductos+0x68>
  68:	48 89 c7             	mov    %rax,%rdi
  6b:	b8 00 00 00 00       	mov    $0x0,%eax
  70:	e8 00 00 00 00       	call   75 <cargarProductos+0x75>
  75:	b8 00 00 00 00       	mov    $0x0,%eax
  7a:	e9 2e 02 00 00       	jmp    2ad <cargarProductos+0x2ad>
  7f:	c7 85 9c fe ff ff 00 	movl   $0x0,-0x164(%rbp)
  86:	00 00 00 
  89:	e9 da 01 00 00       	jmp    268 <cargarProductos+0x268>
  8e:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
  95:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 9c <cargarProductos+0x9c>
  9c:	48 89 d6             	mov    %rdx,%rsi
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	call   a7 <cargarProductos+0xa7>
  a7:	c6 84 05 b0 fe ff ff 	movb   $0x0,-0x150(%rbp,%rax,1)
  ae:	00 
  af:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
  b6:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # bd <cargarProductos+0xbd>
  bd:	48 89 d6             	mov    %rdx,%rsi
  c0:	48 89 c7             	mov    %rax,%rdi
  c3:	e8 00 00 00 00       	call   c8 <cargarProductos+0xc8>
  c8:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
  cf:	48 83 bd a8 fe ff ff 	cmpq   $0x0,-0x158(%rbp)
  d6:	00 
  d7:	74 2e                	je     107 <cargarProductos+0x107>
  d9:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
  df:	48 98                	cltq
  e1:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
  e8:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
  ef:	48 01 d0             	add    %rdx,%rax
  f2:	48 89 c2             	mov    %rax,%rdx
  f5:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
  fc:	48 89 c6             	mov    %rax,%rsi
  ff:	48 89 d7             	mov    %rdx,%rdi
 102:	e8 00 00 00 00       	call   107 <cargarProductos+0x107>
 107:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10e <cargarProductos+0x10e>
 10e:	48 89 c6             	mov    %rax,%rsi
 111:	bf 00 00 00 00       	mov    $0x0,%edi
 116:	e8 00 00 00 00       	call   11b <cargarProductos+0x11b>
 11b:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
 122:	48 83 bd a8 fe ff ff 	cmpq   $0x0,-0x158(%rbp)
 129:	00 
 12a:	74 2f                	je     15b <cargarProductos+0x15b>
 12c:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
 132:	48 98                	cltq
 134:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 13b:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
 142:	48 01 d0             	add    %rdx,%rax
 145:	48 8d 50 64          	lea    0x64(%rax),%rdx
 149:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 150:	48 89 c6             	mov    %rax,%rsi
 153:	48 89 d7             	mov    %rdx,%rdi
 156:	e8 00 00 00 00       	call   15b <cargarProductos+0x15b>
 15b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 162 <cargarProductos+0x162>
 162:	48 89 c6             	mov    %rax,%rsi
 165:	bf 00 00 00 00       	mov    $0x0,%edi
 16a:	e8 00 00 00 00       	call   16f <cargarProductos+0x16f>
 16f:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
 176:	48 83 bd a8 fe ff ff 	cmpq   $0x0,-0x158(%rbp)
 17d:	00 
 17e:	74 2f                	je     1af <cargarProductos+0x1af>
 180:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
 186:	48 98                	cltq
 188:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 18f:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
 196:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
 19a:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 1a1:	48 89 c7             	mov    %rax,%rdi
 1a4:	e8 00 00 00 00       	call   1a9 <cargarProductos+0x1a9>
 1a9:	89 83 c8 00 00 00    	mov    %eax,0xc8(%rbx)
 1af:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1b6 <cargarProductos+0x1b6>
 1b6:	48 89 c6             	mov    %rax,%rsi
 1b9:	bf 00 00 00 00       	mov    $0x0,%edi
 1be:	e8 00 00 00 00       	call   1c3 <cargarProductos+0x1c3>
 1c3:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
 1ca:	48 83 bd a8 fe ff ff 	cmpq   $0x0,-0x158(%rbp)
 1d1:	00 
 1d2:	74 34                	je     208 <cargarProductos+0x208>
 1d4:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 1db:	48 89 c7             	mov    %rax,%rdi
 1de:	e8 00 00 00 00       	call   1e3 <cargarProductos+0x1e3>
 1e3:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
 1e9:	48 98                	cltq
 1eb:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 1f2:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
 1f9:	48 01 d0             	add    %rdx,%rax
 1fc:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 200:	f3 0f 11 80 cc 00 00 	movss  %xmm0,0xcc(%rax)
 207:	00 
 208:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 20f <cargarProductos+0x20f>
 20f:	48 89 c6             	mov    %rax,%rsi
 212:	bf 00 00 00 00       	mov    $0x0,%edi
 217:	e8 00 00 00 00       	call   21c <cargarProductos+0x21c>
 21c:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
 223:	48 83 bd a8 fe ff ff 	cmpq   $0x0,-0x158(%rbp)
 22a:	00 
 22b:	74 34                	je     261 <cargarProductos+0x261>
 22d:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 234:	48 89 c7             	mov    %rax,%rdi
 237:	e8 00 00 00 00       	call   23c <cargarProductos+0x23c>
 23c:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
 242:	48 98                	cltq
 244:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 24b:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
 252:	48 01 d0             	add    %rdx,%rax
 255:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 259:	f3 0f 11 80 d0 00 00 	movss  %xmm0,0xd0(%rax)
 260:	00 
 261:	83 85 9c fe ff ff 01 	addl   $0x1,-0x164(%rbp)
 268:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
 26f:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
 276:	be 2c 01 00 00       	mov    $0x12c,%esi
 27b:	48 89 c7             	mov    %rax,%rdi
 27e:	e8 00 00 00 00       	call   283 <cargarProductos+0x283>
 283:	48 85 c0             	test   %rax,%rax
 286:	74 10                	je     298 <cargarProductos+0x298>
 288:	81 bd 9c fe ff ff c7 	cmpl   $0xc7,-0x164(%rbp)
 28f:	00 00 00 
 292:	0f 8e f6 fd ff ff    	jle    8e <cargarProductos+0x8e>
 298:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
 29f:	48 89 c7             	mov    %rax,%rdi
 2a2:	e8 00 00 00 00       	call   2a7 <cargarProductos+0x2a7>
 2a7:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
 2ad:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 2b1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 2b8:	00 00 
 2ba:	74 05                	je     2c1 <cargarProductos+0x2c1>
 2bc:	e8 00 00 00 00       	call   2c1 <cargarProductos+0x2c1>
 2c1:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 2c5:	c9                   	leave
 2c6:	c3                   	ret

00000000000002c7 <guardarProductos>:
 2c7:	f3 0f 1e fa          	endbr64
 2cb:	55                   	push   %rbp
 2cc:	48 89 e5             	mov    %rsp,%rbp
 2cf:	48 83 ec 30          	sub    $0x30,%rsp
 2d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 2d7:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 2da:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
 2de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 2e2:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2e9 <guardarProductos+0x22>
 2e9:	48 89 d6             	mov    %rdx,%rsi
 2ec:	48 89 c7             	mov    %rax,%rdi
 2ef:	e8 00 00 00 00       	call   2f4 <guardarProductos+0x2d>
 2f4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 2f8:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 2fd:	75 25                	jne    324 <guardarProductos+0x5d>
 2ff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 303:	48 89 c6             	mov    %rax,%rsi
 306:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 30d <guardarProductos+0x46>
 30d:	48 89 c7             	mov    %rax,%rdi
 310:	b8 00 00 00 00       	mov    $0x0,%eax
 315:	e8 00 00 00 00       	call   31a <guardarProductos+0x53>
 31a:	b8 00 00 00 00       	mov    $0x0,%eax
 31f:	e9 e1 00 00 00       	jmp    405 <guardarProductos+0x13e>
 324:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 32b:	e9 b8 00 00 00       	jmp    3e8 <guardarProductos+0x121>
 330:	8b 45 f4             	mov    -0xc(%rbp),%eax
 333:	48 98                	cltq
 335:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 33c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 340:	48 01 d0             	add    %rdx,%rax
 343:	f3 0f 10 80 d0 00 00 	movss  0xd0(%rax),%xmm0
 34a:	00 
 34b:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 34f:	8b 45 f4             	mov    -0xc(%rbp),%eax
 352:	48 98                	cltq
 354:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 35b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 35f:	48 01 d0             	add    %rdx,%rax
 362:	f3 0f 10 88 cc 00 00 	movss  0xcc(%rax),%xmm1
 369:	00 
 36a:	66 0f ef d2          	pxor   %xmm2,%xmm2
 36e:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 372:	66 48 0f 7e d2       	movq   %xmm2,%rdx
 377:	8b 45 f4             	mov    -0xc(%rbp),%eax
 37a:	48 98                	cltq
 37c:	48 69 c8 d4 00 00 00 	imul   $0xd4,%rax,%rcx
 383:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 387:	48 01 c8             	add    %rcx,%rax
 38a:	8b b8 c8 00 00 00    	mov    0xc8(%rax),%edi
 390:	8b 45 f4             	mov    -0xc(%rbp),%eax
 393:	48 98                	cltq
 395:	48 69 c8 d4 00 00 00 	imul   $0xd4,%rax,%rcx
 39c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 3a0:	48 01 c8             	add    %rcx,%rax
 3a3:	48 8d 48 64          	lea    0x64(%rax),%rcx
 3a7:	8b 45 f4             	mov    -0xc(%rbp),%eax
 3aa:	48 98                	cltq
 3ac:	48 69 f0 d4 00 00 00 	imul   $0xd4,%rax,%rsi
 3b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 3b7:	48 01 f0             	add    %rsi,%rax
 3ba:	48 89 c6             	mov    %rax,%rsi
 3bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 3c1:	66 0f 28 c8          	movapd %xmm0,%xmm1
 3c5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
 3ca:	41 89 f8             	mov    %edi,%r8d
 3cd:	48 89 f2             	mov    %rsi,%rdx
 3d0:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 3d7 <guardarProductos+0x110>
 3d7:	48 89 c7             	mov    %rax,%rdi
 3da:	b8 02 00 00 00       	mov    $0x2,%eax
 3df:	e8 00 00 00 00       	call   3e4 <guardarProductos+0x11d>
 3e4:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 3e8:	8b 45 f4             	mov    -0xc(%rbp),%eax
 3eb:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 3ee:	0f 8c 3c ff ff ff    	jl     330 <guardarProductos+0x69>
 3f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 3f8:	48 89 c7             	mov    %rax,%rdi
 3fb:	e8 00 00 00 00       	call   400 <guardarProductos+0x139>
 400:	b8 01 00 00 00       	mov    $0x1,%eax
 405:	c9                   	leave
 406:	c3                   	ret

0000000000000407 <buscarProducto>:
 407:	f3 0f 1e fa          	endbr64
 40b:	55                   	push   %rbp
 40c:	48 89 e5             	mov    %rsp,%rbp
 40f:	48 83 ec 30          	sub    $0x30,%rsp
 413:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 417:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 41a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
 41e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 425:	eb 32                	jmp    459 <buscarProducto+0x52>
 427:	8b 45 fc             	mov    -0x4(%rbp),%eax
 42a:	48 98                	cltq
 42c:	48 69 d0 d4 00 00 00 	imul   $0xd4,%rax,%rdx
 433:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 437:	48 01 d0             	add    %rdx,%rax
 43a:	48 89 c2             	mov    %rax,%rdx
 43d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 441:	48 89 c6             	mov    %rax,%rsi
 444:	48 89 d7             	mov    %rdx,%rdi
 447:	e8 00 00 00 00       	call   44c <buscarProducto+0x45>
 44c:	85 c0                	test   %eax,%eax
 44e:	75 05                	jne    455 <buscarProducto+0x4e>
 450:	8b 45 fc             	mov    -0x4(%rbp),%eax
 453:	eb 11                	jmp    466 <buscarProducto+0x5f>
 455:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 459:	8b 45 fc             	mov    -0x4(%rbp),%eax
 45c:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 45f:	7c c6                	jl     427 <buscarProducto+0x20>
 461:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 466:	c9                   	leave
 467:	c3                   	ret

0000000000000468 <obtenerUltimaFactura>:
 468:	f3 0f 1e fa          	endbr64
 46c:	55                   	push   %rbp
 46d:	48 89 e5             	mov    %rsp,%rbp
 470:	48 81 ec 60 01 00 00 	sub    $0x160,%rsp
 477:	48 89 bd a8 fe ff ff 	mov    %rdi,-0x158(%rbp)
 47e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 485:	00 00 
 487:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 48b:	31 c0                	xor    %eax,%eax
 48d:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 494:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 49b <obtenerUltimaFactura+0x33>
 49b:	48 89 d6             	mov    %rdx,%rsi
 49e:	48 89 c7             	mov    %rax,%rdi
 4a1:	e8 00 00 00 00       	call   4a6 <obtenerUltimaFactura+0x3e>
 4a6:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
 4ad:	48 83 bd b8 fe ff ff 	cmpq   $0x0,-0x148(%rbp)
 4b4:	00 
 4b5:	75 0a                	jne    4c1 <obtenerUltimaFactura+0x59>
 4b7:	b8 00 00 00 00       	mov    $0x0,%eax
 4bc:	e9 80 00 00 00       	jmp    541 <obtenerUltimaFactura+0xd9>
 4c1:	c7 85 b4 fe ff ff 00 	movl   $0x0,-0x14c(%rbp)
 4c8:	00 00 00 
 4cb:	eb 3f                	jmp    50c <obtenerUltimaFactura+0xa4>
 4cd:	48 8d 95 b0 fe ff ff 	lea    -0x150(%rbp),%rdx
 4d4:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
 4db:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 4e2 <obtenerUltimaFactura+0x7a>
 4e2:	48 89 ce             	mov    %rcx,%rsi
 4e5:	48 89 c7             	mov    %rax,%rdi
 4e8:	b8 00 00 00 00       	mov    $0x0,%eax
 4ed:	e8 00 00 00 00       	call   4f2 <obtenerUltimaFactura+0x8a>
 4f2:	8b 85 b0 fe ff ff    	mov    -0x150(%rbp),%eax
 4f8:	39 85 b4 fe ff ff    	cmp    %eax,-0x14c(%rbp)
 4fe:	7d 0c                	jge    50c <obtenerUltimaFactura+0xa4>
 500:	8b 85 b0 fe ff ff    	mov    -0x150(%rbp),%eax
 506:	89 85 b4 fe ff ff    	mov    %eax,-0x14c(%rbp)
 50c:	48 8b 95 b8 fe ff ff 	mov    -0x148(%rbp),%rdx
 513:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
 51a:	be 2c 01 00 00       	mov    $0x12c,%esi
 51f:	48 89 c7             	mov    %rax,%rdi
 522:	e8 00 00 00 00       	call   527 <obtenerUltimaFactura+0xbf>
 527:	48 85 c0             	test   %rax,%rax
 52a:	75 a1                	jne    4cd <obtenerUltimaFactura+0x65>
 52c:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
 533:	48 89 c7             	mov    %rax,%rdi
 536:	e8 00 00 00 00       	call   53b <obtenerUltimaFactura+0xd3>
 53b:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 541:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 545:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 54c:	00 00 
 54e:	74 05                	je     555 <obtenerUltimaFactura+0xed>
 550:	e8 00 00 00 00       	call   555 <obtenerUltimaFactura+0xed>
 555:	c9                   	leave
 556:	c3                   	ret

0000000000000557 <registrarVenta>:
 557:	f3 0f 1e fa          	endbr64
 55b:	55                   	push   %rbp
 55c:	48 89 e5             	mov    %rsp,%rbp
 55f:	48 83 ec 20          	sub    $0x20,%rsp
 563:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 567:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 56b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 56f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 576 <registrarVenta+0x1f>
 576:	48 89 d6             	mov    %rdx,%rsi
 579:	48 89 c7             	mov    %rax,%rdi
 57c:	e8 00 00 00 00       	call   581 <registrarVenta+0x2a>
 581:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 585:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 58a:	75 25                	jne    5b1 <registrarVenta+0x5a>
 58c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 590:	48 89 c6             	mov    %rax,%rsi
 593:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 59a <registrarVenta+0x43>
 59a:	48 89 c7             	mov    %rax,%rdi
 59d:	b8 00 00 00 00       	mov    $0x0,%eax
 5a2:	e8 00 00 00 00       	call   5a7 <registrarVenta+0x50>
 5a7:	b8 00 00 00 00       	mov    $0x0,%eax
 5ac:	e9 99 00 00 00       	jmp    64a <registrarVenta+0xf3>
 5b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5b5:	48 8d b8 d8 00 00 00 	lea    0xd8(%rax),%rdi
 5bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5c0:	f3 0f 10 80 d4 00 00 	movss  0xd4(%rax),%xmm0
 5c7:	00 
 5c8:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 5cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5d0:	f3 0f 10 88 d0 00 00 	movss  0xd0(%rax),%xmm1
 5d7:	00 
 5d8:	66 0f ef d2          	pxor   %xmm2,%xmm2
 5dc:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 5e0:	66 48 0f 7e d1       	movq   %xmm2,%rcx
 5e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5e9:	44 8b 80 cc 00 00 00 	mov    0xcc(%rax),%r8d
 5f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5f4:	4c 8d 50 68          	lea    0x68(%rax),%r10
 5f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5fc:	48 8d 70 04          	lea    0x4(%rax),%rsi
 600:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 604:	8b 10                	mov    (%rax),%edx
 606:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 60a:	48 83 ec 08          	sub    $0x8,%rsp
 60e:	57                   	push   %rdi
 60f:	66 0f 28 c8          	movapd %xmm0,%xmm1
 613:	66 48 0f 6e c1       	movq   %rcx,%xmm0
 618:	45 89 c1             	mov    %r8d,%r9d
 61b:	4d 89 d0             	mov    %r10,%r8
 61e:	48 89 f1             	mov    %rsi,%rcx
 621:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 628 <registrarVenta+0xd1>
 628:	48 89 c7             	mov    %rax,%rdi
 62b:	b8 02 00 00 00       	mov    $0x2,%eax
 630:	e8 00 00 00 00       	call   635 <registrarVenta+0xde>
 635:	48 83 c4 10          	add    $0x10,%rsp
 639:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 63d:	48 89 c7             	mov    %rax,%rdi
 640:	e8 00 00 00 00       	call   645 <registrarVenta+0xee>
 645:	b8 01 00 00 00       	mov    $0x1,%eax
 64a:	c9                   	leave
 64b:	c3                   	ret
