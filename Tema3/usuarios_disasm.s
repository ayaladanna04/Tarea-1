
usuarios.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cargarUsuarios>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 81 ec 70 01 00 00 	sub    $0x170,%rsp
   f:	48 89 bd 98 fe ff ff 	mov    %rdi,-0x168(%rbp)
  16:	48 89 b5 90 fe ff ff 	mov    %rsi,-0x170(%rbp)
  1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  24:	00 00 
  26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2a:	31 c0                	xor    %eax,%eax
  2c:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
  33:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 3a <cargarUsuarios+0x3a>
  3a:	48 89 d6             	mov    %rdx,%rsi
  3d:	48 89 c7             	mov    %rax,%rdi
  40:	e8 00 00 00 00       	call   45 <cargarUsuarios+0x45>
  45:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
  4c:	48 83 bd b0 fe ff ff 	cmpq   $0x0,-0x150(%rbp)
  53:	00 
  54:	75 28                	jne    7e <cargarUsuarios+0x7e>
  56:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
  5d:	48 89 c6             	mov    %rax,%rsi
  60:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 67 <cargarUsuarios+0x67>
  67:	48 89 c7             	mov    %rax,%rdi
  6a:	b8 00 00 00 00       	mov    $0x0,%eax
  6f:	e8 00 00 00 00       	call   74 <cargarUsuarios+0x74>
  74:	b8 00 00 00 00       	mov    $0x0,%eax
  79:	e9 7c 01 00 00       	jmp    1fa <cargarUsuarios+0x1fa>
  7e:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%rbp)
  85:	00 00 00 
  88:	e9 2b 01 00 00       	jmp    1b8 <cargarUsuarios+0x1b8>
  8d:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  94:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 9b <cargarUsuarios+0x9b>
  9b:	48 89 d6             	mov    %rdx,%rsi
  9e:	48 89 c7             	mov    %rax,%rdi
  a1:	e8 00 00 00 00       	call   a6 <cargarUsuarios+0xa6>
  a6:	c6 84 05 c0 fe ff ff 	movb   $0x0,-0x140(%rbp,%rax,1)
  ad:	00 
  ae:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  b5:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # bc <cargarUsuarios+0xbc>
  bc:	48 89 d6             	mov    %rdx,%rsi
  bf:	48 89 c7             	mov    %rax,%rdi
  c2:	e8 00 00 00 00       	call   c7 <cargarUsuarios+0xc7>
  c7:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  ce:	48 83 bd b8 fe ff ff 	cmpq   $0x0,-0x148(%rbp)
  d5:	00 
  d6:	74 2e                	je     106 <cargarUsuarios+0x106>
  d8:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
  de:	48 98                	cltq
  e0:	48 69 d0 2c 01 00 00 	imul   $0x12c,%rax,%rdx
  e7:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
  ee:	48 01 d0             	add    %rdx,%rax
  f1:	48 89 c2             	mov    %rax,%rdx
  f4:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  fb:	48 89 c6             	mov    %rax,%rsi
  fe:	48 89 d7             	mov    %rdx,%rdi
 101:	e8 00 00 00 00       	call   106 <cargarUsuarios+0x106>
 106:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10d <cargarUsuarios+0x10d>
 10d:	48 89 c6             	mov    %rax,%rsi
 110:	bf 00 00 00 00       	mov    $0x0,%edi
 115:	e8 00 00 00 00       	call   11a <cargarUsuarios+0x11a>
 11a:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
 121:	48 83 bd b8 fe ff ff 	cmpq   $0x0,-0x148(%rbp)
 128:	00 
 129:	74 2f                	je     15a <cargarUsuarios+0x15a>
 12b:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
 131:	48 98                	cltq
 133:	48 69 d0 2c 01 00 00 	imul   $0x12c,%rax,%rdx
 13a:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
 141:	48 01 d0             	add    %rdx,%rax
 144:	48 8d 50 64          	lea    0x64(%rax),%rdx
 148:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
 14f:	48 89 c6             	mov    %rax,%rsi
 152:	48 89 d7             	mov    %rdx,%rdi
 155:	e8 00 00 00 00       	call   15a <cargarUsuarios+0x15a>
 15a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 161 <cargarUsuarios+0x161>
 161:	48 89 c6             	mov    %rax,%rsi
 164:	bf 00 00 00 00       	mov    $0x0,%edi
 169:	e8 00 00 00 00       	call   16e <cargarUsuarios+0x16e>
 16e:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
 175:	48 83 bd b8 fe ff ff 	cmpq   $0x0,-0x148(%rbp)
 17c:	00 
 17d:	74 32                	je     1b1 <cargarUsuarios+0x1b1>
 17f:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
 185:	48 98                	cltq
 187:	48 69 d0 2c 01 00 00 	imul   $0x12c,%rax,%rdx
 18e:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
 195:	48 01 d0             	add    %rdx,%rax
 198:	48 8d 90 c8 00 00 00 	lea    0xc8(%rax),%rdx
 19f:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
 1a6:	48 89 c6             	mov    %rax,%rsi
 1a9:	48 89 d7             	mov    %rdx,%rdi
 1ac:	e8 00 00 00 00       	call   1b1 <cargarUsuarios+0x1b1>
 1b1:	83 85 ac fe ff ff 01 	addl   $0x1,-0x154(%rbp)
 1b8:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
 1bf:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
 1c6:	be 2c 01 00 00       	mov    $0x12c,%esi
 1cb:	48 89 c7             	mov    %rax,%rdi
 1ce:	e8 00 00 00 00       	call   1d3 <cargarUsuarios+0x1d3>
 1d3:	48 85 c0             	test   %rax,%rax
 1d6:	74 0d                	je     1e5 <cargarUsuarios+0x1e5>
 1d8:	83 bd ac fe ff ff 31 	cmpl   $0x31,-0x154(%rbp)
 1df:	0f 8e a8 fe ff ff    	jle    8d <cargarUsuarios+0x8d>
 1e5:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
 1ec:	48 89 c7             	mov    %rax,%rdi
 1ef:	e8 00 00 00 00       	call   1f4 <cargarUsuarios+0x1f4>
 1f4:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
 1fa:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 1fe:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 205:	00 00 
 207:	74 05                	je     20e <cargarUsuarios+0x20e>
 209:	e8 00 00 00 00       	call   20e <cargarUsuarios+0x20e>
 20e:	c9                   	leave
 20f:	c3                   	ret

0000000000000210 <verificarUsuario>:
 210:	f3 0f 1e fa          	endbr64
 214:	55                   	push   %rbp
 215:	48 89 e5             	mov    %rsp,%rbp
 218:	48 83 ec 30          	sub    $0x30,%rsp
 21c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 220:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 223:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
 227:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
 22b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 232:	eb 5c                	jmp    290 <verificarUsuario+0x80>
 234:	8b 45 fc             	mov    -0x4(%rbp),%eax
 237:	48 98                	cltq
 239:	48 69 d0 2c 01 00 00 	imul   $0x12c,%rax,%rdx
 240:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 244:	48 01 d0             	add    %rdx,%rax
 247:	48 89 c2             	mov    %rax,%rdx
 24a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 24e:	48 89 c6             	mov    %rax,%rsi
 251:	48 89 d7             	mov    %rdx,%rdi
 254:	e8 00 00 00 00       	call   259 <verificarUsuario+0x49>
 259:	85 c0                	test   %eax,%eax
 25b:	75 2f                	jne    28c <verificarUsuario+0x7c>
 25d:	8b 45 fc             	mov    -0x4(%rbp),%eax
 260:	48 98                	cltq
 262:	48 69 d0 2c 01 00 00 	imul   $0x12c,%rax,%rdx
 269:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 26d:	48 01 d0             	add    %rdx,%rax
 270:	48 8d 50 64          	lea    0x64(%rax),%rdx
 274:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 278:	48 89 c6             	mov    %rax,%rsi
 27b:	48 89 d7             	mov    %rdx,%rdi
 27e:	e8 00 00 00 00       	call   283 <verificarUsuario+0x73>
 283:	85 c0                	test   %eax,%eax
 285:	75 05                	jne    28c <verificarUsuario+0x7c>
 287:	8b 45 fc             	mov    -0x4(%rbp),%eax
 28a:	eb 11                	jmp    29d <verificarUsuario+0x8d>
 28c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 290:	8b 45 fc             	mov    -0x4(%rbp),%eax
 293:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 296:	7c 9c                	jl     234 <verificarUsuario+0x24>
 298:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 29d:	c9                   	leave
 29e:	c3                   	ret
