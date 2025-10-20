
build/eth_driver.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000200000 <_start>:
  200000:	14001220 	b	204880 <main>
	...

0000000000201000 <cml_main>:
  201000:	90000000 	adrp	x0, 201000 <cml_main>
  201004:	91028000 	add	x0, x0, #0xa0
  201008:	d503201f 	nop
  20100c:	1001ffa1 	adr	x1, 205000 <__init_array_end>
  201010:	f9400021 	ldr	x1, [x1]
  201014:	d503201f 	nop
  201018:	1001ff82 	adr	x2, 205008 <cml_stack>
  20101c:	f9400042 	ldr	x2, [x2]
  201020:	d503201f 	nop
  201024:	1001ff63 	adr	x3, 205010 <cml_stackend>
  201028:	f9400063 	ldr	x3, [x3]
  20102c:	14000bf5 	b	204000 <cml_enter>

0000000000201030 <cake_ffiTHREAD_MEMORY_RELEASE>:
  201030:	14000cd8 	b	204390 <ffiTHREAD_MEMORY_RELEASE>
  201034:	d503201f 	nop
  201038:	d503201f 	nop
  20103c:	d503201f 	nop

0000000000201040 <cake_ffiTHREAD_MEMORY_ACQUIRE>:
  201040:	14000cd8 	b	2043a0 <ffiTHREAD_MEMORY_ACQUIRE>
  201044:	d503201f 	nop
  201048:	d503201f 	nop
  20104c:	d503201f 	nop

0000000000201050 <cake_ffimicrokit_notify>:
  201050:	14000cdc 	b	2043c0 <ffimicrokit_notify>
  201054:	d503201f 	nop
  201058:	d503201f 	nop
  20105c:	d503201f 	nop

0000000000201060 <cake_ffiassert>:
  201060:	14000cd4 	b	2043b0 <ffiassert>
  201064:	d503201f 	nop
  201068:	d503201f 	nop
  20106c:	d503201f 	nop

0000000000201070 <cake_ffimicrokit_deferred_irq_ack>:
  201070:	14000cf4 	b	204440 <ffimicrokit_deferred_irq_ack>
  201074:	d503201f 	nop
  201078:	d503201f 	nop
  20107c:	d503201f 	nop

0000000000201080 <cake_clear>:
  201080:	14000c1c 	b	2040f0 <cml_exit>
  201084:	d503201f 	nop
  201088:	d503201f 	nop
  20108c:	d503201f 	nop

0000000000201090 <cake_exit>:
  201090:	14000bfc 	b	204080 <cml_return>
  201094:	d503201f 	nop
  201098:	d503201f 	nop
  20109c:	d503201f 	nop

00000000002010a0 <cml__Init_0>:
  2010a0:	aa03007e 	.word	0xaa03007e
  2010a4:	cb0103de 	.word	0xcb0103de
  2010a8:	d344ffde 	.word	0xd344ffde
  2010ac:	d37df3de 	.word	0xd37df3de
  2010b0:	8b0103de 	.word	0x8b0103de
  2010b4:	d280ff05 	.word	0xd280ff05
  2010b8:	8b050021 	.word	0x8b050021
  2010bc:	cb050063 	.word	0xcb050063
  2010c0:	eb01005f 	.word	0xeb01005f
  2010c4:	540000a3 	.word	0x540000a3
  2010c8:	eb02007f 	.word	0xeb02007f
  2010cc:	54000042 	.word	0x54000042
  2010d0:	aa1e03c2 	.word	0xaa1e03c2
  2010d4:	14000002 	.word	0x14000002
  2010d8:	aa1e03c2 	.word	0xaa1e03c2
  2010dc:	d280ff1e 	.word	0xd280ff1e
  2010e0:	cb1e0021 	.word	0xcb1e0021
  2010e4:	8b1e0063 	.word	0x8b1e0063
  2010e8:	aa02005e 	.word	0xaa02005e
  2010ec:	cb0103de 	.word	0xcb0103de
  2010f0:	b27dd3e5 	.word	0xb27dd3e5
  2010f4:	eb1e00bf 	.word	0xeb1e00bf
  2010f8:	54000062 	.word	0x54000062
  2010fc:	aa010022 	.word	0xaa010022
  201100:	8b050042 	.word	0x8b050042
  201104:	cb010042 	.word	0xcb010042
  201108:	d344fc42 	.word	0xd344fc42
  20110c:	d37cec42 	.word	0xd37cec42
  201110:	8b010042 	.word	0x8b010042
  201114:	aa020045 	.word	0xaa020045
  201118:	cb0100a5 	.word	0xcb0100a5
  20111c:	d341fca5 	.word	0xd341fca5
  201120:	aa01003c 	.word	0xaa01003c
  201124:	8b050021 	.word	0x8b050021
  201128:	aa030079 	.word	0xaa030079
  20112c:	aa02005b 	.word	0xaa02005b
  201130:	f9400382 	.word	0xf9400382
  201134:	d343fc42 	.word	0xd343fc42
  201138:	aa1c039e 	.word	0xaa1c039e
  20113c:	910023de 	.word	0x910023de
  201140:	f94003c3 	.word	0xf94003c3
  201144:	910023de 	.word	0x910023de
  201148:	f94003c6 	.word	0xf94003c6
  20114c:	910023de 	.word	0x910023de
  201150:	f94003c7 	.word	0xf94003c7
  201154:	910023de 	.word	0x910023de
  201158:	f94003c0 	.word	0xf94003c0
  20115c:	d280011e 	.word	0xd280011e
  201160:	cb1e0339 	.word	0xcb1e0339
  201164:	d280001e 	.word	0xd280001e
  201168:	f900033e 	.word	0xf900033e
  20116c:	d280001e 	.word	0xd280001e
  201170:	f900037e 	.word	0xf900037e
  201174:	9100237b 	.word	0x9100237b
  201178:	d280001e 	.word	0xd280001e
  20117c:	f900037e 	.word	0xf900037e
  201180:	9100237b 	.word	0x9100237b
  201184:	d280001e 	.word	0xd280001e
  201188:	f900037e 	.word	0xf900037e
  20118c:	9100237b 	.word	0x9100237b
  201190:	d280001e 	.word	0xd280001e
  201194:	f900037e 	.word	0xf900037e
  201198:	9100237b 	.word	0x9100237b
  20119c:	d280001e 	.word	0xd280001e
  2011a0:	f900037e 	.word	0xf900037e
  2011a4:	9100237b 	.word	0x9100237b
  2011a8:	d280001e 	.word	0xd280001e
  2011ac:	f900037e 	.word	0xf900037e
  2011b0:	9100237b 	.word	0x9100237b
  2011b4:	d280001e 	.word	0xd280001e
  2011b8:	f900037e 	.word	0xf900037e
  2011bc:	9100237b 	.word	0x9100237b
  2011c0:	d280001e 	.word	0xd280001e
  2011c4:	f900037e 	.word	0xf900037e
  2011c8:	9100237b 	.word	0x9100237b
  2011cc:	d280001e 	.word	0xd280001e
  2011d0:	f900037e 	.word	0xf900037e
  2011d4:	9100237b 	.word	0x9100237b
  2011d8:	d280001e 	.word	0xd280001e
  2011dc:	f900037e 	.word	0xf900037e
  2011e0:	9100237b 	.word	0x9100237b
  2011e4:	d280001e 	.word	0xd280001e
  2011e8:	f900037e 	.word	0xf900037e
  2011ec:	9100237b 	.word	0x9100237b
  2011f0:	d280001e 	.word	0xd280001e
  2011f4:	f900037e 	.word	0xf900037e
  2011f8:	9100237b 	.word	0x9100237b
  2011fc:	d280001e 	.word	0xd280001e
  201200:	f900037e 	.word	0xf900037e
  201204:	9100237b 	.word	0x9100237b
  201208:	d280001e 	.word	0xd280001e
  20120c:	f900037e 	.word	0xf900037e
  201210:	9100237b 	.word	0x9100237b
  201214:	d280001e 	.word	0xd280001e
  201218:	f900037e 	.word	0xf900037e
  20121c:	9100237b 	.word	0x9100237b
  201220:	d280001e 	.word	0xd280001e
  201224:	f900037e 	.word	0xf900037e
  201228:	9100237b 	.word	0x9100237b
  20122c:	d280001e 	.word	0xd280001e
  201230:	f900037e 	.word	0xf900037e
  201234:	9100237b 	.word	0x9100237b
  201238:	d280001e 	.word	0xd280001e
  20123c:	f900037e 	.word	0xf900037e
  201240:	9100237b 	.word	0x9100237b
  201244:	d280001e 	.word	0xd280001e
  201248:	f900037e 	.word	0xf900037e
  20124c:	9100237b 	.word	0x9100237b
  201250:	d280001e 	.word	0xd280001e
  201254:	f900037e 	.word	0xf900037e
  201258:	9100237b 	.word	0x9100237b
  20125c:	d280001e 	.word	0xd280001e
  201260:	f900037e 	.word	0xf900037e
  201264:	9100237b 	.word	0x9100237b
  201268:	d280001e 	.word	0xd280001e
  20126c:	f900037e 	.word	0xf900037e
  201270:	9100237b 	.word	0x9100237b
  201274:	d280001e 	.word	0xd280001e
  201278:	f900037e 	.word	0xf900037e
  20127c:	9100237b 	.word	0x9100237b
  201280:	d280001e 	.word	0xd280001e
  201284:	f900037e 	.word	0xf900037e
  201288:	9100237b 	.word	0x9100237b
  20128c:	d280001e 	.word	0xd280001e
  201290:	f900037e 	.word	0xf900037e
  201294:	9100237b 	.word	0x9100237b
  201298:	d280001e 	.word	0xd280001e
  20129c:	f900037e 	.word	0xf900037e
  2012a0:	9100237b 	.word	0x9100237b
  2012a4:	d280001e 	.word	0xd280001e
  2012a8:	f900037e 	.word	0xf900037e
  2012ac:	9100237b 	.word	0x9100237b
  2012b0:	d280001e 	.word	0xd280001e
  2012b4:	f900037e 	.word	0xf900037e
  2012b8:	9100237b 	.word	0x9100237b
  2012bc:	d280001e 	.word	0xd280001e
  2012c0:	f900037e 	.word	0xf900037e
  2012c4:	9100237b 	.word	0x9100237b
  2012c8:	d280001e 	.word	0xd280001e
  2012cc:	f900037e 	.word	0xf900037e
  2012d0:	9100237b 	.word	0x9100237b
  2012d4:	d280001e 	.word	0xd280001e
  2012d8:	f900037e 	.word	0xf900037e
  2012dc:	9100237b 	.word	0x9100237b
  2012e0:	d280001e 	.word	0xd280001e
  2012e4:	f900037e 	.word	0xf900037e
  2012e8:	9100237b 	.word	0x9100237b
  2012ec:	f9000366 	.word	0xf9000366
  2012f0:	9100237b 	.word	0x9100237b
  2012f4:	f9000363 	.word	0xf9000363
  2012f8:	9100237b 	.word	0x9100237b
  2012fc:	f9000360 	.word	0xf9000360
  201300:	9100237b 	.word	0x9100237b
  201304:	f9000367 	.word	0xf9000367
  201308:	9100237b 	.word	0x9100237b
  20130c:	d280001e 	.word	0xd280001e
  201310:	f900037e 	.word	0xf900037e
  201314:	9100237b 	.word	0x9100237b
  201318:	f9000362 	.word	0xf9000362
  20131c:	9100237b 	.word	0x9100237b
  201320:	d280001e 	.word	0xd280001e
  201324:	f900037e 	.word	0xf900037e
  201328:	9100237b 	.word	0x9100237b
  20132c:	f900037c 	.word	0xf900037c
  201330:	9100237b 	.word	0x9100237b
  201334:	d280001e 	.word	0xd280001e
  201338:	f900037e 	.word	0xf900037e
  20133c:	9100237b 	.word	0x9100237b
  201340:	d280001e 	.word	0xd280001e
  201344:	f900037e 	.word	0xf900037e
  201348:	9100237b 	.word	0x9100237b
  20134c:	d280001e 	.word	0xd280001e
  201350:	f900037e 	.word	0xf900037e
  201354:	9100237b 	.word	0x9100237b
  201358:	f9000361 	.word	0xf9000361
  20135c:	9100237b 	.word	0x9100237b
  201360:	f9000361 	.word	0xf9000361
  201364:	9100237b 	.word	0x9100237b
  201368:	f9000365 	.word	0xf9000365
  20136c:	9100237b 	.word	0x9100237b
  201370:	f9000361 	.word	0xf9000361
  201374:	9100237b 	.word	0x9100237b
  201378:	f900037c 	.word	0xf900037c
  20137c:	9100237b 	.word	0x9100237b
  201380:	1000005e 	.word	0x1000005e
  201384:	1400010d 	.word	0x1400010d

0000000000201388 <cml__Halt0_1>:
  201388:	d2800000 	mov	x0, #0x0                   	// #0
  20138c:	17ffff41 	b	201090 <cake_exit>

0000000000201390 <cml__Halt2_2>:
  201390:	d2800040 	mov	x0, #0x2                   	// #2
  201394:	17ffff3f 	b	201090 <cake_exit>

0000000000201398 <cml__GC_3>:
  201398:	f81d0360 	stur	x0, [x27, #-48]
  20139c:	f81f837e 	stur	x30, [x27, #-8]
  2013a0:	d2800000 	mov	x0, #0x0                   	// #0
  2013a4:	aa000001 	orr	x1, x0, x0
  2013a8:	f85e0362 	ldur	x2, [x27, #-32]
  2013ac:	aa000003 	orr	x3, x0, x0
  2013b0:	f85c0365 	ldur	x5, [x27, #-64]
  2013b4:	aa000006 	orr	x6, x0, x0
  2013b8:	aa000008 	orr	x8, x0, x0
  2013bc:	f24000bf 	tst	x5, #0x1
  2013c0:	54000500 	b.eq	201460 <cml__GC_3+0xc8>  // b.none
  2013c4:	aa0500be 	orr	x30, x5, x5
  2013c8:	aa1c0380 	orr	x0, x28, x28
  2013cc:	d34cffde 	lsr	x30, x30, #12
  2013d0:	d37df3de 	lsl	x30, x30, #3
  2013d4:	8b0003de 	add	x30, x30, x0
  2013d8:	f94003c0 	ldr	x0, [x30]
  2013dc:	f240041f 	tst	x0, #0x3
  2013e0:	54000360 	b.eq	20144c <cml__GC_3+0xb4>  // b.none
  2013e4:	d360fc00 	lsr	x0, x0, #32
  2013e8:	91000400 	add	x0, x0, #0x1
  2013ec:	aa000006 	orr	x6, x0, x0
  2013f0:	aa1e03c1 	orr	x1, x30, x30
  2013f4:	aa00001e 	orr	x30, x0, x0
  2013f8:	f10003df 	cmp	x30, #0x0
  2013fc:	540000e0 	b.eq	201418 <cml__GC_3+0x80>  // b.none
  201400:	f9400020 	ldr	x0, [x1]
  201404:	91002021 	add	x1, x1, #0x8
  201408:	d10007de 	sub	x30, x30, #0x1
  20140c:	f9000040 	str	x0, [x2]
  201410:	91002042 	add	x2, x2, #0x8
  201414:	17fffff9 	b	2013f8 <cml__GC_3+0x60>
  201418:	aa0600de 	orr	x30, x6, x6
  20141c:	d37df3de 	lsl	x30, x30, #3
  201420:	cb1e0021 	sub	x1, x1, x30
  201424:	aa03007e 	orr	x30, x3, x3
  201428:	d37ef7de 	lsl	x30, x30, #2
  20142c:	f900003e 	str	x30, [x1]
  201430:	aa030060 	orr	x0, x3, x3
  201434:	d34920a5 	lsl	x5, x5, #55
  201438:	d377fca5 	lsr	x5, x5, #55
  20143c:	d374cc00 	lsl	x0, x0, #12
  201440:	aa0000a5 	orr	x5, x5, x0
  201444:	8b060063 	add	x3, x3, x6
  201448:	14000006 	b	201460 <cml__GC_3+0xc8>
  20144c:	d342fc00 	lsr	x0, x0, #2
  201450:	d374cc00 	lsl	x0, x0, #12
  201454:	d34920a5 	lsl	x5, x5, #55
  201458:	d377fca5 	lsr	x5, x5, #55
  20145c:	aa0000a5 	orr	x5, x5, x0
  201460:	f81c0365 	stur	x5, [x27, #-64]
  201464:	aa0500a7 	orr	x7, x5, x5
  201468:	d34cfce7 	lsr	x7, x7, #12
  20146c:	d37df0e7 	lsl	x7, x7, #3
  201470:	f85e0369 	ldur	x9, [x27, #-32]
  201474:	8b0900e7 	add	x7, x7, x9
  201478:	f81b8367 	stur	x7, [x27, #-72]
  20147c:	d2800007 	mov	x7, #0x0                   	// #0
  201480:	aa080109 	orr	x9, x8, x8
  201484:	8b190129 	add	x9, x9, x25
  201488:	f9400129 	ldr	x9, [x9]
  20148c:	aa0700e8 	orr	x8, x7, x7
  201490:	ea09013f 	tst	x9, x9
  201494:	540009c0 	b.eq	2015cc <cml__GC_3+0x234>  // b.none
  201498:	aa09013e 	orr	x30, x9, x9
  20149c:	d1000529 	sub	x9, x9, #0x1
  2014a0:	91002108 	add	x8, x8, #0x8
  2014a4:	ea1e03df 	tst	x30, x30
  2014a8:	540008a0 	b.eq	2015bc <cml__GC_3+0x224>  // b.none
  2014ac:	f85a8367 	ldur	x7, [x27, #-88]
  2014b0:	8b0900e7 	add	x7, x7, x9
  2014b4:	d37df0e7 	lsl	x7, x7, #3
  2014b8:	f94000e7 	ldr	x7, [x7]
  2014bc:	f10008ff 	cmp	x7, #0x2
  2014c0:	54000703 	b.cc	2015a0 <cml__GC_3+0x208>  // b.lo, b.ul, b.last
  2014c4:	f24000ff 	tst	x7, #0x1
  2014c8:	54000660 	b.eq	201594 <cml__GC_3+0x1fc>  // b.none
  2014cc:	aa080105 	orr	x5, x8, x8
  2014d0:	8b1900a5 	add	x5, x5, x25
  2014d4:	f94000a5 	ldr	x5, [x5]
  2014d8:	d341fce7 	lsr	x7, x7, #1
  2014dc:	f24000bf 	tst	x5, #0x1
  2014e0:	54000500 	b.eq	201580 <cml__GC_3+0x1e8>  // b.none
  2014e4:	aa0500be 	orr	x30, x5, x5
  2014e8:	aa1c0380 	orr	x0, x28, x28
  2014ec:	d34cffde 	lsr	x30, x30, #12
  2014f0:	d37df3de 	lsl	x30, x30, #3
  2014f4:	8b0003de 	add	x30, x30, x0
  2014f8:	f94003c0 	ldr	x0, [x30]
  2014fc:	f240041f 	tst	x0, #0x3
  201500:	54000360 	b.eq	20156c <cml__GC_3+0x1d4>  // b.none
  201504:	d360fc00 	lsr	x0, x0, #32
  201508:	91000400 	add	x0, x0, #0x1
  20150c:	aa000006 	orr	x6, x0, x0
  201510:	aa1e03c1 	orr	x1, x30, x30
  201514:	aa00001e 	orr	x30, x0, x0
  201518:	f10003df 	cmp	x30, #0x0
  20151c:	540000e0 	b.eq	201538 <cml__GC_3+0x1a0>  // b.none
  201520:	f9400020 	ldr	x0, [x1]
  201524:	91002021 	add	x1, x1, #0x8
  201528:	d10007de 	sub	x30, x30, #0x1
  20152c:	f9000040 	str	x0, [x2]
  201530:	91002042 	add	x2, x2, #0x8
  201534:	17fffff9 	b	201518 <cml__GC_3+0x180>
  201538:	aa0600de 	orr	x30, x6, x6
  20153c:	d37df3de 	lsl	x30, x30, #3
  201540:	cb1e0021 	sub	x1, x1, x30
  201544:	aa03007e 	orr	x30, x3, x3
  201548:	d37ef7de 	lsl	x30, x30, #2
  20154c:	f900003e 	str	x30, [x1]
  201550:	aa030060 	orr	x0, x3, x3
  201554:	d34920a5 	lsl	x5, x5, #55
  201558:	d377fca5 	lsr	x5, x5, #55
  20155c:	d374cc00 	lsl	x0, x0, #12
  201560:	aa0000a5 	orr	x5, x5, x0
  201564:	8b060063 	add	x3, x3, x6
  201568:	14000006 	b	201580 <cml__GC_3+0x1e8>
  20156c:	d342fc00 	lsr	x0, x0, #2
  201570:	d374cc00 	lsl	x0, x0, #12
  201574:	d34920a5 	lsl	x5, x5, #55
  201578:	d377fca5 	lsr	x5, x5, #55
  20157c:	aa0000a5 	orr	x5, x5, x0
  201580:	8b080339 	add	x25, x25, x8
  201584:	f9000325 	str	x5, [x25]
  201588:	cb080339 	sub	x25, x25, x8
  20158c:	91002108 	add	x8, x8, #0x8
  201590:	14000003 	b	20159c <cml__GC_3+0x204>
  201594:	d341fce7 	lsr	x7, x7, #1
  201598:	91002108 	add	x8, x8, #0x8
  20159c:	17ffffc8 	b	2014bc <cml__GC_3+0x124>
  2015a0:	f85a837e 	ldur	x30, [x27, #-88]
  2015a4:	8b0903de 	add	x30, x30, x9
  2015a8:	d37df3de 	lsl	x30, x30, #3
  2015ac:	f94003de 	ldr	x30, [x30]
  2015b0:	91000529 	add	x9, x9, #0x1
  2015b4:	d37fffde 	lsr	x30, x30, #63
  2015b8:	17ffffbb 	b	2014a4 <cml__GC_3+0x10c>
  2015bc:	aa080109 	orr	x9, x8, x8
  2015c0:	8b190129 	add	x9, x9, x25
  2015c4:	f9400129 	ldr	x9, [x9]
  2015c8:	17ffffb2 	b	201490 <cml__GC_3+0xf8>
  2015cc:	f85e0368 	ldur	x8, [x27, #-32]
  2015d0:	eb08005f 	cmp	x2, x8
  2015d4:	54000780 	b.eq	2016c4 <cml__GC_3+0x32c>  // b.none
  2015d8:	f9400107 	ldr	x7, [x8]
  2015dc:	f27e00ff 	tst	x7, #0x4
  2015e0:	540000c0 	b.eq	2015f8 <cml__GC_3+0x260>  // b.none
  2015e4:	d360fce7 	lsr	x7, x7, #32
  2015e8:	910004e7 	add	x7, x7, #0x1
  2015ec:	d37df0e7 	lsl	x7, x7, #3
  2015f0:	8b070108 	add	x8, x8, x7
  2015f4:	14000033 	b	2016c0 <cml__GC_3+0x328>
  2015f8:	d360fce7 	lsr	x7, x7, #32
  2015fc:	91002108 	add	x8, x8, #0x8
  201600:	f10000ff 	cmp	x7, #0x0
  201604:	540005e0 	b.eq	2016c0 <cml__GC_3+0x328>  // b.none
  201608:	f9400105 	ldr	x5, [x8]
  20160c:	d10004e7 	sub	x7, x7, #0x1
  201610:	f24000bf 	tst	x5, #0x1
  201614:	54000500 	b.eq	2016b4 <cml__GC_3+0x31c>  // b.none
  201618:	aa0500be 	orr	x30, x5, x5
  20161c:	aa1c0380 	orr	x0, x28, x28
  201620:	d34cffde 	lsr	x30, x30, #12
  201624:	d37df3de 	lsl	x30, x30, #3
  201628:	8b0003de 	add	x30, x30, x0
  20162c:	f94003c0 	ldr	x0, [x30]
  201630:	f240041f 	tst	x0, #0x3
  201634:	54000360 	b.eq	2016a0 <cml__GC_3+0x308>  // b.none
  201638:	d360fc00 	lsr	x0, x0, #32
  20163c:	91000400 	add	x0, x0, #0x1
  201640:	aa000006 	orr	x6, x0, x0
  201644:	aa1e03c1 	orr	x1, x30, x30
  201648:	aa00001e 	orr	x30, x0, x0
  20164c:	f10003df 	cmp	x30, #0x0
  201650:	540000e0 	b.eq	20166c <cml__GC_3+0x2d4>  // b.none
  201654:	f9400020 	ldr	x0, [x1]
  201658:	91002021 	add	x1, x1, #0x8
  20165c:	d10007de 	sub	x30, x30, #0x1
  201660:	f9000040 	str	x0, [x2]
  201664:	91002042 	add	x2, x2, #0x8
  201668:	17fffff9 	b	20164c <cml__GC_3+0x2b4>
  20166c:	aa0600de 	orr	x30, x6, x6
  201670:	d37df3de 	lsl	x30, x30, #3
  201674:	cb1e0021 	sub	x1, x1, x30
  201678:	aa03007e 	orr	x30, x3, x3
  20167c:	d37ef7de 	lsl	x30, x30, #2
  201680:	f900003e 	str	x30, [x1]
  201684:	aa030060 	orr	x0, x3, x3
  201688:	d34920a5 	lsl	x5, x5, #55
  20168c:	d377fca5 	lsr	x5, x5, #55
  201690:	d374cc00 	lsl	x0, x0, #12
  201694:	aa0000a5 	orr	x5, x5, x0
  201698:	8b060063 	add	x3, x3, x6
  20169c:	14000006 	b	2016b4 <cml__GC_3+0x31c>
  2016a0:	d342fc00 	lsr	x0, x0, #2
  2016a4:	d374cc00 	lsl	x0, x0, #12
  2016a8:	d34920a5 	lsl	x5, x5, #55
  2016ac:	d377fca5 	lsr	x5, x5, #55
  2016b0:	aa0000a5 	orr	x5, x5, x0
  2016b4:	f9000105 	str	x5, [x8]
  2016b8:	91002108 	add	x8, x8, #0x8
  2016bc:	17ffffd1 	b	201600 <cml__GC_3+0x268>
  2016c0:	17ffffc4 	b	2015d0 <cml__GC_3+0x238>
  2016c4:	aa1c039e 	orr	x30, x28, x28
  2016c8:	f85e0360 	ldur	x0, [x27, #-32]
  2016cc:	f85e8361 	ldur	x1, [x27, #-24]
  2016d0:	8b000021 	add	x1, x1, x0
  2016d4:	aa00001c 	orr	x28, x0, x0
  2016d8:	f81e037e 	stur	x30, [x27, #-32]
  2016dc:	f85f837e 	ldur	x30, [x27, #-8]
  2016e0:	f81f8368 	stur	x8, [x27, #-8]
  2016e4:	f81f0361 	stur	x1, [x27, #-16]
  2016e8:	f81d8361 	stur	x1, [x27, #-40]
  2016ec:	f85d0360 	ldur	x0, [x27, #-48]
  2016f0:	cb080021 	sub	x1, x1, x8
  2016f4:	eb00003f 	cmp	x1, x0
  2016f8:	54000062 	b.cs	201704 <cml__GC_3+0x36c>  // b.hs, b.nlast
  2016fc:	d2800020 	mov	x0, #0x1                   	// #1
  201700:	17fffe64 	b	201090 <cake_exit>
  201704:	d61f03c0 	br	x30

0000000000201708 <cml__Raise_4>:
  201708:	f85c8378 	ldur	x24, [x27, #-56]
  20170c:	d37df318 	lsl	x24, x24, #3
  201710:	aa1b0379 	orr	x25, x27, x27
  201714:	8b180339 	add	x25, x25, x24
  201718:	f9400b38 	ldr	x24, [x25, #16]
  20171c:	f81c8378 	stur	x24, [x27, #-56]
  201720:	f9400738 	ldr	x24, [x25, #8]
  201724:	91006339 	add	x25, x25, #0x18
  201728:	d61f0300 	br	x24

000000000020172c <cml__StoreConsts_5>:
  20172c:	f85a837d 	ldur	x29, [x27, #-88]
  201730:	8b0003bd 	add	x29, x29, x0
  201734:	d37df3bd 	lsl	x29, x29, #3
  201738:	f94003a0 	ldr	x0, [x29]
  20173c:	910023bd 	add	x29, x29, #0x8
  201740:	f100001f 	cmp	x0, #0x0
  201744:	540001ea 	b.ge	201780 <cml__StoreConsts_5+0x54>  // b.tcont
  201748:	f100041f 	cmp	x0, #0x1
  20174c:	54000140 	b.eq	201774 <cml__StoreConsts_5+0x48>  // b.none
  201750:	f94003b8 	ldr	x24, [x29]
  201754:	910023bd 	add	x29, x29, #0x8
  201758:	f240001f 	tst	x0, #0x1
  20175c:	54000040 	b.eq	201764 <cml__StoreConsts_5+0x38>  // b.none
  201760:	8b020318 	add	x24, x24, x2
  201764:	d341fc00 	lsr	x0, x0, #1
  201768:	f9000038 	str	x24, [x1]
  20176c:	91002021 	add	x1, x1, #0x8
  201770:	17fffff6 	b	201748 <cml__StoreConsts_5+0x1c>
  201774:	f94003a0 	ldr	x0, [x29]
  201778:	910023bd 	add	x29, x29, #0x8
  20177c:	17fffff1 	b	201740 <cml__StoreConsts_5+0x14>
  201780:	f100041f 	cmp	x0, #0x1
  201784:	54000140 	b.eq	2017ac <cml__StoreConsts_5+0x80>  // b.none
  201788:	f94003b8 	ldr	x24, [x29]
  20178c:	910023bd 	add	x29, x29, #0x8
  201790:	f240001f 	tst	x0, #0x1
  201794:	54000040 	b.eq	20179c <cml__StoreConsts_5+0x70>  // b.none
  201798:	8b020318 	add	x24, x24, x2
  20179c:	d341fc00 	lsr	x0, x0, #1
  2017a0:	f9000038 	str	x24, [x1]
  2017a4:	91002021 	add	x1, x1, #0x8
  2017a8:	17fffff6 	b	201780 <cml__StoreConsts_5+0x54>
  2017ac:	aa000018 	orr	x24, x0, x0
  2017b0:	aa00001d 	orr	x29, x0, x0
  2017b4:	d61f03c0 	br	x30

00000000002017b8 <cml_generated_main_6>:
  2017b8:	f85e8360 	ldur	x0, [x27, #-24]
  2017bc:	d37ff800 	lsl	x0, x0, #1
  2017c0:	8b1c0000 	add	x0, x0, x28
  2017c4:	d1002001 	sub	x1, x0, #0x8
  2017c8:	aa1c0380 	orr	x0, x28, x28
  2017cc:	f9400400 	ldr	x0, [x0, #8]
  2017d0:	f9000020 	str	x0, [x1]
  2017d4:	f85e8360 	ldur	x0, [x27, #-24]
  2017d8:	d37ff800 	lsl	x0, x0, #1
  2017dc:	8b1c0000 	add	x0, x0, x28
  2017e0:	d1004001 	sub	x1, x0, #0x10
  2017e4:	aa1c0380 	orr	x0, x28, x28
  2017e8:	f9400800 	ldr	x0, [x0, #16]
  2017ec:	f9000020 	str	x0, [x1]
  2017f0:	f85e8360 	ldur	x0, [x27, #-24]
  2017f4:	d37ff800 	lsl	x0, x0, #1
  2017f8:	8b1c0000 	add	x0, x0, x28
  2017fc:	d1006001 	sub	x1, x0, #0x18
  201800:	aa1c0380 	orr	x0, x28, x28
  201804:	f9400c00 	ldr	x0, [x0, #24]
  201808:	f9000020 	str	x0, [x1]
  20180c:	f85e8360 	ldur	x0, [x27, #-24]
  201810:	d37ff800 	lsl	x0, x0, #1
  201814:	8b1c0000 	add	x0, x0, x28
  201818:	d1008001 	sub	x1, x0, #0x20
  20181c:	aa1c0380 	orr	x0, x28, x28
  201820:	f9400000 	ldr	x0, [x0]
  201824:	f9000020 	str	x0, [x1]
  201828:	f85e8360 	ldur	x0, [x27, #-24]
  20182c:	d37ff800 	lsl	x0, x0, #1
  201830:	8b1c0000 	add	x0, x0, x28
  201834:	d100a001 	sub	x1, x0, #0x28
  201838:	aa1c0380 	orr	x0, x28, x28
  20183c:	f9401000 	ldr	x0, [x0, #32]
  201840:	f9000020 	str	x0, [x1]
  201844:	f85e8360 	ldur	x0, [x27, #-24]
  201848:	d37ff800 	lsl	x0, x0, #1
  20184c:	8b1c0000 	add	x0, x0, x28
  201850:	d100c001 	sub	x1, x0, #0x30
  201854:	aa1c0380 	orr	x0, x28, x28
  201858:	f9401400 	ldr	x0, [x0, #40]
  20185c:	f9000020 	str	x0, [x1]
  201860:	f85e8360 	ldur	x0, [x27, #-24]
  201864:	d37ff800 	lsl	x0, x0, #1
  201868:	8b1c0000 	add	x0, x0, x28
  20186c:	d100e001 	sub	x1, x0, #0x38
  201870:	aa1c0380 	orr	x0, x28, x28
  201874:	f9401800 	ldr	x0, [x0, #48]
  201878:	f9000020 	str	x0, [x1]
  20187c:	f85e8360 	ldur	x0, [x27, #-24]
  201880:	d37ff800 	lsl	x0, x0, #1
  201884:	8b1c0000 	add	x0, x0, x28
  201888:	d1010001 	sub	x1, x0, #0x40
  20188c:	aa1c0380 	orr	x0, x28, x28
  201890:	f9401c00 	ldr	x0, [x0, #56]
  201894:	f9000020 	str	x0, [x1]
  201898:	f85e8360 	ldur	x0, [x27, #-24]
  20189c:	d37ff800 	lsl	x0, x0, #1
  2018a0:	8b1c0000 	add	x0, x0, x28
  2018a4:	d1012001 	sub	x1, x0, #0x48
  2018a8:	aa1c0380 	orr	x0, x28, x28
  2018ac:	f9402000 	ldr	x0, [x0, #64]
  2018b0:	f9000020 	str	x0, [x1]
  2018b4:	f85e8360 	ldur	x0, [x27, #-24]
  2018b8:	d37ff800 	lsl	x0, x0, #1
  2018bc:	8b1c0000 	add	x0, x0, x28
  2018c0:	d1014001 	sub	x1, x0, #0x50
  2018c4:	aa1c0380 	orr	x0, x28, x28
  2018c8:	f9402400 	ldr	x0, [x0, #72]
  2018cc:	f9000020 	str	x0, [x1]
  2018d0:	f85e8360 	ldur	x0, [x27, #-24]
  2018d4:	d37ff800 	lsl	x0, x0, #1
  2018d8:	8b1c0000 	add	x0, x0, x28
  2018dc:	d1016001 	sub	x1, x0, #0x58
  2018e0:	aa1c0380 	orr	x0, x28, x28
  2018e4:	f9403000 	ldr	x0, [x0, #96]
  2018e8:	f9000020 	str	x0, [x1]
  2018ec:	f85e8360 	ldur	x0, [x27, #-24]
  2018f0:	d37ff800 	lsl	x0, x0, #1
  2018f4:	8b1c0000 	add	x0, x0, x28
  2018f8:	d1018001 	sub	x1, x0, #0x60
  2018fc:	aa1c0380 	orr	x0, x28, x28
  201900:	f9404000 	ldr	x0, [x0, #128]
  201904:	f9000020 	str	x0, [x1]
  201908:	f85e8360 	ldur	x0, [x27, #-24]
  20190c:	d37ff800 	lsl	x0, x0, #1
  201910:	8b1c0000 	add	x0, x0, x28
  201914:	d101a001 	sub	x1, x0, #0x68
  201918:	aa1c0380 	orr	x0, x28, x28
  20191c:	f9403400 	ldr	x0, [x0, #104]
  201920:	f9000020 	str	x0, [x1]
  201924:	f85e8360 	ldur	x0, [x27, #-24]
  201928:	d37ff800 	lsl	x0, x0, #1
  20192c:	8b1c0000 	add	x0, x0, x28
  201930:	d101c001 	sub	x1, x0, #0x70
  201934:	aa1c0380 	orr	x0, x28, x28
  201938:	f9404400 	ldr	x0, [x0, #136]
  20193c:	f9000020 	str	x0, [x1]
  201940:	14000001 	b	201944 <cml_main_7>

0000000000201944 <cml_main_7>:
  201944:	d1004339 	sub	x25, x25, #0x10
  201948:	eb1b033f 	cmp	x25, x27
  20194c:	54000062 	b.cs	201958 <cml_main_7+0x14>  // b.hs, b.nlast
  201950:	d2800040 	mov	x0, #0x2                   	// #2
  201954:	17fffdcf 	b	201090 <cake_exit>
  201958:	f900073e 	str	x30, [x25, #8]
  20195c:	d2800058 	mov	x24, #0x2                   	// #2
  201960:	f9000338 	str	x24, [x25]
  201964:	d1006339 	sub	x25, x25, #0x18
  201968:	eb1b033f 	cmp	x25, x27
  20196c:	54000062 	b.cs	201978 <cml_main_7+0x34>  // b.hs, b.nlast
  201970:	d2800040 	mov	x0, #0x2                   	// #2
  201974:	17fffdc7 	b	201090 <cake_exit>
  201978:	d2800038 	mov	x24, #0x1                   	// #1
  20197c:	f9000338 	str	x24, [x25]
  201980:	100001d8 	adr	x24, 2019b8 <cml_main_7+0x74>
  201984:	f9000738 	str	x24, [x25, #8]
  201988:	f85c8378 	ldur	x24, [x27, #-56]
  20198c:	f9000b38 	str	x24, [x25, #16]
  201990:	aa190338 	orr	x24, x25, x25
  201994:	cb1b0318 	sub	x24, x24, x27
  201998:	d343ff18 	lsr	x24, x24, #3
  20199c:	f81c8378 	stur	x24, [x27, #-56]
  2019a0:	1000005e 	adr	x30, 2019a8 <cml_main_7+0x64>
  2019a4:	14000023 	b	201a30 <cml_rx_provide_8>
  2019a8:	f9400b38 	ldr	x24, [x25, #16]
  2019ac:	f81c8378 	stur	x24, [x27, #-56]
  2019b0:	91006339 	add	x25, x25, #0x18
  2019b4:	14000002 	b	2019bc <cml_main_7+0x78>
  2019b8:	17ffff54 	b	201708 <cml__Raise_4>
  2019bc:	d2800078 	mov	x24, #0x3                   	// #3
  2019c0:	f9000338 	str	x24, [x25]
  2019c4:	d1006339 	sub	x25, x25, #0x18
  2019c8:	eb1b033f 	cmp	x25, x27
  2019cc:	54000062 	b.cs	2019d8 <cml_main_7+0x94>  // b.hs, b.nlast
  2019d0:	d2800040 	mov	x0, #0x2                   	// #2
  2019d4:	17fffdaf 	b	201090 <cake_exit>
  2019d8:	d2800038 	mov	x24, #0x1                   	// #1
  2019dc:	f9000338 	str	x24, [x25]
  2019e0:	100001f8 	adr	x24, 201a1c <cml_main_7+0xd8>
  2019e4:	f9000738 	str	x24, [x25, #8]
  2019e8:	f85c8378 	ldur	x24, [x27, #-56]
  2019ec:	f9000b38 	str	x24, [x25, #16]
  2019f0:	aa190338 	orr	x24, x25, x25
  2019f4:	cb1b0318 	sub	x24, x24, x27
  2019f8:	d343ff18 	lsr	x24, x24, #3
  2019fc:	f81c8378 	stur	x24, [x27, #-56]
  201a00:	1000005e 	adr	x30, 201a08 <cml_main_7+0xc4>
  201a04:	140000ab 	b	201cb0 <cml_tx_provide_14>
  201a08:	f9400b38 	ldr	x24, [x25, #16]
  201a0c:	f81c8378 	stur	x24, [x27, #-56]
  201a10:	91006339 	add	x25, x25, #0x18
  201a14:	f940073e 	ldr	x30, [x25, #8]
  201a18:	14000003 	b	201a24 <cml_main_7+0xe0>
  201a1c:	f940073e 	ldr	x30, [x25, #8]
  201a20:	17ffff3a 	b	201708 <cml__Raise_4>
  201a24:	d2800000 	mov	x0, #0x0                   	// #0
  201a28:	91004339 	add	x25, x25, #0x10
  201a2c:	d61f03c0 	br	x30

0000000000201a30 <cml_rx_provide_8>:
  201a30:	f85e8360 	ldur	x0, [x27, #-24]
  201a34:	d37ff800 	lsl	x0, x0, #1
  201a38:	8b1c0000 	add	x0, x0, x28
  201a3c:	f85d8003 	ldur	x3, [x0, #-40]
  201a40:	f85e8360 	ldur	x0, [x27, #-24]
  201a44:	d37ff800 	lsl	x0, x0, #1
  201a48:	8b1c0000 	add	x0, x0, x28
  201a4c:	f85c8000 	ldur	x0, [x0, #-56]
  201a50:	f85e8361 	ldur	x1, [x27, #-24]
  201a54:	d37ff821 	lsl	x1, x1, #1
  201a58:	8b1c0021 	add	x1, x1, x28
  201a5c:	f85a8022 	ldur	x2, [x1, #-88]
  201a60:	d2800021 	mov	x1, #0x1                   	// #1
  201a64:	14000001 	b	201a68 <cml_NOTFOUND_9>

0000000000201a68 <cml_NOTFOUND_9>:
  201a68:	f100003f 	cmp	x1, #0x0
  201a6c:	54000080 	b.eq	201a7c <cml_NOTFOUND_9+0x14>  // b.none
  201a70:	aa020041 	orr	x1, x2, x2
  201a74:	aa030062 	orr	x2, x3, x3
  201a78:	14000002 	b	201a80 <cml_NOTFOUND_10>
  201a7c:	1400008b 	b	201ca8 <cml_NOTFOUND_13>

0000000000201a80 <cml_NOTFOUND_10>:
  201a80:	d1010339 	sub	x25, x25, #0x40
  201a84:	eb1b033f 	cmp	x25, x27
  201a88:	54000062 	b.cs	201a94 <cml_NOTFOUND_10+0x14>  // b.hs, b.nlast
  201a8c:	d2800040 	mov	x0, #0x2                   	// #2
  201a90:	17fffd80 	b	201090 <cake_exit>
  201a94:	aa1c0383 	orr	x3, x28, x28
  201a98:	f9402863 	ldr	x3, [x3, #80]
  201a9c:	aa1c0385 	orr	x5, x28, x28
  201aa0:	f9402ca5 	ldr	x5, [x5, #88]
  201aa4:	cb050063 	sub	x3, x3, x5
  201aa8:	f85e8365 	ldur	x5, [x27, #-24]
  201aac:	d37ff8a5 	lsl	x5, x5, #1
  201ab0:	8b1c00a5 	add	x5, x5, x28
  201ab4:	f85a80a5 	ldur	x5, [x5, #-88]
  201ab8:	eb05007f 	cmp	x3, x5
  201abc:	54000061 	b.ne	201ac8 <cml_NOTFOUND_10+0x48>  // b.any
  201ac0:	91010339 	add	x25, x25, #0x40
  201ac4:	1400004e 	b	201bfc <cml_NOTFOUND_11>
  201ac8:	79400043 	ldrh	w3, [x2]
  201acc:	79400445 	ldrh	w5, [x2, #2]
  201ad0:	cb050063 	sub	x3, x3, x5
  201ad4:	d2800005 	mov	x5, #0x0                   	// #0
  201ad8:	eb05007f 	cmp	x3, x5
  201adc:	54000061 	b.ne	201ae8 <cml_NOTFOUND_10+0x68>  // b.any
  201ae0:	91010339 	add	x25, x25, #0x40
  201ae4:	14000046 	b	201bfc <cml_NOTFOUND_11>
  201ae8:	79400443 	ldrh	w3, [x2, #2]
  201aec:	aa000007 	orr	x7, x0, x0
  201af0:	d10004e0 	sub	x0, x7, #0x1
  201af4:	8a030000 	and	x0, x0, x3
  201af8:	d37cec00 	lsl	x0, x0, #4
  201afc:	8b020000 	add	x0, x0, x2
  201b00:	91002005 	add	x5, x0, #0x8
  201b04:	f94000a0 	ldr	x0, [x5]
  201b08:	b94008a5 	ldr	w5, [x5, #8]
  201b0c:	91000463 	add	x3, x3, #0x1
  201b10:	92403c63 	and	x3, x3, #0xffff
  201b14:	79000443 	strh	w3, [x2, #2]
  201b18:	aa1c0383 	orr	x3, x28, x28
  201b1c:	f9402866 	ldr	x6, [x3, #80]
  201b20:	d1000423 	sub	x3, x1, #0x1
  201b24:	8a060065 	and	x5, x3, x6
  201b28:	f85e8363 	ldur	x3, [x27, #-24]
  201b2c:	d37ff863 	lsl	x3, x3, #1
  201b30:	8b1c0063 	add	x3, x3, x28
  201b34:	f8598063 	ldur	x3, [x3, #-104]
  201b38:	d37df0a8 	lsl	x8, x5, #3
  201b3c:	8b030103 	add	x3, x8, x3
  201b40:	d2900008 	mov	x8, #0x8000                	// #32768
  201b44:	910004a5 	add	x5, x5, #0x1
  201b48:	f85e8369 	ldur	x9, [x27, #-24]
  201b4c:	d37ff929 	lsl	x9, x9, #1
  201b50:	8b1c0129 	add	x9, x9, x28
  201b54:	f85a8129 	ldur	x9, [x9, #-88]
  201b58:	eb0900bf 	cmp	x5, x9
  201b5c:	54000060 	b.eq	201b68 <cml_NOTFOUND_10+0xe8>  // b.none
  201b60:	f9001b28 	str	x8, [x25, #48]
  201b64:	14000003 	b	201b70 <cml_NOTFOUND_10+0xf0>
  201b68:	d2940005 	mov	x5, #0xa000                	// #40960
  201b6c:	f9001b25 	str	x5, [x25, #48]
  201b70:	b9000460 	str	w0, [x3, #4]
  201b74:	d280c000 	mov	x0, #0x600                 	// #1536
  201b78:	79000060 	strh	w0, [x3]
  201b7c:	d2800000 	mov	x0, #0x0                   	// #0
  201b80:	f9000f21 	str	x1, [x25, #24]
  201b84:	aa000001 	orr	x1, x0, x0
  201b88:	f9000722 	str	x2, [x25, #8]
  201b8c:	aa000002 	orr	x2, x0, x0
  201b90:	f9001f23 	str	x3, [x25, #56]
  201b94:	aa000003 	orr	x3, x0, x0
  201b98:	f900173e 	str	x30, [x25, #40]
  201b9c:	f9001326 	str	x6, [x25, #32]
  201ba0:	f9000b27 	str	x7, [x25, #16]
  201ba4:	1000005e 	adr	x30, 201bac <cml_NOTFOUND_10+0x12c>
  201ba8:	17fffd22 	b	201030 <cake_ffiTHREAD_MEMORY_RELEASE>
  201bac:	f9401f26 	ldr	x6, [x25, #56]
  201bb0:	f9401b25 	ldr	x5, [x25, #48]
  201bb4:	f940173e 	ldr	x30, [x25, #40]
  201bb8:	f9401323 	ldr	x3, [x25, #32]
  201bbc:	f9400f21 	ldr	x1, [x25, #24]
  201bc0:	f9400b20 	ldr	x0, [x25, #16]
  201bc4:	f9400722 	ldr	x2, [x25, #8]
  201bc8:	790004c5 	strh	w5, [x6, #2]
  201bcc:	d2800a05 	mov	x5, #0x50                  	// #80
  201bd0:	8b1c00a5 	add	x5, x5, x28
  201bd4:	91000463 	add	x3, x3, #0x1
  201bd8:	f90000a3 	str	x3, [x5]
  201bdc:	f85e8363 	ldur	x3, [x27, #-24]
  201be0:	d37ff863 	lsl	x3, x3, #1
  201be4:	8b1c0063 	add	x3, x3, x28
  201be8:	f85e0063 	ldur	x3, [x3, #-32]
  201bec:	91004063 	add	x3, x3, #0x10
  201bf0:	d2a02005 	mov	x5, #0x1000000             	// #16777216
  201bf4:	b9000065 	str	w5, [x3]
  201bf8:	17ffffa7 	b	201a94 <cml_NOTFOUND_10+0x14>

0000000000201bfc <cml_NOTFOUND_11>:
  201bfc:	aa1c0383 	orr	x3, x28, x28
  201c00:	f9402863 	ldr	x3, [x3, #80]
  201c04:	aa1c0385 	orr	x5, x28, x28
  201c08:	f9402ca5 	ldr	x5, [x5, #88]
  201c0c:	cb050063 	sub	x3, x3, x5
  201c10:	f85e8365 	ldur	x5, [x27, #-24]
  201c14:	d37ff8a5 	lsl	x5, x5, #1
  201c18:	8b1c00a5 	add	x5, x5, x28
  201c1c:	f85a80a5 	ldur	x5, [x5, #-88]
  201c20:	eb05007f 	cmp	x3, x5
  201c24:	540000a0 	b.eq	201c38 <cml_NOTFOUND_11+0x3c>  // b.none
  201c28:	d2800006 	mov	x6, #0x0                   	// #0
  201c2c:	aa0600c3 	orr	x3, x6, x6
  201c30:	b9000443 	str	w3, [x2, #4]
  201c34:	14000004 	b	201c44 <cml_NOTFOUND_11+0x48>
  201c38:	d2800026 	mov	x6, #0x1                   	// #1
  201c3c:	aa0600c3 	orr	x3, x6, x6
  201c40:	b9000443 	str	w3, [x2, #4]
  201c44:	d2800007 	mov	x7, #0x0                   	// #0
  201c48:	79400045 	ldrh	w5, [x2]
  201c4c:	aa020043 	orr	x3, x2, x2
  201c50:	79400462 	ldrh	w2, [x3, #2]
  201c54:	cb0200a2 	sub	x2, x5, x2
  201c58:	d2800005 	mov	x5, #0x0                   	// #0
  201c5c:	eb05005f 	cmp	x2, x5
  201c60:	54000060 	b.eq	201c6c <cml_NOTFOUND_11+0x70>  // b.none
  201c64:	d2800025 	mov	x5, #0x1                   	// #1
  201c68:	14000001 	b	201c6c <cml_NOTFOUND_11+0x70>
  201c6c:	d2800002 	mov	x2, #0x0                   	// #0
  201c70:	eb06005f 	cmp	x2, x6
  201c74:	54000060 	b.eq	201c80 <cml_NOTFOUND_11+0x84>  // b.none
  201c78:	d2800002 	mov	x2, #0x0                   	// #0
  201c7c:	14000002 	b	201c84 <cml_NOTFOUND_11+0x88>
  201c80:	d2800022 	mov	x2, #0x1                   	// #1
  201c84:	8a050042 	and	x2, x2, x5
  201c88:	f100005f 	cmp	x2, #0x0
  201c8c:	54000080 	b.eq	201c9c <cml_NOTFOUND_11+0xa0>  // b.none
  201c90:	d2800022 	mov	x2, #0x1                   	// #1
  201c94:	b9000462 	str	w2, [x3, #4]
  201c98:	d2800027 	mov	x7, #0x1                   	// #1
  201c9c:	aa010022 	orr	x2, x1, x1
  201ca0:	aa0700e1 	orr	x1, x7, x7
  201ca4:	17ffff71 	b	201a68 <cml_NOTFOUND_9>

0000000000201ca8 <cml_NOTFOUND_13>:
  201ca8:	d2800000 	mov	x0, #0x0                   	// #0
  201cac:	d61f03c0 	br	x30

0000000000201cb0 <cml_tx_provide_14>:
  201cb0:	f85e8360 	ldur	x0, [x27, #-24]
  201cb4:	d37ff800 	lsl	x0, x0, #1
  201cb8:	8b1c0000 	add	x0, x0, x28
  201cbc:	f85b8003 	ldur	x3, [x0, #-72]
  201cc0:	f85e8360 	ldur	x0, [x27, #-24]
  201cc4:	d37ff800 	lsl	x0, x0, #1
  201cc8:	8b1c0000 	add	x0, x0, x28
  201ccc:	f85b0000 	ldur	x0, [x0, #-80]
  201cd0:	f85e8361 	ldur	x1, [x27, #-24]
  201cd4:	d37ff821 	lsl	x1, x1, #1
  201cd8:	8b1c0021 	add	x1, x1, x28
  201cdc:	f85a0022 	ldur	x2, [x1, #-96]
  201ce0:	d2800021 	mov	x1, #0x1                   	// #1
  201ce4:	14000001 	b	201ce8 <cml_NOTFOUND_15>

0000000000201ce8 <cml_NOTFOUND_15>:
  201ce8:	f100003f 	cmp	x1, #0x0
  201cec:	54000080 	b.eq	201cfc <cml_NOTFOUND_15+0x14>  // b.none
  201cf0:	aa020041 	orr	x1, x2, x2
  201cf4:	aa030062 	orr	x2, x3, x3
  201cf8:	14000002 	b	201d00 <cml_NOTFOUND_16>
  201cfc:	140000aa 	b	201fa4 <cml_NOTFOUND_19>

0000000000201d00 <cml_NOTFOUND_16>:
  201d00:	d1010339 	sub	x25, x25, #0x40
  201d04:	eb1b033f 	cmp	x25, x27
  201d08:	54000062 	b.cs	201d14 <cml_NOTFOUND_16+0x14>  // b.hs, b.nlast
  201d0c:	d2800040 	mov	x0, #0x2                   	// #2
  201d10:	17fffce0 	b	201090 <cake_exit>
  201d14:	aa1c0383 	orr	x3, x28, x28
  201d18:	f9403863 	ldr	x3, [x3, #112]
  201d1c:	aa1c0385 	orr	x5, x28, x28
  201d20:	f9403ca5 	ldr	x5, [x5, #120]
  201d24:	cb050063 	sub	x3, x3, x5
  201d28:	f85e8365 	ldur	x5, [x27, #-24]
  201d2c:	d37ff8a5 	lsl	x5, x5, #1
  201d30:	8b1c00a5 	add	x5, x5, x28
  201d34:	f85a00a5 	ldur	x5, [x5, #-96]
  201d38:	eb05007f 	cmp	x3, x5
  201d3c:	54000061 	b.ne	201d48 <cml_NOTFOUND_16+0x48>  // b.any
  201d40:	91010339 	add	x25, x25, #0x40
  201d44:	14000046 	b	201e5c <cml_NOTFOUND_17>
  201d48:	79400043 	ldrh	w3, [x2]
  201d4c:	79400445 	ldrh	w5, [x2, #2]
  201d50:	cb050063 	sub	x3, x3, x5
  201d54:	d2800005 	mov	x5, #0x0                   	// #0
  201d58:	eb05007f 	cmp	x3, x5
  201d5c:	54000061 	b.ne	201d68 <cml_NOTFOUND_16+0x68>  // b.any
  201d60:	91010339 	add	x25, x25, #0x40
  201d64:	1400003e 	b	201e5c <cml_NOTFOUND_17>
  201d68:	79400445 	ldrh	w5, [x2, #2]
  201d6c:	aa000008 	orr	x8, x0, x0
  201d70:	d1000500 	sub	x0, x8, #0x1
  201d74:	8a050000 	and	x0, x0, x5
  201d78:	d37cec00 	lsl	x0, x0, #4
  201d7c:	8b020000 	add	x0, x0, x2
  201d80:	91002003 	add	x3, x0, #0x8
  201d84:	f9400060 	ldr	x0, [x3]
  201d88:	b9400863 	ldr	w3, [x3, #8]
  201d8c:	910004a5 	add	x5, x5, #0x1
  201d90:	92403ca5 	and	x5, x5, #0xffff
  201d94:	79000445 	strh	w5, [x2, #2]
  201d98:	aa1c0385 	orr	x5, x28, x28
  201d9c:	f94038a7 	ldr	x7, [x5, #112]
  201da0:	d1000425 	sub	x5, x1, #0x1
  201da4:	8a0700a6 	and	x6, x5, x7
  201da8:	f85e8365 	ldur	x5, [x27, #-24]
  201dac:	d37ff8a5 	lsl	x5, x5, #1
  201db0:	8b1c00a5 	add	x5, x5, x28
  201db4:	f85900a5 	ldur	x5, [x5, #-112]
  201db8:	d37df0c9 	lsl	x9, x6, #3
  201dbc:	8b050125 	add	x5, x9, x5
  201dc0:	d2918009 	mov	x9, #0x8c00                	// #35840
  201dc4:	910004c6 	add	x6, x6, #0x1
  201dc8:	f85e836a 	ldur	x10, [x27, #-24]
  201dcc:	d37ff94a 	lsl	x10, x10, #1
  201dd0:	8b1c014a 	add	x10, x10, x28
  201dd4:	f85a014a 	ldur	x10, [x10, #-96]
  201dd8:	eb0a00df 	cmp	x6, x10
  201ddc:	54000060 	b.eq	201de8 <cml_NOTFOUND_16+0xe8>  // b.none
  201de0:	f9001b29 	str	x9, [x25, #48]
  201de4:	14000003 	b	201df0 <cml_NOTFOUND_16+0xf0>
  201de8:	d2958006 	mov	x6, #0xac00                	// #44032
  201dec:	f9001b26 	str	x6, [x25, #48]
  201df0:	b90004a0 	str	w0, [x5, #4]
  201df4:	790000a3 	strh	w3, [x5]
  201df8:	d2800000 	mov	x0, #0x0                   	// #0
  201dfc:	f9000f21 	str	x1, [x25, #24]
  201e00:	aa000001 	orr	x1, x0, x0
  201e04:	f9000722 	str	x2, [x25, #8]
  201e08:	aa000002 	orr	x2, x0, x0
  201e0c:	aa000003 	orr	x3, x0, x0
  201e10:	f900173e 	str	x30, [x25, #40]
  201e14:	f9001327 	str	x7, [x25, #32]
  201e18:	f9000b28 	str	x8, [x25, #16]
  201e1c:	f9001f25 	str	x5, [x25, #56]
  201e20:	1000005e 	adr	x30, 201e28 <cml_NOTFOUND_16+0x128>
  201e24:	17fffc83 	b	201030 <cake_ffiTHREAD_MEMORY_RELEASE>
  201e28:	f9401f26 	ldr	x6, [x25, #56]
  201e2c:	f9401b25 	ldr	x5, [x25, #48]
  201e30:	f940173e 	ldr	x30, [x25, #40]
  201e34:	f9401323 	ldr	x3, [x25, #32]
  201e38:	f9400f21 	ldr	x1, [x25, #24]
  201e3c:	f9400b20 	ldr	x0, [x25, #16]
  201e40:	f9400722 	ldr	x2, [x25, #8]
  201e44:	790004c5 	strh	w5, [x6, #2]
  201e48:	d2800e05 	mov	x5, #0x70                  	// #112
  201e4c:	8b1c00a5 	add	x5, x5, x28
  201e50:	91000463 	add	x3, x3, #0x1
  201e54:	f90000a3 	str	x3, [x5]
  201e58:	17ffffaf 	b	201d14 <cml_NOTFOUND_16+0x14>

0000000000201e5c <cml_NOTFOUND_17>:
  201e5c:	79400043 	ldrh	w3, [x2]
  201e60:	79400445 	ldrh	w5, [x2, #2]
  201e64:	cb050065 	sub	x5, x3, x5
  201e68:	d2800003 	mov	x3, #0x0                   	// #0
  201e6c:	eb0300bf 	cmp	x5, x3
  201e70:	54000041 	b.ne	201e78 <cml_NOTFOUND_17+0x1c>  // b.any
  201e74:	d2800023 	mov	x3, #0x1                   	// #1
  201e78:	aa1c0385 	orr	x5, x28, x28
  201e7c:	f94038a5 	ldr	x5, [x5, #112]
  201e80:	aa1c0386 	orr	x6, x28, x28
  201e84:	f9403cc6 	ldr	x6, [x6, #120]
  201e88:	cb0600a5 	sub	x5, x5, x6
  201e8c:	f85e8366 	ldur	x6, [x27, #-24]
  201e90:	d37ff8c6 	lsl	x6, x6, #1
  201e94:	8b1c00c6 	add	x6, x6, x28
  201e98:	f85a00c6 	ldur	x6, [x6, #-96]
  201e9c:	eb0600bf 	cmp	x5, x6
  201ea0:	54000060 	b.eq	201eac <cml_NOTFOUND_17+0x50>  // b.none
  201ea4:	d2800006 	mov	x6, #0x0                   	// #0
  201ea8:	14000002 	b	201eb0 <cml_NOTFOUND_17+0x54>
  201eac:	d2800026 	mov	x6, #0x1                   	// #1
  201eb0:	d2800005 	mov	x5, #0x0                   	// #0
  201eb4:	eb0300bf 	cmp	x5, x3
  201eb8:	54000041 	b.ne	201ec0 <cml_NOTFOUND_17+0x64>  // b.any
  201ebc:	d2800025 	mov	x5, #0x1                   	// #1
  201ec0:	d2800003 	mov	x3, #0x0                   	// #0
  201ec4:	eb06007f 	cmp	x3, x6
  201ec8:	54000041 	b.ne	201ed0 <cml_NOTFOUND_17+0x74>  // b.any
  201ecc:	d2800023 	mov	x3, #0x1                   	// #1
  201ed0:	d2800006 	mov	x6, #0x0                   	// #0
  201ed4:	aa050063 	orr	x3, x3, x5
  201ed8:	eb0300df 	cmp	x6, x3
  201edc:	54000041 	b.ne	201ee4 <cml_NOTFOUND_17+0x88>  // b.any
  201ee0:	14000008 	b	201f00 <cml_NOTFOUND_17+0xa4>
  201ee4:	f85e8363 	ldur	x3, [x27, #-24]
  201ee8:	d37ff863 	lsl	x3, x3, #1
  201eec:	8b1c0063 	add	x3, x3, x28
  201ef0:	f85e0063 	ldur	x3, [x3, #-32]
  201ef4:	91005063 	add	x3, x3, #0x14
  201ef8:	d2a02005 	mov	x5, #0x1000000             	// #16777216
  201efc:	b9000065 	str	w5, [x3]
  201f00:	d2800003 	mov	x3, #0x0                   	// #0
  201f04:	b9000443 	str	w3, [x2, #4]
  201f08:	d2800007 	mov	x7, #0x0                   	// #0
  201f0c:	aa1c0383 	orr	x3, x28, x28
  201f10:	f9403863 	ldr	x3, [x3, #112]
  201f14:	aa1c0385 	orr	x5, x28, x28
  201f18:	f9403ca5 	ldr	x5, [x5, #120]
  201f1c:	cb050063 	sub	x3, x3, x5
  201f20:	f85e8365 	ldur	x5, [x27, #-24]
  201f24:	d37ff8a5 	lsl	x5, x5, #1
  201f28:	8b1c00a5 	add	x5, x5, x28
  201f2c:	f85a00a5 	ldur	x5, [x5, #-96]
  201f30:	eb05007f 	cmp	x3, x5
  201f34:	54000060 	b.eq	201f40 <cml_NOTFOUND_17+0xe4>  // b.none
  201f38:	d2800006 	mov	x6, #0x0                   	// #0
  201f3c:	14000002 	b	201f44 <cml_NOTFOUND_17+0xe8>
  201f40:	d2800026 	mov	x6, #0x1                   	// #1
  201f44:	79400045 	ldrh	w5, [x2]
  201f48:	aa020043 	orr	x3, x2, x2
  201f4c:	79400462 	ldrh	w2, [x3, #2]
  201f50:	cb0200a2 	sub	x2, x5, x2
  201f54:	d2800005 	mov	x5, #0x0                   	// #0
  201f58:	eb05005f 	cmp	x2, x5
  201f5c:	54000060 	b.eq	201f68 <cml_NOTFOUND_17+0x10c>  // b.none
  201f60:	d2800025 	mov	x5, #0x1                   	// #1
  201f64:	14000001 	b	201f68 <cml_NOTFOUND_17+0x10c>
  201f68:	d2800002 	mov	x2, #0x0                   	// #0
  201f6c:	eb06005f 	cmp	x2, x6
  201f70:	54000060 	b.eq	201f7c <cml_NOTFOUND_17+0x120>  // b.none
  201f74:	d2800002 	mov	x2, #0x0                   	// #0
  201f78:	14000002 	b	201f80 <cml_NOTFOUND_17+0x124>
  201f7c:	d2800022 	mov	x2, #0x1                   	// #1
  201f80:	8a050042 	and	x2, x2, x5
  201f84:	f100005f 	cmp	x2, #0x0
  201f88:	54000080 	b.eq	201f98 <cml_NOTFOUND_17+0x13c>  // b.none
  201f8c:	d2800022 	mov	x2, #0x1                   	// #1
  201f90:	b9000462 	str	w2, [x3, #4]
  201f94:	d2800027 	mov	x7, #0x1                   	// #1
  201f98:	aa010022 	orr	x2, x1, x1
  201f9c:	aa0700e1 	orr	x1, x7, x7
  201fa0:	17ffff52 	b	201ce8 <cml_NOTFOUND_15>

0000000000201fa4 <cml_NOTFOUND_19>:
  201fa4:	d2800000 	mov	x0, #0x0                   	// #0
  201fa8:	d61f03c0 	br	x30

0000000000201fac <cml_rx_return_20>:
  201fac:	f85e8360 	ldur	x0, [x27, #-24]
  201fb0:	d37ff800 	lsl	x0, x0, #1
  201fb4:	8b1c0000 	add	x0, x0, x28
  201fb8:	f85d0001 	ldur	x1, [x0, #-48]
  201fbc:	f85e8360 	ldur	x0, [x27, #-24]
  201fc0:	d37ff800 	lsl	x0, x0, #1
  201fc4:	8b1c0000 	add	x0, x0, x28
  201fc8:	f8598005 	ldur	x5, [x0, #-104]
  201fcc:	f85e8360 	ldur	x0, [x27, #-24]
  201fd0:	d37ff800 	lsl	x0, x0, #1
  201fd4:	8b1c0000 	add	x0, x0, x28
  201fd8:	f85c8000 	ldur	x0, [x0, #-56]
  201fdc:	f85e8362 	ldur	x2, [x27, #-24]
  201fe0:	d37ff842 	lsl	x2, x2, #1
  201fe4:	8b1c0042 	add	x2, x2, x28
  201fe8:	f85a8043 	ldur	x3, [x2, #-88]
  201fec:	d2800002 	mov	x2, #0x0                   	// #0
  201ff0:	14000001 	b	201ff4 <cml_NOTFOUND_21>

0000000000201ff4 <cml_NOTFOUND_21>:
  201ff4:	d1012339 	sub	x25, x25, #0x48
  201ff8:	eb1b033f 	cmp	x25, x27
  201ffc:	54000062 	b.cs	202008 <cml_NOTFOUND_21+0x14>  // b.hs, b.nlast
  202000:	d2800040 	mov	x0, #0x2                   	// #2
  202004:	17fffc23 	b	201090 <cake_exit>
  202008:	aa1c0386 	orr	x6, x28, x28
  20200c:	f9402cc6 	ldr	x6, [x6, #88]
  202010:	aa1c0387 	orr	x7, x28, x28
  202014:	f94028e7 	ldr	x7, [x7, #80]
  202018:	eb0700df 	cmp	x6, x7
  20201c:	540000a1 	b.ne	202030 <cml_NOTFOUND_21+0x3c>  // b.any
  202020:	aa010020 	orr	x0, x1, x1
  202024:	aa020041 	orr	x1, x2, x2
  202028:	9100e339 	add	x25, x25, #0x38
  20202c:	1400004d 	b	202160 <cml_NOTFOUND_22+0x14>
  202030:	aa1c0386 	orr	x6, x28, x28
  202034:	f9402cc8 	ldr	x8, [x6, #88]
  202038:	aa030066 	orr	x6, x3, x3
  20203c:	d10004c3 	sub	x3, x6, #0x1
  202040:	8a080063 	and	x3, x3, x8
  202044:	d37df063 	lsl	x3, x3, #3
  202048:	8b050067 	add	x7, x3, x5
  20204c:	794004e3 	ldrh	w3, [x7, #2]
  202050:	92710063 	and	x3, x3, #0x8000
  202054:	f100007f 	cmp	x3, #0x0
  202058:	540000a0 	b.eq	20206c <cml_NOTFOUND_21+0x78>  // b.none
  20205c:	aa010020 	orr	x0, x1, x1
  202060:	aa020041 	orr	x1, x2, x2
  202064:	9100e339 	add	x25, x25, #0x38
  202068:	1400003e 	b	202160 <cml_NOTFOUND_22+0x14>
  20206c:	d2800003 	mov	x3, #0x0                   	// #0
  202070:	f9001320 	str	x0, [x25, #32]
  202074:	aa030060 	orr	x0, x3, x3
  202078:	f9001721 	str	x1, [x25, #40]
  20207c:	aa030061 	orr	x1, x3, x3
  202080:	f9000b22 	str	x2, [x25, #16]
  202084:	aa030062 	orr	x2, x3, x3
  202088:	f9001f3e 	str	x30, [x25, #56]
  20208c:	f9001b26 	str	x6, [x25, #48]
  202090:	f9002327 	str	x7, [x25, #64]
  202094:	f9000f25 	str	x5, [x25, #24]
  202098:	f9000728 	str	x8, [x25, #8]
  20209c:	1000005e 	adr	x30, 2020a4 <cml_NOTFOUND_21+0xb0>
  2020a0:	17fffbe8 	b	201040 <cake_ffiTHREAD_MEMORY_ACQUIRE>
  2020a4:	f9402326 	ldr	x6, [x25, #64]
  2020a8:	f9401f3e 	ldr	x30, [x25, #56]
  2020ac:	f9401b23 	ldr	x3, [x25, #48]
  2020b0:	f9401721 	ldr	x1, [x25, #40]
  2020b4:	f9401320 	ldr	x0, [x25, #32]
  2020b8:	f9400f25 	ldr	x5, [x25, #24]
  2020bc:	f9400b22 	ldr	x2, [x25, #16]
  2020c0:	f9400728 	ldr	x8, [x25, #8]
  2020c4:	794000c7 	ldrh	w7, [x6]
  2020c8:	b94004c6 	ldr	w6, [x6, #4]
  2020cc:	d2800009 	mov	x9, #0x0                   	// #0
  2020d0:	eb07013f 	cmp	x9, x7
  2020d4:	5400006b 	b.lt	2020e0 <cml_NOTFOUND_21+0xec>  // b.tstop
  2020d8:	d280000a 	mov	x10, #0x0                   	// #0
  2020dc:	14000002 	b	2020e4 <cml_NOTFOUND_21+0xf0>
  2020e0:	d280002a 	mov	x10, #0x1                   	// #1
  2020e4:	d280c009 	mov	x9, #0x600                 	// #1536
  2020e8:	eb07013f 	cmp	x9, x7
  2020ec:	5400006a 	b.ge	2020f8 <cml_NOTFOUND_21+0x104>  // b.tcont
  2020f0:	d2800009 	mov	x9, #0x0                   	// #0
  2020f4:	14000002 	b	2020fc <cml_NOTFOUND_21+0x108>
  2020f8:	d2800029 	mov	x9, #0x1                   	// #1
  2020fc:	8a0a0129 	and	x9, x9, x10
  202100:	f100013f 	cmp	x9, #0x0
  202104:	540001a0 	b.eq	202138 <cml_NOTFOUND_21+0x144>  // b.none
  202108:	79400022 	ldrh	w2, [x1]
  20210c:	d1000409 	sub	x9, x0, #0x1
  202110:	8a020129 	and	x9, x9, x2
  202114:	d37ced29 	lsl	x9, x9, #4
  202118:	8b010129 	add	x9, x9, x1
  20211c:	91002129 	add	x9, x9, #0x8
  202120:	f9000126 	str	x6, [x9]
  202124:	b9000927 	str	w7, [x9, #8]
  202128:	91000442 	add	x2, x2, #0x1
  20212c:	92403c42 	and	x2, x2, #0xffff
  202130:	79000022 	strh	w2, [x1]
  202134:	d2800022 	mov	x2, #0x1                   	// #1
  202138:	d2800b06 	mov	x6, #0x58                  	// #88
  20213c:	8b1c00c7 	add	x7, x6, x28
  202140:	91000506 	add	x6, x8, #0x1
  202144:	f90000e6 	str	x6, [x7]
  202148:	17ffffb0 	b	202008 <cml_NOTFOUND_21+0x14>

000000000020214c <cml_NOTFOUND_22>:
  20214c:	d1004339 	sub	x25, x25, #0x10
  202150:	eb1b033f 	cmp	x25, x27
  202154:	54000062 	b.cs	202160 <cml_NOTFOUND_22+0x14>  // b.hs, b.nlast
  202158:	d2800040 	mov	x0, #0x2                   	// #2
  20215c:	17fffbcd 	b	201090 <cake_exit>
  202160:	b9400402 	ldr	w2, [x0, #4]
  202164:	d2800003 	mov	x3, #0x0                   	// #0
  202168:	eb02007f 	cmp	x3, x2
  20216c:	54000060 	b.eq	202178 <cml_NOTFOUND_22+0x2c>  // b.none
  202170:	d2800003 	mov	x3, #0x0                   	// #0
  202174:	14000002 	b	20217c <cml_NOTFOUND_22+0x30>
  202178:	d2800023 	mov	x3, #0x1                   	// #1
  20217c:	d2800002 	mov	x2, #0x0                   	// #0
  202180:	eb01005f 	cmp	x2, x1
  202184:	54000061 	b.ne	202190 <cml_NOTFOUND_22+0x44>  // b.any
  202188:	d2800002 	mov	x2, #0x0                   	// #0
  20218c:	14000002 	b	202194 <cml_NOTFOUND_22+0x48>
  202190:	d2800022 	mov	x2, #0x1                   	// #1
  202194:	d2800001 	mov	x1, #0x0                   	// #0
  202198:	eb03003f 	cmp	x1, x3
  20219c:	54000061 	b.ne	2021a8 <cml_NOTFOUND_22+0x5c>  // b.any
  2021a0:	d2800001 	mov	x1, #0x0                   	// #0
  2021a4:	14000002 	b	2021ac <cml_NOTFOUND_22+0x60>
  2021a8:	d2800021 	mov	x1, #0x1                   	// #1
  2021ac:	8a020021 	and	x1, x1, x2
  2021b0:	f100003f 	cmp	x1, #0x0
  2021b4:	540001c0 	b.eq	2021ec <cml_NOTFOUND_22+0xa0>  // b.none
  2021b8:	d2800021 	mov	x1, #0x1                   	// #1
  2021bc:	b9000401 	str	w1, [x0, #4]
  2021c0:	f85e8360 	ldur	x0, [x27, #-24]
  2021c4:	d37ff800 	lsl	x0, x0, #1
  2021c8:	8b1c0000 	add	x0, x0, x28
  2021cc:	f85f0001 	ldur	x1, [x0, #-16]
  2021d0:	d2800000 	mov	x0, #0x0                   	// #0
  2021d4:	aa000002 	orr	x2, x0, x0
  2021d8:	aa000003 	orr	x3, x0, x0
  2021dc:	f900073e 	str	x30, [x25, #8]
  2021e0:	1000005e 	adr	x30, 2021e8 <cml_NOTFOUND_22+0x9c>
  2021e4:	17fffb9b 	b	201050 <cake_ffimicrokit_notify>
  2021e8:	f940073e 	ldr	x30, [x25, #8]
  2021ec:	d2800000 	mov	x0, #0x0                   	// #0
  2021f0:	91004339 	add	x25, x25, #0x10
  2021f4:	d61f03c0 	br	x30

00000000002021f8 <cml_tx_return_23>:
  2021f8:	f85e8360 	ldur	x0, [x27, #-24]
  2021fc:	d37ff800 	lsl	x0, x0, #1
  202200:	8b1c0000 	add	x0, x0, x28
  202204:	f85c0001 	ldur	x1, [x0, #-64]
  202208:	f85e8360 	ldur	x0, [x27, #-24]
  20220c:	d37ff800 	lsl	x0, x0, #1
  202210:	8b1c0000 	add	x0, x0, x28
  202214:	f8590005 	ldur	x5, [x0, #-112]
  202218:	f85e8360 	ldur	x0, [x27, #-24]
  20221c:	d37ff800 	lsl	x0, x0, #1
  202220:	8b1c0000 	add	x0, x0, x28
  202224:	f85b0000 	ldur	x0, [x0, #-80]
  202228:	f85e8362 	ldur	x2, [x27, #-24]
  20222c:	d37ff842 	lsl	x2, x2, #1
  202230:	8b1c0042 	add	x2, x2, x28
  202234:	f85a0043 	ldur	x3, [x2, #-96]
  202238:	d2800002 	mov	x2, #0x0                   	// #0
  20223c:	14000001 	b	202240 <cml_NOTFOUND_24>

0000000000202240 <cml_NOTFOUND_24>:
  202240:	d1010339 	sub	x25, x25, #0x40
  202244:	eb1b033f 	cmp	x25, x27
  202248:	54000062 	b.cs	202254 <cml_NOTFOUND_24+0x14>  // b.hs, b.nlast
  20224c:	d2800040 	mov	x0, #0x2                   	// #2
  202250:	17fffb90 	b	201090 <cake_exit>
  202254:	aa1c0386 	orr	x6, x28, x28
  202258:	f9403cc6 	ldr	x6, [x6, #120]
  20225c:	aa1c0387 	orr	x7, x28, x28
  202260:	f94038e7 	ldr	x7, [x7, #112]
  202264:	eb0700df 	cmp	x6, x7
  202268:	540000a1 	b.ne	20227c <cml_NOTFOUND_24+0x3c>  // b.any
  20226c:	aa010020 	orr	x0, x1, x1
  202270:	aa020041 	orr	x1, x2, x2
  202274:	9100c339 	add	x25, x25, #0x30
  202278:	1400003b 	b	202364 <cml_NOTFOUND_25+0x14>
  20227c:	aa1c0386 	orr	x6, x28, x28
  202280:	f9403cc7 	ldr	x7, [x6, #120]
  202284:	d1000466 	sub	x6, x3, #0x1
  202288:	8a0700c6 	and	x6, x6, x7
  20228c:	d37df0c6 	lsl	x6, x6, #3
  202290:	8b0500c6 	add	x6, x6, x5
  202294:	794004c8 	ldrh	w8, [x6, #2]
  202298:	92710108 	and	x8, x8, #0x8000
  20229c:	f100011f 	cmp	x8, #0x0
  2022a0:	540000a0 	b.eq	2022b4 <cml_NOTFOUND_24+0x74>  // b.none
  2022a4:	aa010020 	orr	x0, x1, x1
  2022a8:	aa020041 	orr	x1, x2, x2
  2022ac:	9100c339 	add	x25, x25, #0x30
  2022b0:	1400002d 	b	202364 <cml_NOTFOUND_25+0x14>
  2022b4:	d2800002 	mov	x2, #0x0                   	// #0
  2022b8:	f9000b20 	str	x0, [x25, #16]
  2022bc:	aa020040 	orr	x0, x2, x2
  2022c0:	f9001321 	str	x1, [x25, #32]
  2022c4:	aa020041 	orr	x1, x2, x2
  2022c8:	f9001723 	str	x3, [x25, #40]
  2022cc:	aa020043 	orr	x3, x2, x2
  2022d0:	f9001b3e 	str	x30, [x25, #48]
  2022d4:	f9001f26 	str	x6, [x25, #56]
  2022d8:	f9000f27 	str	x7, [x25, #24]
  2022dc:	f9000725 	str	x5, [x25, #8]
  2022e0:	1000005e 	adr	x30, 2022e8 <cml_NOTFOUND_24+0xa8>
  2022e4:	17fffb57 	b	201040 <cake_ffiTHREAD_MEMORY_ACQUIRE>
  2022e8:	f9401f26 	ldr	x6, [x25, #56]
  2022ec:	f9401b3e 	ldr	x30, [x25, #48]
  2022f0:	f9401723 	ldr	x3, [x25, #40]
  2022f4:	f9401321 	ldr	x1, [x25, #32]
  2022f8:	f9400f22 	ldr	x2, [x25, #24]
  2022fc:	f9400b20 	ldr	x0, [x25, #16]
  202300:	f9400725 	ldr	x5, [x25, #8]
  202304:	b94004c8 	ldr	w8, [x6, #4]
  202308:	79400026 	ldrh	w6, [x1]
  20230c:	d1000407 	sub	x7, x0, #0x1
  202310:	8a0600e7 	and	x7, x7, x6
  202314:	d37cece7 	lsl	x7, x7, #4
  202318:	8b0100e7 	add	x7, x7, x1
  20231c:	910020e7 	add	x7, x7, #0x8
  202320:	f90000e8 	str	x8, [x7]
  202324:	d2800008 	mov	x8, #0x0                   	// #0
  202328:	b90008e8 	str	w8, [x7, #8]
  20232c:	910004c6 	add	x6, x6, #0x1
  202330:	92403cc6 	and	x6, x6, #0xffff
  202334:	79000026 	strh	w6, [x1]
  202338:	d2800f06 	mov	x6, #0x78                  	// #120
  20233c:	8b1c00c6 	add	x6, x6, x28
  202340:	91000442 	add	x2, x2, #0x1
  202344:	f90000c2 	str	x2, [x6]
  202348:	d2800022 	mov	x2, #0x1                   	// #1
  20234c:	17ffffc2 	b	202254 <cml_NOTFOUND_24+0x14>

0000000000202350 <cml_NOTFOUND_25>:
  202350:	d1004339 	sub	x25, x25, #0x10
  202354:	eb1b033f 	cmp	x25, x27
  202358:	54000062 	b.cs	202364 <cml_NOTFOUND_25+0x14>  // b.hs, b.nlast
  20235c:	d2800040 	mov	x0, #0x2                   	// #2
  202360:	17fffb4c 	b	201090 <cake_exit>
  202364:	b9400402 	ldr	w2, [x0, #4]
  202368:	d2800003 	mov	x3, #0x0                   	// #0
  20236c:	eb02007f 	cmp	x3, x2
  202370:	54000060 	b.eq	20237c <cml_NOTFOUND_25+0x2c>  // b.none
  202374:	d2800003 	mov	x3, #0x0                   	// #0
  202378:	14000002 	b	202380 <cml_NOTFOUND_25+0x30>
  20237c:	d2800023 	mov	x3, #0x1                   	// #1
  202380:	d2800002 	mov	x2, #0x0                   	// #0
  202384:	eb01005f 	cmp	x2, x1
  202388:	54000061 	b.ne	202394 <cml_NOTFOUND_25+0x44>  // b.any
  20238c:	d2800002 	mov	x2, #0x0                   	// #0
  202390:	14000002 	b	202398 <cml_NOTFOUND_25+0x48>
  202394:	d2800022 	mov	x2, #0x1                   	// #1
  202398:	d2800001 	mov	x1, #0x0                   	// #0
  20239c:	eb03003f 	cmp	x1, x3
  2023a0:	54000061 	b.ne	2023ac <cml_NOTFOUND_25+0x5c>  // b.any
  2023a4:	d2800001 	mov	x1, #0x0                   	// #0
  2023a8:	14000002 	b	2023b0 <cml_NOTFOUND_25+0x60>
  2023ac:	d2800021 	mov	x1, #0x1                   	// #1
  2023b0:	8a020021 	and	x1, x1, x2
  2023b4:	f100003f 	cmp	x1, #0x0
  2023b8:	540001c0 	b.eq	2023f0 <cml_NOTFOUND_25+0xa0>  // b.none
  2023bc:	d2800021 	mov	x1, #0x1                   	// #1
  2023c0:	b9000401 	str	w1, [x0, #4]
  2023c4:	f85e8360 	ldur	x0, [x27, #-24]
  2023c8:	d37ff800 	lsl	x0, x0, #1
  2023cc:	8b1c0000 	add	x0, x0, x28
  2023d0:	f85e8001 	ldur	x1, [x0, #-24]
  2023d4:	d2800000 	mov	x0, #0x0                   	// #0
  2023d8:	aa000002 	orr	x2, x0, x0
  2023dc:	aa000003 	orr	x3, x0, x0
  2023e0:	f900073e 	str	x30, [x25, #8]
  2023e4:	1000005e 	adr	x30, 2023ec <cml_NOTFOUND_25+0x9c>
  2023e8:	17fffb1a 	b	201050 <cake_ffimicrokit_notify>
  2023ec:	f940073e 	ldr	x30, [x25, #8]
  2023f0:	d2800000 	mov	x0, #0x0                   	// #0
  2023f4:	91004339 	add	x25, x25, #0x10
  2023f8:	d61f03c0 	br	x30

00000000002023fc <cml_handle_irq_26>:
  2023fc:	f85e8360 	ldur	x0, [x27, #-24]
  202400:	d37ff800 	lsl	x0, x0, #1
  202404:	8b1c0000 	add	x0, x0, x28
  202408:	f85e0000 	ldur	x0, [x0, #-32]
  20240c:	91001000 	add	x0, x0, #0x4
  202410:	b9400000 	ldr	w0, [x0]
  202414:	d2a14801 	mov	x1, #0xa400000             	// #171966464
  202418:	8a010000 	and	x0, x0, x1
  20241c:	f85e8361 	ldur	x1, [x27, #-24]
  202420:	d37ff821 	lsl	x1, x1, #1
  202424:	8b1c0021 	add	x1, x1, x28
  202428:	f85e0021 	ldur	x1, [x1, #-32]
  20242c:	91001021 	add	x1, x1, #0x4
  202430:	b9000020 	str	w0, [x1]
  202434:	14000001 	b	202438 <cml_NOTFOUND_27>

0000000000202438 <cml_NOTFOUND_27>:
  202438:	d1006339 	sub	x25, x25, #0x18
  20243c:	eb1b033f 	cmp	x25, x27
  202440:	54000062 	b.cs	20244c <cml_NOTFOUND_27+0x14>  // b.hs, b.nlast
  202444:	d2800040 	mov	x0, #0x2                   	// #2
  202448:	17fffb12 	b	201090 <cake_exit>
  20244c:	d2a14801 	mov	x1, #0xa400000             	// #171966464
  202450:	8a010001 	and	x1, x0, x1
  202454:	f100003f 	cmp	x1, #0x0
  202458:	54001180 	b.eq	202688 <cml_NOTFOUND_27+0x250>  // b.none
  20245c:	aa000001 	orr	x1, x0, x0
  202460:	92650020 	and	x0, x1, #0x8000000
  202464:	f100001f 	cmp	x0, #0x0
  202468:	54000061 	b.ne	202474 <cml_NOTFOUND_27+0x3c>  // b.any
  20246c:	f9000b3e 	str	x30, [x25, #16]
  202470:	14000035 	b	202544 <cml_NOTFOUND_27+0x10c>
  202474:	f9000b3e 	str	x30, [x25, #16]
  202478:	f9000721 	str	x1, [x25, #8]
  20247c:	d2800098 	mov	x24, #0x4                   	// #4
  202480:	f9000338 	str	x24, [x25]
  202484:	d1006339 	sub	x25, x25, #0x18
  202488:	eb1b033f 	cmp	x25, x27
  20248c:	54000062 	b.cs	202498 <cml_NOTFOUND_27+0x60>  // b.hs, b.nlast
  202490:	d2800040 	mov	x0, #0x2                   	// #2
  202494:	17fffaff 	b	201090 <cake_exit>
  202498:	d2800038 	mov	x24, #0x1                   	// #1
  20249c:	f9000338 	str	x24, [x25]
  2024a0:	100001d8 	adr	x24, 2024d8 <cml_NOTFOUND_27+0xa0>
  2024a4:	f9000738 	str	x24, [x25, #8]
  2024a8:	f85c8378 	ldur	x24, [x27, #-56]
  2024ac:	f9000b38 	str	x24, [x25, #16]
  2024b0:	aa190338 	orr	x24, x25, x25
  2024b4:	cb1b0318 	sub	x24, x24, x27
  2024b8:	d343ff18 	lsr	x24, x24, #3
  2024bc:	f81c8378 	stur	x24, [x27, #-56]
  2024c0:	1000005e 	adr	x30, 2024c8 <cml_NOTFOUND_27+0x90>
  2024c4:	17ffff4d 	b	2021f8 <cml_tx_return_23>
  2024c8:	f9400b38 	ldr	x24, [x25, #16]
  2024cc:	f81c8378 	stur	x24, [x27, #-56]
  2024d0:	91006339 	add	x25, x25, #0x18
  2024d4:	14000002 	b	2024dc <cml_NOTFOUND_27+0xa4>
  2024d8:	17fffc8c 	b	201708 <cml__Raise_4>
  2024dc:	d28000b8 	mov	x24, #0x5                   	// #5
  2024e0:	f9000338 	str	x24, [x25]
  2024e4:	d1006339 	sub	x25, x25, #0x18
  2024e8:	eb1b033f 	cmp	x25, x27
  2024ec:	54000062 	b.cs	2024f8 <cml_NOTFOUND_27+0xc0>  // b.hs, b.nlast
  2024f0:	d2800040 	mov	x0, #0x2                   	// #2
  2024f4:	17fffae7 	b	201090 <cake_exit>
  2024f8:	d2800038 	mov	x24, #0x1                   	// #1
  2024fc:	f9000338 	str	x24, [x25]
  202500:	100001f8 	adr	x24, 20253c <cml_NOTFOUND_27+0x104>
  202504:	f9000738 	str	x24, [x25, #8]
  202508:	f85c8378 	ldur	x24, [x27, #-56]
  20250c:	f9000b38 	str	x24, [x25, #16]
  202510:	aa190338 	orr	x24, x25, x25
  202514:	cb1b0318 	sub	x24, x24, x27
  202518:	d343ff18 	lsr	x24, x24, #3
  20251c:	f81c8378 	stur	x24, [x27, #-56]
  202520:	1000005e 	adr	x30, 202528 <cml_NOTFOUND_27+0xf0>
  202524:	17fffde3 	b	201cb0 <cml_tx_provide_14>
  202528:	f9400b38 	ldr	x24, [x25, #16]
  20252c:	f81c8378 	stur	x24, [x27, #-56]
  202530:	91006339 	add	x25, x25, #0x18
  202534:	f9400721 	ldr	x1, [x25, #8]
  202538:	14000003 	b	202544 <cml_NOTFOUND_27+0x10c>
  20253c:	f9400721 	ldr	x1, [x25, #8]
  202540:	17fffc72 	b	201708 <cml__Raise_4>
  202544:	9267003e 	and	x30, x1, #0x2000000
  202548:	f10003df 	cmp	x30, #0x0
  20254c:	54000680 	b.eq	20261c <cml_NOTFOUND_27+0x1e4>  // b.none
  202550:	f9000721 	str	x1, [x25, #8]
  202554:	d28000d8 	mov	x24, #0x6                   	// #6
  202558:	f9000338 	str	x24, [x25]
  20255c:	d1006339 	sub	x25, x25, #0x18
  202560:	eb1b033f 	cmp	x25, x27
  202564:	54000062 	b.cs	202570 <cml_NOTFOUND_27+0x138>  // b.hs, b.nlast
  202568:	d2800040 	mov	x0, #0x2                   	// #2
  20256c:	17fffac9 	b	201090 <cake_exit>
  202570:	d2800038 	mov	x24, #0x1                   	// #1
  202574:	f9000338 	str	x24, [x25]
  202578:	100001d8 	adr	x24, 2025b0 <cml_NOTFOUND_27+0x178>
  20257c:	f9000738 	str	x24, [x25, #8]
  202580:	f85c8378 	ldur	x24, [x27, #-56]
  202584:	f9000b38 	str	x24, [x25, #16]
  202588:	aa190338 	orr	x24, x25, x25
  20258c:	cb1b0318 	sub	x24, x24, x27
  202590:	d343ff18 	lsr	x24, x24, #3
  202594:	f81c8378 	stur	x24, [x27, #-56]
  202598:	1000005e 	adr	x30, 2025a0 <cml_NOTFOUND_27+0x168>
  20259c:	17fffe84 	b	201fac <cml_rx_return_20>
  2025a0:	f9400b38 	ldr	x24, [x25, #16]
  2025a4:	f81c8378 	stur	x24, [x27, #-56]
  2025a8:	91006339 	add	x25, x25, #0x18
  2025ac:	14000002 	b	2025b4 <cml_NOTFOUND_27+0x17c>
  2025b0:	17fffc56 	b	201708 <cml__Raise_4>
  2025b4:	d28000f8 	mov	x24, #0x7                   	// #7
  2025b8:	f9000338 	str	x24, [x25]
  2025bc:	d1006339 	sub	x25, x25, #0x18
  2025c0:	eb1b033f 	cmp	x25, x27
  2025c4:	54000062 	b.cs	2025d0 <cml_NOTFOUND_27+0x198>  // b.hs, b.nlast
  2025c8:	d2800040 	mov	x0, #0x2                   	// #2
  2025cc:	17fffab1 	b	201090 <cake_exit>
  2025d0:	d2800038 	mov	x24, #0x1                   	// #1
  2025d4:	f9000338 	str	x24, [x25]
  2025d8:	100001f8 	adr	x24, 202614 <cml_NOTFOUND_27+0x1dc>
  2025dc:	f9000738 	str	x24, [x25, #8]
  2025e0:	f85c8378 	ldur	x24, [x27, #-56]
  2025e4:	f9000b38 	str	x24, [x25, #16]
  2025e8:	aa190338 	orr	x24, x25, x25
  2025ec:	cb1b0318 	sub	x24, x24, x27
  2025f0:	d343ff18 	lsr	x24, x24, #3
  2025f4:	f81c8378 	stur	x24, [x27, #-56]
  2025f8:	1000005e 	adr	x30, 202600 <cml_NOTFOUND_27+0x1c8>
  2025fc:	17fffd0d 	b	201a30 <cml_rx_provide_8>
  202600:	f9400b38 	ldr	x24, [x25, #16]
  202604:	f81c8378 	stur	x24, [x27, #-56]
  202608:	91006339 	add	x25, x25, #0x18
  20260c:	f9400721 	ldr	x1, [x25, #8]
  202610:	14000003 	b	20261c <cml_NOTFOUND_27+0x1e4>
  202614:	f9400721 	ldr	x1, [x25, #8]
  202618:	17fffc3c 	b	201708 <cml__Raise_4>
  20261c:	926a003e 	and	x30, x1, #0x400000
  202620:	f10003df 	cmp	x30, #0x0
  202624:	54000061 	b.ne	202630 <cml_NOTFOUND_27+0x1f8>  // b.any
  202628:	f9400b3e 	ldr	x30, [x25, #16]
  20262c:	14000008 	b	20264c <cml_NOTFOUND_27+0x214>
  202630:	d2800000 	mov	x0, #0x0                   	// #0
  202634:	aa000001 	orr	x1, x0, x0
  202638:	aa000002 	orr	x2, x0, x0
  20263c:	aa000003 	orr	x3, x0, x0
  202640:	1000005e 	adr	x30, 202648 <cml_NOTFOUND_27+0x210>
  202644:	17fffa87 	b	201060 <cake_ffiassert>
  202648:	f9400b3e 	ldr	x30, [x25, #16]
  20264c:	f85e8360 	ldur	x0, [x27, #-24]
  202650:	d37ff800 	lsl	x0, x0, #1
  202654:	8b1c0000 	add	x0, x0, x28
  202658:	f85e0000 	ldur	x0, [x0, #-32]
  20265c:	91001000 	add	x0, x0, #0x4
  202660:	b9400000 	ldr	w0, [x0]
  202664:	d2a14801 	mov	x1, #0xa400000             	// #171966464
  202668:	8a010000 	and	x0, x0, x1
  20266c:	f85e8361 	ldur	x1, [x27, #-24]
  202670:	d37ff821 	lsl	x1, x1, #1
  202674:	8b1c0021 	add	x1, x1, x28
  202678:	f85e0021 	ldur	x1, [x1, #-32]
  20267c:	91001021 	add	x1, x1, #0x4
  202680:	b9000020 	str	w0, [x1]
  202684:	17ffff72 	b	20244c <cml_NOTFOUND_27+0x14>
  202688:	91006339 	add	x25, x25, #0x18
  20268c:	14000001 	b	202690 <cml_NOTFOUND_28>

0000000000202690 <cml_NOTFOUND_28>:
  202690:	d2800000 	mov	x0, #0x0                   	// #0
  202694:	d61f03c0 	br	x30

0000000000202698 <cml_notified_29>:
  202698:	d1006339 	sub	x25, x25, #0x18
  20269c:	eb1b033f 	cmp	x25, x27
  2026a0:	54000062 	b.cs	2026ac <cml_notified_29+0x14>  // b.hs, b.nlast
  2026a4:	d2800040 	mov	x0, #0x2                   	// #2
  2026a8:	17fffa7a 	b	201090 <cake_exit>
  2026ac:	f85e8361 	ldur	x1, [x27, #-24]
  2026b0:	d37ff821 	lsl	x1, x1, #1
  2026b4:	8b1c0021 	add	x1, x1, x28
  2026b8:	f85f8021 	ldur	x1, [x1, #-8]
  2026bc:	eb01001f 	cmp	x0, x1
  2026c0:	540004c1 	b.ne	202758 <cml_notified_29+0xc0>  // b.any
  2026c4:	f900073e 	str	x30, [x25, #8]
  2026c8:	f9000b20 	str	x0, [x25, #16]
  2026cc:	d2800118 	mov	x24, #0x8                   	// #8
  2026d0:	f9000338 	str	x24, [x25]
  2026d4:	d1006339 	sub	x25, x25, #0x18
  2026d8:	eb1b033f 	cmp	x25, x27
  2026dc:	54000062 	b.cs	2026e8 <cml_notified_29+0x50>  // b.hs, b.nlast
  2026e0:	d2800040 	mov	x0, #0x2                   	// #2
  2026e4:	17fffa6b 	b	201090 <cake_exit>
  2026e8:	d2800038 	mov	x24, #0x1                   	// #1
  2026ec:	f9000338 	str	x24, [x25]
  2026f0:	100001f8 	adr	x24, 20272c <cml_notified_29+0x94>
  2026f4:	f9000738 	str	x24, [x25, #8]
  2026f8:	f85c8378 	ldur	x24, [x27, #-56]
  2026fc:	f9000b38 	str	x24, [x25, #16]
  202700:	aa190338 	orr	x24, x25, x25
  202704:	cb1b0318 	sub	x24, x24, x27
  202708:	d343ff18 	lsr	x24, x24, #3
  20270c:	f81c8378 	stur	x24, [x27, #-56]
  202710:	1000005e 	adr	x30, 202718 <cml_notified_29+0x80>
  202714:	17ffff3a 	b	2023fc <cml_handle_irq_26>
  202718:	f9400b38 	ldr	x24, [x25, #16]
  20271c:	f81c8378 	stur	x24, [x27, #-56]
  202720:	91006339 	add	x25, x25, #0x18
  202724:	f9400b21 	ldr	x1, [x25, #16]
  202728:	14000003 	b	202734 <cml_notified_29+0x9c>
  20272c:	f9400b21 	ldr	x1, [x25, #16]
  202730:	17fffbf6 	b	201708 <cml__Raise_4>
  202734:	d2800000 	mov	x0, #0x0                   	// #0
  202738:	aa000002 	orr	x2, x0, x0
  20273c:	aa000003 	orr	x3, x0, x0
  202740:	1000005e 	adr	x30, 202748 <cml_notified_29+0xb0>
  202744:	17fffa4b 	b	201070 <cake_ffimicrokit_deferred_irq_ack>
  202748:	f9400721 	ldr	x1, [x25, #8]
  20274c:	d2800000 	mov	x0, #0x0                   	// #0
  202750:	91006339 	add	x25, x25, #0x18
  202754:	d61f0020 	br	x1
  202758:	f9000b3e 	str	x30, [x25, #16]
  20275c:	aa00001e 	orr	x30, x0, x0
  202760:	f85e8360 	ldur	x0, [x27, #-24]
  202764:	d37ff800 	lsl	x0, x0, #1
  202768:	8b1c0000 	add	x0, x0, x28
  20276c:	f85f0000 	ldur	x0, [x0, #-16]
  202770:	eb0003df 	cmp	x30, x0
  202774:	54000401 	b.ne	2027f4 <cml_notified_29+0x15c>  // b.any
  202778:	f9400b38 	ldr	x24, [x25, #16]
  20277c:	f9000738 	str	x24, [x25, #8]
  202780:	d2800138 	mov	x24, #0x9                   	// #9
  202784:	f9000338 	str	x24, [x25]
  202788:	d1006339 	sub	x25, x25, #0x18
  20278c:	eb1b033f 	cmp	x25, x27
  202790:	54000062 	b.cs	20279c <cml_notified_29+0x104>  // b.hs, b.nlast
  202794:	d2800040 	mov	x0, #0x2                   	// #2
  202798:	17fffa3e 	b	201090 <cake_exit>
  20279c:	d2800038 	mov	x24, #0x1                   	// #1
  2027a0:	f9000338 	str	x24, [x25]
  2027a4:	100001f8 	adr	x24, 2027e0 <cml_notified_29+0x148>
  2027a8:	f9000738 	str	x24, [x25, #8]
  2027ac:	f85c8378 	ldur	x24, [x27, #-56]
  2027b0:	f9000b38 	str	x24, [x25, #16]
  2027b4:	aa190338 	orr	x24, x25, x25
  2027b8:	cb1b0318 	sub	x24, x24, x27
  2027bc:	d343ff18 	lsr	x24, x24, #3
  2027c0:	f81c8378 	stur	x24, [x27, #-56]
  2027c4:	1000005e 	adr	x30, 2027cc <cml_notified_29+0x134>
  2027c8:	17fffc9a 	b	201a30 <cml_rx_provide_8>
  2027cc:	f9400b38 	ldr	x24, [x25, #16]
  2027d0:	f81c8378 	stur	x24, [x27, #-56]
  2027d4:	91006339 	add	x25, x25, #0x18
  2027d8:	f9400721 	ldr	x1, [x25, #8]
  2027dc:	14000003 	b	2027e8 <cml_notified_29+0x150>
  2027e0:	f9400721 	ldr	x1, [x25, #8]
  2027e4:	17fffbc9 	b	201708 <cml__Raise_4>
  2027e8:	d2800000 	mov	x0, #0x0                   	// #0
  2027ec:	91006339 	add	x25, x25, #0x18
  2027f0:	d61f0020 	br	x1
  2027f4:	f85e8360 	ldur	x0, [x27, #-24]
  2027f8:	d37ff800 	lsl	x0, x0, #1
  2027fc:	8b1c0000 	add	x0, x0, x28
  202800:	f85e8000 	ldur	x0, [x0, #-24]
  202804:	eb0003df 	cmp	x30, x0
  202808:	540003c1 	b.ne	202880 <cml_notified_29+0x1e8>  // b.any
  20280c:	d2800158 	mov	x24, #0xa                   	// #10
  202810:	f9000338 	str	x24, [x25]
  202814:	d1006339 	sub	x25, x25, #0x18
  202818:	eb1b033f 	cmp	x25, x27
  20281c:	54000062 	b.cs	202828 <cml_notified_29+0x190>  // b.hs, b.nlast
  202820:	d2800040 	mov	x0, #0x2                   	// #2
  202824:	17fffa1b 	b	201090 <cake_exit>
  202828:	d2800038 	mov	x24, #0x1                   	// #1
  20282c:	f9000338 	str	x24, [x25]
  202830:	100001f8 	adr	x24, 20286c <cml_notified_29+0x1d4>
  202834:	f9000738 	str	x24, [x25, #8]
  202838:	f85c8378 	ldur	x24, [x27, #-56]
  20283c:	f9000b38 	str	x24, [x25, #16]
  202840:	aa190338 	orr	x24, x25, x25
  202844:	cb1b0318 	sub	x24, x24, x27
  202848:	d343ff18 	lsr	x24, x24, #3
  20284c:	f81c8378 	stur	x24, [x27, #-56]
  202850:	1000005e 	adr	x30, 202858 <cml_notified_29+0x1c0>
  202854:	17fffd17 	b	201cb0 <cml_tx_provide_14>
  202858:	f9400b38 	ldr	x24, [x25, #16]
  20285c:	f81c8378 	stur	x24, [x27, #-56]
  202860:	91006339 	add	x25, x25, #0x18
  202864:	f9400b21 	ldr	x1, [x25, #16]
  202868:	14000003 	b	202874 <cml_notified_29+0x1dc>
  20286c:	f9400b21 	ldr	x1, [x25, #16]
  202870:	17fffba6 	b	201708 <cml__Raise_4>
  202874:	d2800000 	mov	x0, #0x0                   	// #0
  202878:	91006339 	add	x25, x25, #0x18
  20287c:	d61f0020 	br	x1
  202880:	f9400b3e 	ldr	x30, [x25, #16]
  202884:	d2800000 	mov	x0, #0x0                   	// #0
  202888:	91006339 	add	x25, x25, #0x18
  20288c:	d61f03c0 	br	x30

0000000000202890 <cake_codebuffer_begin>:
  202890:	d503201f 	nop
  202894:	d503201f 	nop
  202898:	d503201f 	nop
  20289c:	d503201f 	nop
  2028a0:	d503201f 	nop
  2028a4:	d503201f 	nop
  2028a8:	d503201f 	nop
  2028ac:	d503201f 	nop
  2028b0:	d503201f 	nop
  2028b4:	d503201f 	nop
  2028b8:	d503201f 	nop
  2028bc:	d503201f 	nop
  2028c0:	d503201f 	nop
  2028c4:	d503201f 	nop
  2028c8:	d503201f 	nop
  2028cc:	d503201f 	nop
  2028d0:	d503201f 	nop
  2028d4:	d503201f 	nop
  2028d8:	d503201f 	nop
  2028dc:	d503201f 	nop
  2028e0:	d503201f 	nop
  2028e4:	d503201f 	nop
  2028e8:	d503201f 	nop
  2028ec:	d503201f 	nop
  2028f0:	d503201f 	nop
  2028f4:	d503201f 	nop
  2028f8:	d503201f 	nop
  2028fc:	d503201f 	nop
  202900:	d503201f 	nop
  202904:	d503201f 	nop
  202908:	d503201f 	nop
  20290c:	d503201f 	nop
  202910:	d503201f 	nop
  202914:	d503201f 	nop
  202918:	d503201f 	nop
  20291c:	d503201f 	nop
  202920:	d503201f 	nop
  202924:	d503201f 	nop
  202928:	d503201f 	nop
  20292c:	d503201f 	nop
  202930:	d503201f 	nop
  202934:	d503201f 	nop
  202938:	d503201f 	nop
  20293c:	d503201f 	nop
  202940:	d503201f 	nop
  202944:	d503201f 	nop
  202948:	d503201f 	nop
  20294c:	d503201f 	nop
  202950:	d503201f 	nop
  202954:	d503201f 	nop
  202958:	d503201f 	nop
  20295c:	d503201f 	nop
  202960:	d503201f 	nop
  202964:	d503201f 	nop
  202968:	d503201f 	nop
  20296c:	d503201f 	nop
  202970:	d503201f 	nop
  202974:	d503201f 	nop
  202978:	d503201f 	nop
  20297c:	d503201f 	nop
  202980:	d503201f 	nop
  202984:	d503201f 	nop
  202988:	d503201f 	nop
  20298c:	d503201f 	nop
  202990:	d503201f 	nop
  202994:	d503201f 	nop
  202998:	d503201f 	nop
  20299c:	d503201f 	nop
  2029a0:	d503201f 	nop
  2029a4:	d503201f 	nop
  2029a8:	d503201f 	nop
  2029ac:	d503201f 	nop
  2029b0:	d503201f 	nop
  2029b4:	d503201f 	nop
  2029b8:	d503201f 	nop
  2029bc:	d503201f 	nop
  2029c0:	d503201f 	nop
  2029c4:	d503201f 	nop
  2029c8:	d503201f 	nop
  2029cc:	d503201f 	nop
  2029d0:	d503201f 	nop
  2029d4:	d503201f 	nop
  2029d8:	d503201f 	nop
  2029dc:	d503201f 	nop
  2029e0:	d503201f 	nop
  2029e4:	d503201f 	nop
  2029e8:	d503201f 	nop
  2029ec:	d503201f 	nop
  2029f0:	d503201f 	nop
  2029f4:	d503201f 	nop
  2029f8:	d503201f 	nop
  2029fc:	d503201f 	nop
  202a00:	d503201f 	nop
  202a04:	d503201f 	nop
  202a08:	d503201f 	nop
  202a0c:	d503201f 	nop
  202a10:	d503201f 	nop
  202a14:	d503201f 	nop
  202a18:	d503201f 	nop
  202a1c:	d503201f 	nop
  202a20:	d503201f 	nop
  202a24:	d503201f 	nop
  202a28:	d503201f 	nop
  202a2c:	d503201f 	nop
  202a30:	d503201f 	nop
  202a34:	d503201f 	nop
  202a38:	d503201f 	nop
  202a3c:	d503201f 	nop
  202a40:	d503201f 	nop
  202a44:	d503201f 	nop
  202a48:	d503201f 	nop
  202a4c:	d503201f 	nop
  202a50:	d503201f 	nop
  202a54:	d503201f 	nop
  202a58:	d503201f 	nop
  202a5c:	d503201f 	nop
  202a60:	d503201f 	nop
  202a64:	d503201f 	nop
  202a68:	d503201f 	nop
  202a6c:	d503201f 	nop
  202a70:	d503201f 	nop
  202a74:	d503201f 	nop
  202a78:	d503201f 	nop
  202a7c:	d503201f 	nop
  202a80:	d503201f 	nop
  202a84:	d503201f 	nop
  202a88:	d503201f 	nop
  202a8c:	d503201f 	nop
  202a90:	d503201f 	nop
  202a94:	d503201f 	nop
  202a98:	d503201f 	nop
  202a9c:	d503201f 	nop
  202aa0:	d503201f 	nop
  202aa4:	d503201f 	nop
  202aa8:	d503201f 	nop
  202aac:	d503201f 	nop
  202ab0:	d503201f 	nop
  202ab4:	d503201f 	nop
  202ab8:	d503201f 	nop
  202abc:	d503201f 	nop
  202ac0:	d503201f 	nop
  202ac4:	d503201f 	nop
  202ac8:	d503201f 	nop
  202acc:	d503201f 	nop
  202ad0:	d503201f 	nop
  202ad4:	d503201f 	nop
  202ad8:	d503201f 	nop
  202adc:	d503201f 	nop
  202ae0:	d503201f 	nop
  202ae4:	d503201f 	nop
  202ae8:	d503201f 	nop
  202aec:	d503201f 	nop
  202af0:	d503201f 	nop
  202af4:	d503201f 	nop
  202af8:	d503201f 	nop
  202afc:	d503201f 	nop
  202b00:	d503201f 	nop
  202b04:	d503201f 	nop
  202b08:	d503201f 	nop
  202b0c:	d503201f 	nop
  202b10:	d503201f 	nop
  202b14:	d503201f 	nop
  202b18:	d503201f 	nop
  202b1c:	d503201f 	nop
  202b20:	d503201f 	nop
  202b24:	d503201f 	nop
  202b28:	d503201f 	nop
  202b2c:	d503201f 	nop
  202b30:	d503201f 	nop
  202b34:	d503201f 	nop
  202b38:	d503201f 	nop
  202b3c:	d503201f 	nop
  202b40:	d503201f 	nop
  202b44:	d503201f 	nop
  202b48:	d503201f 	nop
  202b4c:	d503201f 	nop
  202b50:	d503201f 	nop
  202b54:	d503201f 	nop
  202b58:	d503201f 	nop
  202b5c:	d503201f 	nop
  202b60:	d503201f 	nop
  202b64:	d503201f 	nop
  202b68:	d503201f 	nop
  202b6c:	d503201f 	nop
  202b70:	d503201f 	nop
  202b74:	d503201f 	nop
  202b78:	d503201f 	nop
  202b7c:	d503201f 	nop
  202b80:	d503201f 	nop
  202b84:	d503201f 	nop
  202b88:	d503201f 	nop
  202b8c:	d503201f 	nop
  202b90:	d503201f 	nop
  202b94:	d503201f 	nop
  202b98:	d503201f 	nop
  202b9c:	d503201f 	nop
  202ba0:	d503201f 	nop
  202ba4:	d503201f 	nop
  202ba8:	d503201f 	nop
  202bac:	d503201f 	nop
  202bb0:	d503201f 	nop
  202bb4:	d503201f 	nop
  202bb8:	d503201f 	nop
  202bbc:	d503201f 	nop
  202bc0:	d503201f 	nop
  202bc4:	d503201f 	nop
  202bc8:	d503201f 	nop
  202bcc:	d503201f 	nop
  202bd0:	d503201f 	nop
  202bd4:	d503201f 	nop
  202bd8:	d503201f 	nop
  202bdc:	d503201f 	nop
  202be0:	d503201f 	nop
  202be4:	d503201f 	nop
  202be8:	d503201f 	nop
  202bec:	d503201f 	nop
  202bf0:	d503201f 	nop
  202bf4:	d503201f 	nop
  202bf8:	d503201f 	nop
  202bfc:	d503201f 	nop
  202c00:	d503201f 	nop
  202c04:	d503201f 	nop
  202c08:	d503201f 	nop
  202c0c:	d503201f 	nop
  202c10:	d503201f 	nop
  202c14:	d503201f 	nop
  202c18:	d503201f 	nop
  202c1c:	d503201f 	nop
  202c20:	d503201f 	nop
  202c24:	d503201f 	nop
  202c28:	d503201f 	nop
  202c2c:	d503201f 	nop
  202c30:	d503201f 	nop
  202c34:	d503201f 	nop
  202c38:	d503201f 	nop
  202c3c:	d503201f 	nop
  202c40:	d503201f 	nop
  202c44:	d503201f 	nop
  202c48:	d503201f 	nop
  202c4c:	d503201f 	nop
  202c50:	d503201f 	nop
  202c54:	d503201f 	nop
  202c58:	d503201f 	nop
  202c5c:	d503201f 	nop
  202c60:	d503201f 	nop
  202c64:	d503201f 	nop
  202c68:	d503201f 	nop
  202c6c:	d503201f 	nop
  202c70:	d503201f 	nop
  202c74:	d503201f 	nop
  202c78:	d503201f 	nop
  202c7c:	d503201f 	nop
  202c80:	d503201f 	nop
  202c84:	d503201f 	nop
  202c88:	d503201f 	nop
  202c8c:	d503201f 	nop
  202c90:	d503201f 	nop
  202c94:	d503201f 	nop
  202c98:	d503201f 	nop
  202c9c:	d503201f 	nop
  202ca0:	d503201f 	nop
  202ca4:	d503201f 	nop
  202ca8:	d503201f 	nop
  202cac:	d503201f 	nop
  202cb0:	d503201f 	nop
  202cb4:	d503201f 	nop
  202cb8:	d503201f 	nop
  202cbc:	d503201f 	nop
  202cc0:	d503201f 	nop
  202cc4:	d503201f 	nop
  202cc8:	d503201f 	nop
  202ccc:	d503201f 	nop
  202cd0:	d503201f 	nop
  202cd4:	d503201f 	nop
  202cd8:	d503201f 	nop
  202cdc:	d503201f 	nop
  202ce0:	d503201f 	nop
  202ce4:	d503201f 	nop
  202ce8:	d503201f 	nop
  202cec:	d503201f 	nop
  202cf0:	d503201f 	nop
  202cf4:	d503201f 	nop
  202cf8:	d503201f 	nop
  202cfc:	d503201f 	nop
  202d00:	d503201f 	nop
  202d04:	d503201f 	nop
  202d08:	d503201f 	nop
  202d0c:	d503201f 	nop
  202d10:	d503201f 	nop
  202d14:	d503201f 	nop
  202d18:	d503201f 	nop
  202d1c:	d503201f 	nop
  202d20:	d503201f 	nop
  202d24:	d503201f 	nop
  202d28:	d503201f 	nop
  202d2c:	d503201f 	nop
  202d30:	d503201f 	nop
  202d34:	d503201f 	nop
  202d38:	d503201f 	nop
  202d3c:	d503201f 	nop
  202d40:	d503201f 	nop
  202d44:	d503201f 	nop
  202d48:	d503201f 	nop
  202d4c:	d503201f 	nop
  202d50:	d503201f 	nop
  202d54:	d503201f 	nop
  202d58:	d503201f 	nop
  202d5c:	d503201f 	nop
  202d60:	d503201f 	nop
  202d64:	d503201f 	nop
  202d68:	d503201f 	nop
  202d6c:	d503201f 	nop
  202d70:	d503201f 	nop
  202d74:	d503201f 	nop
  202d78:	d503201f 	nop
  202d7c:	d503201f 	nop
  202d80:	d503201f 	nop
  202d84:	d503201f 	nop
  202d88:	d503201f 	nop
  202d8c:	d503201f 	nop
  202d90:	d503201f 	nop
  202d94:	d503201f 	nop
  202d98:	d503201f 	nop
  202d9c:	d503201f 	nop
  202da0:	d503201f 	nop
  202da4:	d503201f 	nop
  202da8:	d503201f 	nop
  202dac:	d503201f 	nop
  202db0:	d503201f 	nop
  202db4:	d503201f 	nop
  202db8:	d503201f 	nop
  202dbc:	d503201f 	nop
  202dc0:	d503201f 	nop
  202dc4:	d503201f 	nop
  202dc8:	d503201f 	nop
  202dcc:	d503201f 	nop
  202dd0:	d503201f 	nop
  202dd4:	d503201f 	nop
  202dd8:	d503201f 	nop
  202ddc:	d503201f 	nop
  202de0:	d503201f 	nop
  202de4:	d503201f 	nop
  202de8:	d503201f 	nop
  202dec:	d503201f 	nop
  202df0:	d503201f 	nop
  202df4:	d503201f 	nop
  202df8:	d503201f 	nop
  202dfc:	d503201f 	nop
  202e00:	d503201f 	nop
  202e04:	d503201f 	nop
  202e08:	d503201f 	nop
  202e0c:	d503201f 	nop
  202e10:	d503201f 	nop
  202e14:	d503201f 	nop
  202e18:	d503201f 	nop
  202e1c:	d503201f 	nop
  202e20:	d503201f 	nop
  202e24:	d503201f 	nop
  202e28:	d503201f 	nop
  202e2c:	d503201f 	nop
  202e30:	d503201f 	nop
  202e34:	d503201f 	nop
  202e38:	d503201f 	nop
  202e3c:	d503201f 	nop
  202e40:	d503201f 	nop
  202e44:	d503201f 	nop
  202e48:	d503201f 	nop
  202e4c:	d503201f 	nop
  202e50:	d503201f 	nop
  202e54:	d503201f 	nop
  202e58:	d503201f 	nop
  202e5c:	d503201f 	nop
  202e60:	d503201f 	nop
  202e64:	d503201f 	nop
  202e68:	d503201f 	nop
  202e6c:	d503201f 	nop
  202e70:	d503201f 	nop
  202e74:	d503201f 	nop
  202e78:	d503201f 	nop
  202e7c:	d503201f 	nop
  202e80:	d503201f 	nop
  202e84:	d503201f 	nop
  202e88:	d503201f 	nop
  202e8c:	d503201f 	nop
  202e90:	d503201f 	nop
  202e94:	d503201f 	nop
  202e98:	d503201f 	nop
  202e9c:	d503201f 	nop
  202ea0:	d503201f 	nop
  202ea4:	d503201f 	nop
  202ea8:	d503201f 	nop
  202eac:	d503201f 	nop
  202eb0:	d503201f 	nop
  202eb4:	d503201f 	nop
  202eb8:	d503201f 	nop
  202ebc:	d503201f 	nop
  202ec0:	d503201f 	nop
  202ec4:	d503201f 	nop
  202ec8:	d503201f 	nop
  202ecc:	d503201f 	nop
  202ed0:	d503201f 	nop
  202ed4:	d503201f 	nop
  202ed8:	d503201f 	nop
  202edc:	d503201f 	nop
  202ee0:	d503201f 	nop
  202ee4:	d503201f 	nop
  202ee8:	d503201f 	nop
  202eec:	d503201f 	nop
  202ef0:	d503201f 	nop
  202ef4:	d503201f 	nop
  202ef8:	d503201f 	nop
  202efc:	d503201f 	nop
  202f00:	d503201f 	nop
  202f04:	d503201f 	nop
  202f08:	d503201f 	nop
  202f0c:	d503201f 	nop
  202f10:	d503201f 	nop
  202f14:	d503201f 	nop
  202f18:	d503201f 	nop
  202f1c:	d503201f 	nop
  202f20:	d503201f 	nop
  202f24:	d503201f 	nop
  202f28:	d503201f 	nop
  202f2c:	d503201f 	nop
  202f30:	d503201f 	nop
  202f34:	d503201f 	nop
  202f38:	d503201f 	nop
  202f3c:	d503201f 	nop
  202f40:	d503201f 	nop
  202f44:	d503201f 	nop
  202f48:	d503201f 	nop
  202f4c:	d503201f 	nop
  202f50:	d503201f 	nop
  202f54:	d503201f 	nop
  202f58:	d503201f 	nop
  202f5c:	d503201f 	nop
  202f60:	d503201f 	nop
  202f64:	d503201f 	nop
  202f68:	d503201f 	nop
  202f6c:	d503201f 	nop
  202f70:	d503201f 	nop
  202f74:	d503201f 	nop
  202f78:	d503201f 	nop
  202f7c:	d503201f 	nop
  202f80:	d503201f 	nop
  202f84:	d503201f 	nop
  202f88:	d503201f 	nop
  202f8c:	d503201f 	nop
  202f90:	d503201f 	nop
  202f94:	d503201f 	nop
  202f98:	d503201f 	nop
  202f9c:	d503201f 	nop
  202fa0:	d503201f 	nop
  202fa4:	d503201f 	nop
  202fa8:	d503201f 	nop
  202fac:	d503201f 	nop
  202fb0:	d503201f 	nop
  202fb4:	d503201f 	nop
  202fb8:	d503201f 	nop
  202fbc:	d503201f 	nop
  202fc0:	d503201f 	nop
  202fc4:	d503201f 	nop
  202fc8:	d503201f 	nop
  202fcc:	d503201f 	nop
  202fd0:	d503201f 	nop
  202fd4:	d503201f 	nop
  202fd8:	d503201f 	nop
  202fdc:	d503201f 	nop
  202fe0:	d503201f 	nop
  202fe4:	d503201f 	nop
  202fe8:	d503201f 	nop
  202fec:	d503201f 	nop
  202ff0:	d503201f 	nop
  202ff4:	d503201f 	nop
  202ff8:	d503201f 	nop
  202ffc:	d503201f 	nop

0000000000203000 <cake_codebuffer_end>:
	...

0000000000204000 <cml_enter>:
  204000:	f81e0ffe 	str	x30, [sp, #-32]!
  204004:	f81e0ffc 	str	x28, [sp, #-32]!
  204008:	f81e0ffb 	str	x27, [sp, #-32]!
  20400c:	f81e0ff9 	str	x25, [sp, #-32]!
  204010:	17fff424 	b	2010a0 <cml__Init_0>
  204014:	d503201f 	nop
  204018:	d503201f 	nop
  20401c:	d503201f 	nop

0000000000204020 <cake_enter>:
  204020:	f81e0ffe 	str	x30, [sp, #-32]!
  204024:	f81e0ffc 	str	x28, [sp, #-32]!
  204028:	f81e0ffb 	str	x27, [sp, #-32]!
  20402c:	f81e0ff9 	str	x25, [sp, #-32]!
  204030:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204034:	9100c129 	add	x9, x9, #0x30
  204038:	f940012b 	ldr	x11, [x9]
  20403c:	b40004ab 	cbz	x11, 2040d0 <cake_err3>
  204040:	f900013f 	str	xzr, [x9]
  204044:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204048:	91006129 	add	x9, x9, #0x18
  20404c:	f940013c 	ldr	x28, [x9]
  204050:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204054:	91008129 	add	x9, x9, #0x20
  204058:	f9400139 	ldr	x25, [x9]
  20405c:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204060:	9100a129 	add	x9, x9, #0x28
  204064:	f940013b 	ldr	x27, [x9]
  204068:	9000001e 	adrp	x30, 204000 <cml_enter>
  20406c:	910293de 	add	x30, x30, #0xa4
  204070:	d61f0140 	br	x10
  204074:	d503201f 	nop
  204078:	d503201f 	nop
  20407c:	d503201f 	nop

0000000000204080 <cml_return>:
  204080:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204084:	91006129 	add	x9, x9, #0x18
  204088:	f900013c 	str	x28, [x9]
  20408c:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204090:	91008129 	add	x9, x9, #0x20
  204094:	f9000139 	str	x25, [x9]
  204098:	b0000009 	adrp	x9, 205000 <__init_array_end>
  20409c:	9100a129 	add	x9, x9, #0x28
  2040a0:	f900013b 	str	x27, [x9]

00000000002040a4 <cake_return>:
  2040a4:	b0000009 	adrp	x9, 205000 <__init_array_end>
  2040a8:	9100c129 	add	x9, x9, #0x30
  2040ac:	d280002b 	mov	x11, #0x1                   	// #1
  2040b0:	f900012b 	str	x11, [x9]
  2040b4:	aa0003e8 	mov	x8, x0
  2040b8:	f84207f9 	ldr	x25, [sp], #32
  2040bc:	f84207fb 	ldr	x27, [sp], #32
  2040c0:	f84207fc 	ldr	x28, [sp], #32
  2040c4:	f84207fe 	ldr	x30, [sp], #32
  2040c8:	d65f03c0 	ret
  2040cc:	d503201f 	nop

00000000002040d0 <cake_err3>:
  2040d0:	d2800060 	mov	x0, #0x3                   	// #3
  2040d4:	1400000b 	b	204100 <cml_err>
  2040d8:	d503201f 	nop
  2040dc:	d503201f 	nop

00000000002040e0 <notified>:
  2040e0:	9000000a 	adrp	x10, 204000 <cml_enter>
  2040e4:	9103b14a 	add	x10, x10, #0xec
  2040e8:	17ffffce 	b	204020 <cake_enter>

00000000002040ec <notified_jmp>:
  2040ec:	17fff96b 	b	202698 <cml_notified_29>

00000000002040f0 <cml_exit>:
  2040f0:	d503201f 	nop
  2040f4:	70005fa0 	adr	x0, 204ceb <_text_end+0x77>
  2040f8:	1400023a 	b	2049e0 <microkit_dbg_puts>
  2040fc:	d503201f 	nop

0000000000204100 <cml_err>:
  204100:	71000c1f 	cmp	w0, #0x3
  204104:	540000e1 	b.ne	204120 <cml_err+0x20>  // b.any
  204108:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  20410c:	910003fd 	mov	x29, sp
  204110:	90000000 	adrp	x0, 204000 <cml_enter>
  204114:	91344400 	add	x0, x0, #0xd11
  204118:	94000232 	bl	2049e0 <microkit_dbg_puts>
  20411c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  204120:	d503201f 	nop
  204124:	70005e20 	adr	x0, 204ceb <_text_end+0x77>
  204128:	1400022e 	b	2049e0 <microkit_dbg_puts>
  20412c:	d503201f 	nop

0000000000204130 <cml_clear>:
  204130:	90000000 	adrp	x0, 204000 <cml_enter>
  204134:	9131d000 	add	x0, x0, #0xc74
  204138:	1400022a 	b	2049e0 <microkit_dbg_puts>
  20413c:	d503201f 	nop

0000000000204140 <init_pancake_mem>:
  204140:	d503201f 	nop
  204144:	1000af69 	adr	x9, 205730 <cml_memory>
  204148:	b0000008 	adrp	x8, 205000 <__init_array_end>
  20414c:	9140052a 	add	x10, x9, #0x1, lsl #12
  204150:	b000000b 	adrp	x11, 205000 <__init_array_end>
  204154:	9140092c 	add	x12, x9, #0x2, lsl #12
  204158:	b000000d 	adrp	x13, 205000 <__init_array_end>
  20415c:	f9000109 	str	x9, [x8]
  204160:	f900056a 	str	x10, [x11, #8]
  204164:	f90009ac 	str	x12, [x13, #16]
  204168:	d65f03c0 	ret
  20416c:	d503201f 	nop

0000000000204170 <init>:
  204170:	d503201f 	nop
  204174:	1000ade8 	adr	x8, 205730 <cml_memory>
  204178:	b0000009 	adrp	x9, 205000 <__init_array_end>
  20417c:	9140050a 	add	x10, x8, #0x1, lsl #12
  204180:	b000000b 	adrp	x11, 205000 <__init_array_end>
  204184:	9140090c 	add	x12, x8, #0x2, lsl #12
  204188:	b000000d 	adrp	x13, 205000 <__init_array_end>
  20418c:	f000000e 	adrp	x14, 207000 <__global_pointer$+0x1770>
  204190:	f9000128 	str	x8, [x9]
  204194:	91008109 	add	x9, x8, #0x20
  204198:	f900056a 	str	x10, [x11, #8]
  20419c:	f000000b 	adrp	x11, 207000 <__global_pointer$+0x1770>
  2041a0:	f90009ac 	str	x12, [x13, #16]
  2041a4:	b000000c 	adrp	x12, 205000 <__init_array_end>
  2041a8:	9103c18c 	add	x12, x12, #0xf0
  2041ac:	9100e10d 	add	x13, x8, #0x38
  2041b0:	b000000f 	adrp	x15, 205000 <__init_array_end>
  2041b4:	9102e9ef 	add	x15, x15, #0xba
  2041b8:	f9039969 	str	x9, [x11, #1840]
  2041bc:	91014109 	add	x9, x8, #0x50
  2041c0:	3958018a 	ldrb	w10, [x12, #1536]
  2041c4:	f000000b 	adrp	x11, 207000 <__global_pointer$+0x1770>
  2041c8:	f9039dcd 	str	x13, [x14, #1848]
  2041cc:	394001ed 	ldrb	w13, [x15]
  2041d0:	3940a1ee 	ldrb	w14, [x15, #40]
  2041d4:	f000000f 	adrp	x15, 207000 <__global_pointer$+0x1770>
  2041d8:	f903a169 	str	x9, [x11, #1856]
  2041dc:	9101c10b 	add	x11, x8, #0x70
  2041e0:	f9400189 	ldr	x9, [x12]
  2041e4:	a900b50a 	stp	x10, x13, [x8, #8]
  2041e8:	f000000a 	adrp	x10, 207000 <__global_pointer$+0x1770>
  2041ec:	f9000d0e 	str	x14, [x8, #24]
  2041f0:	5280200e 	mov	w14, #0x100                 	// #256
  2041f4:	f903a5eb 	str	x11, [x15, #1864]
  2041f8:	f903a949 	str	x9, [x10, #1872]
  2041fc:	b940e52a 	ldr	w10, [x9, #228]
  204200:	b940e92b 	ldr	w11, [x9, #232]
  204204:	f9400d8d 	ldr	x13, [x12, #24]
  204208:	f940198c 	ldr	x12, [x12, #48]
  20420c:	a906350e 	stp	x14, x13, [x8, #96]
  204210:	5280002d 	mov	w13, #0x1                   	// #1
  204214:	a908310e 	stp	x14, x12, [x8, #128]
  204218:	b900252d 	str	w13, [x9, #36]
  20421c:	d503201f 	nop
  204220:	b940252c 	ldr	w12, [x9, #36]
  204224:	3707ffec 	tbnz	w12, #0, 204220 <init+0xb0>
  204228:	b940252c 	ldr	w12, [x9, #36]
  20422c:	1280000d 	mov	w13, #0xffffffff            	// #-1
  204230:	5280060e 	mov	w14, #0x30                  	// #48
  204234:	3218018c 	orr	w12, w12, #0x100
  204238:	b900252c 	str	w12, [x9, #36]
  20423c:	b900093f 	str	wzr, [x9, #8]
  204240:	b900052d 	str	w13, [x9, #4]
  204244:	b900452e 	str	w14, [x9, #68]
  204248:	b940652c 	ldr	w12, [x9, #100]
  20424c:	3201018c 	orr	w12, w12, #0x80000000
  204250:	b900652c 	str	w12, [x9, #100]
  204254:	b940652c 	ldr	w12, [x9, #100]
  204258:	36f7ffec 	tbz	w12, #30, 204254 <init+0xe4>
  20425c:	b940652c 	ldr	w12, [x9, #100]
  204260:	3203018c 	orr	w12, w12, #0x20000000
  204264:	b900652c 	str	w12, [x9, #100]
  204268:	d503201f 	nop
  20426c:	d503201f 	nop
  204270:	b940652c 	ldr	w12, [x9, #100]
  204274:	36f7ffec 	tbz	w12, #30, 204270 <init+0x100>
  204278:	b940652c 	ldr	w12, [x9, #100]
  20427c:	1202798c 	and	w12, w12, #0xdfffffff
  204280:	b900652c 	str	w12, [x9, #100]
  204284:	b940652c 	ldr	w12, [x9, #100]
  204288:	1200798c 	and	w12, w12, #0x7fffffff
  20428c:	b900652c 	str	w12, [x9, #100]
  204290:	b901193f 	str	wzr, [x9, #280]
  204294:	b9011d3f 	str	wzr, [x9, #284]
  204298:	b901213f 	str	wzr, [x9, #288]
  20429c:	b901253f 	str	wzr, [x9, #292]
  2042a0:	b940e52c 	ldr	w12, [x9, #228]
  2042a4:	3500006c 	cbnz	w12, 2042b0 <init+0x140>
  2042a8:	b900e52a 	str	w10, [x9, #228]
  2042ac:	b900e92b 	str	w11, [x9, #232]
  2042b0:	52a0002a 	mov	w10, #0x10000               	// #65536
  2042b4:	52801feb 	mov	w11, #0xff                  	// #255
  2042b8:	72b1000b 	movk	w11, #0x8800, lsl #16
  2042bc:	5280010c 	mov	w12, #0x8                   	// #8
  2042c0:	5280200d 	mov	w13, #0x100                 	// #256
  2042c4:	b900ed2a 	str	w10, [x9, #236]
  2042c8:	528008ca 	mov	w10, #0x46                  	// #70
  2042cc:	b900f12b 	str	w11, [x9, #240]
  2042d0:	5280030b 	mov	w11, #0x18                  	// #24
  2042d4:	b901ad2c 	str	w12, [x9, #428]
  2042d8:	5280098c 	mov	w12, #0x4c                  	// #76
  2042dc:	b901452d 	str	w13, [x9, #324]
  2042e0:	72a0bdcc 	movk	w12, #0x5ee, lsl #16
  2042e4:	b901913f 	str	wzr, [x9, #400]
  2042e8:	5280008d 	mov	w13, #0x4                   	// #4
  2042ec:	b901c52a 	str	w10, [x9, #452]
  2042f0:	b000000a 	adrp	x10, 205000 <__init_array_end>
  2042f4:	9104614a 	add	x10, x10, #0x118
  2042f8:	b901c12b 	str	w11, [x9, #448]
  2042fc:	f940014b 	ldr	x11, [x10]
  204300:	b901812b 	str	w11, [x9, #384]
  204304:	5280c00b 	mov	w11, #0x600                 	// #1536
  204308:	f9400d4a 	ldr	x10, [x10, #24]
  20430c:	b901852a 	str	w10, [x9, #388]
  204310:	b901892b 	str	w11, [x9, #392]
  204314:	52a0200b 	mov	w11, #0x1000000             	// #16777216
  204318:	b900852c 	str	w12, [x9, #132]
  20431c:	b000000c 	adrp	x12, 205000 <__init_array_end>
  204320:	9102618c 	add	x12, x12, #0x98
  204324:	b900c52d 	str	w13, [x9, #196]
  204328:	b940252a 	ldr	w10, [x9, #36]
  20432c:	321b014a 	orr	w10, w10, #0x20
  204330:	b900252a 	str	w10, [x9, #36]
  204334:	b940252a 	ldr	w10, [x9, #36]
  204338:	321f014a 	orr	w10, w10, #0x2
  20433c:	b900252a 	str	w10, [x9, #36]
  204340:	b900112b 	str	w11, [x9, #16]
  204344:	52a1480b 	mov	w11, #0xa400000             	// #171966464
  204348:	b940052a 	ldr	w10, [x9, #4]
  20434c:	b900052a 	str	w10, [x9, #4]
  204350:	b900092b 	str	w11, [x9, #8]
  204354:	f9000109 	str	x9, [x8]
  204358:	f9400189 	ldr	x9, [x12]
  20435c:	f940098a 	ldr	x10, [x12, #16]
  204360:	7940418b 	ldrh	w11, [x12, #32]
  204364:	f940158d 	ldr	x13, [x12, #40]
  204368:	a9022909 	stp	x9, x10, [x8, #32]
  20436c:	f9401d89 	ldr	x9, [x12, #56]
  204370:	7940918a 	ldrh	w10, [x12, #72]
  204374:	b900310b 	str	w11, [x8, #48]
  204378:	a903a50d 	stp	x13, x9, [x8, #56]
  20437c:	b900490a 	str	w10, [x8, #72]
  204380:	17fff320 	b	201000 <cml_main>
	...

0000000000204390 <ffiTHREAD_MEMORY_RELEASE>:
  204390:	d5033bbf 	dmb	ish
  204394:	d65f03c0 	ret
  204398:	d503201f 	nop
  20439c:	d503201f 	nop

00000000002043a0 <ffiTHREAD_MEMORY_ACQUIRE>:
  2043a0:	d50339bf 	dmb	ishld
  2043a4:	d65f03c0 	ret
  2043a8:	d503201f 	nop
  2043ac:	d503201f 	nop

00000000002043b0 <ffiassert>:
  2043b0:	d65f03c0 	ret
  2043b4:	d503201f 	nop
  2043b8:	d503201f 	nop
  2043bc:	d503201f 	nop

00000000002043c0 <ffimicrokit_notify>:
  2043c0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2043c4:	f9000bf3 	str	x19, [sp, #16]
  2043c8:	910003fd 	mov	x29, sp
  2043cc:	aa0103f3 	mov	x19, x1
  2043d0:	7100f67f 	cmp	w19, #0x3d
  2043d4:	540001a8 	b.hi	204408 <ffimicrokit_notify+0x48>  // b.pmore
  2043d8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  2043dc:	f943e108 	ldr	x8, [x8, #1984]
  2043e0:	9ad32508 	lsr	x8, x8, x19
  2043e4:	36000128 	tbz	w8, #0, 204408 <ffimicrokit_notify+0x48>
  2043e8:	11002a68 	add	w8, w19, #0xa
  2043ec:	aa1f03e1 	mov	x1, xzr
  2043f0:	92401900 	and	x0, x8, #0x7f
  2043f4:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  2043f8:	d4000001 	svc	#0x0
  2043fc:	f9400bf3 	ldr	x19, [sp, #16]
  204400:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204404:	d65f03c0 	ret
  204408:	d503201f 	nop
  20440c:	10019aa0 	adr	x0, 207760 <microkit_name>
  204410:	94000174 	bl	2049e0 <microkit_dbg_puts>
  204414:	d503201f 	nop
  204418:	70004380 	adr	x0, 204c8b <_text_end+0x17>
  20441c:	94000171 	bl	2049e0 <microkit_dbg_puts>
  204420:	2a1303e0 	mov	w0, w19
  204424:	94000197 	bl	204a80 <microkit_dbg_put32>
  204428:	f9400bf3 	ldr	x19, [sp, #16]
  20442c:	90000000 	adrp	x0, 204000 <cml_enter>
  204430:	9132d400 	add	x0, x0, #0xcb5
  204434:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204438:	1400016a 	b	2049e0 <microkit_dbg_puts>
  20443c:	d503201f 	nop

0000000000204440 <ffimicrokit_deferred_irq_ack>:
  204440:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204444:	f9000bf3 	str	x19, [sp, #16]
  204448:	910003fd 	mov	x29, sp
  20444c:	aa0103f3 	mov	x19, x1
  204450:	7100f67f 	cmp	w19, #0x3d
  204454:	54000268 	b.hi	2044a0 <ffimicrokit_deferred_irq_ack+0x60>  // b.pmore
  204458:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  20445c:	f943e508 	ldr	x8, [x8, #1992]
  204460:	9ad32508 	lsr	x8, x8, x19
  204464:	360001e8 	tbz	w8, #0, 2044a0 <ffimicrokit_deferred_irq_ack+0x60>
  204468:	5294000b 	mov	w11, #0xa000                	// #40960
  20446c:	11022a6c 	add	w12, w19, #0x8a
  204470:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  204474:	52800029 	mov	w9, #0x1                   	// #1
  204478:	f000000a 	adrp	x10, 207000 <__global_pointer$+0x1770>
  20447c:	72a0002b 	movk	w11, #0x1, lsl #16
  204480:	92401d8c 	and	x12, x12, #0xff
  204484:	f000000d 	adrp	x13, 207000 <__global_pointer$+0x1770>
  204488:	f9400bf3 	ldr	x19, [sp, #16]
  20448c:	391e8509 	strb	w9, [x8, #1953]
  204490:	f903d54b 	str	x11, [x10, #1960]
  204494:	f903d9ac 	str	x12, [x13, #1968]
  204498:	a8c27bfd 	ldp	x29, x30, [sp], #32
  20449c:	d65f03c0 	ret
  2044a0:	d503201f 	nop
  2044a4:	100195e0 	adr	x0, 207760 <microkit_name>
  2044a8:	9400014e 	bl	2049e0 <microkit_dbg_puts>
  2044ac:	90000000 	adrp	x0, 204000 <cml_enter>
  2044b0:	9136ac00 	add	x0, x0, #0xdab
  2044b4:	9400014b 	bl	2049e0 <microkit_dbg_puts>
  2044b8:	2a1303e0 	mov	w0, w19
  2044bc:	94000171 	bl	204a80 <microkit_dbg_put32>
  2044c0:	f9400bf3 	ldr	x19, [sp, #16]
  2044c4:	90000000 	adrp	x0, 204000 <cml_enter>
  2044c8:	9132d400 	add	x0, x0, #0xcb5
  2044cc:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2044d0:	14000144 	b	2049e0 <microkit_dbg_puts>
  2044d4:	d503201f 	nop
  2044d8:	d503201f 	nop
  2044dc:	d503201f 	nop

00000000002044e0 <ffimicrokit_irq_ack>:
  2044e0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2044e4:	f9000bf3 	str	x19, [sp, #16]
  2044e8:	910003fd 	mov	x29, sp
  2044ec:	aa0103f3 	mov	x19, x1
  2044f0:	7100f67f 	cmp	w19, #0x3d
  2044f4:	54000328 	b.hi	204558 <ffimicrokit_irq_ack+0x78>  // b.pmore
  2044f8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  2044fc:	f943e508 	ldr	x8, [x8, #1992]
  204500:	9ad32508 	lsr	x8, x8, x19
  204504:	360002a8 	tbz	w8, #0, 204558 <ffimicrokit_irq_ack+0x78>
  204508:	11022a68 	add	w8, w19, #0x8a
  20450c:	52940001 	mov	w1, #0xa000                	// #40960
  204510:	92401d00 	and	x0, x8, #0xff
  204514:	aa1f03e2 	mov	x2, xzr
  204518:	aa1f03e3 	mov	x3, xzr
  20451c:	aa1f03e4 	mov	x4, xzr
  204520:	aa1f03e5 	mov	x5, xzr
  204524:	72a00021 	movk	w1, #0x1, lsl #16
  204528:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  20452c:	aa1f03e6 	mov	x6, xzr
  204530:	d4000001 	svc	#0x0
  204534:	f2747c3f 	tst	x1, #0xffffffff000
  204538:	540000a0 	b.eq	20454c <ffimicrokit_irq_ack+0x6c>  // b.none
  20453c:	b0000008 	adrp	x8, 205000 <__init_array_end>
  204540:	f9404508 	ldr	x8, [x8, #136]
  204544:	a9008d02 	stp	x2, x3, [x8, #8]
  204548:	a9019504 	stp	x4, x5, [x8, #24]
  20454c:	f9400bf3 	ldr	x19, [sp, #16]
  204550:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204554:	d65f03c0 	ret
  204558:	d503201f 	nop
  20455c:	10019020 	adr	x0, 207760 <microkit_name>
  204560:	94000120 	bl	2049e0 <microkit_dbg_puts>
  204564:	90000000 	adrp	x0, 204000 <cml_enter>
  204568:	91360000 	add	x0, x0, #0xd80
  20456c:	9400011d 	bl	2049e0 <microkit_dbg_puts>
  204570:	2a1303e0 	mov	w0, w19
  204574:	94000143 	bl	204a80 <microkit_dbg_put32>
  204578:	f9400bf3 	ldr	x19, [sp, #16]
  20457c:	90000000 	adrp	x0, 204000 <cml_enter>
  204580:	9132d400 	add	x0, x0, #0xcb5
  204584:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204588:	14000116 	b	2049e0 <microkit_dbg_puts>
  20458c:	d503201f 	nop

0000000000204590 <ffisddf_irq_ack>:
  204590:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204594:	f9000bf3 	str	x19, [sp, #16]
  204598:	910003fd 	mov	x29, sp
  20459c:	aa0103f3 	mov	x19, x1
  2045a0:	7100f67f 	cmp	w19, #0x3d
  2045a4:	54000328 	b.hi	204608 <ffisddf_irq_ack+0x78>  // b.pmore
  2045a8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  2045ac:	f943e508 	ldr	x8, [x8, #1992]
  2045b0:	9ad32508 	lsr	x8, x8, x19
  2045b4:	360002a8 	tbz	w8, #0, 204608 <ffisddf_irq_ack+0x78>
  2045b8:	11022a68 	add	w8, w19, #0x8a
  2045bc:	52940001 	mov	w1, #0xa000                	// #40960
  2045c0:	92401d00 	and	x0, x8, #0xff
  2045c4:	aa1f03e2 	mov	x2, xzr
  2045c8:	aa1f03e3 	mov	x3, xzr
  2045cc:	aa1f03e4 	mov	x4, xzr
  2045d0:	aa1f03e5 	mov	x5, xzr
  2045d4:	72a00021 	movk	w1, #0x1, lsl #16
  2045d8:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  2045dc:	aa1f03e6 	mov	x6, xzr
  2045e0:	d4000001 	svc	#0x0
  2045e4:	f2747c3f 	tst	x1, #0xffffffff000
  2045e8:	540000a0 	b.eq	2045fc <ffisddf_irq_ack+0x6c>  // b.none
  2045ec:	b0000008 	adrp	x8, 205000 <__init_array_end>
  2045f0:	f9404508 	ldr	x8, [x8, #136]
  2045f4:	a9008d02 	stp	x2, x3, [x8, #8]
  2045f8:	a9019504 	stp	x4, x5, [x8, #24]
  2045fc:	f9400bf3 	ldr	x19, [sp, #16]
  204600:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204604:	d65f03c0 	ret
  204608:	d503201f 	nop
  20460c:	10018aa0 	adr	x0, 207760 <microkit_name>
  204610:	940000f4 	bl	2049e0 <microkit_dbg_puts>
  204614:	90000000 	adrp	x0, 204000 <cml_enter>
  204618:	91360000 	add	x0, x0, #0xd80
  20461c:	940000f1 	bl	2049e0 <microkit_dbg_puts>
  204620:	2a1303e0 	mov	w0, w19
  204624:	94000117 	bl	204a80 <microkit_dbg_put32>
  204628:	f9400bf3 	ldr	x19, [sp, #16]
  20462c:	90000000 	adrp	x0, 204000 <cml_enter>
  204630:	9132d400 	add	x0, x0, #0xcb5
  204634:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204638:	140000ea 	b	2049e0 <microkit_dbg_puts>
  20463c:	d503201f 	nop

0000000000204640 <ffisddf_notify>:
  204640:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204644:	f9000bf3 	str	x19, [sp, #16]
  204648:	910003fd 	mov	x29, sp
  20464c:	aa0103f3 	mov	x19, x1
  204650:	7100f67f 	cmp	w19, #0x3d
  204654:	540001a8 	b.hi	204688 <ffisddf_notify+0x48>  // b.pmore
  204658:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  20465c:	f943e108 	ldr	x8, [x8, #1984]
  204660:	9ad32508 	lsr	x8, x8, x19
  204664:	36000128 	tbz	w8, #0, 204688 <ffisddf_notify+0x48>
  204668:	11002a68 	add	w8, w19, #0xa
  20466c:	aa1f03e1 	mov	x1, xzr
  204670:	92401900 	and	x0, x8, #0x7f
  204674:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  204678:	d4000001 	svc	#0x0
  20467c:	f9400bf3 	ldr	x19, [sp, #16]
  204680:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204684:	d65f03c0 	ret
  204688:	d503201f 	nop
  20468c:	100186a0 	adr	x0, 207760 <microkit_name>
  204690:	940000d4 	bl	2049e0 <microkit_dbg_puts>
  204694:	d503201f 	nop
  204698:	70002f80 	adr	x0, 204c8b <_text_end+0x17>
  20469c:	940000d1 	bl	2049e0 <microkit_dbg_puts>
  2046a0:	2a1303e0 	mov	w0, w19
  2046a4:	940000f7 	bl	204a80 <microkit_dbg_put32>
  2046a8:	f9400bf3 	ldr	x19, [sp, #16]
  2046ac:	90000000 	adrp	x0, 204000 <cml_enter>
  2046b0:	9132d400 	add	x0, x0, #0xcb5
  2046b4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2046b8:	140000ca 	b	2049e0 <microkit_dbg_puts>
  2046bc:	d503201f 	nop

00000000002046c0 <ffisddf_deferred_notify>:
  2046c0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2046c4:	f9000bf3 	str	x19, [sp, #16]
  2046c8:	910003fd 	mov	x29, sp
  2046cc:	aa0103f3 	mov	x19, x1
  2046d0:	7100f67f 	cmp	w19, #0x3d
  2046d4:	54000228 	b.hi	204718 <ffisddf_deferred_notify+0x58>  // b.pmore
  2046d8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  2046dc:	f943e108 	ldr	x8, [x8, #1984]
  2046e0:	9ad32508 	lsr	x8, x8, x19
  2046e4:	360001a8 	tbz	w8, #0, 204718 <ffisddf_deferred_notify+0x58>
  2046e8:	11002a6b 	add	w11, w19, #0xa
  2046ec:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1770>
  2046f0:	52800029 	mov	w9, #0x1                   	// #1
  2046f4:	f000000a 	adrp	x10, 207000 <__global_pointer$+0x1770>
  2046f8:	f000000c 	adrp	x12, 207000 <__global_pointer$+0x1770>
  2046fc:	9240196b 	and	x11, x11, #0x7f
  204700:	f9400bf3 	ldr	x19, [sp, #16]
  204704:	391e8509 	strb	w9, [x8, #1953]
  204708:	f903d55f 	str	xzr, [x10, #1960]
  20470c:	f903d98b 	str	x11, [x12, #1968]
  204710:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204714:	d65f03c0 	ret
  204718:	d503201f 	nop
  20471c:	10018220 	adr	x0, 207760 <microkit_name>
  204720:	940000b0 	bl	2049e0 <microkit_dbg_puts>
  204724:	90000000 	adrp	x0, 204000 <cml_enter>
  204728:	9132e000 	add	x0, x0, #0xcb8
  20472c:	940000ad 	bl	2049e0 <microkit_dbg_puts>
  204730:	2a1303e0 	mov	w0, w19
  204734:	940000d3 	bl	204a80 <microkit_dbg_put32>
  204738:	f9400bf3 	ldr	x19, [sp, #16]
  20473c:	90000000 	adrp	x0, 204000 <cml_enter>
  204740:	9132d400 	add	x0, x0, #0xcb5
  204744:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204748:	140000a6 	b	2049e0 <microkit_dbg_puts>
  20474c:	d503201f 	nop

0000000000204750 <fficache_clean>:
  204750:	aa0203e1 	mov	x1, x2
  204754:	14000023 	b	2047e0 <cache_clean>
  204758:	d503201f 	nop
  20475c:	d503201f 	nop

0000000000204760 <fficache_clean_and_invalidate>:
  204760:	aa0203e1 	mov	x1, x2
  204764:	1400000f 	b	2047a0 <cache_clean_and_invalidate>
  204768:	d503201f 	nop
  20476c:	d503201f 	nop

0000000000204770 <ffidebug_print>:
  204770:	d65f03c0 	ret
  204774:	d503201f 	nop
  204778:	d503201f 	nop
  20477c:	d503201f 	nop

0000000000204780 <ffiseL4_SetMR>:
  204780:	b0000008 	adrp	x8, 205000 <__init_array_end>
  204784:	f9404508 	ldr	x8, [x8, #136]
  204788:	8b21cd08 	add	x8, x8, w1, sxtw #3
  20478c:	f9000503 	str	x3, [x8, #8]
  204790:	d65f03c0 	ret
	...

00000000002047a0 <cache_clean_and_invalidate>:
  2047a0:	f240143f 	tst	x1, #0x3f
  2047a4:	d346fc09 	lsr	x9, x0, #6
  2047a8:	1a9f07e8 	cset	w8, ne	// ne = any
  2047ac:	8b081828 	add	x8, x1, x8, lsl #6
  2047b0:	d346fd08 	lsr	x8, x8, #6
  2047b4:	eb090108 	subs	x8, x8, x9
  2047b8:	540000c9 	b.ls	2047d0 <cache_clean_and_invalidate+0x30>  // b.plast
  2047bc:	d37ae529 	lsl	x9, x9, #6
  2047c0:	d50b7e29 	dc	civac, x9
  2047c4:	f1000508 	subs	x8, x8, #0x1
  2047c8:	91010129 	add	x9, x9, #0x40
  2047cc:	54ffffa1 	b.ne	2047c0 <cache_clean_and_invalidate+0x20>  // b.any
  2047d0:	d5033f9f 	dsb	sy
  2047d4:	d65f03c0 	ret
  2047d8:	d503201f 	nop
  2047dc:	d503201f 	nop

00000000002047e0 <cache_clean>:
  2047e0:	f240143f 	tst	x1, #0x3f
  2047e4:	d346fc09 	lsr	x9, x0, #6
  2047e8:	1a9f07e8 	cset	w8, ne	// ne = any
  2047ec:	8b081828 	add	x8, x1, x8, lsl #6
  2047f0:	d346fd08 	lsr	x8, x8, #6
  2047f4:	eb090108 	subs	x8, x8, x9
  2047f8:	540000c9 	b.ls	204810 <cache_clean+0x30>  // b.plast
  2047fc:	d37ae529 	lsl	x9, x9, #6
  204800:	d50b7a29 	dc	cvac, x9
  204804:	f1000508 	subs	x8, x8, #0x1
  204808:	91010129 	add	x9, x9, #0x40
  20480c:	54ffffa1 	b.ne	204800 <cache_clean+0x20>  // b.any
  204810:	d5033fbf 	dmb	sy
  204814:	d65f03c0 	ret
	...

0000000000204820 <protected>:
  204820:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  204824:	d503201f 	nop
  204828:	100179c0 	adr	x0, 207760 <microkit_name>
  20482c:	910003fd 	mov	x29, sp
  204830:	9400006c 	bl	2049e0 <microkit_dbg_puts>
  204834:	d503201f 	nop
  204838:	10002d40 	adr	x0, 204de0 <_text_end+0x16c>
  20483c:	94000069 	bl	2049e0 <microkit_dbg_puts>
  204840:	d2800000 	mov	x0, #0x0                   	// #0
  204844:	b900001f 	str	wzr, [x0]
  204848:	d4207d00 	brk	#0x3e8
  20484c:	d503201f 	nop

0000000000204850 <fault>:
  204850:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  204854:	d503201f 	nop
  204858:	10017840 	adr	x0, 207760 <microkit_name>
  20485c:	910003fd 	mov	x29, sp
  204860:	94000060 	bl	2049e0 <microkit_dbg_puts>
  204864:	90000000 	adrp	x0, 204000 <cml_enter>
  204868:	91386000 	add	x0, x0, #0xe18
  20486c:	9400005d 	bl	2049e0 <microkit_dbg_puts>
  204870:	d2800000 	mov	x0, #0x0                   	// #0
  204874:	b900001f 	str	wzr, [x0]
  204878:	d4207d00 	brk	#0x3e8
  20487c:	00000000 	udf	#0

0000000000204880 <main>:
  204880:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  204884:	d503201f 	nop
  204888:	10003bc0 	adr	x0, 205000 <__init_array_end>
  20488c:	910003fd 	mov	x29, sp
  204890:	a90153f3 	stp	x19, x20, [sp, #16]
  204894:	d503201f 	nop
  204898:	10003b54 	adr	x20, 205000 <__init_array_end>
  20489c:	a9025bf5 	stp	x21, x22, [sp, #32]
  2048a0:	eb140015 	subs	x21, x0, x20
  2048a4:	54000100 	b.eq	2048c4 <main+0x44>  // b.none
  2048a8:	9343feb5 	asr	x21, x21, #3
  2048ac:	d2800013 	mov	x19, #0x0                   	// #0
  2048b0:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
  2048b4:	91000673 	add	x19, x19, #0x1
  2048b8:	d63f0000 	blr	x0
  2048bc:	eb1302bf 	cmp	x21, x19
  2048c0:	54ffff88 	b.hi	2048b0 <main+0x30>  // b.pmore
  2048c4:	d503201f 	nop
  2048c8:	100174d6 	adr	x22, 207760 <microkit_name>
  2048cc:	97fffe29 	bl	204170 <init>
  2048d0:	394102c0 	ldrb	w0, [x22, #64]
  2048d4:	360000a0 	tbz	w0, #0, 2048e8 <main+0x68>
  2048d8:	52800021 	mov	w1, #0x1                   	// #1
  2048dc:	d28000a0 	mov	x0, #0x5                   	// #5
  2048e0:	390106c1 	strb	w1, [x22, #65]
  2048e4:	a90482df 	stp	xzr, x0, [x22, #72]
  2048e8:	d503201f 	nop
  2048ec:	10003cf5 	adr	x21, 205088 <__sel4_ipc_buffer>
  2048f0:	52800000 	mov	w0, #0x0                   	// #0
  2048f4:	35000200 	cbnz	w0, 204934 <main+0xb4>
  2048f8:	39c106c0 	ldrsb	w0, [x22, #65]
  2048fc:	350004c0 	cbnz	w0, 204994 <main+0x114>
  204900:	d2800020 	mov	x0, #0x1                   	// #1
  204904:	d2800086 	mov	x6, #0x4                   	// #4
  204908:	928000c7 	mov	x7, #0xfffffffffffffff9    	// #-7
  20490c:	d4000001 	svc	#0x0
  204910:	f94002a6 	ldr	x6, [x21]
  204914:	aa0003f3 	mov	x19, x0
  204918:	a9008cc2 	stp	x2, x3, [x6, #8]
  20491c:	a90194c4 	stp	x4, x5, [x6, #24]
  204920:	b7f001d3 	tbnz	x19, #62, 204958 <main+0xd8>
  204924:	b6f80273 	tbz	x19, #63, 204970 <main+0xf0>
  204928:	12001660 	and	w0, w19, #0x3f
  20492c:	97ffffbd 	bl	204820 <protected>
  204930:	f9001fe0 	str	x0, [sp, #56]
  204934:	f94002a5 	ldr	x5, [x21]
  204938:	d2800020 	mov	x0, #0x1                   	// #1
  20493c:	f9401fe1 	ldr	x1, [sp, #56]
  204940:	d2800086 	mov	x6, #0x4                   	// #4
  204944:	a9408ca2 	ldp	x2, x3, [x5, #8]
  204948:	92800027 	mov	x7, #0xfffffffffffffffe    	// #-2
  20494c:	a94194a4 	ldp	x4, x5, [x5, #24]
  204950:	d4000001 	svc	#0x0
  204954:	17ffffef 	b	204910 <main+0x90>
  204958:	12001e60 	and	w0, w19, #0xff
  20495c:	9100e3e2 	add	x2, sp, #0x38
  204960:	97ffffbc 	bl	204850 <fault>
  204964:	72001c1f 	tst	w0, #0xff
  204968:	1a9f07e0 	cset	w0, ne	// ne = any
  20496c:	17ffffe2 	b	2048f4 <main+0x74>
  204970:	52800014 	mov	w20, #0x0                   	// #0
  204974:	370000b3 	tbnz	w19, #0, 204988 <main+0x108>
  204978:	d341fe73 	lsr	x19, x19, #1
  20497c:	11000694 	add	w20, w20, #0x1
  204980:	b4fffb93 	cbz	x19, 2048f0 <main+0x70>
  204984:	3607ffb3 	tbz	w19, #0, 204978 <main+0xf8>
  204988:	2a1403e0 	mov	w0, w20
  20498c:	97fffdd5 	bl	2040e0 <notified>
  204990:	17fffffa 	b	204978 <main+0xf8>
  204994:	f94002a5 	ldr	x5, [x21]
  204998:	d2800020 	mov	x0, #0x1                   	// #1
  20499c:	a944a2c1 	ldp	x1, x8, [x22, #72]
  2049a0:	d2800086 	mov	x6, #0x4                   	// #4
  2049a4:	a9408ca2 	ldp	x2, x3, [x5, #8]
  2049a8:	92800047 	mov	x7, #0xfffffffffffffffd    	// #-3
  2049ac:	a94194a4 	ldp	x4, x5, [x5, #24]
  2049b0:	d4000001 	svc	#0x0
  2049b4:	f94002a6 	ldr	x6, [x21]
  2049b8:	aa0003f3 	mov	x19, x0
  2049bc:	390106df 	strb	wzr, [x22, #65]
  2049c0:	a9008cc2 	stp	x2, x3, [x6, #8]
  2049c4:	a90194c4 	stp	x4, x5, [x6, #24]
  2049c8:	17ffffd6 	b	204920 <main+0xa0>
  2049cc:	00000000 	udf	#0

00000000002049d0 <microkit_dbg_putc>:
  2049d0:	d65f03c0 	ret
  2049d4:	d503201f 	nop
  2049d8:	d503201f 	nop
  2049dc:	d503201f 	nop

00000000002049e0 <microkit_dbg_puts>:
  2049e0:	39400001 	ldrb	w1, [x0]
  2049e4:	34000061 	cbz	w1, 2049f0 <microkit_dbg_puts+0x10>
  2049e8:	38401c01 	ldrb	w1, [x0, #1]!
  2049ec:	35ffffe1 	cbnz	w1, 2049e8 <microkit_dbg_puts+0x8>
  2049f0:	d65f03c0 	ret
  2049f4:	d503201f 	nop
  2049f8:	d503201f 	nop
  2049fc:	d503201f 	nop

0000000000204a00 <microkit_dbg_put8>:
  204a00:	12001c00 	and	w0, w0, #0xff
  204a04:	529999a2 	mov	w2, #0xcccd                	// #52429
  204a08:	72b99982 	movk	w2, #0xcccc, lsl #16
  204a0c:	52800143 	mov	w3, #0xa                   	// #10
  204a10:	d10043ff 	sub	sp, sp, #0x10
  204a14:	7100241f 	cmp	w0, #0x9
  204a18:	9ba27c01 	umull	x1, w0, w2
  204a1c:	d2800044 	mov	x4, #0x2                   	// #2
  204a20:	39002fff 	strb	wzr, [sp, #11]
  204a24:	d363fc21 	lsr	x1, x1, #35
  204a28:	1b038025 	msub	w5, w1, w3, w0
  204a2c:	1100c0a5 	add	w5, w5, #0x30
  204a30:	39002be5 	strb	w5, [sp, #10]
  204a34:	540001a9 	b.ls	204a68 <microkit_dbg_put8+0x68>  // b.plast
  204a38:	12001c21 	and	w1, w1, #0xff
  204a3c:	71018c1f 	cmp	w0, #0x63
  204a40:	d2800024 	mov	x4, #0x1                   	// #1
  204a44:	9ba27c22 	umull	x2, w1, w2
  204a48:	d363fc42 	lsr	x2, x2, #35
  204a4c:	1b038443 	msub	w3, w2, w3, w1
  204a50:	1100c063 	add	w3, w3, #0x30
  204a54:	390027e3 	strb	w3, [sp, #9]
  204a58:	54000089 	b.ls	204a68 <microkit_dbg_put8+0x68>  // b.plast
  204a5c:	1100c042 	add	w2, w2, #0x30
  204a60:	d2800004 	mov	x4, #0x0                   	// #0
  204a64:	390023e2 	strb	w2, [sp, #8]
  204a68:	910023e0 	add	x0, sp, #0x8
  204a6c:	8b040000 	add	x0, x0, x4
  204a70:	38401c01 	ldrb	w1, [x0, #1]!
  204a74:	35ffffe1 	cbnz	w1, 204a70 <microkit_dbg_put8+0x70>
  204a78:	910043ff 	add	sp, sp, #0x10
  204a7c:	d65f03c0 	ret

0000000000204a80 <microkit_dbg_put32>:
  204a80:	529999a1 	mov	w1, #0xcccd                	// #52429
  204a84:	72b99981 	movk	w1, #0xcccc, lsl #16
  204a88:	52800143 	mov	w3, #0xa                   	// #10
  204a8c:	d10043ff 	sub	sp, sp, #0x10
  204a90:	9ba17c02 	umull	x2, w0, w1
  204a94:	7100241f 	cmp	w0, #0x9
  204a98:	39002bff 	strb	wzr, [sp, #10]
  204a9c:	d363fc42 	lsr	x2, x2, #35
  204aa0:	1b038044 	msub	w4, w2, w3, w0
  204aa4:	1100c084 	add	w4, w4, #0x30
  204aa8:	390027e4 	strb	w4, [sp, #9]
  204aac:	540009e9 	b.ls	204be8 <microkit_dbg_put32+0x168>  // b.plast
  204ab0:	9ba17c44 	umull	x4, w2, w1
  204ab4:	71018c1f 	cmp	w0, #0x63
  204ab8:	d363fc84 	lsr	x4, x4, #35
  204abc:	1b038882 	msub	w2, w4, w3, w2
  204ac0:	1100c042 	add	w2, w2, #0x30
  204ac4:	390023e2 	strb	w2, [sp, #8]
  204ac8:	54000949 	b.ls	204bf0 <microkit_dbg_put32+0x170>  // b.plast
  204acc:	9ba17c82 	umull	x2, w4, w1
  204ad0:	710f9c1f 	cmp	w0, #0x3e7
  204ad4:	d363fc42 	lsr	x2, x2, #35
  204ad8:	1b039044 	msub	w4, w2, w3, w4
  204adc:	1100c084 	add	w4, w4, #0x30
  204ae0:	39001fe4 	strb	w4, [sp, #7]
  204ae4:	540008a9 	b.ls	204bf8 <microkit_dbg_put32+0x178>  // b.plast
  204ae8:	9ba17c44 	umull	x4, w2, w1
  204aec:	5284e1e5 	mov	w5, #0x270f                	// #9999
  204af0:	6b05001f 	cmp	w0, w5
  204af4:	d363fc84 	lsr	x4, x4, #35
  204af8:	1b038882 	msub	w2, w4, w3, w2
  204afc:	1100c042 	add	w2, w2, #0x30
  204b00:	39001be2 	strb	w2, [sp, #6]
  204b04:	540007e9 	b.ls	204c00 <microkit_dbg_put32+0x180>  // b.plast
  204b08:	9ba17c82 	umull	x2, w4, w1
  204b0c:	5290d3e5 	mov	w5, #0x869f                	// #34463
  204b10:	72a00025 	movk	w5, #0x1, lsl #16
  204b14:	6b05001f 	cmp	w0, w5
  204b18:	d363fc42 	lsr	x2, x2, #35
  204b1c:	1b039044 	msub	w4, w2, w3, w4
  204b20:	1100c084 	add	w4, w4, #0x30
  204b24:	390017e4 	strb	w4, [sp, #5]
  204b28:	54000709 	b.ls	204c08 <microkit_dbg_put32+0x188>  // b.plast
  204b2c:	9ba17c44 	umull	x4, w2, w1
  204b30:	528847e5 	mov	w5, #0x423f                	// #16959
  204b34:	72a001e5 	movk	w5, #0xf, lsl #16
  204b38:	6b05001f 	cmp	w0, w5
  204b3c:	d363fc84 	lsr	x4, x4, #35
  204b40:	1b038882 	msub	w2, w4, w3, w2
  204b44:	1100c042 	add	w2, w2, #0x30
  204b48:	390013e2 	strb	w2, [sp, #4]
  204b4c:	540004a9 	b.ls	204be0 <microkit_dbg_put32+0x160>  // b.plast
  204b50:	9ba17c82 	umull	x2, w4, w1
  204b54:	5292cfe5 	mov	w5, #0x967f                	// #38527
  204b58:	72a01305 	movk	w5, #0x98, lsl #16
  204b5c:	6b05001f 	cmp	w0, w5
  204b60:	d363fc42 	lsr	x2, x2, #35
  204b64:	1b039044 	msub	w4, w2, w3, w4
  204b68:	1100c084 	add	w4, w4, #0x30
  204b6c:	39000fe4 	strb	w4, [sp, #3]
  204b70:	54000509 	b.ls	204c10 <microkit_dbg_put32+0x190>  // b.plast
  204b74:	9ba17c44 	umull	x4, w2, w1
  204b78:	529c1fe5 	mov	w5, #0xe0ff                	// #57599
  204b7c:	72a0bea5 	movk	w5, #0x5f5, lsl #16
  204b80:	6b05001f 	cmp	w0, w5
  204b84:	d363fc84 	lsr	x4, x4, #35
  204b88:	1b038882 	msub	w2, w4, w3, w2
  204b8c:	1100c042 	add	w2, w2, #0x30
  204b90:	39000be2 	strb	w2, [sp, #2]
  204b94:	54000429 	b.ls	204c18 <microkit_dbg_put32+0x198>  // b.plast
  204b98:	9ba17c81 	umull	x1, w4, w1
  204b9c:	52993fe2 	mov	w2, #0xc9ff                	// #51711
  204ba0:	72a77342 	movk	w2, #0x3b9a, lsl #16
  204ba4:	6b02001f 	cmp	w0, w2
  204ba8:	d363fc21 	lsr	x1, x1, #35
  204bac:	1b039023 	msub	w3, w1, w3, w4
  204bb0:	1100c063 	add	w3, w3, #0x30
  204bb4:	390007e3 	strb	w3, [sp, #1]
  204bb8:	54000349 	b.ls	204c20 <microkit_dbg_put32+0x1a0>  // b.plast
  204bbc:	1100c021 	add	w1, w1, #0x30
  204bc0:	d2800000 	mov	x0, #0x0                   	// #0
  204bc4:	390003e1 	strb	w1, [sp]
  204bc8:	8b2063e0 	add	x0, sp, x0
  204bcc:	d503201f 	nop
  204bd0:	38401c01 	ldrb	w1, [x0, #1]!
  204bd4:	35ffffe1 	cbnz	w1, 204bd0 <microkit_dbg_put32+0x150>
  204bd8:	910043ff 	add	sp, sp, #0x10
  204bdc:	d65f03c0 	ret
  204be0:	d2800080 	mov	x0, #0x4                   	// #4
  204be4:	17fffff9 	b	204bc8 <microkit_dbg_put32+0x148>
  204be8:	d2800120 	mov	x0, #0x9                   	// #9
  204bec:	17fffff7 	b	204bc8 <microkit_dbg_put32+0x148>
  204bf0:	d2800100 	mov	x0, #0x8                   	// #8
  204bf4:	17fffff5 	b	204bc8 <microkit_dbg_put32+0x148>
  204bf8:	d28000e0 	mov	x0, #0x7                   	// #7
  204bfc:	17fffff3 	b	204bc8 <microkit_dbg_put32+0x148>
  204c00:	d28000c0 	mov	x0, #0x6                   	// #6
  204c04:	17fffff1 	b	204bc8 <microkit_dbg_put32+0x148>
  204c08:	d28000a0 	mov	x0, #0x5                   	// #5
  204c0c:	17ffffef 	b	204bc8 <microkit_dbg_put32+0x148>
  204c10:	d2800060 	mov	x0, #0x3                   	// #3
  204c14:	17ffffed 	b	204bc8 <microkit_dbg_put32+0x148>
  204c18:	d2800040 	mov	x0, #0x2                   	// #2
  204c1c:	17ffffeb 	b	204bc8 <microkit_dbg_put32+0x148>
  204c20:	d2800020 	mov	x0, #0x1                   	// #1
  204c24:	17ffffe9 	b	204bc8 <microkit_dbg_put32+0x148>
  204c28:	d503201f 	nop
  204c2c:	d503201f 	nop

0000000000204c30 <__assert_fail>:
  204c30:	d503201f 	nop
  204c34:	10001062 	adr	x2, 204e40 <_text_end+0x1cc>
  204c38:	38401c44 	ldrb	w4, [x2, #1]!
  204c3c:	35ffffe4 	cbnz	w4, 204c38 <__assert_fail+0x8>
  204c40:	39400002 	ldrb	w2, [x0]
  204c44:	34000062 	cbz	w2, 204c50 <__assert_fail+0x20>
  204c48:	38401c02 	ldrb	w2, [x0, #1]!
  204c4c:	35ffffe2 	cbnz	w2, 204c48 <__assert_fail+0x18>
  204c50:	39400020 	ldrb	w0, [x1]
  204c54:	34000060 	cbz	w0, 204c60 <__assert_fail+0x30>
  204c58:	38401c20 	ldrb	w0, [x1, #1]!
  204c5c:	35ffffe0 	cbnz	w0, 204c58 <__assert_fail+0x28>
  204c60:	39400060 	ldrb	w0, [x3]
  204c64:	34000060 	cbz	w0, 204c70 <__assert_fail+0x40>
  204c68:	38401c60 	ldrb	w0, [x3, #1]!
  204c6c:	35ffffe0 	cbnz	w0, 204c68 <__assert_fail+0x38>
  204c70:	d65f03c0 	ret
