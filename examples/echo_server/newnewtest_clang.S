
build/network_virt_rx.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000200000 <_start>:
  200000:	14000290 	b	200a40 <main>
	...

0000000000200010 <get_mac_addr_match>:
  200010:	b0000008 	adrp	x8, 201000 <__sel4_ipc_buffer>
  200014:	39718109 	ldrb	w9, [x8, #3168]
  200018:	b4000449 	cbz	x9, 2000a0 <get_mac_addr_match+0x90>
  20001c:	3940000a 	ldrb	w10, [x0]
  200020:	aa1f03e8 	mov	x8, xzr
  200024:	b000000b 	adrp	x11, 201000 <__sel4_ipc_buffer>
  200028:	9102356b 	add	x11, x11, #0x8d
  20002c:	14000005 	b	200040 <get_mac_addr_match+0x30>
  200030:	91000508 	add	x8, x8, #0x1
  200034:	9100c16b 	add	x11, x11, #0x30
  200038:	eb08013f 	cmp	x9, x8
  20003c:	54000320 	b.eq	2000a0 <get_mac_addr_match+0x90>  // b.none
  200040:	385fb16c 	ldurb	w12, [x11, #-5]
  200044:	6b0c015f 	cmp	w10, w12
  200048:	54ffff41 	b.ne	200030 <get_mac_addr_match+0x20>  // b.any
  20004c:	3940040c 	ldrb	w12, [x0, #1]
  200050:	385fc16d 	ldurb	w13, [x11, #-4]
  200054:	6b0d019f 	cmp	w12, w13
  200058:	54fffec1 	b.ne	200030 <get_mac_addr_match+0x20>  // b.any
  20005c:	3940080c 	ldrb	w12, [x0, #2]
  200060:	385fd16d 	ldurb	w13, [x11, #-3]
  200064:	6b0d019f 	cmp	w12, w13
  200068:	54fffe41 	b.ne	200030 <get_mac_addr_match+0x20>  // b.any
  20006c:	39400c0c 	ldrb	w12, [x0, #3]
  200070:	385fe16d 	ldurb	w13, [x11, #-2]
  200074:	6b0d019f 	cmp	w12, w13
  200078:	54fffdc1 	b.ne	200030 <get_mac_addr_match+0x20>  // b.any
  20007c:	3940100c 	ldrb	w12, [x0, #4]
  200080:	385ff16d 	ldurb	w13, [x11, #-1]
  200084:	6b0d019f 	cmp	w12, w13
  200088:	54fffd41 	b.ne	200030 <get_mac_addr_match+0x20>  // b.any
  20008c:	3940140c 	ldrb	w12, [x0, #5]
  200090:	3940016d 	ldrb	w13, [x11]
  200094:	6b0d019f 	cmp	w12, w13
  200098:	54fffcc1 	b.ne	200030 <get_mac_addr_match+0x20>  // b.any
  20009c:	14000023 	b	200128 <get_mac_addr_match+0x118>
  2000a0:	39400008 	ldrb	w8, [x0]
  2000a4:	7103fd1f 	cmp	w8, #0xff
  2000a8:	54000080 	b.eq	2000b8 <get_mac_addr_match+0xa8>  // b.none
  2000ac:	12800008 	mov	w8, #0xffffffff            	// #-1
  2000b0:	2a0803e0 	mov	w0, w8
  2000b4:	d65f03c0 	ret
  2000b8:	39400408 	ldrb	w8, [x0, #1]
  2000bc:	7103fd1f 	cmp	w8, #0xff
  2000c0:	54000080 	b.eq	2000d0 <get_mac_addr_match+0xc0>  // b.none
  2000c4:	12800008 	mov	w8, #0xffffffff            	// #-1
  2000c8:	2a0803e0 	mov	w0, w8
  2000cc:	d65f03c0 	ret
  2000d0:	39400808 	ldrb	w8, [x0, #2]
  2000d4:	7103fd1f 	cmp	w8, #0xff
  2000d8:	54000080 	b.eq	2000e8 <get_mac_addr_match+0xd8>  // b.none
  2000dc:	12800008 	mov	w8, #0xffffffff            	// #-1
  2000e0:	2a0803e0 	mov	w0, w8
  2000e4:	d65f03c0 	ret
  2000e8:	39400c08 	ldrb	w8, [x0, #3]
  2000ec:	7103fd1f 	cmp	w8, #0xff
  2000f0:	54000080 	b.eq	200100 <get_mac_addr_match+0xf0>  // b.none
  2000f4:	12800008 	mov	w8, #0xffffffff            	// #-1
  2000f8:	2a0803e0 	mov	w0, w8
  2000fc:	d65f03c0 	ret
  200100:	39401008 	ldrb	w8, [x0, #4]
  200104:	7103fd1f 	cmp	w8, #0xff
  200108:	54000080 	b.eq	200118 <get_mac_addr_match+0x108>  // b.none
  20010c:	12800008 	mov	w8, #0xffffffff            	// #-1
  200110:	2a0803e0 	mov	w0, w8
  200114:	d65f03c0 	ret
  200118:	39401408 	ldrb	w8, [x0, #5]
  20011c:	7103fd1f 	cmp	w8, #0xff
  200120:	12800028 	mov	w8, #0xfffffffe            	// #-2
  200124:	1a880508 	cinc	w8, w8, ne	// ne = any
  200128:	2a0803e0 	mov	w0, w8
  20012c:	d65f03c0 	ret

0000000000200130 <rx_return>:
  200130:	d10283ff 	sub	sp, sp, #0xa0
  200134:	a9047bfd 	stp	x29, x30, [sp, #64]
  200138:	a9056ffc 	stp	x28, x27, [sp, #80]
  20013c:	a90667fa 	stp	x26, x25, [sp, #96]
  200140:	a9075ff8 	stp	x24, x23, [sp, #112]
  200144:	a90857f6 	stp	x22, x21, [sp, #128]
  200148:	a9094ff4 	stp	x20, x19, [sp, #144]
  20014c:	910103fd 	add	x29, sp, #0x40
  200150:	b0000014 	adrp	x20, 201000 <__sel4_ipc_buffer>
  200154:	6f00e400 	movi	v0.2d, #0x0
  200158:	b0000017 	adrp	x23, 201000 <__sel4_ipc_buffer>
  20015c:	f9463e88 	ldr	x8, [x20, #3192]
  200160:	ad0003e0 	stp	q0, q0, [sp]
  200164:	7940010a 	ldrh	w10, [x8]
  200168:	79400509 	ldrh	w9, [x8, #2]
  20016c:	ad0103e0 	stp	q0, q0, [sp, #32]
  200170:	6b09015f 	cmp	w10, w9
  200174:	54000781 	b.ne	200264 <rx_return+0x134>  // b.any
  200178:	397182e9 	ldrb	w9, [x23, #3168]
  20017c:	b900051f 	str	wzr, [x8, #4]
  200180:	34000629 	cbz	w9, 200244 <rx_return+0x114>
  200184:	aa1f03f8 	mov	x24, xzr
  200188:	910003f9 	mov	x25, sp
  20018c:	b000001a 	adrp	x26, 201000 <__sel4_ipc_buffer>
  200190:	91020b5a 	add	x26, x26, #0x82
  200194:	b000001b 	adrp	x27, 201000 <__sel4_ipc_buffer>
  200198:	9132437b 	add	x27, x27, #0xc90
  20019c:	d503201f 	nop
  2001a0:	10010813 	adr	x19, 2022a0 <microkit_name>
  2001a4:	5280003c 	mov	w28, #0x1                   	// #1
  2001a8:	d503201f 	nop
  2001ac:	10006454 	adr	x20, 200e34 <_text_end>
  2001b0:	90000015 	adrp	x21, 200000 <_start>
  2001b4:	91397ab5 	add	x21, x21, #0xe5e
  2001b8:	14000010 	b	2001f8 <rx_return+0xc8>
  2001bc:	aa1303e0 	mov	x0, x19
  2001c0:	94000278 	bl	200ba0 <microkit_dbg_puts>
  2001c4:	aa1403e0 	mov	x0, x20
  2001c8:	94000276 	bl	200ba0 <microkit_dbg_puts>
  2001cc:	2a1603e0 	mov	w0, w22
  2001d0:	9400029c 	bl	200c40 <microkit_dbg_put32>
  2001d4:	aa1503e0 	mov	x0, x21
  2001d8:	94000272 	bl	200ba0 <microkit_dbg_puts>
  2001dc:	d503201f 	nop
  2001e0:	397182e8 	ldrb	w8, [x23, #3168]
  2001e4:	91000718 	add	x24, x24, #0x1
  2001e8:	9100c35a 	add	x26, x26, #0x30
  2001ec:	9100637b 	add	x27, x27, #0x18
  2001f0:	eb08031f 	cmp	x24, x8
  2001f4:	54000282 	b.cs	200244 <rx_return+0x114>  // b.hs, b.nlast
  2001f8:	38786b28 	ldrb	w8, [x25, x24]
  2001fc:	7100051f 	cmp	w8, #0x1
  200200:	54ffff01 	b.ne	2001e0 <rx_return+0xb0>  // b.any
  200204:	f9400368 	ldr	x8, [x27]
  200208:	b9400509 	ldr	w9, [x8, #4]
  20020c:	35fffea9 	cbnz	w9, 2001e0 <rx_return+0xb0>
  200210:	39400356 	ldrb	w22, [x26]
  200214:	b900051c 	str	w28, [x8, #4]
  200218:	7100f6df 	cmp	w22, #0x3d
  20021c:	54fffd08 	b.hi	2001bc <rx_return+0x8c>  // b.pmore
  200220:	d0000008 	adrp	x8, 202000 <state+0x390>
  200224:	f9418108 	ldr	x8, [x8, #768]
  200228:	9ad62508 	lsr	x8, x8, x22
  20022c:	3607fc88 	tbz	w8, #0, 2001bc <rx_return+0x8c>
  200230:	91002ac0 	add	x0, x22, #0xa
  200234:	aa1f03e1 	mov	x1, xzr
  200238:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  20023c:	d4000001 	svc	#0x0
  200240:	17ffffe8 	b	2001e0 <rx_return+0xb0>
  200244:	a9494ff4 	ldp	x20, x19, [sp, #144]
  200248:	a94857f6 	ldp	x22, x21, [sp, #128]
  20024c:	a9475ff8 	ldp	x24, x23, [sp, #112]
  200250:	a94667fa 	ldp	x26, x25, [sp, #96]
  200254:	a9456ffc 	ldp	x28, x27, [sp, #80]
  200258:	a9447bfd 	ldp	x29, x30, [sp, #64]
  20025c:	910283ff 	add	sp, sp, #0xa0
  200260:	d65f03c0 	ret
  200264:	b0000015 	adrp	x21, 201000 <__sel4_ipc_buffer>
  200268:	b0000016 	adrp	x22, 201000 <__sel4_ipc_buffer>
  20026c:	9100e2d6 	add	x22, x22, #0x38
  200270:	5280003b 	mov	w27, #0x1                   	// #1
  200274:	d000001c 	adrp	x28, 202000 <state+0x390>
  200278:	d503201f 	nop
  20027c:	1000cfb9 	adr	x25, 201c70 <state>
  200280:	b94c82aa 	ldr	w10, [x21, #3200]
  200284:	12003d2b 	and	w11, w9, #0xffff
  200288:	f94002cd 	ldr	x13, [x22]
  20028c:	11000529 	add	w9, w9, #0x1
  200290:	1aca096c 	udiv	w12, w11, w10
  200294:	79000509 	strh	w9, [x8, #2]
  200298:	1b0aad8a 	msub	w10, w12, w10, w11
  20029c:	f9400acc 	ldr	x12, [x22, #16]
  2002a0:	8b2a510a 	add	x10, x8, w10, uxtw #4
  2002a4:	a940e94b 	ldp	x11, x26, [x10, #8]
  2002a8:	cb0c0178 	sub	x24, x11, x12
  2002ac:	8b0d0313 	add	x19, x24, x13
  2002b0:	8b3a2261 	add	x1, x19, w26, uxth
  2002b4:	aa1303e0 	mov	x0, x19
  2002b8:	940001aa 	bl	200960 <cache_clean_and_invalidate>
  2002bc:	3970a2c8 	ldrb	w8, [x22, #3112]
  2002c0:	b4000788 	cbz	x8, 2003b0 <rx_return+0x280>
  2002c4:	3940026b 	ldrb	w11, [x19]
  2002c8:	910003e9 	mov	x9, sp
  2002cc:	b000000c 	adrp	x12, 201000 <__sel4_ipc_buffer>
  2002d0:	9102358c 	add	x12, x12, #0x8d
  2002d4:	aa0803ed 	mov	x13, x8
  2002d8:	b000000a 	adrp	x10, 201000 <__sel4_ipc_buffer>
  2002dc:	9132414a 	add	x10, x10, #0xc90
  2002e0:	14000006 	b	2002f8 <rx_return+0x1c8>
  2002e4:	91000529 	add	x9, x9, #0x1
  2002e8:	9100614a 	add	x10, x10, #0x18
  2002ec:	9100c18c 	add	x12, x12, #0x30
  2002f0:	f10005ad 	subs	x13, x13, #0x1
  2002f4:	540005e0 	b.eq	2003b0 <rx_return+0x280>  // b.none
  2002f8:	385fb18e 	ldurb	w14, [x12, #-5]
  2002fc:	6b0e017f 	cmp	w11, w14
  200300:	54ffff21 	b.ne	2002e4 <rx_return+0x1b4>  // b.any
  200304:	3940066e 	ldrb	w14, [x19, #1]
  200308:	385fc18f 	ldurb	w15, [x12, #-4]
  20030c:	6b0f01df 	cmp	w14, w15
  200310:	54fffea1 	b.ne	2002e4 <rx_return+0x1b4>  // b.any
  200314:	39400a6e 	ldrb	w14, [x19, #2]
  200318:	385fd18f 	ldurb	w15, [x12, #-3]
  20031c:	6b0f01df 	cmp	w14, w15
  200320:	54fffe21 	b.ne	2002e4 <rx_return+0x1b4>  // b.any
  200324:	39400e6e 	ldrb	w14, [x19, #3]
  200328:	385fe18f 	ldurb	w15, [x12, #-2]
  20032c:	6b0f01df 	cmp	w14, w15
  200330:	54fffda1 	b.ne	2002e4 <rx_return+0x1b4>  // b.any
  200334:	3940126e 	ldrb	w14, [x19, #4]
  200338:	385ff18f 	ldurb	w15, [x12, #-1]
  20033c:	6b0f01df 	cmp	w14, w15
  200340:	54fffd21 	b.ne	2002e4 <rx_return+0x1b4>  // b.any
  200344:	3940166e 	ldrb	w14, [x19, #5]
  200348:	3940018f 	ldrb	w15, [x12]
  20034c:	6b0f01df 	cmp	w14, w15
  200350:	54fffca1 	b.ne	2002e4 <rx_return+0x1b4>  // b.any
  200354:	d0000008 	adrp	x8, 202000 <state+0x390>
  200358:	d34bff0c 	lsr	x12, x24, #11
  20035c:	f941450b 	ldr	x11, [x8, #648]
  200360:	f9400148 	ldr	x8, [x10]
  200364:	b82cd97b 	str	w27, [x11, w12, sxtw #2]
  200368:	7940010b 	ldrh	w11, [x8]
  20036c:	7940050d 	ldrh	w13, [x8, #2]
  200370:	b940094c 	ldr	w12, [x10, #8]
  200374:	4b0d016d 	sub	w13, w11, w13
  200378:	6b0c01bf 	cmp	w13, w12
  20037c:	54000140 	b.eq	2003a4 <rx_return+0x274>  // b.none
  200380:	1acc096d 	udiv	w13, w11, w12
  200384:	1b0cadab 	msub	w11, w13, w12, w11
  200388:	8b2b5108 	add	x8, x8, w11, uxtw #4
  20038c:	f900091a 	str	x26, [x8, #16]
  200390:	f940014a 	ldr	x10, [x10]
  200394:	f9000518 	str	x24, [x8, #8]
  200398:	7940014b 	ldrh	w11, [x10]
  20039c:	1100056b 	add	w11, w11, #0x1
  2003a0:	7900014b 	strh	w11, [x10]
  2003a4:	3900013b 	strb	w27, [x9]
  2003a8:	1400002b 	b	200454 <rx_return+0x324>
  2003ac:	d503201f 	nop
  2003b0:	39400269 	ldrb	w9, [x19]
  2003b4:	7103fd3f 	cmp	w9, #0xff
  2003b8:	54000241 	b.ne	200400 <rx_return+0x2d0>  // b.any
  2003bc:	39400669 	ldrb	w9, [x19, #1]
  2003c0:	7103fd3f 	cmp	w9, #0xff
  2003c4:	540001e1 	b.ne	200400 <rx_return+0x2d0>  // b.any
  2003c8:	39400a69 	ldrb	w9, [x19, #2]
  2003cc:	7103fd3f 	cmp	w9, #0xff
  2003d0:	54000181 	b.ne	200400 <rx_return+0x2d0>  // b.any
  2003d4:	39400e69 	ldrb	w9, [x19, #3]
  2003d8:	7103fd3f 	cmp	w9, #0xff
  2003dc:	54000121 	b.ne	200400 <rx_return+0x2d0>  // b.any
  2003e0:	39401269 	ldrb	w9, [x19, #4]
  2003e4:	7103fd3f 	cmp	w9, #0xff
  2003e8:	540000c1 	b.ne	200400 <rx_return+0x2d0>  // b.any
  2003ec:	39401669 	ldrb	w9, [x19, #5]
  2003f0:	7103fd3f 	cmp	w9, #0xff
  2003f4:	540003c0 	b.eq	20046c <rx_return+0x33c>  // b.none
  2003f8:	d503201f 	nop
  2003fc:	d503201f 	nop
  200400:	f9400328 	ldr	x8, [x25]
  200404:	b940132a 	ldr	w10, [x25, #16]
  200408:	79400109 	ldrh	w9, [x8]
  20040c:	7940050b 	ldrh	w11, [x8, #2]
  200410:	4b0b012b 	sub	w11, w9, w11
  200414:	6b0a017f 	cmp	w11, w10
  200418:	540001c0 	b.eq	200450 <rx_return+0x320>  // b.none
  20041c:	1aca092b 	udiv	w11, w9, w10
  200420:	1b0aa569 	msub	w9, w11, w10, w9
  200424:	b000000a 	adrp	x10, 201000 <__sel4_ipc_buffer>
  200428:	8b295108 	add	x8, x8, w9, uxtw #4
  20042c:	b0000009 	adrp	x9, 201000 <__sel4_ipc_buffer>
  200430:	f9402529 	ldr	x9, [x9, #72]
  200434:	f900091a 	str	x26, [x8, #16]
  200438:	f946394a 	ldr	x10, [x10, #3184]
  20043c:	8b180129 	add	x9, x9, x24
  200440:	7940014b 	ldrh	w11, [x10]
  200444:	f9000509 	str	x9, [x8, #8]
  200448:	1100056b 	add	w11, w11, #0x1
  20044c:	7900014b 	strh	w11, [x10]
  200450:	390a439b 	strb	w27, [x28, #656]
  200454:	f9463e88 	ldr	x8, [x20, #3192]
  200458:	7940010a 	ldrh	w10, [x8]
  20045c:	79400509 	ldrh	w9, [x8, #2]
  200460:	6b09015f 	cmp	w10, w9
  200464:	54fff0e1 	b.ne	200280 <rx_return+0x150>  // b.any
  200468:	17ffff44 	b	200178 <rx_return+0x48>
  20046c:	d0000009 	adrp	x9, 202000 <state+0x390>
  200470:	d34bff0a 	lsr	x10, x24, #11
  200474:	f9414529 	ldr	x9, [x9, #648]
  200478:	b82ad928 	str	w8, [x9, w10, sxtw #2]
  20047c:	34fffec8 	cbz	w8, 200454 <rx_return+0x324>
  200480:	aa1f03e9 	mov	x9, xzr
  200484:	b000000a 	adrp	x10, 201000 <__sel4_ipc_buffer>
  200488:	9132414a 	add	x10, x10, #0xc90
  20048c:	14000007 	b	2004a8 <rx_return+0x378>
  200490:	910003eb 	mov	x11, sp
  200494:	9100614a 	add	x10, x10, #0x18
  200498:	3829697b 	strb	w27, [x11, x9]
  20049c:	91000529 	add	x9, x9, #0x1
  2004a0:	eb28013f 	cmp	x9, w8, uxtb
  2004a4:	54fffd82 	b.cs	200454 <rx_return+0x324>  // b.hs, b.nlast
  2004a8:	f940014b 	ldr	x11, [x10]
  2004ac:	b940094d 	ldr	w13, [x10, #8]
  2004b0:	7940016c 	ldrh	w12, [x11]
  2004b4:	7940056e 	ldrh	w14, [x11, #2]
  2004b8:	4b0e018e 	sub	w14, w12, w14
  2004bc:	6b0d01df 	cmp	w14, w13
  2004c0:	54fffe80 	b.eq	200490 <rx_return+0x360>  // b.none
  2004c4:	1acd0988 	udiv	w8, w12, w13
  2004c8:	1b0db108 	msub	w8, w8, w13, w12
  2004cc:	8b28516b 	add	x11, x11, w8, uxtw #4
  2004d0:	f900097a 	str	x26, [x11, #16]
  2004d4:	f940014c 	ldr	x12, [x10]
  2004d8:	f9000578 	str	x24, [x11, #8]
  2004dc:	79400188 	ldrh	w8, [x12]
  2004e0:	1100050d 	add	w13, w8, #0x1
  2004e4:	397182e8 	ldrb	w8, [x23, #3168]
  2004e8:	7900018d 	strh	w13, [x12]
  2004ec:	17ffffe9 	b	200490 <rx_return+0x360>

00000000002004f0 <rx_provide>:
  2004f0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2004f4:	a9014ff4 	stp	x20, x19, [sp, #16]
  2004f8:	910003fd 	mov	x29, sp
  2004fc:	b0000009 	adrp	x9, 201000 <__sel4_ipc_buffer>
  200500:	d0000014 	adrp	x20, 202000 <state+0x390>
  200504:	b0000008 	adrp	x8, 201000 <__sel4_ipc_buffer>
  200508:	39718132 	ldrb	w18, [x9, #3168]
  20050c:	340007b2 	cbz	w18, 200600 <rx_provide+0x110>
  200510:	aa1f03ea 	mov	x10, xzr
  200514:	5280030b 	mov	w11, #0x18                  	// #24
  200518:	d000000c 	adrp	x12, 202000 <state+0x390>
  20051c:	5280002d 	mov	w13, #0x1                   	// #1
  200520:	b000000e 	adrp	x14, 201000 <__sel4_ipc_buffer>
  200524:	d503201f 	nop
  200528:	1000ba4f 	adr	x15, 201c70 <state>
  20052c:	14000006 	b	200544 <rx_provide+0x54>
  200530:	39718132 	ldrb	w18, [x9, #3168]
  200534:	9100054a 	add	x10, x10, #0x1
  200538:	b900063f 	str	wzr, [x17, #4]
  20053c:	eb32415f 	cmp	x10, w18, uxtw
  200540:	54000602 	b.cs	200600 <rx_provide+0x110>  // b.hs, b.nlast
  200544:	9b0b3d50 	madd	x16, x10, x11, x15
  200548:	f8418e11 	ldr	x17, [x16, #24]!
  20054c:	79400220 	ldrh	w0, [x17]
  200550:	79400621 	ldrh	w1, [x17, #2]
  200554:	6b01001f 	cmp	w0, w1
  200558:	54fffee0 	b.eq	200534 <rx_provide+0x44>  // b.none
  20055c:	f9414592 	ldr	x18, [x12, #648]
  200560:	14000006 	b	200578 <rx_provide+0x88>
  200564:	79400220 	ldrh	w0, [x17]
  200568:	390a428d 	strb	w13, [x20, #656]
  20056c:	79400621 	ldrh	w1, [x17, #2]
  200570:	6b20203f 	cmp	w1, w0, uxth
  200574:	54fffde0 	b.eq	200530 <rx_provide+0x40>  // b.none
  200578:	b9401202 	ldr	w2, [x16, #16]
  20057c:	12003c23 	and	w3, w1, #0xffff
  200580:	11000421 	add	w1, w1, #0x1
  200584:	1ac20864 	udiv	w4, w3, w2
  200588:	79000621 	strh	w1, [x17, #2]
  20058c:	1b028c82 	msub	w2, w4, w2, w3
  200590:	8b225223 	add	x3, x17, w2, uxtw #4
  200594:	a9408c62 	ldp	x2, x3, [x3, #8]
  200598:	d34bfc44 	lsr	x4, x2, #11
  20059c:	b864da45 	ldr	w5, [x18, w4, sxtw #2]
  2005a0:	710004a5 	subs	w5, w5, #0x1
  2005a4:	b824da45 	str	w5, [x18, w4, sxtw #2]
  2005a8:	54fffe21 	b.ne	20056c <rx_provide+0x7c>  // b.any
  2005ac:	f94001e0 	ldr	x0, [x15]
  2005b0:	b94011e4 	ldr	w4, [x15, #16]
  2005b4:	79400001 	ldrh	w1, [x0]
  2005b8:	79400405 	ldrh	w5, [x0, #2]
  2005bc:	4b050025 	sub	w5, w1, w5
  2005c0:	6b0400bf 	cmp	w5, w4
  2005c4:	54fffd00 	b.eq	200564 <rx_provide+0x74>  // b.none
  2005c8:	1ac40831 	udiv	w17, w1, w4
  2005cc:	1b048631 	msub	w17, w17, w4, w1
  2005d0:	8b315000 	add	x0, x0, w17, uxtw #4
  2005d4:	f94025d1 	ldr	x17, [x14, #72]
  2005d8:	f9000803 	str	x3, [x0, #16]
  2005dc:	f9463901 	ldr	x1, [x8, #3184]
  2005e0:	8b020222 	add	x2, x17, x2
  2005e4:	f9414592 	ldr	x18, [x12, #648]
  2005e8:	f9400211 	ldr	x17, [x16]
  2005ec:	f9000402 	str	x2, [x0, #8]
  2005f0:	79400023 	ldrh	w3, [x1]
  2005f4:	11000463 	add	w3, w3, #0x1
  2005f8:	79000023 	strh	w3, [x1]
  2005fc:	17ffffda 	b	200564 <rx_provide+0x74>
  200600:	394a4289 	ldrb	w9, [x20, #656]
  200604:	36000089 	tbz	w9, #0, 200614 <rx_provide+0x124>
  200608:	f9463908 	ldr	x8, [x8, #3184]
  20060c:	b9400509 	ldr	w9, [x8, #4]
  200610:	34000089 	cbz	w9, 200620 <rx_provide+0x130>
  200614:	a9414ff4 	ldp	x20, x19, [sp, #16]
  200618:	a8c27bfd 	ldp	x29, x30, [sp], #32
  20061c:	d65f03c0 	ret
  200620:	b0000009 	adrp	x9, 201000 <__sel4_ipc_buffer>
  200624:	3940c933 	ldrb	w19, [x9, #50]
  200628:	52800029 	mov	w9, #0x1                   	// #1
  20062c:	b9000509 	str	w9, [x8, #4]
  200630:	7100f67f 	cmp	w19, #0x3d
  200634:	54000208 	b.hi	200674 <rx_provide+0x184>  // b.pmore
  200638:	d0000008 	adrp	x8, 202000 <state+0x390>
  20063c:	f9418108 	ldr	x8, [x8, #768]
  200640:	9ad32508 	lsr	x8, x8, x19
  200644:	36000188 	tbz	w8, #0, 200674 <rx_provide+0x184>
  200648:	d0000008 	adrp	x8, 202000 <state+0x390>
  20064c:	d000000a 	adrp	x10, 202000 <state+0x390>
  200650:	91002a6b 	add	x11, x19, #0xa
  200654:	d000000c 	adrp	x12, 202000 <state+0x390>
  200658:	390b8509 	strb	w9, [x8, #737]
  20065c:	f901755f 	str	xzr, [x10, #744]
  200660:	f901798b 	str	x11, [x12, #752]
  200664:	390a429f 	strb	wzr, [x20, #656]
  200668:	a9414ff4 	ldp	x20, x19, [sp, #16]
  20066c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  200670:	d65f03c0 	ret
  200674:	d503201f 	nop
  200678:	1000e140 	adr	x0, 2022a0 <microkit_name>
  20067c:	94000149 	bl	200ba0 <microkit_dbg_puts>
  200680:	90000000 	adrp	x0, 200000 <_start>
  200684:	91398400 	add	x0, x0, #0xe61
  200688:	94000146 	bl	200ba0 <microkit_dbg_puts>
  20068c:	2a1303e0 	mov	w0, w19
  200690:	9400016c 	bl	200c40 <microkit_dbg_put32>
  200694:	90000000 	adrp	x0, 200000 <_start>
  200698:	91397800 	add	x0, x0, #0xe5e
  20069c:	94000141 	bl	200ba0 <microkit_dbg_puts>
  2006a0:	390a429f 	strb	wzr, [x20, #656]
  2006a4:	a9414ff4 	ldp	x20, x19, [sp, #16]
  2006a8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2006ac:	d65f03c0 	ret

00000000002006b0 <notified>:
  2006b0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  2006b4:	910003fd 	mov	x29, sp
  2006b8:	97fffe9e 	bl	200130 <rx_return>
  2006bc:	a8c17bfd 	ldp	x29, x30, [sp], #16
  2006c0:	17ffff8c 	b	2004f0 <rx_provide>
  2006c4:	d503201f 	nop
  2006c8:	d503201f 	nop
  2006cc:	d503201f 	nop

00000000002006d0 <init>:
  2006d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2006d4:	f9000bf3 	str	x19, [sp, #16]
  2006d8:	910003fd 	mov	x29, sp
  2006dc:	b0000008 	adrp	x8, 201000 <__sel4_ipc_buffer>
  2006e0:	91014108 	add	x8, x8, #0x50
  2006e4:	d000000a 	adrp	x10, 202000 <state+0x390>
  2006e8:	f9400109 	ldr	x9, [x8]
  2006ec:	3970410b 	ldrb	w11, [x8, #3088]
  2006f0:	d503201f 	nop
  2006f4:	1000abe8 	adr	x8, 201c70 <state>
  2006f8:	f9014549 	str	x9, [x10, #648]
  2006fc:	3400094b 	cbz	w11, 200824 <init+0x154>
  200700:	92400569 	and	x9, x11, #0x3
  200704:	7100117f 	cmp	w11, #0x4
  200708:	54000082 	b.cs	200718 <init+0x48>  // b.hs, b.nlast
  20070c:	aa1f03ea 	mov	x10, xzr
  200710:	b5000489 	cbnz	x9, 2007a0 <init+0xd0>
  200714:	14000044 	b	200824 <init+0x154>
  200718:	927e156b 	and	x11, x11, #0xfc
  20071c:	aa1f03ea 	mov	x10, xzr
  200720:	cb0b03eb 	neg	x11, x11
  200724:	b000000c 	adrp	x12, 201000 <__sel4_ipc_buffer>
  200728:	9132a18c 	add	x12, x12, #0xca8
  20072c:	b000000d 	adrp	x13, 201000 <__sel4_ipc_buffer>
  200730:	910241ad 	add	x13, x13, #0x90
  200734:	f85d01ae 	ldur	x14, [x13, #-48]
  200738:	d100114a 	sub	x10, x10, #0x4
  20073c:	f85e01af 	ldur	x15, [x13, #-32]
  200740:	eb0a017f 	cmp	x11, x10
  200744:	785f01b0 	ldurh	w16, [x13, #-16]
  200748:	794101b1 	ldrh	w17, [x13, #128]
  20074c:	a93e3d8e 	stp	x14, x15, [x12, #-32]
  200750:	f94001ae 	ldr	x14, [x13]
  200754:	f94009af 	ldr	x15, [x13, #16]
  200758:	b81f0190 	stur	w16, [x12, #-16]
  20075c:	794041b0 	ldrh	w16, [x13, #32]
  200760:	b9003991 	str	w17, [x12, #56]
  200764:	a93fbd8e 	stp	x14, x15, [x12, #-8]
  200768:	f94019ae 	ldr	x14, [x13, #48]
  20076c:	f94021af 	ldr	x15, [x13, #64]
  200770:	b9000990 	str	w16, [x12, #8]
  200774:	7940a1b0 	ldrh	w16, [x13, #80]
  200778:	a9013d8e 	stp	x14, x15, [x12, #16]
  20077c:	f94031ae 	ldr	x14, [x13, #96]
  200780:	f94039af 	ldr	x15, [x13, #112]
  200784:	910301ad 	add	x13, x13, #0xc0
  200788:	b9002190 	str	w16, [x12, #32]
  20078c:	a902bd8e 	stp	x14, x15, [x12, #40]
  200790:	9101818c 	add	x12, x12, #0x60
  200794:	54fffd01 	b.ne	200734 <init+0x64>  // b.any
  200798:	cb0a03ea 	neg	x10, x10
  20079c:	b4000449 	cbz	x9, 200824 <init+0x154>
  2007a0:	5280060c 	mov	w12, #0x30                  	// #48
  2007a4:	d503201f 	nop
  2007a8:	1000430b 	adr	x11, 201008 <config>
  2007ac:	5280030d 	mov	w13, #0x18                  	// #24
  2007b0:	9b0c2d4c 	madd	x12, x10, x12, x11
  2007b4:	f100053f 	cmp	x9, #0x1
  2007b8:	9b0d214d 	madd	x13, x10, x13, x8
  2007bc:	f9402d8e 	ldr	x14, [x12, #88]
  2007c0:	f940358f 	ldr	x15, [x12, #104]
  2007c4:	7940f18c 	ldrh	w12, [x12, #120]
  2007c8:	a901bdae 	stp	x14, x15, [x13, #24]
  2007cc:	b90029ac 	str	w12, [x13, #40]
  2007d0:	540002a0 	b.eq	200824 <init+0x154>  // b.none
  2007d4:	5280060c 	mov	w12, #0x30                  	// #48
  2007d8:	5280030d 	mov	w13, #0x18                  	// #24
  2007dc:	f100093f 	cmp	x9, #0x2
  2007e0:	9b0c2d4c 	madd	x12, x10, x12, x11
  2007e4:	9b0d214d 	madd	x13, x10, x13, x8
  2007e8:	f940458e 	ldr	x14, [x12, #136]
  2007ec:	f9404d8f 	ldr	x15, [x12, #152]
  2007f0:	7941518c 	ldrh	w12, [x12, #168]
  2007f4:	a9033dae 	stp	x14, x15, [x13, #48]
  2007f8:	b90041ac 	str	w12, [x13, #64]
  2007fc:	54000140 	b.eq	200824 <init+0x154>  // b.none
  200800:	52800609 	mov	w9, #0x30                  	// #48
  200804:	9b092d49 	madd	x9, x10, x9, x11
  200808:	5280030b 	mov	w11, #0x18                  	// #24
  20080c:	9b0b214a 	madd	x10, x10, x11, x8
  200810:	f9405d2b 	ldr	x11, [x9, #184]
  200814:	f940652c 	ldr	x12, [x9, #200]
  200818:	7941b129 	ldrh	w9, [x9, #216]
  20081c:	a904b14b 	stp	x11, x12, [x10, #72]
  200820:	b9005949 	str	w9, [x10, #88]
  200824:	b000000b 	adrp	x11, 201000 <__sel4_ipc_buffer>
  200828:	9100416b 	add	x11, x11, #0x10
  20082c:	f9400169 	ldr	x9, [x11]
  200830:	f940096a 	ldr	x10, [x11, #16]
  200834:	7940416c 	ldrh	w12, [x11, #32]
  200838:	a9002909 	stp	x9, x10, [x8]
  20083c:	b900110c 	str	w12, [x8, #16]
  200840:	340003cc 	cbz	w12, 2008b8 <init+0x1e8>
  200844:	f9401d6b 	ldr	x11, [x11, #56]
  200848:	aa1f03ea 	mov	x10, xzr
  20084c:	7940012e 	ldrh	w14, [x9]
  200850:	aa1f03ed 	mov	x13, xzr
  200854:	14000007 	b	200870 <init+0x1a0>
  200858:	d503201f 	nop
  20085c:	d503201f 	nop
  200860:	910005ad 	add	x13, x13, #0x1
  200864:	9120014a 	add	x10, x10, #0x800
  200868:	eb2c41bf 	cmp	x13, w12, uxtw
  20086c:	54000262 	b.cs	2008b8 <init+0x1e8>  // b.hs, b.nlast
  200870:	79400530 	ldrh	w16, [x9, #2]
  200874:	12003dcf 	and	w15, w14, #0xffff
  200878:	4b1001f0 	sub	w16, w15, w16
  20087c:	6b0c021f 	cmp	w16, w12
  200880:	54ffff00 	b.eq	200860 <init+0x190>  // b.none
  200884:	1acc09ee 	udiv	w14, w15, w12
  200888:	1b0cbdcc 	msub	w12, w14, w12, w15
  20088c:	9275514e 	and	x14, x10, #0xfffff800
  200890:	8b0b01d0 	add	x16, x14, x11
  200894:	8b2c512f 	add	x15, x9, w12, uxtw #4
  200898:	f90009ff 	str	xzr, [x15, #16]
  20089c:	f9400109 	ldr	x9, [x8]
  2008a0:	f90005f0 	str	x16, [x15, #8]
  2008a4:	7940012c 	ldrh	w12, [x9]
  2008a8:	1100058e 	add	w14, w12, #0x1
  2008ac:	b940110c 	ldr	w12, [x8, #16]
  2008b0:	7900012e 	strh	w14, [x9]
  2008b4:	17ffffeb 	b	200860 <init+0x190>
  2008b8:	b9400528 	ldr	w8, [x9, #4]
  2008bc:	34000088 	cbz	w8, 2008cc <init+0x1fc>
  2008c0:	f9400bf3 	ldr	x19, [sp, #16]
  2008c4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2008c8:	d65f03c0 	ret
  2008cc:	b0000008 	adrp	x8, 201000 <__sel4_ipc_buffer>
  2008d0:	3940c913 	ldrb	w19, [x8, #50]
  2008d4:	52800028 	mov	w8, #0x1                   	// #1
  2008d8:	b9000528 	str	w8, [x9, #4]
  2008dc:	7100f67f 	cmp	w19, #0x3d
  2008e0:	54000208 	b.hi	200920 <init+0x250>  // b.pmore
  2008e4:	d0000008 	adrp	x8, 202000 <state+0x390>
  2008e8:	f9418108 	ldr	x8, [x8, #768]
  2008ec:	9ad32508 	lsr	x8, x8, x19
  2008f0:	36000188 	tbz	w8, #0, 200920 <init+0x250>
  2008f4:	d0000008 	adrp	x8, 202000 <state+0x390>
  2008f8:	52800029 	mov	w9, #0x1                   	// #1
  2008fc:	d000000a 	adrp	x10, 202000 <state+0x390>
  200900:	91002a6b 	add	x11, x19, #0xa
  200904:	d000000c 	adrp	x12, 202000 <state+0x390>
  200908:	390b8509 	strb	w9, [x8, #737]
  20090c:	f901755f 	str	xzr, [x10, #744]
  200910:	f901798b 	str	x11, [x12, #752]
  200914:	f9400bf3 	ldr	x19, [sp, #16]
  200918:	a8c27bfd 	ldp	x29, x30, [sp], #32
  20091c:	d65f03c0 	ret
  200920:	d503201f 	nop
  200924:	1000cbe0 	adr	x0, 2022a0 <microkit_name>
  200928:	9400009e 	bl	200ba0 <microkit_dbg_puts>
  20092c:	90000000 	adrp	x0, 200000 <_start>
  200930:	91398400 	add	x0, x0, #0xe61
  200934:	9400009b 	bl	200ba0 <microkit_dbg_puts>
  200938:	2a1303e0 	mov	w0, w19
  20093c:	940000c1 	bl	200c40 <microkit_dbg_put32>
  200940:	f9400bf3 	ldr	x19, [sp, #16]
  200944:	90000000 	adrp	x0, 200000 <_start>
  200948:	91397800 	add	x0, x0, #0xe5e
  20094c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  200950:	14000094 	b	200ba0 <microkit_dbg_puts>
	...

0000000000200960 <cache_clean_and_invalidate>:
  200960:	f240143f 	tst	x1, #0x3f
  200964:	52800808 	mov	w8, #0x40                  	// #64
  200968:	9a8803e8 	csel	x8, xzr, x8, eq	// eq = none
  20096c:	d346fc09 	lsr	x9, x0, #6
  200970:	8b010108 	add	x8, x8, x1
  200974:	d346fd08 	lsr	x8, x8, #6
  200978:	eb090108 	subs	x8, x8, x9
  20097c:	540000c9 	b.ls	200994 <cache_clean_and_invalidate+0x34>  // b.plast
  200980:	d37ae529 	lsl	x9, x9, #6
  200984:	d50b7e29 	dc	civac, x9
  200988:	91010129 	add	x9, x9, #0x40
  20098c:	f1000508 	subs	x8, x8, #0x1
  200990:	54ffffa1 	b.ne	200984 <cache_clean_and_invalidate+0x24>  // b.any
  200994:	d5033f9f 	dsb	sy
  200998:	d65f03c0 	ret
  20099c:	d503201f 	nop

00000000002009a0 <cache_clean>:
  2009a0:	f240143f 	tst	x1, #0x3f
  2009a4:	52800808 	mov	w8, #0x40                  	// #64
  2009a8:	9a8803e8 	csel	x8, xzr, x8, eq	// eq = none
  2009ac:	d346fc09 	lsr	x9, x0, #6
  2009b0:	8b010108 	add	x8, x8, x1
  2009b4:	d346fd08 	lsr	x8, x8, #6
  2009b8:	eb090108 	subs	x8, x8, x9
  2009bc:	540000c9 	b.ls	2009d4 <cache_clean+0x34>  // b.plast
  2009c0:	d37ae529 	lsl	x9, x9, #6
  2009c4:	d50b7a29 	dc	cvac, x9
  2009c8:	91010129 	add	x9, x9, #0x40
  2009cc:	f1000508 	subs	x8, x8, #0x1
  2009d0:	54ffffa1 	b.ne	2009c4 <cache_clean+0x24>  // b.any
  2009d4:	d5033fbf 	dmb	sy
  2009d8:	d65f03c0 	ret
  2009dc:	00000000 	udf	#0

00000000002009e0 <protected>:
  2009e0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  2009e4:	d503201f 	nop
  2009e8:	1000c5c0 	adr	x0, 2022a0 <microkit_name>
  2009ec:	910003fd 	mov	x29, sp
  2009f0:	9400006c 	bl	200ba0 <microkit_dbg_puts>
  2009f4:	d503201f 	nop
  2009f8:	10002500 	adr	x0, 200e98 <_text_end+0x64>
  2009fc:	94000069 	bl	200ba0 <microkit_dbg_puts>
  200a00:	d2800000 	mov	x0, #0x0                   	// #0
  200a04:	b900001f 	str	wzr, [x0]
  200a08:	d4207d00 	brk	#0x3e8
  200a0c:	d503201f 	nop

0000000000200a10 <fault>:
  200a10:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  200a14:	d503201f 	nop
  200a18:	1000c440 	adr	x0, 2022a0 <microkit_name>
  200a1c:	910003fd 	mov	x29, sp
  200a20:	94000060 	bl	200ba0 <microkit_dbg_puts>
  200a24:	90000000 	adrp	x0, 200000 <_start>
  200a28:	913b4000 	add	x0, x0, #0xed0
  200a2c:	9400005d 	bl	200ba0 <microkit_dbg_puts>
  200a30:	d2800000 	mov	x0, #0x0                   	// #0
  200a34:	b900001f 	str	wzr, [x0]
  200a38:	d4207d00 	brk	#0x3e8
  200a3c:	00000000 	udf	#0

0000000000200a40 <main>:
  200a40:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  200a44:	d503201f 	nop
  200a48:	10002dc0 	adr	x0, 201000 <__sel4_ipc_buffer>
  200a4c:	910003fd 	mov	x29, sp
  200a50:	a90153f3 	stp	x19, x20, [sp, #16]
  200a54:	d503201f 	nop
  200a58:	10002d54 	adr	x20, 201000 <__sel4_ipc_buffer>
  200a5c:	a9025bf5 	stp	x21, x22, [sp, #32]
  200a60:	eb140015 	subs	x21, x0, x20
  200a64:	54000100 	b.eq	200a84 <main+0x44>  // b.none
  200a68:	9343feb5 	asr	x21, x21, #3
  200a6c:	d2800013 	mov	x19, #0x0                   	// #0
  200a70:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
  200a74:	91000673 	add	x19, x19, #0x1
  200a78:	d63f0000 	blr	x0
  200a7c:	eb1302bf 	cmp	x21, x19
  200a80:	54ffff88 	b.hi	200a70 <main+0x30>  // b.pmore
  200a84:	d503201f 	nop
  200a88:	1000c0d6 	adr	x22, 2022a0 <microkit_name>
  200a8c:	97ffff11 	bl	2006d0 <init>
  200a90:	394102c0 	ldrb	w0, [x22, #64]
  200a94:	360000a0 	tbz	w0, #0, 200aa8 <main+0x68>
  200a98:	52800021 	mov	w1, #0x1                   	// #1
  200a9c:	d28000a0 	mov	x0, #0x5                   	// #5
  200aa0:	390106c1 	strb	w1, [x22, #65]
  200aa4:	a90482df 	stp	xzr, x0, [x22, #72]
  200aa8:	d503201f 	nop
  200aac:	10002ab5 	adr	x21, 201000 <__sel4_ipc_buffer>
  200ab0:	52800000 	mov	w0, #0x0                   	// #0
  200ab4:	35000200 	cbnz	w0, 200af4 <main+0xb4>
  200ab8:	39c106c0 	ldrsb	w0, [x22, #65]
  200abc:	350004c0 	cbnz	w0, 200b54 <main+0x114>
  200ac0:	d2800020 	mov	x0, #0x1                   	// #1
  200ac4:	d2800086 	mov	x6, #0x4                   	// #4
  200ac8:	928000c7 	mov	x7, #0xfffffffffffffff9    	// #-7
  200acc:	d4000001 	svc	#0x0
  200ad0:	f94002a6 	ldr	x6, [x21]
  200ad4:	aa0003f3 	mov	x19, x0
  200ad8:	a9008cc2 	stp	x2, x3, [x6, #8]
  200adc:	a90194c4 	stp	x4, x5, [x6, #24]
  200ae0:	b7f001d3 	tbnz	x19, #62, 200b18 <main+0xd8>
  200ae4:	b6f80273 	tbz	x19, #63, 200b30 <main+0xf0>
  200ae8:	12001660 	and	w0, w19, #0x3f
  200aec:	97ffffbd 	bl	2009e0 <protected>
  200af0:	f9001fe0 	str	x0, [sp, #56]
  200af4:	f94002a5 	ldr	x5, [x21]
  200af8:	d2800020 	mov	x0, #0x1                   	// #1
  200afc:	f9401fe1 	ldr	x1, [sp, #56]
  200b00:	d2800086 	mov	x6, #0x4                   	// #4
  200b04:	a9408ca2 	ldp	x2, x3, [x5, #8]
  200b08:	92800027 	mov	x7, #0xfffffffffffffffe    	// #-2
  200b0c:	a94194a4 	ldp	x4, x5, [x5, #24]
  200b10:	d4000001 	svc	#0x0
  200b14:	17ffffef 	b	200ad0 <main+0x90>
  200b18:	12001e60 	and	w0, w19, #0xff
  200b1c:	9100e3e2 	add	x2, sp, #0x38
  200b20:	97ffffbc 	bl	200a10 <fault>
  200b24:	72001c1f 	tst	w0, #0xff
  200b28:	1a9f07e0 	cset	w0, ne	// ne = any
  200b2c:	17ffffe2 	b	200ab4 <main+0x74>
  200b30:	52800014 	mov	w20, #0x0                   	// #0
  200b34:	370000b3 	tbnz	w19, #0, 200b48 <main+0x108>
  200b38:	d341fe73 	lsr	x19, x19, #1
  200b3c:	11000694 	add	w20, w20, #0x1
  200b40:	b4fffb93 	cbz	x19, 200ab0 <main+0x70>
  200b44:	3607ffb3 	tbz	w19, #0, 200b38 <main+0xf8>
  200b48:	2a1403e0 	mov	w0, w20
  200b4c:	97fffed9 	bl	2006b0 <notified>
  200b50:	17fffffa 	b	200b38 <main+0xf8>
  200b54:	f94002a5 	ldr	x5, [x21]
  200b58:	d2800020 	mov	x0, #0x1                   	// #1
  200b5c:	a944a2c1 	ldp	x1, x8, [x22, #72]
  200b60:	d2800086 	mov	x6, #0x4                   	// #4
  200b64:	a9408ca2 	ldp	x2, x3, [x5, #8]
  200b68:	92800047 	mov	x7, #0xfffffffffffffffd    	// #-3
  200b6c:	a94194a4 	ldp	x4, x5, [x5, #24]
  200b70:	d4000001 	svc	#0x0
  200b74:	f94002a6 	ldr	x6, [x21]
  200b78:	aa0003f3 	mov	x19, x0
  200b7c:	390106df 	strb	wzr, [x22, #65]
  200b80:	a9008cc2 	stp	x2, x3, [x6, #8]
  200b84:	a90194c4 	stp	x4, x5, [x6, #24]
  200b88:	17ffffd6 	b	200ae0 <main+0xa0>
  200b8c:	00000000 	udf	#0

0000000000200b90 <microkit_dbg_putc>:
  200b90:	d65f03c0 	ret
  200b94:	d503201f 	nop
  200b98:	d503201f 	nop
  200b9c:	d503201f 	nop

0000000000200ba0 <microkit_dbg_puts>:
  200ba0:	39400001 	ldrb	w1, [x0]
  200ba4:	34000061 	cbz	w1, 200bb0 <microkit_dbg_puts+0x10>
  200ba8:	38401c01 	ldrb	w1, [x0, #1]!
  200bac:	35ffffe1 	cbnz	w1, 200ba8 <microkit_dbg_puts+0x8>
  200bb0:	d65f03c0 	ret
  200bb4:	d503201f 	nop
  200bb8:	d503201f 	nop
  200bbc:	d503201f 	nop

0000000000200bc0 <microkit_dbg_put8>:
  200bc0:	12001c00 	and	w0, w0, #0xff
  200bc4:	529999a2 	mov	w2, #0xcccd                	// #52429
  200bc8:	72b99982 	movk	w2, #0xcccc, lsl #16
  200bcc:	52800143 	mov	w3, #0xa                   	// #10
  200bd0:	d10043ff 	sub	sp, sp, #0x10
  200bd4:	7100241f 	cmp	w0, #0x9
  200bd8:	9ba27c01 	umull	x1, w0, w2
  200bdc:	d2800044 	mov	x4, #0x2                   	// #2
  200be0:	39002fff 	strb	wzr, [sp, #11]
  200be4:	d363fc21 	lsr	x1, x1, #35
  200be8:	1b038025 	msub	w5, w1, w3, w0
  200bec:	1100c0a5 	add	w5, w5, #0x30
  200bf0:	39002be5 	strb	w5, [sp, #10]
  200bf4:	540001a9 	b.ls	200c28 <microkit_dbg_put8+0x68>  // b.plast
  200bf8:	12001c21 	and	w1, w1, #0xff
  200bfc:	71018c1f 	cmp	w0, #0x63
  200c00:	d2800024 	mov	x4, #0x1                   	// #1
  200c04:	9ba27c22 	umull	x2, w1, w2
  200c08:	d363fc42 	lsr	x2, x2, #35
  200c0c:	1b038443 	msub	w3, w2, w3, w1
  200c10:	1100c063 	add	w3, w3, #0x30
  200c14:	390027e3 	strb	w3, [sp, #9]
  200c18:	54000089 	b.ls	200c28 <microkit_dbg_put8+0x68>  // b.plast
  200c1c:	1100c042 	add	w2, w2, #0x30
  200c20:	d2800004 	mov	x4, #0x0                   	// #0
  200c24:	390023e2 	strb	w2, [sp, #8]
  200c28:	910023e0 	add	x0, sp, #0x8
  200c2c:	8b040000 	add	x0, x0, x4
  200c30:	38401c01 	ldrb	w1, [x0, #1]!
  200c34:	35ffffe1 	cbnz	w1, 200c30 <microkit_dbg_put8+0x70>
  200c38:	910043ff 	add	sp, sp, #0x10
  200c3c:	d65f03c0 	ret

0000000000200c40 <microkit_dbg_put32>:
  200c40:	529999a1 	mov	w1, #0xcccd                	// #52429
  200c44:	72b99981 	movk	w1, #0xcccc, lsl #16
  200c48:	52800143 	mov	w3, #0xa                   	// #10
  200c4c:	d10043ff 	sub	sp, sp, #0x10
  200c50:	9ba17c02 	umull	x2, w0, w1
  200c54:	7100241f 	cmp	w0, #0x9
  200c58:	39002bff 	strb	wzr, [sp, #10]
  200c5c:	d363fc42 	lsr	x2, x2, #35
  200c60:	1b038044 	msub	w4, w2, w3, w0
  200c64:	1100c084 	add	w4, w4, #0x30
  200c68:	390027e4 	strb	w4, [sp, #9]
  200c6c:	540009e9 	b.ls	200da8 <microkit_dbg_put32+0x168>  // b.plast
  200c70:	9ba17c44 	umull	x4, w2, w1
  200c74:	71018c1f 	cmp	w0, #0x63
  200c78:	d363fc84 	lsr	x4, x4, #35
  200c7c:	1b038882 	msub	w2, w4, w3, w2
  200c80:	1100c042 	add	w2, w2, #0x30
  200c84:	390023e2 	strb	w2, [sp, #8]
  200c88:	54000949 	b.ls	200db0 <microkit_dbg_put32+0x170>  // b.plast
  200c8c:	9ba17c82 	umull	x2, w4, w1
  200c90:	710f9c1f 	cmp	w0, #0x3e7
  200c94:	d363fc42 	lsr	x2, x2, #35
  200c98:	1b039044 	msub	w4, w2, w3, w4
  200c9c:	1100c084 	add	w4, w4, #0x30
  200ca0:	39001fe4 	strb	w4, [sp, #7]
  200ca4:	540008a9 	b.ls	200db8 <microkit_dbg_put32+0x178>  // b.plast
  200ca8:	9ba17c44 	umull	x4, w2, w1
  200cac:	5284e1e5 	mov	w5, #0x270f                	// #9999
  200cb0:	6b05001f 	cmp	w0, w5
  200cb4:	d363fc84 	lsr	x4, x4, #35
  200cb8:	1b038882 	msub	w2, w4, w3, w2
  200cbc:	1100c042 	add	w2, w2, #0x30
  200cc0:	39001be2 	strb	w2, [sp, #6]
  200cc4:	540007e9 	b.ls	200dc0 <microkit_dbg_put32+0x180>  // b.plast
  200cc8:	9ba17c82 	umull	x2, w4, w1
  200ccc:	5290d3e5 	mov	w5, #0x869f                	// #34463
  200cd0:	72a00025 	movk	w5, #0x1, lsl #16
  200cd4:	6b05001f 	cmp	w0, w5
  200cd8:	d363fc42 	lsr	x2, x2, #35
  200cdc:	1b039044 	msub	w4, w2, w3, w4
  200ce0:	1100c084 	add	w4, w4, #0x30
  200ce4:	390017e4 	strb	w4, [sp, #5]
  200ce8:	54000709 	b.ls	200dc8 <microkit_dbg_put32+0x188>  // b.plast
  200cec:	9ba17c44 	umull	x4, w2, w1
  200cf0:	528847e5 	mov	w5, #0x423f                	// #16959
  200cf4:	72a001e5 	movk	w5, #0xf, lsl #16
  200cf8:	6b05001f 	cmp	w0, w5
  200cfc:	d363fc84 	lsr	x4, x4, #35
  200d00:	1b038882 	msub	w2, w4, w3, w2
  200d04:	1100c042 	add	w2, w2, #0x30
  200d08:	390013e2 	strb	w2, [sp, #4]
  200d0c:	540004a9 	b.ls	200da0 <microkit_dbg_put32+0x160>  // b.plast
  200d10:	9ba17c82 	umull	x2, w4, w1
  200d14:	5292cfe5 	mov	w5, #0x967f                	// #38527
  200d18:	72a01305 	movk	w5, #0x98, lsl #16
  200d1c:	6b05001f 	cmp	w0, w5
  200d20:	d363fc42 	lsr	x2, x2, #35
  200d24:	1b039044 	msub	w4, w2, w3, w4
  200d28:	1100c084 	add	w4, w4, #0x30
  200d2c:	39000fe4 	strb	w4, [sp, #3]
  200d30:	54000509 	b.ls	200dd0 <microkit_dbg_put32+0x190>  // b.plast
  200d34:	9ba17c44 	umull	x4, w2, w1
  200d38:	529c1fe5 	mov	w5, #0xe0ff                	// #57599
  200d3c:	72a0bea5 	movk	w5, #0x5f5, lsl #16
  200d40:	6b05001f 	cmp	w0, w5
  200d44:	d363fc84 	lsr	x4, x4, #35
  200d48:	1b038882 	msub	w2, w4, w3, w2
  200d4c:	1100c042 	add	w2, w2, #0x30
  200d50:	39000be2 	strb	w2, [sp, #2]
  200d54:	54000429 	b.ls	200dd8 <microkit_dbg_put32+0x198>  // b.plast
  200d58:	9ba17c81 	umull	x1, w4, w1
  200d5c:	52993fe2 	mov	w2, #0xc9ff                	// #51711
  200d60:	72a77342 	movk	w2, #0x3b9a, lsl #16
  200d64:	6b02001f 	cmp	w0, w2
  200d68:	d363fc21 	lsr	x1, x1, #35
  200d6c:	1b039023 	msub	w3, w1, w3, w4
  200d70:	1100c063 	add	w3, w3, #0x30
  200d74:	390007e3 	strb	w3, [sp, #1]
  200d78:	54000349 	b.ls	200de0 <microkit_dbg_put32+0x1a0>  // b.plast
  200d7c:	1100c021 	add	w1, w1, #0x30
  200d80:	d2800000 	mov	x0, #0x0                   	// #0
  200d84:	390003e1 	strb	w1, [sp]
  200d88:	8b2063e0 	add	x0, sp, x0
  200d8c:	d503201f 	nop
  200d90:	38401c01 	ldrb	w1, [x0, #1]!
  200d94:	35ffffe1 	cbnz	w1, 200d90 <microkit_dbg_put32+0x150>
  200d98:	910043ff 	add	sp, sp, #0x10
  200d9c:	d65f03c0 	ret
  200da0:	d2800080 	mov	x0, #0x4                   	// #4
  200da4:	17fffff9 	b	200d88 <microkit_dbg_put32+0x148>
  200da8:	d2800120 	mov	x0, #0x9                   	// #9
  200dac:	17fffff7 	b	200d88 <microkit_dbg_put32+0x148>
  200db0:	d2800100 	mov	x0, #0x8                   	// #8
  200db4:	17fffff5 	b	200d88 <microkit_dbg_put32+0x148>
  200db8:	d28000e0 	mov	x0, #0x7                   	// #7
  200dbc:	17fffff3 	b	200d88 <microkit_dbg_put32+0x148>
  200dc0:	d28000c0 	mov	x0, #0x6                   	// #6
  200dc4:	17fffff1 	b	200d88 <microkit_dbg_put32+0x148>
  200dc8:	d28000a0 	mov	x0, #0x5                   	// #5
  200dcc:	17ffffef 	b	200d88 <microkit_dbg_put32+0x148>
  200dd0:	d2800060 	mov	x0, #0x3                   	// #3
  200dd4:	17ffffed 	b	200d88 <microkit_dbg_put32+0x148>
  200dd8:	d2800040 	mov	x0, #0x2                   	// #2
  200ddc:	17ffffeb 	b	200d88 <microkit_dbg_put32+0x148>
  200de0:	d2800020 	mov	x0, #0x1                   	// #1
  200de4:	17ffffe9 	b	200d88 <microkit_dbg_put32+0x148>
  200de8:	d503201f 	nop
  200dec:	d503201f 	nop

0000000000200df0 <__assert_fail>:
  200df0:	d503201f 	nop
  200df4:	10000822 	adr	x2, 200ef8 <_text_end+0xc4>
  200df8:	38401c44 	ldrb	w4, [x2, #1]!
  200dfc:	35ffffe4 	cbnz	w4, 200df8 <__assert_fail+0x8>
  200e00:	39400002 	ldrb	w2, [x0]
  200e04:	34000062 	cbz	w2, 200e10 <__assert_fail+0x20>
  200e08:	38401c02 	ldrb	w2, [x0, #1]!
  200e0c:	35ffffe2 	cbnz	w2, 200e08 <__assert_fail+0x18>
  200e10:	39400020 	ldrb	w0, [x1]
  200e14:	34000060 	cbz	w0, 200e20 <__assert_fail+0x30>
  200e18:	38401c20 	ldrb	w0, [x1, #1]!
  200e1c:	35ffffe0 	cbnz	w0, 200e18 <__assert_fail+0x28>
  200e20:	39400060 	ldrb	w0, [x3]
  200e24:	34000060 	cbz	w0, 200e30 <__assert_fail+0x40>
  200e28:	38401c60 	ldrb	w0, [x3, #1]!
  200e2c:	35ffffe0 	cbnz	w0, 200e28 <__assert_fail+0x38>
  200e30:	d65f03c0 	ret
