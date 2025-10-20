
build/eth_driver.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000200000 <_start>:
  200000:	1400030c 	b	200c30 <main>
	...

0000000000200010 <init>:
  200010:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  200014:	a9015ff8 	stp	x24, x23, [sp, #16]
  200018:	a90257f6 	stp	x22, x21, [sp, #32]
  20001c:	a9034ff4 	stp	x20, x19, [sp, #48]
  200020:	910003fd 	mov	x29, sp
  200024:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200028:	3959a108 	ldrb	w8, [x8, #1640]
  20002c:	2a0803f3 	mov	w19, w8
  200030:	7100f51f 	cmp	w8, #0x3d
  200034:	540002c8 	b.hi	20008c <init+0x7c>  // b.pmore
  200038:	d0000009 	adrp	x9, 202000 <__sel4_ipc_buffer>
  20003c:	f943c529 	ldr	x9, [x9, #1928]
  200040:	9ad32529 	lsr	x9, x9, x19
  200044:	36000249 	tbz	w9, #0, 20008c <init+0x7c>
  200048:	52940001 	mov	w1, #0xa000                	// #40960
  20004c:	91022900 	add	x0, x8, #0x8a
  200050:	aa1f03e2 	mov	x2, xzr
  200054:	aa1f03e3 	mov	x3, xzr
  200058:	aa1f03e4 	mov	x4, xzr
  20005c:	aa1f03e5 	mov	x5, xzr
  200060:	72a00021 	movk	w1, #0x1, lsl #16
  200064:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  200068:	aa1f03e6 	mov	x6, xzr
  20006c:	d4000001 	svc	#0x0
  200070:	f2747c3f 	tst	x1, #0xffffffff000
  200074:	54000220 	b.eq	2000b8 <init+0xa8>  // b.none
  200078:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  20007c:	f9400108 	ldr	x8, [x8]
  200080:	a9008d02 	stp	x2, x3, [x8, #8]
  200084:	a9019504 	stp	x4, x5, [x8, #24]
  200088:	1400000c 	b	2000b8 <init+0xa8>
  20008c:	d503201f 	nop
  200090:	10013480 	adr	x0, 202720 <microkit_name>
  200094:	9400033f 	bl	200d90 <microkit_dbg_puts>
  200098:	d503201f 	nop
  20009c:	30007dc0 	adr	x0, 201055 <_text_end+0x2d>
  2000a0:	9400033c 	bl	200d90 <microkit_dbg_puts>
  2000a4:	2a1303e0 	mov	w0, w19
  2000a8:	94000362 	bl	200e30 <microkit_dbg_put32>
  2000ac:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  2000b0:	91014800 	add	x0, x0, #0x52
  2000b4:	94000337 	bl	200d90 <microkit_dbg_puts>
  2000b8:	d0000009 	adrp	x9, 202000 <__sel4_ipc_buffer>
  2000bc:	9101a129 	add	x9, x9, #0x68
  2000c0:	d000000e 	adrp	x14, 202000 <__sel4_ipc_buffer>
  2000c4:	911be1ce 	add	x14, x14, #0x6f8
  2000c8:	d000000f 	adrp	x15, 202000 <__sel4_ipc_buffer>
  2000cc:	911c41ef 	add	x15, x15, #0x710
  2000d0:	f9400128 	ldr	x8, [x9]
  2000d4:	d000000b 	adrp	x11, 202000 <__sel4_ipc_buffer>
  2000d8:	52802010 	mov	w16, #0x100                 	// #256
  2000dc:	f9037568 	str	x8, [x11, #1768]
  2000e0:	9140050a 	add	x10, x8, #0x1, lsl #12
  2000e4:	d000000b 	adrp	x11, 202000 <__sel4_ipc_buffer>
  2000e8:	f903716a 	str	x10, [x11, #1760]
  2000ec:	b940450b 	ldr	w11, [x8, #68]
  2000f0:	b940410d 	ldr	w13, [x8, #64]
  2000f4:	b90001d0 	str	w16, [x14]
  2000f8:	f9400d2c 	ldr	x12, [x9, #24]
  2000fc:	b90001f0 	str	w16, [x15]
  200100:	f9401929 	ldr	x9, [x9, #48]
  200104:	f90005cc 	str	x12, [x14, #8]
  200108:	f90005e9 	str	x9, [x15, #8]
  20010c:	b950010e 	ldr	w14, [x8, #4096]
  200110:	320001ce 	orr	w14, w14, #0x1
  200114:	b910010e 	str	w14, [x8, #4096]
  200118:	d503201f 	nop
  20011c:	d503201f 	nop
  200120:	b940014e 	ldr	w14, [x10]
  200124:	3707ffee 	tbnz	w14, #0, 200120 <init+0x110>
  200128:	52a0020e 	mov	w14, #0x100000              	// #1048576
  20012c:	b900194e 	str	w14, [x10, #24]
  200130:	b940194e 	ldr	w14, [x10, #24]
  200134:	37a7ffee 	tbnz	w14, #20, 200130 <init+0x120>
  200138:	b900450b 	str	w11, [x8, #68]
  20013c:	528020ab 	mov	w11, #0x105                 	// #261
  200140:	5284000e 	mov	w14, #0x2000                	// #8192
  200144:	72a0040b 	movk	w11, #0x20, lsl #16
  200148:	b900410d 	str	w13, [x8, #64]
  20014c:	5281000d 	mov	w13, #0x800                 	// #2048
  200150:	129ffe2f 	mov	w15, #0xffff000e            	// #-65522
  200154:	d0000003 	adrp	x3, 202000 <__sel4_ipc_buffer>
  200158:	91004063 	add	x3, x3, #0x10
  20015c:	b910010e 	str	w14, [x8, #4096]
  200160:	b910190b 	str	w11, [x8, #4120]
  200164:	d000000b 	adrp	x11, 202000 <__sel4_ipc_buffer>
  200168:	9102416b 	add	x11, x11, #0x90
  20016c:	b900010d 	str	w13, [x8]
  200170:	d503201f 	nop
  200174:	100129e4 	adr	x4, 2026b0 <rx_queue>
  200178:	d503201f 	nop
  20017c:	10012a73 	adr	x19, 2026c8 <tx_queue>
  200180:	f940016d 	ldr	x13, [x11]
  200184:	5280c000 	mov	w0, #0x600                 	// #1536
  200188:	52802002 	mov	w2, #0x100                 	// #256
  20018c:	5280002e 	mov	w14, #0x1                   	// #1
  200190:	d0000010 	adrp	x16, 202000 <__sel4_ipc_buffer>
  200194:	d0000011 	adrp	x17, 202000 <__sel4_ipc_buffer>
  200198:	b9100d0d 	str	w13, [x8, #4108]
  20019c:	d000000d 	adrp	x13, 202000 <__sel4_ipc_buffer>
  2001a0:	f9400d6b 	ldr	x11, [x11, #24]
  2001a4:	5280c012 	mov	w18, #0x600                 	// #1536
  2001a8:	72a04000 	movk	w0, #0x200, lsl #16
  2001ac:	52b00001 	mov	w1, #0x80000000            	// #-2147483648
  2001b0:	b910110b 	str	w11, [x8, #4112]
  2001b4:	b940050b 	ldr	w11, [x8, #4]
  2001b8:	3200016b 	orr	w11, w11, #0x1
  2001bc:	b900050b 	str	w11, [x8, #4]
  2001c0:	b900190f 	str	w15, [x8, #24]
  2001c4:	f940006f 	ldr	x15, [x3]
  2001c8:	f9400865 	ldr	x5, [x3, #16]
  2001cc:	79404066 	ldrh	w6, [x3, #32]
  2001d0:	f9401474 	ldr	x20, [x3, #40]
  2001d4:	f9401c6b 	ldr	x11, [x3, #56]
  2001d8:	a900148f 	stp	x15, x5, [x4]
  2001dc:	79409067 	ldrh	w7, [x3, #72]
  2001e0:	aa0f03e3 	mov	x3, x15
  2001e4:	b9001086 	str	w6, [x4, #16]
  2001e8:	d0000004 	adrp	x4, 202000 <__sel4_ipc_buffer>
  2001ec:	b946f085 	ldr	w5, [x4, #1776]
  2001f0:	a9002e74 	stp	x20, x11, [x19]
  2001f4:	b9001267 	str	w7, [x19, #16]
  2001f8:	12800007 	mov	w7, #0xffffffff            	// #-1
  2001fc:	78408466 	ldrh	w6, [x3], #8
  200200:	d0000013 	adrp	x19, 202000 <__sel4_ipc_buffer>
  200204:	911bd273 	add	x19, x19, #0x6f4
  200208:	b946f5b4 	ldr	w20, [x13, #1780]
  20020c:	0b140054 	add	w20, w2, w20
  200210:	794005f5 	ldrh	w21, [x15, #2]
  200214:	6b05029f 	cmp	w20, w5
  200218:	54000380 	b.eq	200288 <init+0x278>  // b.none
  20021c:	d503201f 	nop
  200220:	6b1500df 	cmp	w6, w21
  200224:	54000500 	b.eq	2002c4 <init+0x2b4>  // b.none
  200228:	b946c236 	ldr	w22, [x17, #1728]
  20022c:	1ac208b8 	udiv	w24, w5, w2
  200230:	1ad60ab7 	udiv	w23, w21, w22
  200234:	1b16d6f6 	msub	w22, w23, w22, w21
  200238:	110006b5 	add	w21, w21, #0x1
  20023c:	1b029717 	msub	w23, w24, w2, w5
  200240:	110004a5 	add	w5, w5, #0x1
  200244:	d37c7ed6 	ubfiz	x22, x22, #4, #32
  200248:	110006f8 	add	w24, w23, #0x1
  20024c:	790005f5 	strh	w21, [x15, #2]
  200250:	6b02031f 	cmp	w24, w2
  200254:	8b375197 	add	x23, x12, w23, uxtw #4
  200258:	f8766876 	ldr	x22, [x3, x22]
  20025c:	1a920015 	csel	w21, w0, w18, eq	// eq = none
  200260:	b9000af6 	str	w22, [x23, #8]
  200264:	b9000eff 	str	wzr, [x23, #12]
  200268:	b90006f5 	str	w21, [x23, #4]
  20026c:	d5033bbf 	dmb	ish
  200270:	b90002e1 	str	w1, [x23]
  200274:	b9000947 	str	w7, [x10, #8]
  200278:	b906f085 	str	w5, [x4, #1776]
  20027c:	794005f5 	ldrh	w21, [x15, #2]
  200280:	6b05029f 	cmp	w20, w5
  200284:	54fffce1 	b.ne	200220 <init+0x210>  // b.any
  200288:	6b1500df 	cmp	w6, w21
  20028c:	b90005ff 	str	wzr, [x15, #4]
  200290:	540001c0 	b.eq	2002c8 <init+0x2b8>  // b.none
  200294:	29405262 	ldp	w2, w20, [x19]
  200298:	0b140042 	add	w2, w2, w20
  20029c:	6b05005f 	cmp	w2, w5
  2002a0:	54000140 	b.eq	2002c8 <init+0x2b8>  // b.none
  2002a4:	b90005ee 	str	w14, [x15, #4]
  2002a8:	b946fa02 	ldr	w2, [x16, #1784]
  2002ac:	b946f5b4 	ldr	w20, [x13, #1780]
  2002b0:	0b140054 	add	w20, w2, w20
  2002b4:	794005f5 	ldrh	w21, [x15, #2]
  2002b8:	6b05029f 	cmp	w20, w5
  2002bc:	54fffb21 	b.ne	200220 <init+0x210>  // b.any
  2002c0:	17fffff2 	b	200288 <init+0x278>
  2002c4:	b90005ff 	str	wzr, [x15, #4]
  2002c8:	d000000a 	adrp	x10, 202000 <__sel4_ipc_buffer>
  2002cc:	b947094c 	ldr	w12, [x10, #1800]
  2002d0:	9100216d 	add	x13, x11, #0x8
  2002d4:	5280002e 	mov	w14, #0x1                   	// #1
  2002d8:	d000000f 	adrp	x15, 202000 <__sel4_ipc_buffer>
  2002dc:	52bc0010 	mov	w16, #0xe0000000            	// #-536870912
  2002e0:	52bc4011 	mov	w17, #0xe2000000            	// #-503316480
  2002e4:	52b00012 	mov	w18, #0x80000000            	// #-2147483648
  2002e8:	d0000000 	adrp	x0, 202000 <__sel4_ipc_buffer>
  2002ec:	911c3000 	add	x0, x0, #0x70c
  2002f0:	29400402 	ldp	w2, w1, [x0]
  2002f4:	0b010042 	add	w2, w2, w1
  2002f8:	6b0c005f 	cmp	w2, w12
  2002fc:	540003a0 	b.eq	200370 <init+0x360>  // b.none
  200300:	79400164 	ldrh	w4, [x11]
  200304:	79400563 	ldrh	w3, [x11, #2]
  200308:	6b03009f 	cmp	w4, w3
  20030c:	54000320 	b.eq	200370 <init+0x360>  // b.none
  200310:	b946d9e4 	ldr	w4, [x15, #1752]
  200314:	1ac10986 	udiv	w6, w12, w1
  200318:	1ac40865 	udiv	w5, w3, w4
  20031c:	1b048ca4 	msub	w4, w5, w4, w3
  200320:	11000463 	add	w3, w3, #0x1
  200324:	1b01b0c5 	msub	w5, w6, w1, w12
  200328:	1100058c 	add	w12, w12, #0x1
  20032c:	8b2451a4 	add	x4, x13, w4, uxtw #4
  200330:	110004a6 	add	w6, w5, #0x1
  200334:	6b0100df 	cmp	w6, w1
  200338:	8b255125 	add	x5, x9, w5, uxtw #4
  20033c:	1a900227 	csel	w7, w17, w16, eq	// eq = none
  200340:	79000563 	strh	w3, [x11, #2]
  200344:	79401086 	ldrh	w6, [x4, #8]
  200348:	f9400084 	ldr	x4, [x4]
  20034c:	330028c7 	bfxil	w7, w6, #0, #11
  200350:	b90008a4 	str	w4, [x5, #8]
  200354:	b9000cbf 	str	wzr, [x5, #12]
  200358:	b90004a7 	str	w7, [x5, #4]
  20035c:	d5033bbf 	dmb	ish
  200360:	b90000b2 	str	w18, [x5]
  200364:	b907094c 	str	w12, [x10, #1800]
  200368:	6b0c005f 	cmp	w2, w12
  20036c:	54fffca1 	b.ne	200300 <init+0x2f0>  // b.any
  200370:	b900057f 	str	wzr, [x11, #4]
  200374:	29400801 	ldp	w1, w2, [x0]
  200378:	0b020021 	add	w1, w1, w2
  20037c:	6b0c003f 	cmp	w1, w12
  200380:	54000160 	b.eq	2003ac <init+0x39c>  // b.none
  200384:	79400161 	ldrh	w1, [x11]
  200388:	79400562 	ldrh	w2, [x11, #2]
  20038c:	6b02003f 	cmp	w1, w2
  200390:	540000e0 	b.eq	2003ac <init+0x39c>  // b.none
  200394:	b900056e 	str	w14, [x11, #4]
  200398:	29400402 	ldp	w2, w1, [x0]
  20039c:	0b010042 	add	w2, w2, w1
  2003a0:	6b0c005f 	cmp	w2, w12
  2003a4:	54fffae1 	b.ne	200300 <init+0x2f0>  // b.any
  2003a8:	17fffff2 	b	200370 <init+0x360>
  2003ac:	12800009 	mov	w9, #0xffffffff            	// #-1
  2003b0:	5294082a 	mov	w10, #0xa041                	// #41025
  2003b4:	72a0002a 	movk	w10, #0x1, lsl #16
  2003b8:	b9100509 	str	w9, [x8, #4100]
  2003bc:	b9501d09 	ldr	w9, [x8, #4124]
  2003c0:	2a0a0129 	orr	w9, w9, w10
  2003c4:	5284004a 	mov	w10, #0x2002                	// #8194
  2003c8:	b9101d09 	str	w9, [x8, #4124]
  2003cc:	b9403d09 	ldr	w9, [x8, #60]
  2003d0:	32000d29 	orr	w9, w9, #0xf
  2003d4:	b9003d09 	str	w9, [x8, #60]
  2003d8:	b9400109 	ldr	w9, [x8]
  2003dc:	321e0529 	orr	w9, w9, #0xc
  2003e0:	b9000109 	str	w9, [x8]
  2003e4:	b9501909 	ldr	w9, [x8, #4120]
  2003e8:	2a0a0129 	orr	w9, w9, w10
  2003ec:	b9101909 	str	w9, [x8, #4120]
  2003f0:	a9434ff4 	ldp	x20, x19, [sp, #48]
  2003f4:	a94257f6 	ldp	x22, x21, [sp, #32]
  2003f8:	a9415ff8 	ldp	x24, x23, [sp, #16]
  2003fc:	a8c47bfd 	ldp	x29, x30, [sp], #64
  200400:	d65f03c0 	ret
  200404:	d503201f 	nop
  200408:	d503201f 	nop
  20040c:	d503201f 	nop

0000000000200410 <notified>:
  200410:	d101c3ff 	sub	sp, sp, #0x70
  200414:	a9017bfd 	stp	x29, x30, [sp, #16]
  200418:	a9026ffc 	stp	x28, x27, [sp, #32]
  20041c:	a90367fa 	stp	x26, x25, [sp, #48]
  200420:	a9045ff8 	stp	x24, x23, [sp, #64]
  200424:	a90557f6 	stp	x22, x21, [sp, #80]
  200428:	a9064ff4 	stp	x20, x19, [sp, #96]
  20042c:	910043fd 	add	x29, sp, #0x10
  200430:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200434:	3959a108 	ldrb	w8, [x8, #1640]
  200438:	6b08001f 	cmp	w0, w8
  20043c:	54000461 	b.ne	2004c8 <notified+0xb8>  // b.any
  200440:	d0000002 	adrp	x2, 202000 <__sel4_ipc_buffer>
  200444:	f9437048 	ldr	x8, [x2, #1760]
  200448:	f90007e0 	str	x0, [sp, #8]
  20044c:	52940823 	mov	w3, #0xa041                	// #41025
  200450:	72a00023 	movk	w3, #0x1, lsl #16
  200454:	b9401514 	ldr	w20, [x8, #20]
  200458:	b9401509 	ldr	w9, [x8, #20]
  20045c:	6a03029f 	tst	w20, w3
  200460:	0a140129 	and	w9, w9, w20
  200464:	b9001509 	str	w9, [x8, #20]
  200468:	54002c80 	b.eq	2009f8 <notified+0x5e8>  // b.none
  20046c:	5280c005 	mov	w5, #0x600                 	// #1536
  200470:	52bc401a 	mov	w26, #0xe2000000            	// #-503316480
  200474:	d503201f 	nop
  200478:	100113db 	adr	x27, 2026f0 <rx>
  20047c:	d000001c 	adrp	x28, 202000 <__sel4_ipc_buffer>
  200480:	911be39c 	add	x28, x28, #0x6f8
  200484:	d0000004 	adrp	x4, 202000 <__sel4_ipc_buffer>
  200488:	911ae084 	add	x4, x4, #0x6b8
  20048c:	72a04005 	movk	w5, #0x200, lsl #16
  200490:	d0000006 	adrp	x6, 202000 <__sel4_ipc_buffer>
  200494:	5280c01e 	mov	w30, #0x600                 	// #1536
  200498:	52b00019 	mov	w25, #0x80000000            	// #-2147483648
  20049c:	12800000 	mov	w0, #0xffffffff            	// #-1
  2004a0:	52800035 	mov	w21, #0x1                   	// #1
  2004a4:	d503201f 	nop
  2004a8:	10011313 	adr	x19, 202708 <tx>
  2004ac:	d0000001 	adrp	x1, 202000 <__sel4_ipc_buffer>
  2004b0:	d0000007 	adrp	x7, 202000 <__sel4_ipc_buffer>
  2004b4:	d0000016 	adrp	x22, 202000 <__sel4_ipc_buffer>
  2004b8:	911c32d6 	add	x22, x22, #0x70c
  2004bc:	d0000018 	adrp	x24, 202000 <__sel4_ipc_buffer>
  2004c0:	52bc0017 	mov	w23, #0xe0000000            	// #-536870912
  2004c4:	14000066 	b	20065c <notified+0x24c>
  2004c8:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  2004cc:	3940c908 	ldrb	w8, [x8, #50]
  2004d0:	6b08001f 	cmp	w0, w8
  2004d4:	54002da1 	b.ne	200a88 <notified+0x678>  // b.any
  2004d8:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  2004dc:	f9435908 	ldr	x8, [x8, #1712]
  2004e0:	5280c009 	mov	w9, #0x600                 	// #1536
  2004e4:	d000000a 	adrp	x10, 202000 <__sel4_ipc_buffer>
  2004e8:	b946f14a 	ldr	w10, [x10, #1776]
  2004ec:	72a04009 	movk	w9, #0x200, lsl #16
  2004f0:	aa0803eb 	mov	x11, x8
  2004f4:	5280002c 	mov	w12, #0x1                   	// #1
  2004f8:	d000000d 	adrp	x13, 202000 <__sel4_ipc_buffer>
  2004fc:	5280c00e 	mov	w14, #0x600                 	// #1536
  200500:	52b0000f 	mov	w15, #0x80000000            	// #-2147483648
  200504:	d0000011 	adrp	x17, 202000 <__sel4_ipc_buffer>
  200508:	78408570 	ldrh	w16, [x11], #8
  20050c:	12800012 	mov	w18, #0xffffffff            	// #-1
  200510:	d0000000 	adrp	x0, 202000 <__sel4_ipc_buffer>
  200514:	911bd000 	add	x0, x0, #0x6f4
  200518:	d503201f 	nop
  20051c:	10010ea1 	adr	x1, 2026f0 <rx>
  200520:	29400803 	ldp	w3, w2, [x0]
  200524:	0b020063 	add	w3, w3, w2
  200528:	79400504 	ldrh	w4, [x8, #2]
  20052c:	6b0a007f 	cmp	w3, w10
  200530:	540003a0 	b.eq	2005a4 <notified+0x194>  // b.none
  200534:	6b04021f 	cmp	w16, w4
  200538:	540032e0 	b.eq	200b94 <notified+0x784>  // b.none
  20053c:	b946c1a5 	ldr	w5, [x13, #1728]
  200540:	1ac20947 	udiv	w7, w10, w2
  200544:	1ac50886 	udiv	w6, w4, w5
  200548:	1b0590c5 	msub	w5, w6, w5, w4
  20054c:	11000484 	add	w4, w4, #0x1
  200550:	1b02a8e6 	msub	w6, w7, w2, w10
  200554:	f9400827 	ldr	x7, [x1, #16]
  200558:	d37c7ca5 	ubfiz	x5, x5, #4, #32
  20055c:	1100054a 	add	w10, w10, #0x1
  200560:	79000504 	strh	w4, [x8, #2]
  200564:	8b2650e7 	add	x7, x7, w6, uxtw #4
  200568:	110004c6 	add	w6, w6, #0x1
  20056c:	f8656965 	ldr	x5, [x11, x5]
  200570:	6b0200df 	cmp	w6, w2
  200574:	1a8e0124 	csel	w4, w9, w14, eq	// eq = none
  200578:	b90008e5 	str	w5, [x7, #8]
  20057c:	b9000cff 	str	wzr, [x7, #12]
  200580:	b90004e4 	str	w4, [x7, #4]
  200584:	d5033bbf 	dmb	ish
  200588:	b90000ef 	str	w15, [x7]
  20058c:	f9437224 	ldr	x4, [x17, #1760]
  200590:	b9000892 	str	w18, [x4, #8]
  200594:	b900002a 	str	w10, [x1]
  200598:	79400504 	ldrh	w4, [x8, #2]
  20059c:	6b0a007f 	cmp	w3, w10
  2005a0:	54fffca1 	b.ne	200534 <notified+0x124>  // b.any
  2005a4:	6b04021f 	cmp	w16, w4
  2005a8:	b900051f 	str	wzr, [x8, #4]
  2005ac:	54003000 	b.eq	200bac <notified+0x79c>  // b.none
  2005b0:	29400c02 	ldp	w2, w3, [x0]
  2005b4:	0b030042 	add	w2, w2, w3
  2005b8:	6b0a005f 	cmp	w2, w10
  2005bc:	54002f80 	b.eq	200bac <notified+0x79c>  // b.none
  2005c0:	b900050c 	str	w12, [x8, #4]
  2005c4:	29400803 	ldp	w3, w2, [x0]
  2005c8:	0b020063 	add	w3, w3, w2
  2005cc:	79400504 	ldrh	w4, [x8, #2]
  2005d0:	6b0a007f 	cmp	w3, w10
  2005d4:	54fffb01 	b.ne	200534 <notified+0x124>  // b.any
  2005d8:	17fffff3 	b	2005a4 <notified+0x194>
  2005dc:	d503201f 	nop
  2005e0:	10010a00 	adr	x0, 202720 <microkit_name>
  2005e4:	940001eb 	bl	200d90 <microkit_dbg_puts>
  2005e8:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  2005ec:	9100a000 	add	x0, x0, #0x28
  2005f0:	940001e8 	bl	200d90 <microkit_dbg_puts>
  2005f4:	2a1403e0 	mov	w0, w20
  2005f8:	9400020e 	bl	200e30 <microkit_dbg_put32>
  2005fc:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  200600:	91014800 	add	x0, x0, #0x52
  200604:	940001e3 	bl	200d90 <microkit_dbg_puts>
  200608:	5280c005 	mov	w5, #0x600                 	// #1536
  20060c:	52940823 	mov	w3, #0xa041                	// #41025
  200610:	5280c01e 	mov	w30, #0x600                 	// #1536
  200614:	d0000006 	adrp	x6, 202000 <__sel4_ipc_buffer>
  200618:	72a04005 	movk	w5, #0x200, lsl #16
  20061c:	d0000004 	adrp	x4, 202000 <__sel4_ipc_buffer>
  200620:	911ae084 	add	x4, x4, #0x6b8
  200624:	72a00023 	movk	w3, #0x1, lsl #16
  200628:	d0000002 	adrp	x2, 202000 <__sel4_ipc_buffer>
  20062c:	12800000 	mov	w0, #0xffffffff            	// #-1
  200630:	d0000001 	adrp	x1, 202000 <__sel4_ipc_buffer>
  200634:	d0000007 	adrp	x7, 202000 <__sel4_ipc_buffer>
  200638:	d503201f 	nop
  20063c:	d503201f 	nop
  200640:	f9437048 	ldr	x8, [x2, #1760]
  200644:	b9401514 	ldr	w20, [x8, #20]
  200648:	b9401509 	ldr	w9, [x8, #20]
  20064c:	6a03029f 	tst	w20, w3
  200650:	0a140129 	and	w9, w9, w20
  200654:	b9001509 	str	w9, [x8, #20]
  200658:	54001d00 	b.eq	2009f8 <notified+0x5e8>  // b.none
  20065c:	36001294 	tbz	w20, #0, 2008ac <notified+0x49c>
  200660:	29402269 	ldp	w9, w8, [x19]
  200664:	6b08013f 	cmp	w9, w8
  200668:	54000b40 	b.eq	2007d0 <notified+0x3c0>  // b.none
  20066c:	d000000b 	adrp	x11, 202000 <__sel4_ipc_buffer>
  200670:	911c416b 	add	x11, x11, #0x710
  200674:	b9400169 	ldr	w9, [x11]
  200678:	1ac9090a 	udiv	w10, w8, w9
  20067c:	1b09a148 	msub	w8, w10, w9, w8
  200680:	f9400569 	ldr	x9, [x11, #8]
  200684:	8b285128 	add	x8, x9, w8, uxtw #4
  200688:	b9400109 	ldr	w9, [x8]
  20068c:	37f80a29 	tbnz	w9, #31, 2007d0 <notified+0x3c0>
  200690:	d50339bf 	dmb	ishld
  200694:	b9400909 	ldr	w9, [x8, #8]
  200698:	d503201f 	nop
  20069c:	d503201f 	nop
  2006a0:	d503201f 	nop
  2006a4:	1001012b 	adr	x11, 2026c8 <tx_queue>
  2006a8:	f9400168 	ldr	x8, [x11]
  2006ac:	b940116b 	ldr	w11, [x11, #16]
  2006b0:	7940010a 	ldrh	w10, [x8]
  2006b4:	7940050c 	ldrh	w12, [x8, #2]
  2006b8:	4b0c014c 	sub	w12, w10, w12
  2006bc:	6b0b019f 	cmp	w12, w11
  2006c0:	54000160 	b.eq	2006ec <notified+0x2dc>  // b.none
  2006c4:	1acb094c 	udiv	w12, w10, w11
  2006c8:	1b0ba98a 	msub	w10, w12, w11, w10
  2006cc:	8b2a510a 	add	x10, x8, w10, uxtw #4
  2006d0:	f900095f 	str	xzr, [x10, #16]
  2006d4:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  2006d8:	f9436508 	ldr	x8, [x8, #1736]
  2006dc:	f9000549 	str	x9, [x10, #8]
  2006e0:	7940010b 	ldrh	w11, [x8]
  2006e4:	1100056b 	add	w11, w11, #0x1
  2006e8:	7900010b 	strh	w11, [x8]
  2006ec:	2940266a 	ldp	w10, w9, [x19]
  2006f0:	11000529 	add	w9, w9, #0x1
  2006f4:	6b09015f 	cmp	w10, w9
  2006f8:	b9000669 	str	w9, [x19, #4]
  2006fc:	540001a0 	b.eq	200730 <notified+0x320>  // b.none
  200700:	d000000c 	adrp	x12, 202000 <__sel4_ipc_buffer>
  200704:	911c418c 	add	x12, x12, #0x710
  200708:	b940018a 	ldr	w10, [x12]
  20070c:	1aca092b 	udiv	w11, w9, w10
  200710:	1b0aa569 	msub	w9, w11, w10, w9
  200714:	f940058a 	ldr	x10, [x12, #8]
  200718:	8b295149 	add	x9, x10, w9, uxtw #4
  20071c:	b940012a 	ldr	w10, [x9]
  200720:	37f8008a 	tbnz	w10, #31, 200730 <notified+0x320>
  200724:	d50339bf 	dmb	ishld
  200728:	b9400929 	ldr	w9, [x9, #8]
  20072c:	17ffffdd 	b	2006a0 <notified+0x290>
  200730:	b9400509 	ldr	w9, [x8, #4]
  200734:	350004e9 	cbnz	w9, 2007d0 <notified+0x3c0>
  200738:	d0000009 	adrp	x9, 202000 <__sel4_ipc_buffer>
  20073c:	39416929 	ldrb	w9, [x9, #90]
  200740:	b9000515 	str	w21, [x8, #4]
  200744:	7100f53f 	cmp	w9, #0x3d
  200748:	54000148 	b.hi	200770 <notified+0x360>  // b.pmore
  20074c:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200750:	f943c108 	ldr	x8, [x8, #1920]
  200754:	9ac92508 	lsr	x8, x8, x9
  200758:	360000c8 	tbz	w8, #0, 200770 <notified+0x360>
  20075c:	91002920 	add	x0, x9, #0xa
  200760:	aa1f03e1 	mov	x1, xzr
  200764:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  200768:	d4000001 	svc	#0x0
  20076c:	14000016 	b	2007c4 <notified+0x3b4>
  200770:	d503201f 	nop
  200774:	1000fd60 	adr	x0, 202720 <microkit_name>
  200778:	f90003e9 	str	x9, [sp]
  20077c:	94000185 	bl	200d90 <microkit_dbg_puts>
  200780:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  200784:	9100a000 	add	x0, x0, #0x28
  200788:	94000182 	bl	200d90 <microkit_dbg_puts>
  20078c:	f94003e0 	ldr	x0, [sp]
  200790:	940001a8 	bl	200e30 <microkit_dbg_put32>
  200794:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  200798:	91014800 	add	x0, x0, #0x52
  20079c:	9400017d 	bl	200d90 <microkit_dbg_puts>
  2007a0:	5280c005 	mov	w5, #0x600                 	// #1536
  2007a4:	52940823 	mov	w3, #0xa041                	// #41025
  2007a8:	5280c01e 	mov	w30, #0x600                 	// #1536
  2007ac:	d0000006 	adrp	x6, 202000 <__sel4_ipc_buffer>
  2007b0:	72a04005 	movk	w5, #0x200, lsl #16
  2007b4:	d0000004 	adrp	x4, 202000 <__sel4_ipc_buffer>
  2007b8:	911ae084 	add	x4, x4, #0x6b8
  2007bc:	72a00023 	movk	w3, #0x1, lsl #16
  2007c0:	d0000002 	adrp	x2, 202000 <__sel4_ipc_buffer>
  2007c4:	12800000 	mov	w0, #0xffffffff            	// #-1
  2007c8:	d0000001 	adrp	x1, 202000 <__sel4_ipc_buffer>
  2007cc:	d0000007 	adrp	x7, 202000 <__sel4_ipc_buffer>
  2007d0:	f94368e8 	ldr	x8, [x7, #1744]
  2007d4:	b9470829 	ldr	w9, [x1, #1800]
  2007d8:	9100210a 	add	x10, x8, #0x8
  2007dc:	29402ecc 	ldp	w12, w11, [x22]
  2007e0:	0b0b018c 	add	w12, w12, w11
  2007e4:	6b09019f 	cmp	w12, w9
  2007e8:	54000400 	b.eq	200868 <notified+0x458>  // b.none
  2007ec:	d503201f 	nop
  2007f0:	7940010e 	ldrh	w14, [x8]
  2007f4:	7940050d 	ldrh	w13, [x8, #2]
  2007f8:	6b0d01df 	cmp	w14, w13
  2007fc:	54000360 	b.eq	200868 <notified+0x458>  // b.none
  200800:	b946db0e 	ldr	w14, [x24, #1752]
  200804:	1acb0930 	udiv	w16, w9, w11
  200808:	1ace09af 	udiv	w15, w13, w14
  20080c:	1b0eb5ee 	msub	w14, w15, w14, w13
  200810:	110005ad 	add	w13, w13, #0x1
  200814:	1b0ba60f 	msub	w15, w16, w11, w9
  200818:	f9400a70 	ldr	x16, [x19, #16]
  20081c:	11000529 	add	w9, w9, #0x1
  200820:	8b2e514e 	add	x14, x10, w14, uxtw #4
  200824:	110005f1 	add	w17, w15, #0x1
  200828:	6b0b023f 	cmp	w17, w11
  20082c:	8b2f520f 	add	x15, x16, w15, uxtw #4
  200830:	1a970350 	csel	w16, w26, w23, eq	// eq = none
  200834:	7900050d 	strh	w13, [x8, #2]
  200838:	794011d2 	ldrh	w18, [x14, #8]
  20083c:	f94001ce 	ldr	x14, [x14]
  200840:	12002a51 	and	w17, w18, #0x7ff
  200844:	2a11020d 	orr	w13, w16, w17
  200848:	b90009ee 	str	w14, [x15, #8]
  20084c:	b9000dff 	str	wzr, [x15, #12]
  200850:	b90005ed 	str	w13, [x15, #4]
  200854:	d5033bbf 	dmb	ish
  200858:	b90001f9 	str	w25, [x15]
  20085c:	b9000269 	str	w9, [x19]
  200860:	6b09019f 	cmp	w12, w9
  200864:	54fffc61 	b.ne	2007f0 <notified+0x3e0>  // b.any
  200868:	b900051f 	str	wzr, [x8, #4]
  20086c:	294032cb 	ldp	w11, w12, [x22]
  200870:	0b0c016b 	add	w11, w11, w12
  200874:	6b09017f 	cmp	w11, w9
  200878:	54000160 	b.eq	2008a4 <notified+0x494>  // b.none
  20087c:	7940010b 	ldrh	w11, [x8]
  200880:	7940050c 	ldrh	w12, [x8, #2]
  200884:	6b0c017f 	cmp	w11, w12
  200888:	540000e0 	b.eq	2008a4 <notified+0x494>  // b.none
  20088c:	b9000515 	str	w21, [x8, #4]
  200890:	29402ecc 	ldp	w12, w11, [x22]
  200894:	0b0b018c 	add	w12, w12, w11
  200898:	6b09019f 	cmp	w12, w9
  20089c:	54fffaa1 	b.ne	2007f0 <notified+0x3e0>  // b.any
  2008a0:	17fffff2 	b	200868 <notified+0x458>
  2008a4:	f9437048 	ldr	x8, [x2, #1760]
  2008a8:	b9000500 	str	w0, [x8, #4]
  2008ac:	3637ecb4 	tbz	w20, #6, 200640 <notified+0x230>
  2008b0:	29402768 	ldp	w8, w9, [x27]
  2008b4:	6b09011f 	cmp	w8, w9
  2008b8:	54ffec40 	b.eq	200640 <notified+0x230>  // b.none
  2008bc:	2a1f03e8 	mov	w8, wzr
  2008c0:	14000019 	b	200924 <notified+0x514>
  2008c4:	b9400369 	ldr	w9, [x27]
  2008c8:	b9400b6b 	ldr	w11, [x27, #8]
  2008cc:	b940094a 	ldr	w10, [x10, #8]
  2008d0:	f9400b6d 	ldr	x13, [x27, #16]
  2008d4:	1acb092c 	udiv	w12, w9, w11
  2008d8:	1b0ba58c 	msub	w12, w12, w11, w9
  2008dc:	11000529 	add	w9, w9, #0x1
  2008e0:	8b2c51ad 	add	x13, x13, w12, uxtw #4
  2008e4:	1100058c 	add	w12, w12, #0x1
  2008e8:	6b0b019f 	cmp	w12, w11
  2008ec:	1a9e00ab 	csel	w11, w5, w30, eq	// eq = none
  2008f0:	b90009aa 	str	w10, [x13, #8]
  2008f4:	b9000dbf 	str	wzr, [x13, #12]
  2008f8:	b90005ab 	str	w11, [x13, #4]
  2008fc:	d5033bbf 	dmb	ish
  200900:	b90001b9 	str	w25, [x13]
  200904:	f943704a 	ldr	x10, [x2, #1760]
  200908:	b9000940 	str	w0, [x10, #8]
  20090c:	b9000369 	str	w9, [x27]
  200910:	2940276a 	ldp	w10, w9, [x27]
  200914:	11000529 	add	w9, w9, #0x1
  200918:	6b09015f 	cmp	w10, w9
  20091c:	b9000769 	str	w9, [x27, #4]
  200920:	54000480 	b.eq	2009b0 <notified+0x5a0>  // b.none
  200924:	b940038a 	ldr	w10, [x28]
  200928:	1aca092b 	udiv	w11, w9, w10
  20092c:	1b0aa569 	msub	w9, w11, w10, w9
  200930:	f940078a 	ldr	x10, [x28, #8]
  200934:	8b29514a 	add	x10, x10, w9, uxtw #4
  200938:	b9400149 	ldr	w9, [x10]
  20093c:	37f803a9 	tbnz	w9, #31, 2009b0 <notified+0x5a0>
  200940:	d50339bf 	dmb	ishld
  200944:	b9400149 	ldr	w9, [x10]
  200948:	377ffbe9 	tbnz	w9, #15, 2008c4 <notified+0x4b4>
  20094c:	b9400949 	ldr	w9, [x10, #8]
  200950:	b9400148 	ldr	w8, [x10]
  200954:	f940008a 	ldr	x10, [x4]
  200958:	b940088c 	ldr	w12, [x4, #8]
  20095c:	7940014b 	ldrh	w11, [x10]
  200960:	7940054d 	ldrh	w13, [x10, #2]
  200964:	4b0d016d 	sub	w13, w11, w13
  200968:	6b0c01bf 	cmp	w13, w12
  20096c:	540000a1 	b.ne	200980 <notified+0x570>  // b.any
  200970:	52800028 	mov	w8, #0x1                   	// #1
  200974:	17ffffe7 	b	200910 <notified+0x500>
  200978:	d503201f 	nop
  20097c:	d503201f 	nop
  200980:	1acc096d 	udiv	w13, w11, w12
  200984:	d3507508 	ubfx	x8, x8, #16, #14
  200988:	1b0cadab 	msub	w11, w13, w12, w11
  20098c:	8b2b514a 	add	x10, x10, w11, uxtw #4
  200990:	f9000948 	str	x8, [x10, #16]
  200994:	f9435ccb 	ldr	x11, [x6, #1720]
  200998:	f9000549 	str	x9, [x10, #8]
  20099c:	79400168 	ldrh	w8, [x11]
  2009a0:	1100050c 	add	w12, w8, #0x1
  2009a4:	52800028 	mov	w8, #0x1                   	// #1
  2009a8:	7900016c 	strh	w12, [x11]
  2009ac:	17ffffd9 	b	200910 <notified+0x500>
  2009b0:	3607e488 	tbz	w8, #0, 200640 <notified+0x230>
  2009b4:	f9435cc8 	ldr	x8, [x6, #1720]
  2009b8:	b9400509 	ldr	w9, [x8, #4]
  2009bc:	35ffe429 	cbnz	w9, 200640 <notified+0x230>
  2009c0:	d0000009 	adrp	x9, 202000 <__sel4_ipc_buffer>
  2009c4:	3940c934 	ldrb	w20, [x9, #50]
  2009c8:	b9000515 	str	w21, [x8, #4]
  2009cc:	7100f69f 	cmp	w20, #0x3d
  2009d0:	54ffe068 	b.hi	2005dc <notified+0x1cc>  // b.pmore
  2009d4:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  2009d8:	f943c108 	ldr	x8, [x8, #1920]
  2009dc:	9ad42508 	lsr	x8, x8, x20
  2009e0:	3607dfe8 	tbz	w8, #0, 2005dc <notified+0x1cc>
  2009e4:	91002a80 	add	x0, x20, #0xa
  2009e8:	aa1f03e1 	mov	x1, xzr
  2009ec:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  2009f0:	d4000001 	svc	#0x0
  2009f4:	17ffff0e 	b	20062c <notified+0x21c>
  2009f8:	f94007f3 	ldr	x19, [sp, #8]
  2009fc:	7100f67f 	cmp	w19, #0x3d
  200a00:	54000208 	b.hi	200a40 <notified+0x630>  // b.pmore
  200a04:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200a08:	f943c508 	ldr	x8, [x8, #1928]
  200a0c:	9ad32508 	lsr	x8, x8, x19
  200a10:	36000188 	tbz	w8, #0, 200a40 <notified+0x630>
  200a14:	52800028 	mov	w8, #0x1                   	// #1
  200a18:	52940009 	mov	w9, #0xa000                	// #40960
  200a1c:	72a00029 	movk	w9, #0x1, lsl #16
  200a20:	11022a6a 	add	w10, w19, #0x8a
  200a24:	d000000b 	adrp	x11, 202000 <__sel4_ipc_buffer>
  200a28:	391d8568 	strb	w8, [x11, #1889]
  200a2c:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200a30:	f903b509 	str	x9, [x8, #1896]
  200a34:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200a38:	f903b90a 	str	x10, [x8, #1904]
  200a3c:	1400005c 	b	200bac <notified+0x79c>
  200a40:	d503201f 	nop
  200a44:	1000e6e0 	adr	x0, 202720 <microkit_name>
  200a48:	940000d2 	bl	200d90 <microkit_dbg_puts>
  200a4c:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  200a50:	91020000 	add	x0, x0, #0x80
  200a54:	940000cf 	bl	200d90 <microkit_dbg_puts>
  200a58:	2a1303e0 	mov	w0, w19
  200a5c:	940000f5 	bl	200e30 <microkit_dbg_put32>
  200a60:	a9464ff4 	ldp	x20, x19, [sp, #96]
  200a64:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  200a68:	91014800 	add	x0, x0, #0x52
  200a6c:	a94557f6 	ldp	x22, x21, [sp, #80]
  200a70:	a9445ff8 	ldp	x24, x23, [sp, #64]
  200a74:	a94367fa 	ldp	x26, x25, [sp, #48]
  200a78:	a9426ffc 	ldp	x28, x27, [sp, #32]
  200a7c:	a9417bfd 	ldp	x29, x30, [sp, #16]
  200a80:	9101c3ff 	add	sp, sp, #0x70
  200a84:	140000c3 	b	200d90 <microkit_dbg_puts>
  200a88:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200a8c:	39416908 	ldrb	w8, [x8, #90]
  200a90:	6b08001f 	cmp	w0, w8
  200a94:	540008c1 	b.ne	200bac <notified+0x79c>  // b.any
  200a98:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200a9c:	f9436908 	ldr	x8, [x8, #1744]
  200aa0:	52bc4009 	mov	w9, #0xe2000000            	// #-503316480
  200aa4:	d000000a 	adrp	x10, 202000 <__sel4_ipc_buffer>
  200aa8:	b947094a 	ldr	w10, [x10, #1800]
  200aac:	5280002b 	mov	w11, #0x1                   	// #1
  200ab0:	d000000c 	adrp	x12, 202000 <__sel4_ipc_buffer>
  200ab4:	9100210d 	add	x13, x8, #0x8
  200ab8:	52bc000e 	mov	w14, #0xe0000000            	// #-536870912
  200abc:	52b0000f 	mov	w15, #0x80000000            	// #-2147483648
  200ac0:	d0000010 	adrp	x16, 202000 <__sel4_ipc_buffer>
  200ac4:	911c3210 	add	x16, x16, #0x70c
  200ac8:	d503201f 	nop
  200acc:	1000e1f1 	adr	x17, 202708 <tx>
  200ad0:	29404a00 	ldp	w0, w18, [x16]
  200ad4:	0b120000 	add	w0, w0, w18
  200ad8:	6b0a001f 	cmp	w0, w10
  200adc:	540003e0 	b.eq	200b58 <notified+0x748>  // b.none
  200ae0:	79400102 	ldrh	w2, [x8]
  200ae4:	79400501 	ldrh	w1, [x8, #2]
  200ae8:	6b01005f 	cmp	w2, w1
  200aec:	54000360 	b.eq	200b58 <notified+0x748>  // b.none
  200af0:	b946d982 	ldr	w2, [x12, #1752]
  200af4:	1ad20944 	udiv	w4, w10, w18
  200af8:	1ac20823 	udiv	w3, w1, w2
  200afc:	1b028462 	msub	w2, w3, w2, w1
  200b00:	11000421 	add	w1, w1, #0x1
  200b04:	1b12a883 	msub	w3, w4, w18, w10
  200b08:	f9400a24 	ldr	x4, [x17, #16]
  200b0c:	1100054a 	add	w10, w10, #0x1
  200b10:	8b2251a2 	add	x2, x13, w2, uxtw #4
  200b14:	11000465 	add	w5, w3, #0x1
  200b18:	6b1200bf 	cmp	w5, w18
  200b1c:	8b235083 	add	x3, x4, w3, uxtw #4
  200b20:	1a8e0124 	csel	w4, w9, w14, eq	// eq = none
  200b24:	79000501 	strh	w1, [x8, #2]
  200b28:	79401046 	ldrh	w6, [x2, #8]
  200b2c:	f9400042 	ldr	x2, [x2]
  200b30:	120028c5 	and	w5, w6, #0x7ff
  200b34:	2a050081 	orr	w1, w4, w5
  200b38:	b9000862 	str	w2, [x3, #8]
  200b3c:	b9000c7f 	str	wzr, [x3, #12]
  200b40:	b9000461 	str	w1, [x3, #4]
  200b44:	d5033bbf 	dmb	ish
  200b48:	b900006f 	str	w15, [x3]
  200b4c:	b900022a 	str	w10, [x17]
  200b50:	6b0a001f 	cmp	w0, w10
  200b54:	54fffc61 	b.ne	200ae0 <notified+0x6d0>  // b.any
  200b58:	b900051f 	str	wzr, [x8, #4]
  200b5c:	29400212 	ldp	w18, w0, [x16]
  200b60:	0b000252 	add	w18, w18, w0
  200b64:	6b0a025f 	cmp	w18, w10
  200b68:	540001a0 	b.eq	200b9c <notified+0x78c>  // b.none
  200b6c:	79400112 	ldrh	w18, [x8]
  200b70:	79400500 	ldrh	w0, [x8, #2]
  200b74:	6b00025f 	cmp	w18, w0
  200b78:	54000120 	b.eq	200b9c <notified+0x78c>  // b.none
  200b7c:	b900050b 	str	w11, [x8, #4]
  200b80:	29404a00 	ldp	w0, w18, [x16]
  200b84:	0b120000 	add	w0, w0, w18
  200b88:	6b0a001f 	cmp	w0, w10
  200b8c:	54fffaa1 	b.ne	200ae0 <notified+0x6d0>  // b.any
  200b90:	17fffff2 	b	200b58 <notified+0x748>
  200b94:	b900051f 	str	wzr, [x8, #4]
  200b98:	14000005 	b	200bac <notified+0x79c>
  200b9c:	d0000008 	adrp	x8, 202000 <__sel4_ipc_buffer>
  200ba0:	f9437108 	ldr	x8, [x8, #1760]
  200ba4:	12800009 	mov	w9, #0xffffffff            	// #-1
  200ba8:	b9000509 	str	w9, [x8, #4]
  200bac:	a9464ff4 	ldp	x20, x19, [sp, #96]
  200bb0:	a94557f6 	ldp	x22, x21, [sp, #80]
  200bb4:	a9445ff8 	ldp	x24, x23, [sp, #64]
  200bb8:	a94367fa 	ldp	x26, x25, [sp, #48]
  200bbc:	a9426ffc 	ldp	x28, x27, [sp, #32]
  200bc0:	a9417bfd 	ldp	x29, x30, [sp, #16]
  200bc4:	9101c3ff 	add	sp, sp, #0x70
  200bc8:	d65f03c0 	ret
  200bcc:	00000000 	udf	#0

0000000000200bd0 <protected>:
  200bd0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  200bd4:	d503201f 	nop
  200bd8:	1000da40 	adr	x0, 202720 <microkit_name>
  200bdc:	910003fd 	mov	x29, sp
  200be0:	9400006c 	bl	200d90 <microkit_dbg_puts>
  200be4:	d503201f 	nop
  200be8:	10002680 	adr	x0, 2010b8 <_text_end+0x90>
  200bec:	94000069 	bl	200d90 <microkit_dbg_puts>
  200bf0:	d2800000 	mov	x0, #0x0                   	// #0
  200bf4:	b900001f 	str	wzr, [x0]
  200bf8:	d4207d00 	brk	#0x3e8
  200bfc:	d503201f 	nop

0000000000200c00 <fault>:
  200c00:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  200c04:	d503201f 	nop
  200c08:	1000d8c0 	adr	x0, 202720 <microkit_name>
  200c0c:	910003fd 	mov	x29, sp
  200c10:	94000060 	bl	200d90 <microkit_dbg_puts>
  200c14:	b0000000 	adrp	x0, 201000 <__assert_fail+0x20>
  200c18:	9103c000 	add	x0, x0, #0xf0
  200c1c:	9400005d 	bl	200d90 <microkit_dbg_puts>
  200c20:	d2800000 	mov	x0, #0x0                   	// #0
  200c24:	b900001f 	str	wzr, [x0]
  200c28:	d4207d00 	brk	#0x3e8
  200c2c:	00000000 	udf	#0

0000000000200c30 <main>:
  200c30:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  200c34:	d503201f 	nop
  200c38:	10009e40 	adr	x0, 202000 <__sel4_ipc_buffer>
  200c3c:	910003fd 	mov	x29, sp
  200c40:	a90153f3 	stp	x19, x20, [sp, #16]
  200c44:	d503201f 	nop
  200c48:	10009dd4 	adr	x20, 202000 <__sel4_ipc_buffer>
  200c4c:	a9025bf5 	stp	x21, x22, [sp, #32]
  200c50:	eb140015 	subs	x21, x0, x20
  200c54:	54000100 	b.eq	200c74 <main+0x44>  // b.none
  200c58:	9343feb5 	asr	x21, x21, #3
  200c5c:	d2800013 	mov	x19, #0x0                   	// #0
  200c60:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
  200c64:	91000673 	add	x19, x19, #0x1
  200c68:	d63f0000 	blr	x0
  200c6c:	eb1302bf 	cmp	x21, x19
  200c70:	54ffff88 	b.hi	200c60 <main+0x30>  // b.pmore
  200c74:	d503201f 	nop
  200c78:	1000d556 	adr	x22, 202720 <microkit_name>
  200c7c:	97fffce5 	bl	200010 <init>
  200c80:	394102c0 	ldrb	w0, [x22, #64]
  200c84:	360000a0 	tbz	w0, #0, 200c98 <main+0x68>
  200c88:	52800021 	mov	w1, #0x1                   	// #1
  200c8c:	d28000a0 	mov	x0, #0x5                   	// #5
  200c90:	390106c1 	strb	w1, [x22, #65]
  200c94:	a90482df 	stp	xzr, x0, [x22, #72]
  200c98:	d503201f 	nop
  200c9c:	10009b35 	adr	x21, 202000 <__sel4_ipc_buffer>
  200ca0:	52800000 	mov	w0, #0x0                   	// #0
  200ca4:	35000200 	cbnz	w0, 200ce4 <main+0xb4>
  200ca8:	39c106c0 	ldrsb	w0, [x22, #65]
  200cac:	350004c0 	cbnz	w0, 200d44 <main+0x114>
  200cb0:	d2800020 	mov	x0, #0x1                   	// #1
  200cb4:	d2800086 	mov	x6, #0x4                   	// #4
  200cb8:	928000c7 	mov	x7, #0xfffffffffffffff9    	// #-7
  200cbc:	d4000001 	svc	#0x0
  200cc0:	f94002a6 	ldr	x6, [x21]
  200cc4:	aa0003f3 	mov	x19, x0
  200cc8:	a9008cc2 	stp	x2, x3, [x6, #8]
  200ccc:	a90194c4 	stp	x4, x5, [x6, #24]
  200cd0:	b7f001d3 	tbnz	x19, #62, 200d08 <main+0xd8>
  200cd4:	b6f80273 	tbz	x19, #63, 200d20 <main+0xf0>
  200cd8:	12001660 	and	w0, w19, #0x3f
  200cdc:	97ffffbd 	bl	200bd0 <protected>
  200ce0:	f9001fe0 	str	x0, [sp, #56]
  200ce4:	f94002a5 	ldr	x5, [x21]
  200ce8:	d2800020 	mov	x0, #0x1                   	// #1
  200cec:	f9401fe1 	ldr	x1, [sp, #56]
  200cf0:	d2800086 	mov	x6, #0x4                   	// #4
  200cf4:	a9408ca2 	ldp	x2, x3, [x5, #8]
  200cf8:	92800027 	mov	x7, #0xfffffffffffffffe    	// #-2
  200cfc:	a94194a4 	ldp	x4, x5, [x5, #24]
  200d00:	d4000001 	svc	#0x0
  200d04:	17ffffef 	b	200cc0 <main+0x90>
  200d08:	12001e60 	and	w0, w19, #0xff
  200d0c:	9100e3e2 	add	x2, sp, #0x38
  200d10:	97ffffbc 	bl	200c00 <fault>
  200d14:	72001c1f 	tst	w0, #0xff
  200d18:	1a9f07e0 	cset	w0, ne	// ne = any
  200d1c:	17ffffe2 	b	200ca4 <main+0x74>
  200d20:	52800014 	mov	w20, #0x0                   	// #0
  200d24:	370000b3 	tbnz	w19, #0, 200d38 <main+0x108>
  200d28:	d341fe73 	lsr	x19, x19, #1
  200d2c:	11000694 	add	w20, w20, #0x1
  200d30:	b4fffb93 	cbz	x19, 200ca0 <main+0x70>
  200d34:	3607ffb3 	tbz	w19, #0, 200d28 <main+0xf8>
  200d38:	2a1403e0 	mov	w0, w20
  200d3c:	97fffdb5 	bl	200410 <notified>
  200d40:	17fffffa 	b	200d28 <main+0xf8>
  200d44:	f94002a5 	ldr	x5, [x21]
  200d48:	d2800020 	mov	x0, #0x1                   	// #1
  200d4c:	a944a2c1 	ldp	x1, x8, [x22, #72]
  200d50:	d2800086 	mov	x6, #0x4                   	// #4
  200d54:	a9408ca2 	ldp	x2, x3, [x5, #8]
  200d58:	92800047 	mov	x7, #0xfffffffffffffffd    	// #-3
  200d5c:	a94194a4 	ldp	x4, x5, [x5, #24]
  200d60:	d4000001 	svc	#0x0
  200d64:	f94002a6 	ldr	x6, [x21]
  200d68:	aa0003f3 	mov	x19, x0
  200d6c:	390106df 	strb	wzr, [x22, #65]
  200d70:	a9008cc2 	stp	x2, x3, [x6, #8]
  200d74:	a90194c4 	stp	x4, x5, [x6, #24]
  200d78:	17ffffd6 	b	200cd0 <main+0xa0>
  200d7c:	00000000 	udf	#0

0000000000200d80 <microkit_dbg_putc>:
  200d80:	d65f03c0 	ret
  200d84:	d503201f 	nop
  200d88:	d503201f 	nop
  200d8c:	d503201f 	nop

0000000000200d90 <microkit_dbg_puts>:
  200d90:	39400001 	ldrb	w1, [x0]
  200d94:	34000061 	cbz	w1, 200da0 <microkit_dbg_puts+0x10>
  200d98:	38401c01 	ldrb	w1, [x0, #1]!
  200d9c:	35ffffe1 	cbnz	w1, 200d98 <microkit_dbg_puts+0x8>
  200da0:	d65f03c0 	ret
  200da4:	d503201f 	nop
  200da8:	d503201f 	nop
  200dac:	d503201f 	nop

0000000000200db0 <microkit_dbg_put8>:
  200db0:	12001c00 	and	w0, w0, #0xff
  200db4:	529999a2 	mov	w2, #0xcccd                	// #52429
  200db8:	72b99982 	movk	w2, #0xcccc, lsl #16
  200dbc:	52800143 	mov	w3, #0xa                   	// #10
  200dc0:	d10043ff 	sub	sp, sp, #0x10
  200dc4:	7100241f 	cmp	w0, #0x9
  200dc8:	9ba27c01 	umull	x1, w0, w2
  200dcc:	d2800044 	mov	x4, #0x2                   	// #2
  200dd0:	39002fff 	strb	wzr, [sp, #11]
  200dd4:	d363fc21 	lsr	x1, x1, #35
  200dd8:	1b038025 	msub	w5, w1, w3, w0
  200ddc:	1100c0a5 	add	w5, w5, #0x30
  200de0:	39002be5 	strb	w5, [sp, #10]
  200de4:	540001a9 	b.ls	200e18 <microkit_dbg_put8+0x68>  // b.plast
  200de8:	12001c21 	and	w1, w1, #0xff
  200dec:	71018c1f 	cmp	w0, #0x63
  200df0:	d2800024 	mov	x4, #0x1                   	// #1
  200df4:	9ba27c22 	umull	x2, w1, w2
  200df8:	d363fc42 	lsr	x2, x2, #35
  200dfc:	1b038443 	msub	w3, w2, w3, w1
  200e00:	1100c063 	add	w3, w3, #0x30
  200e04:	390027e3 	strb	w3, [sp, #9]
  200e08:	54000089 	b.ls	200e18 <microkit_dbg_put8+0x68>  // b.plast
  200e0c:	1100c042 	add	w2, w2, #0x30
  200e10:	d2800004 	mov	x4, #0x0                   	// #0
  200e14:	390023e2 	strb	w2, [sp, #8]
  200e18:	910023e0 	add	x0, sp, #0x8
  200e1c:	8b040000 	add	x0, x0, x4
  200e20:	38401c01 	ldrb	w1, [x0, #1]!
  200e24:	35ffffe1 	cbnz	w1, 200e20 <microkit_dbg_put8+0x70>
  200e28:	910043ff 	add	sp, sp, #0x10
  200e2c:	d65f03c0 	ret

0000000000200e30 <microkit_dbg_put32>:
  200e30:	529999a1 	mov	w1, #0xcccd                	// #52429
  200e34:	72b99981 	movk	w1, #0xcccc, lsl #16
  200e38:	52800143 	mov	w3, #0xa                   	// #10
  200e3c:	d10043ff 	sub	sp, sp, #0x10
  200e40:	9ba17c02 	umull	x2, w0, w1
  200e44:	7100241f 	cmp	w0, #0x9
  200e48:	39002bff 	strb	wzr, [sp, #10]
  200e4c:	d363fc42 	lsr	x2, x2, #35
  200e50:	1b038044 	msub	w4, w2, w3, w0
  200e54:	1100c084 	add	w4, w4, #0x30
  200e58:	390027e4 	strb	w4, [sp, #9]
  200e5c:	540009e9 	b.ls	200f98 <microkit_dbg_put32+0x168>  // b.plast
  200e60:	9ba17c44 	umull	x4, w2, w1
  200e64:	71018c1f 	cmp	w0, #0x63
  200e68:	d363fc84 	lsr	x4, x4, #35
  200e6c:	1b038882 	msub	w2, w4, w3, w2
  200e70:	1100c042 	add	w2, w2, #0x30
  200e74:	390023e2 	strb	w2, [sp, #8]
  200e78:	54000949 	b.ls	200fa0 <microkit_dbg_put32+0x170>  // b.plast
  200e7c:	9ba17c82 	umull	x2, w4, w1
  200e80:	710f9c1f 	cmp	w0, #0x3e7
  200e84:	d363fc42 	lsr	x2, x2, #35
  200e88:	1b039044 	msub	w4, w2, w3, w4
  200e8c:	1100c084 	add	w4, w4, #0x30
  200e90:	39001fe4 	strb	w4, [sp, #7]
  200e94:	540008a9 	b.ls	200fa8 <microkit_dbg_put32+0x178>  // b.plast
  200e98:	9ba17c44 	umull	x4, w2, w1
  200e9c:	5284e1e5 	mov	w5, #0x270f                	// #9999
  200ea0:	6b05001f 	cmp	w0, w5
  200ea4:	d363fc84 	lsr	x4, x4, #35
  200ea8:	1b038882 	msub	w2, w4, w3, w2
  200eac:	1100c042 	add	w2, w2, #0x30
  200eb0:	39001be2 	strb	w2, [sp, #6]
  200eb4:	540007e9 	b.ls	200fb0 <microkit_dbg_put32+0x180>  // b.plast
  200eb8:	9ba17c82 	umull	x2, w4, w1
  200ebc:	5290d3e5 	mov	w5, #0x869f                	// #34463
  200ec0:	72a00025 	movk	w5, #0x1, lsl #16
  200ec4:	6b05001f 	cmp	w0, w5
  200ec8:	d363fc42 	lsr	x2, x2, #35
  200ecc:	1b039044 	msub	w4, w2, w3, w4
  200ed0:	1100c084 	add	w4, w4, #0x30
  200ed4:	390017e4 	strb	w4, [sp, #5]
  200ed8:	54000709 	b.ls	200fb8 <microkit_dbg_put32+0x188>  // b.plast
  200edc:	9ba17c44 	umull	x4, w2, w1
  200ee0:	528847e5 	mov	w5, #0x423f                	// #16959
  200ee4:	72a001e5 	movk	w5, #0xf, lsl #16
  200ee8:	6b05001f 	cmp	w0, w5
  200eec:	d363fc84 	lsr	x4, x4, #35
  200ef0:	1b038882 	msub	w2, w4, w3, w2
  200ef4:	1100c042 	add	w2, w2, #0x30
  200ef8:	390013e2 	strb	w2, [sp, #4]
  200efc:	540004a9 	b.ls	200f90 <microkit_dbg_put32+0x160>  // b.plast
  200f00:	9ba17c82 	umull	x2, w4, w1
  200f04:	5292cfe5 	mov	w5, #0x967f                	// #38527
  200f08:	72a01305 	movk	w5, #0x98, lsl #16
  200f0c:	6b05001f 	cmp	w0, w5
  200f10:	d363fc42 	lsr	x2, x2, #35
  200f14:	1b039044 	msub	w4, w2, w3, w4
  200f18:	1100c084 	add	w4, w4, #0x30
  200f1c:	39000fe4 	strb	w4, [sp, #3]
  200f20:	54000509 	b.ls	200fc0 <microkit_dbg_put32+0x190>  // b.plast
  200f24:	9ba17c44 	umull	x4, w2, w1
  200f28:	529c1fe5 	mov	w5, #0xe0ff                	// #57599
  200f2c:	72a0bea5 	movk	w5, #0x5f5, lsl #16
  200f30:	6b05001f 	cmp	w0, w5
  200f34:	d363fc84 	lsr	x4, x4, #35
  200f38:	1b038882 	msub	w2, w4, w3, w2
  200f3c:	1100c042 	add	w2, w2, #0x30
  200f40:	39000be2 	strb	w2, [sp, #2]
  200f44:	54000429 	b.ls	200fc8 <microkit_dbg_put32+0x198>  // b.plast
  200f48:	9ba17c81 	umull	x1, w4, w1
  200f4c:	52993fe2 	mov	w2, #0xc9ff                	// #51711
  200f50:	72a77342 	movk	w2, #0x3b9a, lsl #16
  200f54:	6b02001f 	cmp	w0, w2
  200f58:	d363fc21 	lsr	x1, x1, #35
  200f5c:	1b039023 	msub	w3, w1, w3, w4
  200f60:	1100c063 	add	w3, w3, #0x30
  200f64:	390007e3 	strb	w3, [sp, #1]
  200f68:	54000349 	b.ls	200fd0 <microkit_dbg_put32+0x1a0>  // b.plast
  200f6c:	1100c021 	add	w1, w1, #0x30
  200f70:	d2800000 	mov	x0, #0x0                   	// #0
  200f74:	390003e1 	strb	w1, [sp]
  200f78:	8b2063e0 	add	x0, sp, x0
  200f7c:	d503201f 	nop
  200f80:	38401c01 	ldrb	w1, [x0, #1]!
  200f84:	35ffffe1 	cbnz	w1, 200f80 <microkit_dbg_put32+0x150>
  200f88:	910043ff 	add	sp, sp, #0x10
  200f8c:	d65f03c0 	ret
  200f90:	d2800080 	mov	x0, #0x4                   	// #4
  200f94:	17fffff9 	b	200f78 <microkit_dbg_put32+0x148>
  200f98:	d2800120 	mov	x0, #0x9                   	// #9
  200f9c:	17fffff7 	b	200f78 <microkit_dbg_put32+0x148>
  200fa0:	d2800100 	mov	x0, #0x8                   	// #8
  200fa4:	17fffff5 	b	200f78 <microkit_dbg_put32+0x148>
  200fa8:	d28000e0 	mov	x0, #0x7                   	// #7
  200fac:	17fffff3 	b	200f78 <microkit_dbg_put32+0x148>
  200fb0:	d28000c0 	mov	x0, #0x6                   	// #6
  200fb4:	17fffff1 	b	200f78 <microkit_dbg_put32+0x148>
  200fb8:	d28000a0 	mov	x0, #0x5                   	// #5
  200fbc:	17ffffef 	b	200f78 <microkit_dbg_put32+0x148>
  200fc0:	d2800060 	mov	x0, #0x3                   	// #3
  200fc4:	17ffffed 	b	200f78 <microkit_dbg_put32+0x148>
  200fc8:	d2800040 	mov	x0, #0x2                   	// #2
  200fcc:	17ffffeb 	b	200f78 <microkit_dbg_put32+0x148>
  200fd0:	d2800020 	mov	x0, #0x1                   	// #1
  200fd4:	17ffffe9 	b	200f78 <microkit_dbg_put32+0x148>
  200fd8:	d503201f 	nop
  200fdc:	d503201f 	nop

0000000000200fe0 <__assert_fail>:
  200fe0:	d503201f 	nop
  200fe4:	100009a2 	adr	x2, 201118 <_text_end+0xf0>
  200fe8:	38401c44 	ldrb	w4, [x2, #1]!
  200fec:	35ffffe4 	cbnz	w4, 200fe8 <__assert_fail+0x8>
  200ff0:	39400002 	ldrb	w2, [x0]
  200ff4:	34000062 	cbz	w2, 201000 <__assert_fail+0x20>
  200ff8:	38401c02 	ldrb	w2, [x0, #1]!
  200ffc:	35ffffe2 	cbnz	w2, 200ff8 <__assert_fail+0x18>
  201000:	39400020 	ldrb	w0, [x1]
  201004:	34000060 	cbz	w0, 201010 <__assert_fail+0x30>
  201008:	38401c20 	ldrb	w0, [x1, #1]!
  20100c:	35ffffe0 	cbnz	w0, 201008 <__assert_fail+0x28>
  201010:	39400060 	ldrb	w0, [x3]
  201014:	34000060 	cbz	w0, 201020 <__assert_fail+0x40>
  201018:	38401c60 	ldrb	w0, [x3, #1]!
  20101c:	35ffffe0 	cbnz	w0, 201018 <__assert_fail+0x38>
  201020:	d65f03c0 	ret

0000000000201024 <pause_time>:
  201024:	0000ffff                                ....
