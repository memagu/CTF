
matrix:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <getc@plt+0x2f28>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <free@plt-0x1a>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <getc@plt+0x2f48>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <getc@plt+0x2f50>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <getc@plt+0x2f58>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <free@plt-0x10>

0000000000001040 <puts@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 4020 <getc@plt+0x2f60>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <free@plt-0x10>

0000000000001050 <fclose@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    *0x2fd2(%rip)        # 4028 <getc@plt+0x2f68>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <free@plt-0x10>

0000000000001060 <__stack_chk_fail@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4030 <getc@plt+0x2f70>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <free@plt-0x10>

0000000000001070 <fgets@plt>:
    1070:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4038 <getc@plt+0x2f78>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <free@plt-0x10>

0000000000001080 <putc@plt>:
    1080:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4040 <getc@plt+0x2f80>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <free@plt-0x10>

0000000000001090 <malloc@plt>:
    1090:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4048 <getc@plt+0x2f88>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <free@plt-0x10>

00000000000010a0 <setvbuf@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4050 <getc@plt+0x2f90>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <free@plt-0x10>

00000000000010b0 <fopen@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4058 <getc@plt+0x2f98>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <free@plt-0x10>

00000000000010c0 <getc@plt>:
    10c0:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4060 <getc@plt+0x2fa0>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <free@plt-0x10>

Disassembly of section .text:

00000000000010d0 <.text>:
    10d0:	41 55                	push   %r13
    10d2:	b9 00 20 00 00       	mov    $0x2000,%ecx
    10d7:	ba 01 00 00 00       	mov    $0x1,%edx
    10dc:	31 f6                	xor    %esi,%esi
    10de:	41 54                	push   %r12
    10e0:	55                   	push   %rbp
    10e1:	53                   	push   %rbx
    10e2:	48 81 ec 58 01 00 00 	sub    $0x158,%rsp
    10e9:	48 8b 3d 90 2f 00 00 	mov    0x2f90(%rip),%rdi        # 4080 <stdout@GLIBC_2.2.5>
    10f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    10f7:	00 00 
    10f9:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
    1100:	00 
    1101:	31 c0                	xor    %eax,%eax
    1103:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
    1108:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    110d:	e8 8e ff ff ff       	call   10a0 <setvbuf@plt>
    1112:	bf 00 08 00 00       	mov    $0x800,%edi
    1117:	e8 74 ff ff ff       	call   1090 <malloc@plt>
    111c:	bf 00 08 00 00       	mov    $0x800,%edi
    1121:	49 89 c5             	mov    %rax,%r13
    1124:	e8 67 ff ff ff       	call   1090 <malloc@plt>
    1129:	66 49 0f 6e c5       	movq   %r13,%xmm0
    112e:	48 8d 0d eb 01 00 00 	lea    0x1eb(%rip),%rcx        # 1320 <getc@plt+0x260>
    1135:	49 89 c4             	mov    %rax,%r12
    1138:	48 8d 05 b1 0f 00 00 	lea    0xfb1(%rip),%rax        # 20f0 <getc@plt+0x1030>
    113f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1144:	66 49 0f 6e cc       	movq   %r12,%xmm1
    1149:	31 c0                	xor    %eax,%eax
    114b:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    114f:	66 89 44 24 18       	mov    %ax,0x18(%rsp)
    1154:	48 8d 05 e5 01 00 00 	lea    0x1e5(%rip),%rax        # 1340 <getc@plt+0x280>
    115b:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
    1160:	66 48 0f 6e d0       	movq   %rax,%xmm2
    1165:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    116a:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    116e:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
    1173:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1178:	48 89 ee             	mov    %rbp,%rsi
    117b:	48 89 df             	mov    %rbx,%rdi
    117e:	e8 cd 01 00 00       	call   1350 <getc@plt+0x290>
    1183:	84 c0                	test   %al,%al
    1185:	75 f1                	jne    1178 <getc@plt+0xb8>
    1187:	4c 89 ef             	mov    %r13,%rdi
    118a:	e8 a1 fe ff ff       	call   1030 <free@plt>
    118f:	4c 89 e7             	mov    %r12,%rdi
    1192:	e8 99 fe ff ff       	call   1030 <free@plt>
    1197:	80 7c 24 0c 00       	cmpb   $0x0,0xc(%rsp)
    119c:	75 77                	jne    1215 <getc@plt+0x155>
    119e:	66 83 7c 24 0e 00    	cmpw   $0x0,0xe(%rsp)
    11a4:	74 26                	je     11cc <getc@plt+0x10c>
    11a6:	0f b7 44 24 0e       	movzwl 0xe(%rsp),%eax
    11ab:	48 8b 94 24 48 01 00 	mov    0x148(%rsp),%rdx
    11b2:	00 
    11b3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    11ba:	00 00 
    11bc:	75 5c                	jne    121a <getc@plt+0x15a>
    11be:	48 81 c4 58 01 00 00 	add    $0x158,%rsp
    11c5:	5b                   	pop    %rbx
    11c6:	5d                   	pop    %rbp
    11c7:	41 5c                	pop    %r12
    11c9:	41 5d                	pop    %r13
    11cb:	c3                   	ret    
    11cc:	48 8d 3d 31 0e 00 00 	lea    0xe31(%rip),%rdi        # 2004 <getc@plt+0xf44>
    11d3:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    11d8:	e8 63 fe ff ff       	call   1040 <puts@plt>
    11dd:	48 8d 35 2d 0e 00 00 	lea    0xe2d(%rip),%rsi        # 2011 <getc@plt+0xf51>
    11e4:	48 8d 3d 28 0e 00 00 	lea    0xe28(%rip),%rdi        # 2013 <getc@plt+0xf53>
    11eb:	e8 c0 fe ff ff       	call   10b0 <fopen@plt>
    11f0:	be 00 01 00 00       	mov    $0x100,%esi
    11f5:	4c 89 e7             	mov    %r12,%rdi
    11f8:	48 89 c5             	mov    %rax,%rbp
    11fb:	48 89 c2             	mov    %rax,%rdx
    11fe:	e8 6d fe ff ff       	call   1070 <fgets@plt>
    1203:	48 89 ef             	mov    %rbp,%rdi
    1206:	e8 45 fe ff ff       	call   1050 <fclose@plt>
    120b:	4c 89 e7             	mov    %r12,%rdi
    120e:	e8 2d fe ff ff       	call   1040 <puts@plt>
    1213:	eb 91                	jmp    11a6 <getc@plt+0xe6>
    1215:	83 c8 ff             	or     $0xffffffff,%eax
    1218:	eb 91                	jmp    11ab <getc@plt+0xeb>
    121a:	e8 41 fe ff ff       	call   1060 <__stack_chk_fail@plt>
    121f:	90                   	nop
    1220:	f3 0f 1e fa          	endbr64 
    1224:	31 ed                	xor    %ebp,%ebp
    1226:	49 89 d1             	mov    %rdx,%r9
    1229:	5e                   	pop    %rsi
    122a:	48 89 e2             	mov    %rsp,%rdx
    122d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1231:	50                   	push   %rax
    1232:	54                   	push   %rsp
    1233:	4c 8d 05 26 04 00 00 	lea    0x426(%rip),%r8        # 1660 <getc@plt+0x5a0>
    123a:	48 8d 0d af 03 00 00 	lea    0x3af(%rip),%rcx        # 15f0 <getc@plt+0x530>
    1241:	48 8d 3d 88 fe ff ff 	lea    -0x178(%rip),%rdi        # 10d0 <getc@plt+0x10>
    1248:	ff 15 92 2d 00 00    	call   *0x2d92(%rip)        # 3fe0 <getc@plt+0x2f20>
    124e:	f4                   	hlt    
    124f:	90                   	nop
    1250:	48 8d 3d 21 2e 00 00 	lea    0x2e21(%rip),%rdi        # 4078 <getc@plt+0x2fb8>
    1257:	48 8d 05 1a 2e 00 00 	lea    0x2e1a(%rip),%rax        # 4078 <getc@plt+0x2fb8>
    125e:	48 39 f8             	cmp    %rdi,%rax
    1261:	74 15                	je     1278 <getc@plt+0x1b8>
    1263:	48 8b 05 6e 2d 00 00 	mov    0x2d6e(%rip),%rax        # 3fd8 <getc@plt+0x2f18>
    126a:	48 85 c0             	test   %rax,%rax
    126d:	74 09                	je     1278 <getc@plt+0x1b8>
    126f:	ff e0                	jmp    *%rax
    1271:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1278:	c3                   	ret    
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1280:	48 8d 3d f1 2d 00 00 	lea    0x2df1(%rip),%rdi        # 4078 <getc@plt+0x2fb8>
    1287:	48 8d 35 ea 2d 00 00 	lea    0x2dea(%rip),%rsi        # 4078 <getc@plt+0x2fb8>
    128e:	48 29 fe             	sub    %rdi,%rsi
    1291:	48 89 f0             	mov    %rsi,%rax
    1294:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1298:	48 c1 f8 03          	sar    $0x3,%rax
    129c:	48 01 c6             	add    %rax,%rsi
    129f:	48 d1 fe             	sar    %rsi
    12a2:	74 14                	je     12b8 <getc@plt+0x1f8>
    12a4:	48 8b 05 45 2d 00 00 	mov    0x2d45(%rip),%rax        # 3ff0 <getc@plt+0x2f30>
    12ab:	48 85 c0             	test   %rax,%rax
    12ae:	74 08                	je     12b8 <getc@plt+0x1f8>
    12b0:	ff e0                	jmp    *%rax
    12b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12b8:	c3                   	ret    
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	80 3d cd 2d 00 00 00 	cmpb   $0x0,0x2dcd(%rip)        # 4098 <stdin@GLIBC_2.2.5+0x8>
    12cb:	75 33                	jne    1300 <getc@plt+0x240>
    12cd:	55                   	push   %rbp
    12ce:	48 83 3d 22 2d 00 00 	cmpq   $0x0,0x2d22(%rip)        # 3ff8 <getc@plt+0x2f38>
    12d5:	00 
    12d6:	48 89 e5             	mov    %rsp,%rbp
    12d9:	74 0d                	je     12e8 <getc@plt+0x228>
    12db:	48 8b 3d 8e 2d 00 00 	mov    0x2d8e(%rip),%rdi        # 4070 <getc@plt+0x2fb0>
    12e2:	ff 15 10 2d 00 00    	call   *0x2d10(%rip)        # 3ff8 <getc@plt+0x2f38>
    12e8:	e8 63 ff ff ff       	call   1250 <getc@plt+0x190>
    12ed:	c6 05 a4 2d 00 00 01 	movb   $0x1,0x2da4(%rip)        # 4098 <stdin@GLIBC_2.2.5+0x8>
    12f4:	5d                   	pop    %rbp
    12f5:	c3                   	ret    
    12f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12fd:	00 00 00 
    1300:	c3                   	ret    
    1301:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1308:	00 00 00 00 
    130c:	0f 1f 40 00          	nopl   0x0(%rax)
    1310:	f3 0f 1e fa          	endbr64 
    1314:	e9 67 ff ff ff       	jmp    1280 <getc@plt+0x1c0>
    1319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1320:	48 83 ec 08          	sub    $0x8,%rsp
    1324:	48 8b 3d 65 2d 00 00 	mov    0x2d65(%rip),%rdi        # 4090 <stdin@GLIBC_2.2.5>
    132b:	e8 90 fd ff ff       	call   10c0 <getc@plt>
    1330:	48 83 c4 08          	add    $0x8,%rsp
    1334:	c3                   	ret    
    1335:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    133c:	00 00 00 00 
    1340:	48 8b 35 39 2d 00 00 	mov    0x2d39(%rip),%rsi        # 4080 <stdout@GLIBC_2.2.5>
    1347:	40 0f b6 ff          	movzbl %dil,%edi
    134b:	e9 30 fd ff ff       	jmp    1080 <putc@plt>
    1350:	53                   	push   %rbx
    1351:	48 89 fb             	mov    %rdi,%rbx
    1354:	48 8b 3f             	mov    (%rdi),%rdi
    1357:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
    135b:	8d 48 01             	lea    0x1(%rax),%ecx
    135e:	48 89 c2             	mov    %rax,%rdx
    1361:	66 89 4b 08          	mov    %cx,0x8(%rbx)
    1365:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    1369:	3c 34                	cmp    $0x34,%al
    136b:	77 13                	ja     1380 <getc@plt+0x2c0>
    136d:	48 8d 15 a8 0c 00 00 	lea    0xca8(%rip),%rdx        # 201c <getc@plt+0xf5c>
    1374:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1378:	48 01 d0             	add    %rdx,%rax
    137b:	ff e0                	jmp    *%rax
    137d:	0f 1f 00             	nopl   (%rax)
    1380:	3c c0                	cmp    $0xc0,%al
    1382:	0f 84 38 02 00 00    	je     15c0 <getc@plt+0x500>
    1388:	76 1e                	jbe    13a8 <getc@plt+0x2e8>
    138a:	3c c1                	cmp    $0xc1,%al
    138c:	75 52                	jne    13e0 <getc@plt+0x320>
    138e:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1392:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    1396:	0f b6 78 fe          	movzbl -0x2(%rax),%edi
    139a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    139e:	ff 53 28             	call   *0x28(%rbx)
    13a1:	b8 01 00 00 00       	mov    $0x1,%eax
    13a6:	5b                   	pop    %rbx
    13a7:	c3                   	ret    
    13a8:	3c 80                	cmp    $0x80,%al
    13aa:	0f 84 30 02 00 00    	je     15e0 <getc@plt+0x520>
    13b0:	3c 81                	cmp    $0x81,%al
    13b2:	75 2c                	jne    13e0 <getc@plt+0x320>
    13b4:	0f b7 c9             	movzwl %cx,%ecx
    13b7:	83 c2 03             	add    $0x3,%edx
    13ba:	0f b7 0c 0f          	movzwl (%rdi,%rcx,1),%ecx
    13be:	48 8b 43 10          	mov    0x10(%rbx),%rax
    13c2:	66 89 53 08          	mov    %dx,0x8(%rbx)
    13c6:	48 8d 50 02          	lea    0x2(%rax),%rdx
    13ca:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    13ce:	66 89 08             	mov    %cx,(%rax)
    13d1:	b8 01 00 00 00       	mov    $0x1,%eax
    13d6:	5b                   	pop    %rbx
    13d7:	c3                   	ret    
    13d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13df:	00 
    13e0:	31 c0                	xor    %eax,%eax
    13e2:	48 85 f6             	test   %rsi,%rsi
    13e5:	74 bf                	je     13a6 <getc@plt+0x2e6>
    13e7:	c6 06 01             	movb   $0x1,(%rsi)
    13ea:	5b                   	pop    %rbx
    13eb:	c3                   	ret    
    13ec:	0f 1f 40 00          	nopl   0x0(%rax)
    13f0:	48 8b 43 10          	mov    0x10(%rbx),%rax
    13f4:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    13f8:	66 83 78 fc 00       	cmpw   $0x0,-0x4(%rax)
    13fd:	0f b7 48 fe          	movzwl -0x2(%rax),%ecx
    1401:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1405:	0f 88 40 01 00 00    	js     154b <getc@plt+0x48b>
    140b:	b8 01 00 00 00       	mov    $0x1,%eax
    1410:	5b                   	pop    %rbx
    1411:	c3                   	ret    
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1418:	48 83 6b 10 02       	subq   $0x2,0x10(%rbx)
    141d:	b8 01 00 00 00       	mov    $0x1,%eax
    1422:	5b                   	pop    %rbx
    1423:	c3                   	ret    
    1424:	0f 1f 40 00          	nopl   0x0(%rax)
    1428:	31 c0                	xor    %eax,%eax
    142a:	48 85 f6             	test   %rsi,%rsi
    142d:	0f 84 73 ff ff ff    	je     13a6 <getc@plt+0x2e6>
    1433:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1437:	c6 06 00             	movb   $0x0,(%rsi)
    143a:	48 8d 4a fe          	lea    -0x2(%rdx),%rcx
    143e:	0f b7 52 fe          	movzwl -0x2(%rdx),%edx
    1442:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    1446:	5b                   	pop    %rbx
    1447:	66 89 56 02          	mov    %dx,0x2(%rsi)
    144b:	c3                   	ret    
    144c:	0f 1f 40 00          	nopl   0x0(%rax)
    1450:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1454:	0f b7 50 fc          	movzwl -0x4(%rax),%edx
    1458:	48 8d 48 fe          	lea    -0x2(%rax),%rcx
    145c:	66 2b 50 fe          	sub    -0x2(%rax),%dx
    1460:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    1464:	66 89 50 fc          	mov    %dx,-0x4(%rax)
    1468:	b8 01 00 00 00       	mov    $0x1,%eax
    146d:	5b                   	pop    %rbx
    146e:	c3                   	ret    
    146f:	90                   	nop
    1470:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1474:	0f b7 50 fc          	movzwl -0x4(%rax),%edx
    1478:	0f b7 48 fe          	movzwl -0x2(%rax),%ecx
    147c:	66 89 48 fc          	mov    %cx,-0x4(%rax)
    1480:	48 89 43 10          	mov    %rax,0x10(%rbx)
    1484:	66 89 50 fe          	mov    %dx,-0x2(%rax)
    1488:	b8 01 00 00 00       	mov    $0x1,%eax
    148d:	5b                   	pop    %rbx
    148e:	c3                   	ret    
    148f:	90                   	nop
    1490:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1494:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    1498:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    149c:	0f b7 50 fe          	movzwl -0x2(%rax),%edx
    14a0:	48 8b 43 18          	mov    0x18(%rbx),%rax
    14a4:	48 8d 48 02          	lea    0x2(%rax),%rcx
    14a8:	48 89 4b 18          	mov    %rcx,0x18(%rbx)
    14ac:	66 89 10             	mov    %dx,(%rax)
    14af:	b8 01 00 00 00       	mov    $0x1,%eax
    14b4:	5b                   	pop    %rbx
    14b5:	c3                   	ret    
    14b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14bd:	00 00 00 
    14c0:	48 8b 43 10          	mov    0x10(%rbx),%rax
    14c4:	0f b7 50 fe          	movzwl -0x2(%rax),%edx
    14c8:	48 8d 48 02          	lea    0x2(%rax),%rcx
    14cc:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    14d0:	66 89 10             	mov    %dx,(%rax)
    14d3:	b8 01 00 00 00       	mov    $0x1,%eax
    14d8:	5b                   	pop    %rbx
    14d9:	c3                   	ret    
    14da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14e0:	48 8b 43 18          	mov    0x18(%rbx),%rax
    14e4:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    14e8:	48 89 53 18          	mov    %rdx,0x18(%rbx)
    14ec:	0f b7 50 fe          	movzwl -0x2(%rax),%edx
    14f0:	48 8b 43 10          	mov    0x10(%rbx),%rax
    14f4:	48 8d 48 02          	lea    0x2(%rax),%rcx
    14f8:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    14fc:	66 89 10             	mov    %dx,(%rax)
    14ff:	b8 01 00 00 00       	mov    $0x1,%eax
    1504:	5b                   	pop    %rbx
    1505:	c3                   	ret    
    1506:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    150d:	00 00 00 
    1510:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1514:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    1518:	0f b7 40 fe          	movzwl -0x2(%rax),%eax
    151c:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1520:	66 89 43 08          	mov    %ax,0x8(%rbx)
    1524:	b8 01 00 00 00       	mov    $0x1,%eax
    1529:	5b                   	pop    %rbx
    152a:	c3                   	ret    
    152b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1530:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1534:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    1538:	66 83 78 fc 00       	cmpw   $0x0,-0x4(%rax)
    153d:	0f b7 48 fe          	movzwl -0x2(%rax),%ecx
    1541:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1545:	0f 85 c0 fe ff ff    	jne    140b <getc@plt+0x34b>
    154b:	66 89 4b 08          	mov    %cx,0x8(%rbx)
    154f:	b8 01 00 00 00       	mov    $0x1,%eax
    1554:	5b                   	pop    %rbx
    1555:	c3                   	ret    
    1556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    155d:	00 00 00 
    1560:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1564:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    1568:	66 83 78 fc 00       	cmpw   $0x0,-0x4(%rax)
    156d:	0f b7 48 fe          	movzwl -0x2(%rax),%ecx
    1571:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1575:	0f 84 90 fe ff ff    	je     140b <getc@plt+0x34b>
    157b:	eb ce                	jmp    154b <getc@plt+0x48b>
    157d:	0f 1f 00             	nopl   (%rax)
    1580:	48 8b 43 10          	mov    0x10(%rbx),%rax
    1584:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    1588:	66 83 78 fc 00       	cmpw   $0x0,-0x4(%rax)
    158d:	0f b7 48 fe          	movzwl -0x2(%rax),%ecx
    1591:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1595:	0f 8f 70 fe ff ff    	jg     140b <getc@plt+0x34b>
    159b:	eb ae                	jmp    154b <getc@plt+0x48b>
    159d:	0f 1f 00             	nopl   (%rax)
    15a0:	48 8b 43 10          	mov    0x10(%rbx),%rax
    15a4:	0f b7 50 fe          	movzwl -0x2(%rax),%edx
    15a8:	48 8d 48 fe          	lea    -0x2(%rax),%rcx
    15ac:	66 03 50 fc          	add    -0x4(%rax),%dx
    15b0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    15b4:	66 89 50 fc          	mov    %dx,-0x4(%rax)
    15b8:	b8 01 00 00 00       	mov    $0x1,%eax
    15bd:	5b                   	pop    %rbx
    15be:	c3                   	ret    
    15bf:	90                   	nop
    15c0:	31 c0                	xor    %eax,%eax
    15c2:	ff 53 20             	call   *0x20(%rbx)
    15c5:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    15c9:	0f b6 c0             	movzbl %al,%eax
    15cc:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
    15d0:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    15d4:	66 89 02             	mov    %ax,(%rdx)
    15d7:	b8 01 00 00 00       	mov    $0x1,%eax
    15dc:	5b                   	pop    %rbx
    15dd:	c3                   	ret    
    15de:	66 90                	xchg   %ax,%ax
    15e0:	0f b7 c9             	movzwl %cx,%ecx
    15e3:	83 c2 02             	add    $0x2,%edx
    15e6:	66 0f be 0c 0f       	movsbw (%rdi,%rcx,1),%cx
    15eb:	e9 ce fd ff ff       	jmp    13be <getc@plt+0x2fe>
    15f0:	f3 0f 1e fa          	endbr64 
    15f4:	41 57                	push   %r15
    15f6:	4c 8d 3d eb 27 00 00 	lea    0x27eb(%rip),%r15        # 3de8 <getc@plt+0x2d28>
    15fd:	41 56                	push   %r14
    15ff:	49 89 d6             	mov    %rdx,%r14
    1602:	41 55                	push   %r13
    1604:	49 89 f5             	mov    %rsi,%r13
    1607:	41 54                	push   %r12
    1609:	41 89 fc             	mov    %edi,%r12d
    160c:	55                   	push   %rbp
    160d:	48 8d 2d dc 27 00 00 	lea    0x27dc(%rip),%rbp        # 3df0 <getc@plt+0x2d30>
    1614:	53                   	push   %rbx
    1615:	4c 29 fd             	sub    %r15,%rbp
    1618:	48 83 ec 08          	sub    $0x8,%rsp
    161c:	e8 df f9 ff ff       	call   1000 <free@plt-0x30>
    1621:	48 c1 fd 03          	sar    $0x3,%rbp
    1625:	74 1f                	je     1646 <getc@plt+0x586>
    1627:	31 db                	xor    %ebx,%ebx
    1629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1630:	4c 89 f2             	mov    %r14,%rdx
    1633:	4c 89 ee             	mov    %r13,%rsi
    1636:	44 89 e7             	mov    %r12d,%edi
    1639:	41 ff 14 df          	call   *(%r15,%rbx,8)
    163d:	48 83 c3 01          	add    $0x1,%rbx
    1641:	48 39 dd             	cmp    %rbx,%rbp
    1644:	75 ea                	jne    1630 <getc@plt+0x570>
    1646:	48 83 c4 08          	add    $0x8,%rsp
    164a:	5b                   	pop    %rbx
    164b:	5d                   	pop    %rbp
    164c:	41 5c                	pop    %r12
    164e:	41 5d                	pop    %r13
    1650:	41 5e                	pop    %r14
    1652:	41 5f                	pop    %r15
    1654:	c3                   	ret    
    1655:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    165c:	00 00 00 00 
    1660:	f3 0f 1e fa          	endbr64 
    1664:	c3                   	ret    

Disassembly of section .fini:

0000000000001668 <.fini>:
    1668:	f3 0f 1e fa          	endbr64 
    166c:	48 83 ec 08          	sub    $0x8,%rsp
    1670:	48 83 c4 08          	add    $0x8,%rsp
    1674:	c3                   	ret    
