
bbbbloat:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <strdup@plt+0x2e98>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <__cxa_finalize@plt-0xaa>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 5a 2f 00 00    	push   0x2f5a(%rip)        # 3f80 <strdup@plt+0x2e30>
    1026:	f2 ff 25 5b 2f 00 00 	bnd jmp *0x2f5b(%rip)        # 3f88 <strdup@plt+0x2e38>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    10bf:	90                   	nop

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 2d 2f 00 00 	bnd jmp *0x2f2d(%rip)        # 3ff8 <strdup@plt+0x2ea8>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010d0 <free@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3f90 <strdup@plt+0x2e40>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <putchar@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 3f98 <strdup@plt+0x2e48>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <puts@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 a5 2e 00 00 	bnd jmp *0x2ea5(%rip)        # 3fa0 <strdup@plt+0x2e50>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <strlen@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 9d 2e 00 00 	bnd jmp *0x2e9d(%rip)        # 3fa8 <strdup@plt+0x2e58>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <__stack_chk_fail@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 95 2e 00 00 	bnd jmp *0x2e95(%rip)        # 3fb0 <strdup@plt+0x2e60>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <printf@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 8d 2e 00 00 	bnd jmp *0x2e8d(%rip)        # 3fb8 <strdup@plt+0x2e68>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <fputs@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 85 2e 00 00 	bnd jmp *0x2e85(%rip)        # 3fc0 <strdup@plt+0x2e70>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <__isoc99_scanf@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 7d 2e 00 00 	bnd jmp *0x2e7d(%rip)        # 3fc8 <strdup@plt+0x2e78>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <strdup@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 75 2e 00 00 	bnd jmp *0x2e75(%rip)        # 3fd0 <strdup@plt+0x2e80>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001160 <.text>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	31 ed                	xor    %ebp,%ebp
    1166:	49 89 d1             	mov    %rdx,%r9
    1169:	5e                   	pop    %rsi
    116a:	48 89 e2             	mov    %rsp,%rdx
    116d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1171:	50                   	push   %rax
    1172:	54                   	push   %rsp
    1173:	4c 8d 05 a6 04 00 00 	lea    0x4a6(%rip),%r8        # 1620 <strdup@plt+0x4d0>
    117a:	48 8d 0d 2f 04 00 00 	lea    0x42f(%rip),%rcx        # 15b0 <strdup@plt+0x460>
    1181:	48 8d 3d 7f 01 00 00 	lea    0x17f(%rip),%rdi        # 1307 <strdup@plt+0x1b7>
    1188:	ff 15 52 2e 00 00    	call   *0x2e52(%rip)        # 3fe0 <strdup@plt+0x2e90>
    118e:	f4                   	hlt    
    118f:	90                   	nop
    1190:	48 8d 3d 79 2e 00 00 	lea    0x2e79(%rip),%rdi        # 4010 <stdout@GLIBC_2.2.5>
    1197:	48 8d 05 72 2e 00 00 	lea    0x2e72(%rip),%rax        # 4010 <stdout@GLIBC_2.2.5>
    119e:	48 39 f8             	cmp    %rdi,%rax
    11a1:	74 15                	je     11b8 <strdup@plt+0x68>
    11a3:	48 8b 05 2e 2e 00 00 	mov    0x2e2e(%rip),%rax        # 3fd8 <strdup@plt+0x2e88>
    11aa:	48 85 c0             	test   %rax,%rax
    11ad:	74 09                	je     11b8 <strdup@plt+0x68>
    11af:	ff e0                	jmp    *%rax
    11b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11c0:	48 8d 3d 49 2e 00 00 	lea    0x2e49(%rip),%rdi        # 4010 <stdout@GLIBC_2.2.5>
    11c7:	48 8d 35 42 2e 00 00 	lea    0x2e42(%rip),%rsi        # 4010 <stdout@GLIBC_2.2.5>
    11ce:	48 29 fe             	sub    %rdi,%rsi
    11d1:	48 89 f0             	mov    %rsi,%rax
    11d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11d8:	48 c1 f8 03          	sar    $0x3,%rax
    11dc:	48 01 c6             	add    %rax,%rsi
    11df:	48 d1 fe             	sar    %rsi
    11e2:	74 14                	je     11f8 <strdup@plt+0xa8>
    11e4:	48 8b 05 05 2e 00 00 	mov    0x2e05(%rip),%rax        # 3ff0 <strdup@plt+0x2ea0>
    11eb:	48 85 c0             	test   %rax,%rax
    11ee:	74 08                	je     11f8 <strdup@plt+0xa8>
    11f0:	ff e0                	jmp    *%rax
    11f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1200:	f3 0f 1e fa          	endbr64 
    1204:	80 3d 0d 2e 00 00 00 	cmpb   $0x0,0x2e0d(%rip)        # 4018 <stdout@GLIBC_2.2.5+0x8>
    120b:	75 2b                	jne    1238 <strdup@plt+0xe8>
    120d:	55                   	push   %rbp
    120e:	48 83 3d e2 2d 00 00 	cmpq   $0x0,0x2de2(%rip)        # 3ff8 <strdup@plt+0x2ea8>
    1215:	00 
    1216:	48 89 e5             	mov    %rsp,%rbp
    1219:	74 0c                	je     1227 <strdup@plt+0xd7>
    121b:	48 8b 3d e6 2d 00 00 	mov    0x2de6(%rip),%rdi        # 4008 <strdup@plt+0x2eb8>
    1222:	e8 99 fe ff ff       	call   10c0 <__cxa_finalize@plt>
    1227:	e8 64 ff ff ff       	call   1190 <strdup@plt+0x40>
    122c:	c6 05 e5 2d 00 00 01 	movb   $0x1,0x2de5(%rip)        # 4018 <stdout@GLIBC_2.2.5+0x8>
    1233:	5d                   	pop    %rbp
    1234:	c3                   	ret    
    1235:	0f 1f 00             	nopl   (%rax)
    1238:	c3                   	ret    
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1240:	f3 0f 1e fa          	endbr64 
    1244:	e9 77 ff ff ff       	jmp    11c0 <strdup@plt+0x70>
    1249:	f3 0f 1e fa          	endbr64 
    124d:	55                   	push   %rbp
    124e:	48 89 e5             	mov    %rsp,%rbp
    1251:	48 83 ec 30          	sub    $0x30,%rsp
    1255:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1259:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    125d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1261:	48 89 c7             	mov    %rax,%rdi
    1264:	e8 e7 fe ff ff       	call   1150 <strdup@plt>
    1269:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    126d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1271:	48 89 c7             	mov    %rax,%rdi
    1274:	e8 87 fe ff ff       	call   1100 <strlen@plt>
    1279:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    127d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1284:	00 
    1285:	eb 70                	jmp    12f7 <strdup@plt+0x1a7>
    1287:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    128b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    128f:	48 01 d0             	add    %rdx,%rax
    1292:	0f b6 00             	movzbl (%rax),%eax
    1295:	3c 20                	cmp    $0x20,%al
    1297:	7e 58                	jle    12f1 <strdup@plt+0x1a1>
    1299:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    129d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12a1:	48 01 d0             	add    %rdx,%rax
    12a4:	0f b6 00             	movzbl (%rax),%eax
    12a7:	3c 7f                	cmp    $0x7f,%al
    12a9:	74 46                	je     12f1 <strdup@plt+0x1a1>
    12ab:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    12af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12b3:	48 01 d0             	add    %rdx,%rax
    12b6:	0f b6 00             	movzbl (%rax),%eax
    12b9:	0f be c0             	movsbl %al,%eax
    12bc:	83 c0 2f             	add    $0x2f,%eax
    12bf:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    12c2:	83 7d e4 7e          	cmpl   $0x7e,-0x1c(%rbp)
    12c6:	7e 17                	jle    12df <strdup@plt+0x18f>
    12c8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    12cb:	8d 48 a2             	lea    -0x5e(%rax),%ecx
    12ce:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    12d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12d6:	48 01 d0             	add    %rdx,%rax
    12d9:	89 ca                	mov    %ecx,%edx
    12db:	88 10                	mov    %dl,(%rax)
    12dd:	eb 13                	jmp    12f2 <strdup@plt+0x1a2>
    12df:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    12e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12e7:	48 01 d0             	add    %rdx,%rax
    12ea:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    12ed:	88 10                	mov    %dl,(%rax)
    12ef:	eb 01                	jmp    12f2 <strdup@plt+0x1a2>
    12f1:	90                   	nop
    12f2:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    12f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12fb:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    12ff:	72 86                	jb     1287 <strdup@plt+0x137>
    1301:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1305:	c9                   	leave  
    1306:	c3                   	ret    
    1307:	f3 0f 1e fa          	endbr64 
    130b:	55                   	push   %rbp
    130c:	48 89 e5             	mov    %rsp,%rbp
    130f:	48 83 ec 50          	sub    $0x50,%rsp
    1313:	89 7d bc             	mov    %edi,-0x44(%rbp)
    1316:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    131a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1321:	00 00 
    1323:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1327:	31 c0                	xor    %eax,%eax
    1329:	48 b8 41 3a 34 40 72 	movabs $0x4c75257240343a41,%rax
    1330:	25 75 4c 
    1333:	48 ba 34 46 66 30 66 	movabs $0x3062396630664634,%rdx
    133a:	39 62 30 
    133d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1341:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1345:	48 b8 33 3d 5f 63 66 	movabs $0x63633066635f3d33,%rax
    134c:	30 63 63 
    134f:	48 ba 37 66 63 32 65 	movabs $0x4e5f6532636637,%rdx
    1356:	5f 4e 00 
    1359:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    135d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1361:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    1368:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    136f:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    1376:	d1 65 c4             	shll   -0x3c(%rbp)
    1379:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    137c:	48 63 d0             	movslq %eax,%rdx
    137f:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    1386:	48 c1 ea 20          	shr    $0x20,%rdx
    138a:	c1 f8 1f             	sar    $0x1f,%eax
    138d:	89 d1                	mov    %edx,%ecx
    138f:	29 c1                	sub    %eax,%ecx
    1391:	89 c8                	mov    %ecx,%eax
    1393:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    1396:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    139d:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    13a4:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    13ab:	d1 65 c4             	shll   -0x3c(%rbp)
    13ae:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    13b1:	48 63 d0             	movslq %eax,%rdx
    13b4:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    13bb:	48 c1 ea 20          	shr    $0x20,%rdx
    13bf:	c1 f8 1f             	sar    $0x1f,%eax
    13c2:	89 d1                	mov    %edx,%ecx
    13c4:	29 c1                	sub    %eax,%ecx
    13c6:	89 c8                	mov    %ecx,%eax
    13c8:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    13cb:	48 8d 3d 32 0c 00 00 	lea    0xc32(%rip),%rdi        # 2004 <strdup@plt+0xeb4>
    13d2:	b8 00 00 00 00       	mov    $0x0,%eax
    13d7:	e8 44 fd ff ff       	call   1120 <printf@plt>
    13dc:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    13e3:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    13ea:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    13f1:	d1 65 c4             	shll   -0x3c(%rbp)
    13f4:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    13f7:	48 63 d0             	movslq %eax,%rdx
    13fa:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    1401:	48 c1 ea 20          	shr    $0x20,%rdx
    1405:	c1 f8 1f             	sar    $0x1f,%eax
    1408:	89 d6                	mov    %edx,%esi
    140a:	29 c6                	sub    %eax,%esi
    140c:	89 f0                	mov    %esi,%eax
    140e:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    1411:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    1418:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    141f:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    1426:	d1 65 c4             	shll   -0x3c(%rbp)
    1429:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    142c:	48 63 d0             	movslq %eax,%rdx
    142f:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    1436:	48 c1 ea 20          	shr    $0x20,%rdx
    143a:	c1 f8 1f             	sar    $0x1f,%eax
    143d:	89 d1                	mov    %edx,%ecx
    143f:	29 c1                	sub    %eax,%ecx
    1441:	89 c8                	mov    %ecx,%eax
    1443:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    1446:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    144a:	48 89 c6             	mov    %rax,%rsi
    144d:	48 8d 3d cc 0b 00 00 	lea    0xbcc(%rip),%rdi        # 2020 <strdup@plt+0xed0>
    1454:	b8 00 00 00 00       	mov    $0x0,%eax
    1459:	e8 e2 fc ff ff       	call   1140 <__isoc99_scanf@plt>
    145e:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    1465:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    146c:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    1473:	d1 65 c4             	shll   -0x3c(%rbp)
    1476:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    1479:	48 63 d0             	movslq %eax,%rdx
    147c:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    1483:	48 c1 ea 20          	shr    $0x20,%rdx
    1487:	c1 f8 1f             	sar    $0x1f,%eax
    148a:	89 d6                	mov    %edx,%esi
    148c:	29 c6                	sub    %eax,%esi
    148e:	89 f0                	mov    %esi,%eax
    1490:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    1493:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    149a:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    14a1:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    14a8:	d1 65 c4             	shll   -0x3c(%rbp)
    14ab:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    14ae:	48 63 d0             	movslq %eax,%rdx
    14b1:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    14b8:	48 c1 ea 20          	shr    $0x20,%rdx
    14bc:	c1 f8 1f             	sar    $0x1f,%eax
    14bf:	89 d7                	mov    %edx,%edi
    14c1:	29 c7                	sub    %eax,%edi
    14c3:	89 f8                	mov    %edi,%eax
    14c5:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    14c8:	8b 45 c0             	mov    -0x40(%rbp),%eax
    14cb:	3d 87 61 08 00       	cmp    $0x86187,%eax
    14d0:	0f 85 ad 00 00 00    	jne    1583 <strdup@plt+0x433>
    14d6:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    14dd:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    14e4:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    14eb:	d1 65 c4             	shll   -0x3c(%rbp)
    14ee:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    14f1:	48 63 d0             	movslq %eax,%rdx
    14f4:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    14fb:	48 c1 ea 20          	shr    $0x20,%rdx
    14ff:	c1 f8 1f             	sar    $0x1f,%eax
    1502:	89 d1                	mov    %edx,%ecx
    1504:	29 c1                	sub    %eax,%ecx
    1506:	89 c8                	mov    %ecx,%eax
    1508:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    150b:	c7 45 c4 78 30 00 00 	movl   $0x3078,-0x3c(%rbp)
    1512:	81 45 c4 9e c2 13 00 	addl   $0x13c29e,-0x3c(%rbp)
    1519:	81 6d c4 a8 30 00 00 	subl   $0x30a8,-0x3c(%rbp)
    1520:	d1 65 c4             	shll   -0x3c(%rbp)
    1523:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    1526:	48 63 d0             	movslq %eax,%rdx
    1529:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
    1530:	48 c1 ea 20          	shr    $0x20,%rdx
    1534:	c1 f8 1f             	sar    $0x1f,%eax
    1537:	89 d6                	mov    %edx,%esi
    1539:	29 c6                	sub    %eax,%esi
    153b:	89 f0                	mov    %esi,%eax
    153d:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    1540:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1544:	48 89 c6             	mov    %rax,%rsi
    1547:	bf 00 00 00 00       	mov    $0x0,%edi
    154c:	e8 f8 fc ff ff       	call   1249 <strdup@plt+0xf9>
    1551:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1555:	48 8b 15 b4 2a 00 00 	mov    0x2ab4(%rip),%rdx        # 4010 <stdout@GLIBC_2.2.5>
    155c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1560:	48 89 d6             	mov    %rdx,%rsi
    1563:	48 89 c7             	mov    %rax,%rdi
    1566:	e8 c5 fb ff ff       	call   1130 <fputs@plt>
    156b:	bf 0a 00 00 00       	mov    $0xa,%edi
    1570:	e8 6b fb ff ff       	call   10e0 <putchar@plt>
    1575:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1579:	48 89 c7             	mov    %rax,%rdi
    157c:	e8 4f fb ff ff       	call   10d0 <free@plt>
    1581:	eb 0c                	jmp    158f <strdup@plt+0x43f>
    1583:	48 8d 3d 99 0a 00 00 	lea    0xa99(%rip),%rdi        # 2023 <strdup@plt+0xed3>
    158a:	e8 61 fb ff ff       	call   10f0 <puts@plt>
    158f:	b8 00 00 00 00       	mov    $0x0,%eax
    1594:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1598:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    159f:	00 00 
    15a1:	74 05                	je     15a8 <strdup@plt+0x458>
    15a3:	e8 68 fb ff ff       	call   1110 <__stack_chk_fail@plt>
    15a8:	c9                   	leave  
    15a9:	c3                   	ret    
    15aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    15b0:	f3 0f 1e fa          	endbr64 
    15b4:	41 57                	push   %r15
    15b6:	4c 8d 3d bb 27 00 00 	lea    0x27bb(%rip),%r15        # 3d78 <strdup@plt+0x2c28>
    15bd:	41 56                	push   %r14
    15bf:	49 89 d6             	mov    %rdx,%r14
    15c2:	41 55                	push   %r13
    15c4:	49 89 f5             	mov    %rsi,%r13
    15c7:	41 54                	push   %r12
    15c9:	41 89 fc             	mov    %edi,%r12d
    15cc:	55                   	push   %rbp
    15cd:	48 8d 2d ac 27 00 00 	lea    0x27ac(%rip),%rbp        # 3d80 <strdup@plt+0x2c30>
    15d4:	53                   	push   %rbx
    15d5:	4c 29 fd             	sub    %r15,%rbp
    15d8:	48 83 ec 08          	sub    $0x8,%rsp
    15dc:	e8 1f fa ff ff       	call   1000 <__cxa_finalize@plt-0xc0>
    15e1:	48 c1 fd 03          	sar    $0x3,%rbp
    15e5:	74 1f                	je     1606 <strdup@plt+0x4b6>
    15e7:	31 db                	xor    %ebx,%ebx
    15e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15f0:	4c 89 f2             	mov    %r14,%rdx
    15f3:	4c 89 ee             	mov    %r13,%rsi
    15f6:	44 89 e7             	mov    %r12d,%edi
    15f9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    15fd:	48 83 c3 01          	add    $0x1,%rbx
    1601:	48 39 dd             	cmp    %rbx,%rbp
    1604:	75 ea                	jne    15f0 <strdup@plt+0x4a0>
    1606:	48 83 c4 08          	add    $0x8,%rsp
    160a:	5b                   	pop    %rbx
    160b:	5d                   	pop    %rbp
    160c:	41 5c                	pop    %r12
    160e:	41 5d                	pop    %r13
    1610:	41 5e                	pop    %r14
    1612:	41 5f                	pop    %r15
    1614:	c3                   	ret    
    1615:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    161c:	00 00 00 00 
    1620:	f3 0f 1e fa          	endbr64 
    1624:	c3                   	ret    

Disassembly of section .fini:

0000000000001628 <.fini>:
    1628:	f3 0f 1e fa          	endbr64 
    162c:	48 83 ec 08          	sub    $0x8,%rsp
    1630:	48 83 c4 08          	add    $0x8,%rsp
    1634:	c3                   	ret    
