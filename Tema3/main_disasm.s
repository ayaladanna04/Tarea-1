
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <obtenerFechaActual>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 30          	sub    $0x30,%rsp
   c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
  1f:	bf 00 00 00 00       	mov    $0x0,%edi
  24:	e8 00 00 00 00       	call   29 <obtenerFechaActual+0x29>
  29:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2d:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  31:	48 89 c7             	mov    %rax,%rdi
  34:	e8 00 00 00 00       	call   39 <obtenerFechaActual+0x39>
  39:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  3d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  45:	48 89 d1             	mov    %rdx,%rcx
  48:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 4f <obtenerFechaActual+0x4f>
  4f:	be 14 00 00 00       	mov    $0x14,%esi
  54:	48 89 c7             	mov    %rax,%rdi
  57:	e8 00 00 00 00       	call   5c <obtenerFechaActual+0x5c>
  5c:	90                   	nop
  5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  61:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  68:	00 00 
  6a:	74 05                	je     71 <obtenerFechaActual+0x71>
  6c:	e8 00 00 00 00       	call   71 <obtenerFechaActual+0x71>
  71:	c9                   	leave
  72:	c3                   	ret

0000000000000073 <limpiarBuffer>:
  73:	f3 0f 1e fa          	endbr64
  77:	55                   	push   %rbp
  78:	48 89 e5             	mov    %rsp,%rbp
  7b:	48 83 ec 10          	sub    $0x10,%rsp
  7f:	90                   	nop
  80:	e8 00 00 00 00       	call   85 <limpiarBuffer+0x12>
  85:	89 45 fc             	mov    %eax,-0x4(%rbp)
  88:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
  8c:	74 06                	je     94 <limpiarBuffer+0x21>
  8e:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  92:	75 ec                	jne    80 <limpiarBuffer+0xd>
  94:	90                   	nop
  95:	c9                   	leave
  96:	c3                   	ret

0000000000000097 <main>:
  97:	f3 0f 1e fa          	endbr64
  9b:	55                   	push   %rbp
  9c:	48 89 e5             	mov    %rsp,%rbp
  9f:	4c 8d 9c 24 00 00 ff 	lea    -0x10000(%rsp),%r11
  a6:	ff 
  a7:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  ae:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  b3:	4c 39 dc             	cmp    %r11,%rsp
  b6:	75 ef                	jne    a7 <main+0x10>
  b8:	48 81 ec 80 0f 00 00 	sub    $0xf80,%rsp
  bf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  c6:	00 00 
  c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  cc:	31 c0                	xor    %eax,%eax
  ce:	48 8d 85 e0 1e ff ff 	lea    -0xe120(%rbp),%rax
  d5:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # dc <main+0x45>
  dc:	48 89 d6             	mov    %rdx,%rsi
  df:	48 89 c7             	mov    %rax,%rdi
  e2:	e8 00 00 00 00       	call   e7 <main+0x50>
  e7:	89 85 a8 f0 fe ff    	mov    %eax,-0x10f58(%rbp)
  ed:	48 8d 85 80 59 ff ff 	lea    -0xa680(%rbp),%rax
  f4:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # fb <main+0x64>
  fb:	48 89 d6             	mov    %rdx,%rsi
  fe:	48 89 c7             	mov    %rax,%rdi
 101:	e8 00 00 00 00       	call   106 <main+0x6f>
 106:	89 85 ac f0 fe ff    	mov    %eax,-0x10f54(%rbp)
 10c:	83 bd a8 f0 fe ff 00 	cmpl   $0x0,-0x10f58(%rbp)
 113:	75 19                	jne    12e <main+0x97>
 115:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11c <main+0x85>
 11c:	48 89 c7             	mov    %rax,%rdi
 11f:	e8 00 00 00 00       	call   124 <main+0x8d>
 124:	b8 01 00 00 00       	mov    $0x1,%eax
 129:	e9 1f 0b 00 00       	jmp    c4d <main+0xbb6>
 12e:	83 bd ac f0 fe ff 00 	cmpl   $0x0,-0x10f54(%rbp)
 135:	75 19                	jne    150 <main+0xb9>
 137:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 13e <main+0xa7>
 13e:	48 89 c7             	mov    %rax,%rdi
 141:	e8 00 00 00 00       	call   146 <main+0xaf>
 146:	b8 01 00 00 00       	mov    $0x1,%eax
 14b:	e9 fd 0a 00 00       	jmp    c4d <main+0xbb6>
 150:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 157 <main+0xc0>
 157:	48 89 c7             	mov    %rax,%rdi
 15a:	e8 00 00 00 00       	call   15f <main+0xc8>
 15f:	c7 85 90 f0 fe ff 00 	movl   $0x0,-0x10f70(%rbp)
 166:	00 00 00 
 169:	c7 85 94 f0 fe ff ff 	movl   $0xffffffff,-0x10f6c(%rbp)
 170:	ff ff ff 
 173:	e9 55 01 00 00       	jmp    2cd <main+0x236>
 178:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 17f <main+0xe8>
 17f:	48 89 c7             	mov    %rax,%rdi
 182:	b8 00 00 00 00       	mov    $0x0,%eax
 187:	e8 00 00 00 00       	call   18c <main+0xf5>
 18c:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 193:	48 89 c6             	mov    %rax,%rsi
 196:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 19d <main+0x106>
 19d:	48 89 c7             	mov    %rax,%rdi
 1a0:	b8 00 00 00 00       	mov    $0x0,%eax
 1a5:	e8 00 00 00 00       	call   1aa <main+0x113>
 1aa:	83 f8 01             	cmp    $0x1,%eax
 1ad:	74 2d                	je     1dc <main+0x145>
 1af:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1b6 <main+0x11f>
 1b6:	48 89 c1             	mov    %rax,%rcx
 1b9:	ba 17 00 00 00       	mov    $0x17,%edx
 1be:	be 01 00 00 00       	mov    $0x1,%esi
 1c3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ca <main+0x133>
 1ca:	48 89 c7             	mov    %rax,%rdi
 1cd:	e8 00 00 00 00       	call   1d2 <main+0x13b>
 1d2:	b8 01 00 00 00       	mov    $0x1,%eax
 1d7:	e9 71 0a 00 00       	jmp    c4d <main+0xbb6>
 1dc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1e3 <main+0x14c>
 1e3:	48 89 c7             	mov    %rax,%rdi
 1e6:	b8 00 00 00 00       	mov    $0x0,%eax
 1eb:	e8 00 00 00 00       	call   1f0 <main+0x159>
 1f0:	48 8d 45 90          	lea    -0x70(%rbp),%rax
 1f4:	48 89 c6             	mov    %rax,%rsi
 1f7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1fe <main+0x167>
 1fe:	48 89 c7             	mov    %rax,%rdi
 201:	b8 00 00 00 00       	mov    $0x0,%eax
 206:	e8 00 00 00 00       	call   20b <main+0x174>
 20b:	83 f8 01             	cmp    $0x1,%eax
 20e:	74 2d                	je     23d <main+0x1a6>
 210:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 217 <main+0x180>
 217:	48 89 c1             	mov    %rax,%rcx
 21a:	ba 15 00 00 00       	mov    $0x15,%edx
 21f:	be 01 00 00 00       	mov    $0x1,%esi
 224:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 22b <main+0x194>
 22b:	48 89 c7             	mov    %rax,%rdi
 22e:	e8 00 00 00 00       	call   233 <main+0x19c>
 233:	b8 01 00 00 00       	mov    $0x1,%eax
 238:	e9 10 0a 00 00       	jmp    c4d <main+0xbb6>
 23d:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
 241:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
 248:	8b b5 a8 f0 fe ff    	mov    -0x10f58(%rbp),%esi
 24e:	48 8d 85 e0 1e ff ff 	lea    -0xe120(%rbp),%rax
 255:	48 89 c7             	mov    %rax,%rdi
 258:	e8 00 00 00 00       	call   25d <main+0x1c6>
 25d:	89 85 94 f0 fe ff    	mov    %eax,-0x10f6c(%rbp)
 263:	83 bd 94 f0 fe ff ff 	cmpl   $0xffffffff,-0x10f6c(%rbp)
 26a:	74 3e                	je     2aa <main+0x213>
 26c:	48 8d 85 e0 1e ff ff 	lea    -0xe120(%rbp),%rax
 273:	8b 95 94 f0 fe ff    	mov    -0x10f6c(%rbp),%edx
 279:	48 63 d2             	movslq %edx,%rdx
 27c:	48 69 d2 2c 01 00 00 	imul   $0x12c,%rdx,%rdx
 283:	48 81 c2 c0 00 00 00 	add    $0xc0,%rdx
 28a:	48 01 d0             	add    %rdx,%rax
 28d:	48 83 c0 08          	add    $0x8,%rax
 291:	48 89 c6             	mov    %rax,%rsi
 294:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 29b <main+0x204>
 29b:	48 89 c7             	mov    %rax,%rdi
 29e:	b8 00 00 00 00       	mov    $0x0,%eax
 2a3:	e8 00 00 00 00       	call   2a8 <main+0x211>
 2a8:	eb 30                	jmp    2da <main+0x243>
 2aa:	83 85 90 f0 fe ff 01 	addl   $0x1,-0x10f70(%rbp)
 2b1:	8b 85 90 f0 fe ff    	mov    -0x10f70(%rbp),%eax
 2b7:	89 c6                	mov    %eax,%esi
 2b9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2c0 <main+0x229>
 2c0:	48 89 c7             	mov    %rax,%rdi
 2c3:	b8 00 00 00 00       	mov    $0x0,%eax
 2c8:	e8 00 00 00 00       	call   2cd <main+0x236>
 2cd:	83 bd 90 f0 fe ff 02 	cmpl   $0x2,-0x10f70(%rbp)
 2d4:	0f 8e 9e fe ff ff    	jle    178 <main+0xe1>
 2da:	83 bd 94 f0 fe ff ff 	cmpl   $0xffffffff,-0x10f6c(%rbp)
 2e1:	75 19                	jne    2fc <main+0x265>
 2e3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2ea <main+0x253>
 2ea:	48 89 c7             	mov    %rax,%rdi
 2ed:	e8 00 00 00 00       	call   2f2 <main+0x25b>
 2f2:	b8 01 00 00 00       	mov    $0x1,%eax
 2f7:	e9 51 09 00 00       	jmp    c4d <main+0xbb6>
 2fc:	c6 85 8a f0 fe ff 73 	movb   $0x73,-0x10f76(%rbp)
 303:	e9 13 09 00 00       	jmp    c1b <main+0xb84>
 308:	c7 85 98 f0 fe ff 00 	movl   $0x0,-0x10f68(%rbp)
 30f:	00 00 00 
 312:	c6 85 8b f0 fe ff 73 	movb   $0x73,-0x10f75(%rbp)
 319:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 320 <main+0x289>
 320:	48 89 c7             	mov    %rax,%rdi
 323:	e8 00 00 00 00       	call   328 <main+0x291>
 328:	83 c0 01             	add    $0x1,%eax
 32b:	89 85 b0 f0 fe ff    	mov    %eax,-0x10f50(%rbp)
 331:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 338:	48 89 c7             	mov    %rax,%rdi
 33b:	e8 00 00 00 00       	call   340 <main+0x2a9>
 340:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 347 <main+0x2b0>
 347:	48 89 c7             	mov    %rax,%rdi
 34a:	e8 00 00 00 00       	call   34f <main+0x2b8>
 34f:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 356:	48 89 c6             	mov    %rax,%rsi
 359:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 360 <main+0x2c9>
 360:	48 89 c7             	mov    %rax,%rdi
 363:	b8 00 00 00 00       	mov    $0x0,%eax
 368:	e8 00 00 00 00       	call   36d <main+0x2d6>
 36d:	8b 85 b0 f0 fe ff    	mov    -0x10f50(%rbp),%eax
 373:	89 c6                	mov    %eax,%esi
 375:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 37c <main+0x2e5>
 37c:	48 89 c7             	mov    %rax,%rdi
 37f:	b8 00 00 00 00       	mov    $0x0,%eax
 384:	e8 00 00 00 00       	call   389 <main+0x2f2>
 389:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 390 <main+0x2f9>
 390:	48 89 c7             	mov    %rax,%rdi
 393:	e8 00 00 00 00       	call   398 <main+0x301>
 398:	e9 25 04 00 00       	jmp    7c2 <main+0x72b>
 39d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3a4 <main+0x30d>
 3a4:	48 89 c7             	mov    %rax,%rdi
 3a7:	b8 00 00 00 00       	mov    $0x0,%eax
 3ac:	e8 00 00 00 00       	call   3b1 <main+0x31a>
 3b1:	48 8d 45 90          	lea    -0x70(%rbp),%rax
 3b5:	48 89 c6             	mov    %rax,%rsi
 3b8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3bf <main+0x328>
 3bf:	48 89 c7             	mov    %rax,%rdi
 3c2:	b8 00 00 00 00       	mov    $0x0,%eax
 3c7:	e8 00 00 00 00       	call   3cc <main+0x335>
 3cc:	83 f8 01             	cmp    $0x1,%eax
 3cf:	74 32                	je     403 <main+0x36c>
 3d1:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3d8 <main+0x341>
 3d8:	48 89 c1             	mov    %rax,%rcx
 3db:	ba 17 00 00 00       	mov    $0x17,%edx
 3e0:	be 01 00 00 00       	mov    $0x1,%esi
 3e5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3ec <main+0x355>
 3ec:	48 89 c7             	mov    %rax,%rdi
 3ef:	e8 00 00 00 00       	call   3f4 <main+0x35d>
 3f4:	b8 00 00 00 00       	mov    $0x0,%eax
 3f9:	e8 00 00 00 00       	call   3fe <main+0x367>
 3fe:	e9 bf 03 00 00       	jmp    7c2 <main+0x72b>
 403:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
 407:	8b 8d ac f0 fe ff    	mov    -0x10f54(%rbp),%ecx
 40d:	48 8d 85 80 59 ff ff 	lea    -0xa680(%rbp),%rax
 414:	89 ce                	mov    %ecx,%esi
 416:	48 89 c7             	mov    %rax,%rdi
 419:	e8 00 00 00 00       	call   41e <main+0x387>
 41e:	89 85 b4 f0 fe ff    	mov    %eax,-0x10f4c(%rbp)
 424:	83 bd b4 f0 fe ff ff 	cmpl   $0xffffffff,-0x10f4c(%rbp)
 42b:	75 50                	jne    47d <main+0x3e6>
 42d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 434 <main+0x39d>
 434:	48 89 c7             	mov    %rax,%rdi
 437:	e8 00 00 00 00       	call   43c <main+0x3a5>
 43c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 443 <main+0x3ac>
 443:	48 89 c7             	mov    %rax,%rdi
 446:	b8 00 00 00 00       	mov    $0x0,%eax
 44b:	e8 00 00 00 00       	call   450 <main+0x3b9>
 450:	b8 00 00 00 00       	mov    $0x0,%eax
 455:	e8 00 00 00 00       	call   45a <main+0x3c3>
 45a:	48 8d 85 8b f0 fe ff 	lea    -0x10f75(%rbp),%rax
 461:	48 89 c6             	mov    %rax,%rsi
 464:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 46b <main+0x3d4>
 46b:	48 89 c7             	mov    %rax,%rdi
 46e:	b8 00 00 00 00       	mov    $0x0,%eax
 473:	e8 00 00 00 00       	call   478 <main+0x3e1>
 478:	e9 45 03 00 00       	jmp    7c2 <main+0x72b>
 47d:	48 8d 85 80 59 ff ff 	lea    -0xa680(%rbp),%rax
 484:	8b 95 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%edx
 48a:	48 63 d2             	movslq %edx,%rdx
 48d:	48 69 d2 d4 00 00 00 	imul   $0xd4,%rdx,%rdx
 494:	48 83 c2 60          	add    $0x60,%rdx
 498:	48 01 d0             	add    %rdx,%rax
 49b:	48 83 c0 04          	add    $0x4,%rax
 49f:	48 89 c6             	mov    %rax,%rsi
 4a2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4a9 <main+0x412>
 4a9:	48 89 c7             	mov    %rax,%rdi
 4ac:	b8 00 00 00 00       	mov    $0x0,%eax
 4b1:	e8 00 00 00 00       	call   4b6 <main+0x41f>
 4b6:	8b 85 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%eax
 4bc:	48 98                	cltq
 4be:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 4c5:	48 01 e8             	add    %rbp,%rax
 4c8:	48 2d b8 a5 00 00    	sub    $0xa5b8,%rax
 4ce:	8b 00                	mov    (%rax),%eax
 4d0:	89 c6                	mov    %eax,%esi
 4d2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4d9 <main+0x442>
 4d9:	48 89 c7             	mov    %rax,%rdi
 4dc:	b8 00 00 00 00       	mov    $0x0,%eax
 4e1:	e8 00 00 00 00       	call   4e6 <main+0x44f>
 4e6:	8b 85 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%eax
 4ec:	48 98                	cltq
 4ee:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 4f5:	48 01 e8             	add    %rbp,%rax
 4f8:	48 2d b0 a5 00 00    	sub    $0xa5b0,%rax
 4fe:	f3 0f 10 00          	movss  (%rax),%xmm0
 502:	66 0f ef d2          	pxor   %xmm2,%xmm2
 506:	f3 0f 5a d0          	cvtss2sd %xmm0,%xmm2
 50a:	66 48 0f 7e d0       	movq   %xmm2,%rax
 50f:	66 48 0f 6e c0       	movq   %rax,%xmm0
 514:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 51b <main+0x484>
 51b:	48 89 c7             	mov    %rax,%rdi
 51e:	b8 01 00 00 00       	mov    $0x1,%eax
 523:	e8 00 00 00 00       	call   528 <main+0x491>
 528:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 52f <main+0x498>
 52f:	48 89 c7             	mov    %rax,%rdi
 532:	b8 00 00 00 00       	mov    $0x0,%eax
 537:	e8 00 00 00 00       	call   53c <main+0x4a5>
 53c:	48 8d 85 8c f0 fe ff 	lea    -0x10f74(%rbp),%rax
 543:	48 89 c6             	mov    %rax,%rsi
 546:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 54d <main+0x4b6>
 54d:	48 89 c7             	mov    %rax,%rdi
 550:	b8 00 00 00 00       	mov    $0x0,%eax
 555:	e8 00 00 00 00       	call   55a <main+0x4c3>
 55a:	83 f8 01             	cmp    $0x1,%eax
 55d:	74 32                	je     591 <main+0x4fa>
 55f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 566 <main+0x4cf>
 566:	48 89 c1             	mov    %rax,%rcx
 569:	ba 23 00 00 00       	mov    $0x23,%edx
 56e:	be 01 00 00 00       	mov    $0x1,%esi
 573:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 57a <main+0x4e3>
 57a:	48 89 c7             	mov    %rax,%rdi
 57d:	e8 00 00 00 00       	call   582 <main+0x4eb>
 582:	b8 00 00 00 00       	mov    $0x0,%eax
 587:	e8 00 00 00 00       	call   58c <main+0x4f5>
 58c:	e9 31 02 00 00       	jmp    7c2 <main+0x72b>
 591:	8b 85 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%eax
 597:	48 98                	cltq
 599:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 5a0:	48 01 e8             	add    %rbp,%rax
 5a3:	48 2d b8 a5 00 00    	sub    $0xa5b8,%rax
 5a9:	8b 10                	mov    (%rax),%edx
 5ab:	8b 85 8c f0 fe ff    	mov    -0x10f74(%rbp),%eax
 5b1:	39 c2                	cmp    %eax,%edx
 5b3:	7d 50                	jge    605 <main+0x56e>
 5b5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5bc <main+0x525>
 5bc:	48 89 c7             	mov    %rax,%rdi
 5bf:	e8 00 00 00 00       	call   5c4 <main+0x52d>
 5c4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5cb <main+0x534>
 5cb:	48 89 c7             	mov    %rax,%rdi
 5ce:	b8 00 00 00 00       	mov    $0x0,%eax
 5d3:	e8 00 00 00 00       	call   5d8 <main+0x541>
 5d8:	b8 00 00 00 00       	mov    $0x0,%eax
 5dd:	e8 00 00 00 00       	call   5e2 <main+0x54b>
 5e2:	48 8d 85 8b f0 fe ff 	lea    -0x10f75(%rbp),%rax
 5e9:	48 89 c6             	mov    %rax,%rsi
 5ec:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5f3 <main+0x55c>
 5f3:	48 89 c7             	mov    %rax,%rdi
 5f6:	b8 00 00 00 00       	mov    $0x0,%eax
 5fb:	e8 00 00 00 00       	call   600 <main+0x569>
 600:	e9 bd 01 00 00       	jmp    7c2 <main+0x72b>
 605:	8b 85 98 f0 fe ff    	mov    -0x10f68(%rbp),%eax
 60b:	48 98                	cltq
 60d:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 614:	48 01 e8             	add    %rbp,%rax
 617:	48 8d 90 c0 f0 fe ff 	lea    -0x10f40(%rax),%rdx
 61e:	8b 85 b0 f0 fe ff    	mov    -0x10f50(%rbp),%eax
 624:	89 02                	mov    %eax,(%rdx)
 626:	48 8d 95 80 59 ff ff 	lea    -0xa680(%rbp),%rdx
 62d:	8b 85 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%eax
 633:	48 98                	cltq
 635:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 63c:	48 01 c2             	add    %rax,%rdx
 63f:	48 8d 8d c0 f0 fe ff 	lea    -0x10f40(%rbp),%rcx
 646:	8b 85 98 f0 fe ff    	mov    -0x10f68(%rbp),%eax
 64c:	48 98                	cltq
 64e:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 655:	48 01 c8             	add    %rcx,%rax
 658:	48 83 c0 04          	add    $0x4,%rax
 65c:	48 89 d6             	mov    %rdx,%rsi
 65f:	48 89 c7             	mov    %rax,%rdi
 662:	e8 00 00 00 00       	call   667 <main+0x5d0>
 667:	48 8d 85 80 59 ff ff 	lea    -0xa680(%rbp),%rax
 66e:	8b 95 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%edx
 674:	48 63 d2             	movslq %edx,%rdx
 677:	48 69 d2 d4 00 00 00 	imul   $0xd4,%rdx,%rdx
 67e:	48 83 c2 60          	add    $0x60,%rdx
 682:	48 01 d0             	add    %rdx,%rax
 685:	48 8d 50 04          	lea    0x4(%rax),%rdx
 689:	48 8d 85 c0 f0 fe ff 	lea    -0x10f40(%rbp),%rax
 690:	8b 8d 98 f0 fe ff    	mov    -0x10f68(%rbp),%ecx
 696:	48 63 c9             	movslq %ecx,%rcx
 699:	48 69 c9 ec 00 00 00 	imul   $0xec,%rcx,%rcx
 6a0:	48 83 c1 60          	add    $0x60,%rcx
 6a4:	48 01 c8             	add    %rcx,%rax
 6a7:	48 83 c0 08          	add    $0x8,%rax
 6ab:	48 89 d6             	mov    %rdx,%rsi
 6ae:	48 89 c7             	mov    %rax,%rdi
 6b1:	e8 00 00 00 00       	call   6b6 <main+0x61f>
 6b6:	8b 85 8c f0 fe ff    	mov    -0x10f74(%rbp),%eax
 6bc:	8b 95 98 f0 fe ff    	mov    -0x10f68(%rbp),%edx
 6c2:	48 63 d2             	movslq %edx,%rdx
 6c5:	48 69 d2 ec 00 00 00 	imul   $0xec,%rdx,%rdx
 6cc:	48 01 ea             	add    %rbp,%rdx
 6cf:	48 81 ea 74 0e 01 00 	sub    $0x10e74,%rdx
 6d6:	89 02                	mov    %eax,(%rdx)
 6d8:	8b 85 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%eax
 6de:	48 98                	cltq
 6e0:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 6e7:	48 01 e8             	add    %rbp,%rax
 6ea:	48 2d b4 a5 00 00    	sub    $0xa5b4,%rax
 6f0:	f3 0f 10 00          	movss  (%rax),%xmm0
 6f4:	8b 85 98 f0 fe ff    	mov    -0x10f68(%rbp),%eax
 6fa:	48 98                	cltq
 6fc:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 703:	48 01 e8             	add    %rbp,%rax
 706:	48 2d 70 0e 01 00    	sub    $0x10e70,%rax
 70c:	f3 0f 11 00          	movss  %xmm0,(%rax)
 710:	8b 85 b4 f0 fe ff    	mov    -0x10f4c(%rbp),%eax
 716:	48 98                	cltq
 718:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 71f:	48 01 e8             	add    %rbp,%rax
 722:	48 2d b0 a5 00 00    	sub    $0xa5b0,%rax
 728:	f3 0f 10 00          	movss  (%rax),%xmm0
 72c:	8b 85 98 f0 fe ff    	mov    -0x10f68(%rbp),%eax
 732:	48 98                	cltq
 734:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 73b:	48 01 e8             	add    %rbp,%rax
 73e:	48 2d 6c 0e 01 00    	sub    $0x10e6c,%rax
 744:	f3 0f 11 00          	movss  %xmm0,(%rax)
 748:	48 8d 85 c0 f0 fe ff 	lea    -0x10f40(%rbp),%rax
 74f:	8b 95 98 f0 fe ff    	mov    -0x10f68(%rbp),%edx
 755:	48 63 d2             	movslq %edx,%rdx
 758:	48 69 d2 ec 00 00 00 	imul   $0xec,%rdx,%rdx
 75f:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
 766:	48 01 d0             	add    %rdx,%rax
 769:	48 8d 50 08          	lea    0x8(%rax),%rdx
 76d:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 774:	48 89 c6             	mov    %rax,%rsi
 777:	48 89 d7             	mov    %rdx,%rdi
 77a:	e8 00 00 00 00       	call   77f <main+0x6e8>
 77f:	83 85 98 f0 fe ff 01 	addl   $0x1,-0x10f68(%rbp)
 786:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 78d <main+0x6f6>
 78d:	48 89 c7             	mov    %rax,%rdi
 790:	b8 00 00 00 00       	mov    $0x0,%eax
 795:	e8 00 00 00 00       	call   79a <main+0x703>
 79a:	b8 00 00 00 00       	mov    $0x0,%eax
 79f:	e8 00 00 00 00       	call   7a4 <main+0x70d>
 7a4:	48 8d 85 8b f0 fe ff 	lea    -0x10f75(%rbp),%rax
 7ab:	48 89 c6             	mov    %rax,%rsi
 7ae:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7b5 <main+0x71e>
 7b5:	48 89 c7             	mov    %rax,%rdi
 7b8:	b8 00 00 00 00       	mov    $0x0,%eax
 7bd:	e8 00 00 00 00       	call   7c2 <main+0x72b>
 7c2:	0f b6 85 8b f0 fe ff 	movzbl -0x10f75(%rbp),%eax
 7c9:	3c 73                	cmp    $0x73,%al
 7cb:	74 0b                	je     7d8 <main+0x741>
 7cd:	0f b6 85 8b f0 fe ff 	movzbl -0x10f75(%rbp),%eax
 7d4:	3c 53                	cmp    $0x53,%al
 7d6:	75 0d                	jne    7e5 <main+0x74e>
 7d8:	83 bd 98 f0 fe ff 31 	cmpl   $0x31,-0x10f68(%rbp)
 7df:	0f 8e b8 fb ff ff    	jle    39d <main+0x306>
 7e5:	83 bd 98 f0 fe ff 00 	cmpl   $0x0,-0x10f68(%rbp)
 7ec:	75 50                	jne    83e <main+0x7a7>
 7ee:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7f5 <main+0x75e>
 7f5:	48 89 c7             	mov    %rax,%rdi
 7f8:	e8 00 00 00 00       	call   7fd <main+0x766>
 7fd:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 804 <main+0x76d>
 804:	48 89 c7             	mov    %rax,%rdi
 807:	b8 00 00 00 00       	mov    $0x0,%eax
 80c:	e8 00 00 00 00       	call   811 <main+0x77a>
 811:	b8 00 00 00 00       	mov    $0x0,%eax
 816:	e8 00 00 00 00       	call   81b <main+0x784>
 81b:	48 8d 85 8a f0 fe ff 	lea    -0x10f76(%rbp),%rax
 822:	48 89 c6             	mov    %rax,%rsi
 825:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 82c <main+0x795>
 82c:	48 89 c7             	mov    %rax,%rdi
 82f:	b8 00 00 00 00       	mov    $0x0,%eax
 834:	e8 00 00 00 00       	call   839 <main+0x7a2>
 839:	e9 dd 03 00 00       	jmp    c1b <main+0xb84>
 83e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 845 <main+0x7ae>
 845:	48 89 c7             	mov    %rax,%rdi
 848:	e8 00 00 00 00       	call   84d <main+0x7b6>
 84d:	8b 85 b0 f0 fe ff    	mov    -0x10f50(%rbp),%eax
 853:	89 c6                	mov    %eax,%esi
 855:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 85c <main+0x7c5>
 85c:	48 89 c7             	mov    %rax,%rdi
 85f:	b8 00 00 00 00       	mov    $0x0,%eax
 864:	e8 00 00 00 00       	call   869 <main+0x7d2>
 869:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 870:	48 89 c6             	mov    %rax,%rsi
 873:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 87a <main+0x7e3>
 87a:	48 89 c7             	mov    %rax,%rdi
 87d:	b8 00 00 00 00       	mov    $0x0,%eax
 882:	e8 00 00 00 00       	call   887 <main+0x7f0>
 887:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 88e <main+0x7f7>
 88e:	48 89 c7             	mov    %rax,%rdi
 891:	e8 00 00 00 00       	call   896 <main+0x7ff>
 896:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 89d <main+0x806>
 89d:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 8a4 <main+0x80d>
 8a4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8ab <main+0x814>
 8ab:	48 89 c1             	mov    %rax,%rcx
 8ae:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8b5 <main+0x81e>
 8b5:	48 89 c2             	mov    %rax,%rdx
 8b8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8bf <main+0x828>
 8bf:	48 89 c6             	mov    %rax,%rsi
 8c2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8c9 <main+0x832>
 8c9:	48 89 c7             	mov    %rax,%rdi
 8cc:	b8 00 00 00 00       	mov    $0x0,%eax
 8d1:	e8 00 00 00 00       	call   8d6 <main+0x83f>
 8d6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8dd <main+0x846>
 8dd:	48 89 c7             	mov    %rax,%rdi
 8e0:	e8 00 00 00 00       	call   8e5 <main+0x84e>
 8e5:	66 0f ef c0          	pxor   %xmm0,%xmm0
 8e9:	f3 0f 11 85 9c f0 fe 	movss  %xmm0,-0x10f64(%rbp)
 8f0:	ff 
 8f1:	c7 85 a0 f0 fe ff 00 	movl   $0x0,-0x10f60(%rbp)
 8f8:	00 00 00 
 8fb:	e9 1a 01 00 00       	jmp    a1a <main+0x983>
 900:	8b 85 a0 f0 fe ff    	mov    -0x10f60(%rbp),%eax
 906:	48 98                	cltq
 908:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 90f:	48 01 e8             	add    %rbp,%rax
 912:	48 2d 74 0e 01 00    	sub    $0x10e74,%rax
 918:	8b 00                	mov    (%rax),%eax
 91a:	66 0f ef c9          	pxor   %xmm1,%xmm1
 91e:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
 922:	8b 85 a0 f0 fe ff    	mov    -0x10f60(%rbp),%eax
 928:	48 98                	cltq
 92a:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 931:	48 01 e8             	add    %rbp,%rax
 934:	48 2d 6c 0e 01 00    	sub    $0x10e6c,%rax
 93a:	f3 0f 10 00          	movss  (%rax),%xmm0
 93e:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
 942:	f3 0f 11 85 bc f0 fe 	movss  %xmm0,-0x10f44(%rbp)
 949:	ff 
 94a:	f3 0f 10 85 9c f0 fe 	movss  -0x10f64(%rbp),%xmm0
 951:	ff 
 952:	f3 0f 58 85 bc f0 fe 	addss  -0x10f44(%rbp),%xmm0
 959:	ff 
 95a:	f3 0f 11 85 9c f0 fe 	movss  %xmm0,-0x10f64(%rbp)
 961:	ff 
 962:	66 0f ef c0          	pxor   %xmm0,%xmm0
 966:	f3 0f 5a 85 bc f0 fe 	cvtss2sd -0x10f44(%rbp),%xmm0
 96d:	ff 
 96e:	8b 85 a0 f0 fe ff    	mov    -0x10f60(%rbp),%eax
 974:	48 98                	cltq
 976:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 97d:	48 01 e8             	add    %rbp,%rax
 980:	48 2d 6c 0e 01 00    	sub    $0x10e6c,%rax
 986:	f3 0f 10 08          	movss  (%rax),%xmm1
 98a:	66 0f ef db          	pxor   %xmm3,%xmm3
 98e:	f3 0f 5a d9          	cvtss2sd %xmm1,%xmm3
 992:	66 48 0f 7e da       	movq   %xmm3,%rdx
 997:	8b 85 a0 f0 fe ff    	mov    -0x10f60(%rbp),%eax
 99d:	48 98                	cltq
 99f:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 9a6:	48 01 e8             	add    %rbp,%rax
 9a9:	48 2d 74 0e 01 00    	sub    $0x10e74,%rax
 9af:	8b 00                	mov    (%rax),%eax
 9b1:	48 8d 8d c0 f0 fe ff 	lea    -0x10f40(%rbp),%rcx
 9b8:	8b b5 a0 f0 fe ff    	mov    -0x10f60(%rbp),%esi
 9be:	48 63 f6             	movslq %esi,%rsi
 9c1:	48 69 f6 ec 00 00 00 	imul   $0xec,%rsi,%rsi
 9c8:	48 83 c6 60          	add    $0x60,%rsi
 9cc:	48 01 f1             	add    %rsi,%rcx
 9cf:	48 8d 79 08          	lea    0x8(%rcx),%rdi
 9d3:	48 8d b5 c0 f0 fe ff 	lea    -0x10f40(%rbp),%rsi
 9da:	8b 8d a0 f0 fe ff    	mov    -0x10f60(%rbp),%ecx
 9e0:	48 63 c9             	movslq %ecx,%rcx
 9e3:	48 69 c9 ec 00 00 00 	imul   $0xec,%rcx,%rcx
 9ea:	48 01 f1             	add    %rsi,%rcx
 9ed:	48 8d 71 04          	lea    0x4(%rcx),%rsi
 9f1:	66 0f 28 c8          	movapd %xmm0,%xmm1
 9f5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
 9fa:	89 c1                	mov    %eax,%ecx
 9fc:	48 89 fa             	mov    %rdi,%rdx
 9ff:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a06 <main+0x96f>
 a06:	48 89 c7             	mov    %rax,%rdi
 a09:	b8 02 00 00 00       	mov    $0x2,%eax
 a0e:	e8 00 00 00 00       	call   a13 <main+0x97c>
 a13:	83 85 a0 f0 fe ff 01 	addl   $0x1,-0x10f60(%rbp)
 a1a:	8b 85 a0 f0 fe ff    	mov    -0x10f60(%rbp),%eax
 a20:	3b 85 98 f0 fe ff    	cmp    -0x10f68(%rbp),%eax
 a26:	0f 8c d4 fe ff ff    	jl     900 <main+0x869>
 a2c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a33 <main+0x99c>
 a33:	48 89 c7             	mov    %rax,%rdi
 a36:	e8 00 00 00 00       	call   a3b <main+0x9a4>
 a3b:	66 0f ef e4          	pxor   %xmm4,%xmm4
 a3f:	f3 0f 5a a5 9c f0 fe 	cvtss2sd -0x10f64(%rbp),%xmm4
 a46:	ff 
 a47:	66 48 0f 7e e0       	movq   %xmm4,%rax
 a4c:	66 48 0f 6e c0       	movq   %rax,%xmm0
 a51:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a58 <main+0x9c1>
 a58:	48 89 c7             	mov    %rax,%rdi
 a5b:	b8 01 00 00 00       	mov    $0x1,%eax
 a60:	e8 00 00 00 00       	call   a65 <main+0x9ce>
 a65:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a6c <main+0x9d5>
 a6c:	48 89 c7             	mov    %rax,%rdi
 a6f:	b8 00 00 00 00       	mov    $0x0,%eax
 a74:	e8 00 00 00 00       	call   a79 <main+0x9e2>
 a79:	b8 00 00 00 00       	mov    $0x0,%eax
 a7e:	e8 00 00 00 00       	call   a83 <main+0x9ec>
 a83:	48 8d 85 8c f0 fe ff 	lea    -0x10f74(%rbp),%rax
 a8a:	48 89 c6             	mov    %rax,%rsi
 a8d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a94 <main+0x9fd>
 a94:	48 89 c7             	mov    %rax,%rdi
 a97:	b8 00 00 00 00       	mov    $0x0,%eax
 a9c:	e8 00 00 00 00       	call   aa1 <main+0xa0a>
 aa1:	0f b6 85 8c f0 fe ff 	movzbl -0x10f74(%rbp),%eax
 aa8:	3c 73                	cmp    $0x73,%al
 aaa:	74 0f                	je     abb <main+0xa24>
 aac:	0f b6 85 8c f0 fe ff 	movzbl -0x10f74(%rbp),%eax
 ab3:	3c 53                	cmp    $0x53,%al
 ab5:	0f 85 15 01 00 00    	jne    bd0 <main+0xb39>
 abb:	c7 85 a4 f0 fe ff 00 	movl   $0x0,-0x10f5c(%rbp)
 ac2:	00 00 00 
 ac5:	e9 c5 00 00 00       	jmp    b8f <main+0xaf8>
 aca:	48 8d 95 c0 f0 fe ff 	lea    -0x10f40(%rbp),%rdx
 ad1:	8b 85 a4 f0 fe ff    	mov    -0x10f5c(%rbp),%eax
 ad7:	48 98                	cltq
 ad9:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 ae0:	48 01 d0             	add    %rdx,%rax
 ae3:	48 8d 50 04          	lea    0x4(%rax),%rdx
 ae7:	8b 8d ac f0 fe ff    	mov    -0x10f54(%rbp),%ecx
 aed:	48 8d 85 80 59 ff ff 	lea    -0xa680(%rbp),%rax
 af4:	89 ce                	mov    %ecx,%esi
 af6:	48 89 c7             	mov    %rax,%rdi
 af9:	e8 00 00 00 00       	call   afe <main+0xa67>
 afe:	89 85 b8 f0 fe ff    	mov    %eax,-0x10f48(%rbp)
 b04:	83 bd b8 f0 fe ff ff 	cmpl   $0xffffffff,-0x10f48(%rbp)
 b0b:	74 50                	je     b5d <main+0xac6>
 b0d:	8b 85 b8 f0 fe ff    	mov    -0x10f48(%rbp),%eax
 b13:	48 98                	cltq
 b15:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 b1c:	48 01 e8             	add    %rbp,%rax
 b1f:	48 2d b8 a5 00 00    	sub    $0xa5b8,%rax
 b25:	8b 10                	mov    (%rax),%edx
 b27:	8b 85 a4 f0 fe ff    	mov    -0x10f5c(%rbp),%eax
 b2d:	48 98                	cltq
 b2f:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 b36:	48 01 e8             	add    %rbp,%rax
 b39:	48 2d 74 0e 01 00    	sub    $0x10e74,%rax
 b3f:	8b 00                	mov    (%rax),%eax
 b41:	29 c2                	sub    %eax,%edx
 b43:	8b 85 b8 f0 fe ff    	mov    -0x10f48(%rbp),%eax
 b49:	48 98                	cltq
 b4b:	48 69 c0 d4 00 00 00 	imul   $0xd4,%rax,%rax
 b52:	48 01 e8             	add    %rbp,%rax
 b55:	48 2d b8 a5 00 00    	sub    $0xa5b8,%rax
 b5b:	89 10                	mov    %edx,(%rax)
 b5d:	48 8d 95 c0 f0 fe ff 	lea    -0x10f40(%rbp),%rdx
 b64:	8b 85 a4 f0 fe ff    	mov    -0x10f5c(%rbp),%eax
 b6a:	48 98                	cltq
 b6c:	48 69 c0 ec 00 00 00 	imul   $0xec,%rax,%rax
 b73:	48 01 d0             	add    %rdx,%rax
 b76:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # b7d <main+0xae6>
 b7d:	48 89 d6             	mov    %rdx,%rsi
 b80:	48 89 c7             	mov    %rax,%rdi
 b83:	e8 00 00 00 00       	call   b88 <main+0xaf1>
 b88:	83 85 a4 f0 fe ff 01 	addl   $0x1,-0x10f5c(%rbp)
 b8f:	8b 85 a4 f0 fe ff    	mov    -0x10f5c(%rbp),%eax
 b95:	3b 85 98 f0 fe ff    	cmp    -0x10f68(%rbp),%eax
 b9b:	0f 8c 29 ff ff ff    	jl     aca <main+0xa33>
 ba1:	8b 8d ac f0 fe ff    	mov    -0x10f54(%rbp),%ecx
 ba7:	48 8d 85 80 59 ff ff 	lea    -0xa680(%rbp),%rax
 bae:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # bb5 <main+0xb1e>
 bb5:	89 ce                	mov    %ecx,%esi
 bb7:	48 89 c7             	mov    %rax,%rdi
 bba:	e8 00 00 00 00       	call   bbf <main+0xb28>
 bbf:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # bc6 <main+0xb2f>
 bc6:	48 89 c7             	mov    %rax,%rdi
 bc9:	e8 00 00 00 00       	call   bce <main+0xb37>
 bce:	eb 0f                	jmp    bdf <main+0xb48>
 bd0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # bd7 <main+0xb40>
 bd7:	48 89 c7             	mov    %rax,%rdi
 bda:	e8 00 00 00 00       	call   bdf <main+0xb48>
 bdf:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # be6 <main+0xb4f>
 be6:	48 89 c7             	mov    %rax,%rdi
 be9:	b8 00 00 00 00       	mov    $0x0,%eax
 bee:	e8 00 00 00 00       	call   bf3 <main+0xb5c>
 bf3:	b8 00 00 00 00       	mov    $0x0,%eax
 bf8:	e8 00 00 00 00       	call   bfd <main+0xb66>
 bfd:	48 8d 85 8a f0 fe ff 	lea    -0x10f76(%rbp),%rax
 c04:	48 89 c6             	mov    %rax,%rsi
 c07:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c0e <main+0xb77>
 c0e:	48 89 c7             	mov    %rax,%rdi
 c11:	b8 00 00 00 00       	mov    $0x0,%eax
 c16:	e8 00 00 00 00       	call   c1b <main+0xb84>
 c1b:	0f b6 85 8a f0 fe ff 	movzbl -0x10f76(%rbp),%eax
 c22:	3c 73                	cmp    $0x73,%al
 c24:	0f 84 de f6 ff ff    	je     308 <main+0x271>
 c2a:	0f b6 85 8a f0 fe ff 	movzbl -0x10f76(%rbp),%eax
 c31:	3c 53                	cmp    $0x53,%al
 c33:	0f 84 cf f6 ff ff    	je     308 <main+0x271>
 c39:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c40 <main+0xba9>
 c40:	48 89 c7             	mov    %rax,%rdi
 c43:	e8 00 00 00 00       	call   c48 <main+0xbb1>
 c48:	b8 00 00 00 00       	mov    $0x0,%eax
 c4d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 c51:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 c58:	00 00 
 c5a:	74 05                	je     c61 <main+0xbca>
 c5c:	e8 00 00 00 00       	call   c61 <main+0xbca>
 c61:	c9                   	leave
 c62:	c3                   	ret
