
build/network_virt_rx.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000200000 <_start>:
  200000:	14001348 	b	204d20 <main>
	...

0000000000201000 <cml_main>:
  201000:	90000000 	adrp	x0, 201000 <cml_main>
  201004:	91020000 	add	x0, x0, #0x80
  201008:	d503201f 	nop
  20100c:	10027fa1 	adr	x1, 206000 <__init_array_end>
  201010:	f9400021 	ldr	x1, [x1]
  201014:	d503201f 	nop
  201018:	10027f82 	adr	x2, 206008 <cml_stack>
  20101c:	f9400042 	ldr	x2, [x2]
  201020:	d503201f 	nop
  201024:	10027f63 	adr	x3, 206010 <cml_stackend>
  201028:	f9400063 	ldr	x3, [x3]
  20102c:	14000bf5 	b	204000 <cml_enter>

0000000000201030 <cake_fficache_clean_and_invalidate>:
  201030:	14000ef0 	b	204bf0 <fficache_clean_and_invalidate>
  201034:	d503201f 	nop
  201038:	d503201f 	nop
  20103c:	d503201f 	nop

0000000000201040 <cake_ffisddf_notify>:
  201040:	14000ea4 	b	204ad0 <ffisddf_notify>
  201044:	d503201f 	nop
  201048:	d503201f 	nop
  20104c:	d503201f 	nop

0000000000201050 <cake_ffisddf_deferred_notify>:
  201050:	14000ec0 	b	204b50 <ffisddf_deferred_notify>
  201054:	d503201f 	nop
  201058:	d503201f 	nop
  20105c:	d503201f 	nop

0000000000201060 <cake_clear>:
  201060:	14000c24 	b	2040f0 <cml_exit>
  201064:	d503201f 	nop
  201068:	d503201f 	nop
  20106c:	d503201f 	nop

0000000000201070 <cake_exit>:
  201070:	14000c04 	b	204080 <cml_return>
  201074:	d503201f 	nop
  201078:	d503201f 	nop
  20107c:	d503201f 	nop

0000000000201080 <cml__Init_0>:
  201080:	aa03007e 	.word	0xaa03007e
  201084:	cb0103de 	.word	0xcb0103de
  201088:	d344ffde 	.word	0xd344ffde
  20108c:	d37df3de 	.word	0xd37df3de
  201090:	8b0103de 	.word	0x8b0103de
  201094:	d280ff05 	.word	0xd280ff05
  201098:	8b050021 	.word	0x8b050021
  20109c:	cb050063 	.word	0xcb050063
  2010a0:	eb01005f 	.word	0xeb01005f
  2010a4:	540000a3 	.word	0x540000a3
  2010a8:	eb02007f 	.word	0xeb02007f
  2010ac:	54000042 	.word	0x54000042
  2010b0:	aa1e03c2 	.word	0xaa1e03c2
  2010b4:	14000002 	.word	0x14000002
  2010b8:	aa1e03c2 	.word	0xaa1e03c2
  2010bc:	d280ff1e 	.word	0xd280ff1e
  2010c0:	cb1e0021 	.word	0xcb1e0021
  2010c4:	8b1e0063 	.word	0x8b1e0063
  2010c8:	aa02005e 	.word	0xaa02005e
  2010cc:	cb0103de 	.word	0xcb0103de
  2010d0:	b27dd3e5 	.word	0xb27dd3e5
  2010d4:	eb1e00bf 	.word	0xeb1e00bf
  2010d8:	54000062 	.word	0x54000062
  2010dc:	aa010022 	.word	0xaa010022
  2010e0:	8b050042 	.word	0x8b050042
  2010e4:	cb010042 	.word	0xcb010042
  2010e8:	d344fc42 	.word	0xd344fc42
  2010ec:	d37cec42 	.word	0xd37cec42
  2010f0:	8b010042 	.word	0x8b010042
  2010f4:	aa020045 	.word	0xaa020045
  2010f8:	cb0100a5 	.word	0xcb0100a5
  2010fc:	d341fca5 	.word	0xd341fca5
  201100:	aa01003c 	.word	0xaa01003c
  201104:	8b050021 	.word	0x8b050021
  201108:	aa030079 	.word	0xaa030079
  20110c:	aa02005b 	.word	0xaa02005b
  201110:	f9400382 	.word	0xf9400382
  201114:	d343fc42 	.word	0xd343fc42
  201118:	aa1c039e 	.word	0xaa1c039e
  20111c:	910023de 	.word	0x910023de
  201120:	f94003c3 	.word	0xf94003c3
  201124:	910023de 	.word	0x910023de
  201128:	f94003c6 	.word	0xf94003c6
  20112c:	910023de 	.word	0x910023de
  201130:	f94003c7 	.word	0xf94003c7
  201134:	910023de 	.word	0x910023de
  201138:	f94003c0 	.word	0xf94003c0
  20113c:	d280011e 	.word	0xd280011e
  201140:	cb1e0339 	.word	0xcb1e0339
  201144:	d280001e 	.word	0xd280001e
  201148:	f900033e 	.word	0xf900033e
  20114c:	d280001e 	.word	0xd280001e
  201150:	f900037e 	.word	0xf900037e
  201154:	9100237b 	.word	0x9100237b
  201158:	d280001e 	.word	0xd280001e
  20115c:	f900037e 	.word	0xf900037e
  201160:	9100237b 	.word	0x9100237b
  201164:	d280001e 	.word	0xd280001e
  201168:	f900037e 	.word	0xf900037e
  20116c:	9100237b 	.word	0x9100237b
  201170:	d280001e 	.word	0xd280001e
  201174:	f900037e 	.word	0xf900037e
  201178:	9100237b 	.word	0x9100237b
  20117c:	d280001e 	.word	0xd280001e
  201180:	f900037e 	.word	0xf900037e
  201184:	9100237b 	.word	0x9100237b
  201188:	d280001e 	.word	0xd280001e
  20118c:	f900037e 	.word	0xf900037e
  201190:	9100237b 	.word	0x9100237b
  201194:	d280001e 	.word	0xd280001e
  201198:	f900037e 	.word	0xf900037e
  20119c:	9100237b 	.word	0x9100237b
  2011a0:	d280001e 	.word	0xd280001e
  2011a4:	f900037e 	.word	0xf900037e
  2011a8:	9100237b 	.word	0x9100237b
  2011ac:	d280001e 	.word	0xd280001e
  2011b0:	f900037e 	.word	0xf900037e
  2011b4:	9100237b 	.word	0x9100237b
  2011b8:	d280001e 	.word	0xd280001e
  2011bc:	f900037e 	.word	0xf900037e
  2011c0:	9100237b 	.word	0x9100237b
  2011c4:	d280001e 	.word	0xd280001e
  2011c8:	f900037e 	.word	0xf900037e
  2011cc:	9100237b 	.word	0x9100237b
  2011d0:	d280001e 	.word	0xd280001e
  2011d4:	f900037e 	.word	0xf900037e
  2011d8:	9100237b 	.word	0x9100237b
  2011dc:	d280001e 	.word	0xd280001e
  2011e0:	f900037e 	.word	0xf900037e
  2011e4:	9100237b 	.word	0x9100237b
  2011e8:	d280001e 	.word	0xd280001e
  2011ec:	f900037e 	.word	0xf900037e
  2011f0:	9100237b 	.word	0x9100237b
  2011f4:	d280001e 	.word	0xd280001e
  2011f8:	f900037e 	.word	0xf900037e
  2011fc:	9100237b 	.word	0x9100237b
  201200:	d280001e 	.word	0xd280001e
  201204:	f900037e 	.word	0xf900037e
  201208:	9100237b 	.word	0x9100237b
  20120c:	d280001e 	.word	0xd280001e
  201210:	f900037e 	.word	0xf900037e
  201214:	9100237b 	.word	0x9100237b
  201218:	d280001e 	.word	0xd280001e
  20121c:	f900037e 	.word	0xf900037e
  201220:	9100237b 	.word	0x9100237b
  201224:	d280001e 	.word	0xd280001e
  201228:	f900037e 	.word	0xf900037e
  20122c:	9100237b 	.word	0x9100237b
  201230:	d280001e 	.word	0xd280001e
  201234:	f900037e 	.word	0xf900037e
  201238:	9100237b 	.word	0x9100237b
  20123c:	d280001e 	.word	0xd280001e
  201240:	f900037e 	.word	0xf900037e
  201244:	9100237b 	.word	0x9100237b
  201248:	d280001e 	.word	0xd280001e
  20124c:	f900037e 	.word	0xf900037e
  201250:	9100237b 	.word	0x9100237b
  201254:	d280001e 	.word	0xd280001e
  201258:	f900037e 	.word	0xf900037e
  20125c:	9100237b 	.word	0x9100237b
  201260:	d280001e 	.word	0xd280001e
  201264:	f900037e 	.word	0xf900037e
  201268:	9100237b 	.word	0x9100237b
  20126c:	d280001e 	.word	0xd280001e
  201270:	f900037e 	.word	0xf900037e
  201274:	9100237b 	.word	0x9100237b
  201278:	d280001e 	.word	0xd280001e
  20127c:	f900037e 	.word	0xf900037e
  201280:	9100237b 	.word	0x9100237b
  201284:	d280001e 	.word	0xd280001e
  201288:	f900037e 	.word	0xf900037e
  20128c:	9100237b 	.word	0x9100237b
  201290:	d280001e 	.word	0xd280001e
  201294:	f900037e 	.word	0xf900037e
  201298:	9100237b 	.word	0x9100237b
  20129c:	d280001e 	.word	0xd280001e
  2012a0:	f900037e 	.word	0xf900037e
  2012a4:	9100237b 	.word	0x9100237b
  2012a8:	d280001e 	.word	0xd280001e
  2012ac:	f900037e 	.word	0xf900037e
  2012b0:	9100237b 	.word	0x9100237b
  2012b4:	d280001e 	.word	0xd280001e
  2012b8:	f900037e 	.word	0xf900037e
  2012bc:	9100237b 	.word	0x9100237b
  2012c0:	d280001e 	.word	0xd280001e
  2012c4:	f900037e 	.word	0xf900037e
  2012c8:	9100237b 	.word	0x9100237b
  2012cc:	f9000366 	.word	0xf9000366
  2012d0:	9100237b 	.word	0x9100237b
  2012d4:	f9000363 	.word	0xf9000363
  2012d8:	9100237b 	.word	0x9100237b
  2012dc:	f9000360 	.word	0xf9000360
  2012e0:	9100237b 	.word	0x9100237b
  2012e4:	f9000367 	.word	0xf9000367
  2012e8:	9100237b 	.word	0x9100237b
  2012ec:	d280001e 	.word	0xd280001e
  2012f0:	f900037e 	.word	0xf900037e
  2012f4:	9100237b 	.word	0x9100237b
  2012f8:	f9000362 	.word	0xf9000362
  2012fc:	9100237b 	.word	0x9100237b
  201300:	d280001e 	.word	0xd280001e
  201304:	f900037e 	.word	0xf900037e
  201308:	9100237b 	.word	0x9100237b
  20130c:	f900037c 	.word	0xf900037c
  201310:	9100237b 	.word	0x9100237b
  201314:	d280001e 	.word	0xd280001e
  201318:	f900037e 	.word	0xf900037e
  20131c:	9100237b 	.word	0x9100237b
  201320:	d280001e 	.word	0xd280001e
  201324:	f900037e 	.word	0xf900037e
  201328:	9100237b 	.word	0x9100237b
  20132c:	d280001e 	.word	0xd280001e
  201330:	f900037e 	.word	0xf900037e
  201334:	9100237b 	.word	0x9100237b
  201338:	f9000361 	.word	0xf9000361
  20133c:	9100237b 	.word	0x9100237b
  201340:	f9000361 	.word	0xf9000361
  201344:	9100237b 	.word	0x9100237b
  201348:	f9000365 	.word	0xf9000365
  20134c:	9100237b 	.word	0x9100237b
  201350:	f9000361 	.word	0xf9000361
  201354:	9100237b 	.word	0x9100237b
  201358:	f900037c 	.word	0xf900037c
  20135c:	9100237b 	.word	0x9100237b
  201360:	1000005e 	.word	0x1000005e
  201364:	1400010d 	.word	0x1400010d

0000000000201368 <cml__Halt0_1>:
  201368:	d2800000 	mov	x0, #0x0                   	// #0
  20136c:	17ffff41 	b	201070 <cake_exit>

0000000000201370 <cml__Halt2_2>:
  201370:	d2800040 	mov	x0, #0x2                   	// #2
  201374:	17ffff3f 	b	201070 <cake_exit>

0000000000201378 <cml__GC_3>:
  201378:	f81d0360 	stur	x0, [x27, #-48]
  20137c:	f81f837e 	stur	x30, [x27, #-8]
  201380:	d2800000 	mov	x0, #0x0                   	// #0
  201384:	aa000001 	orr	x1, x0, x0
  201388:	f85e0362 	ldur	x2, [x27, #-32]
  20138c:	aa000003 	orr	x3, x0, x0
  201390:	f85c0365 	ldur	x5, [x27, #-64]
  201394:	aa000006 	orr	x6, x0, x0
  201398:	aa000008 	orr	x8, x0, x0
  20139c:	f24000bf 	tst	x5, #0x1
  2013a0:	54000500 	b.eq	201440 <cml__GC_3+0xc8>  // b.none
  2013a4:	aa0500be 	orr	x30, x5, x5
  2013a8:	aa1c0380 	orr	x0, x28, x28
  2013ac:	d34cffde 	lsr	x30, x30, #12
  2013b0:	d37df3de 	lsl	x30, x30, #3
  2013b4:	8b0003de 	add	x30, x30, x0
  2013b8:	f94003c0 	ldr	x0, [x30]
  2013bc:	f240041f 	tst	x0, #0x3
  2013c0:	54000360 	b.eq	20142c <cml__GC_3+0xb4>  // b.none
  2013c4:	d360fc00 	lsr	x0, x0, #32
  2013c8:	91000400 	add	x0, x0, #0x1
  2013cc:	aa000006 	orr	x6, x0, x0
  2013d0:	aa1e03c1 	orr	x1, x30, x30
  2013d4:	aa00001e 	orr	x30, x0, x0
  2013d8:	f10003df 	cmp	x30, #0x0
  2013dc:	540000e0 	b.eq	2013f8 <cml__GC_3+0x80>  // b.none
  2013e0:	f9400020 	ldr	x0, [x1]
  2013e4:	91002021 	add	x1, x1, #0x8
  2013e8:	d10007de 	sub	x30, x30, #0x1
  2013ec:	f9000040 	str	x0, [x2]
  2013f0:	91002042 	add	x2, x2, #0x8
  2013f4:	17fffff9 	b	2013d8 <cml__GC_3+0x60>
  2013f8:	aa0600de 	orr	x30, x6, x6
  2013fc:	d37df3de 	lsl	x30, x30, #3
  201400:	cb1e0021 	sub	x1, x1, x30
  201404:	aa03007e 	orr	x30, x3, x3
  201408:	d37ef7de 	lsl	x30, x30, #2
  20140c:	f900003e 	str	x30, [x1]
  201410:	aa030060 	orr	x0, x3, x3
  201414:	d34920a5 	lsl	x5, x5, #55
  201418:	d377fca5 	lsr	x5, x5, #55
  20141c:	d374cc00 	lsl	x0, x0, #12
  201420:	aa0000a5 	orr	x5, x5, x0
  201424:	8b060063 	add	x3, x3, x6
  201428:	14000006 	b	201440 <cml__GC_3+0xc8>
  20142c:	d342fc00 	lsr	x0, x0, #2
  201430:	d374cc00 	lsl	x0, x0, #12
  201434:	d34920a5 	lsl	x5, x5, #55
  201438:	d377fca5 	lsr	x5, x5, #55
  20143c:	aa0000a5 	orr	x5, x5, x0
  201440:	f81c0365 	stur	x5, [x27, #-64]
  201444:	aa0500a7 	orr	x7, x5, x5
  201448:	d34cfce7 	lsr	x7, x7, #12
  20144c:	d37df0e7 	lsl	x7, x7, #3
  201450:	f85e0369 	ldur	x9, [x27, #-32]
  201454:	8b0900e7 	add	x7, x7, x9
  201458:	f81b8367 	stur	x7, [x27, #-72]
  20145c:	d2800007 	mov	x7, #0x0                   	// #0
  201460:	aa080109 	orr	x9, x8, x8
  201464:	8b190129 	add	x9, x9, x25
  201468:	f9400129 	ldr	x9, [x9]
  20146c:	aa0700e8 	orr	x8, x7, x7
  201470:	ea09013f 	tst	x9, x9
  201474:	540009c0 	b.eq	2015ac <cml__GC_3+0x234>  // b.none
  201478:	aa09013e 	orr	x30, x9, x9
  20147c:	d1000529 	sub	x9, x9, #0x1
  201480:	91002108 	add	x8, x8, #0x8
  201484:	ea1e03df 	tst	x30, x30
  201488:	540008a0 	b.eq	20159c <cml__GC_3+0x224>  // b.none
  20148c:	f85a8367 	ldur	x7, [x27, #-88]
  201490:	8b0900e7 	add	x7, x7, x9
  201494:	d37df0e7 	lsl	x7, x7, #3
  201498:	f94000e7 	ldr	x7, [x7]
  20149c:	f10008ff 	cmp	x7, #0x2
  2014a0:	54000703 	b.cc	201580 <cml__GC_3+0x208>  // b.lo, b.ul, b.last
  2014a4:	f24000ff 	tst	x7, #0x1
  2014a8:	54000660 	b.eq	201574 <cml__GC_3+0x1fc>  // b.none
  2014ac:	aa080105 	orr	x5, x8, x8
  2014b0:	8b1900a5 	add	x5, x5, x25
  2014b4:	f94000a5 	ldr	x5, [x5]
  2014b8:	d341fce7 	lsr	x7, x7, #1
  2014bc:	f24000bf 	tst	x5, #0x1
  2014c0:	54000500 	b.eq	201560 <cml__GC_3+0x1e8>  // b.none
  2014c4:	aa0500be 	orr	x30, x5, x5
  2014c8:	aa1c0380 	orr	x0, x28, x28
  2014cc:	d34cffde 	lsr	x30, x30, #12
  2014d0:	d37df3de 	lsl	x30, x30, #3
  2014d4:	8b0003de 	add	x30, x30, x0
  2014d8:	f94003c0 	ldr	x0, [x30]
  2014dc:	f240041f 	tst	x0, #0x3
  2014e0:	54000360 	b.eq	20154c <cml__GC_3+0x1d4>  // b.none
  2014e4:	d360fc00 	lsr	x0, x0, #32
  2014e8:	91000400 	add	x0, x0, #0x1
  2014ec:	aa000006 	orr	x6, x0, x0
  2014f0:	aa1e03c1 	orr	x1, x30, x30
  2014f4:	aa00001e 	orr	x30, x0, x0
  2014f8:	f10003df 	cmp	x30, #0x0
  2014fc:	540000e0 	b.eq	201518 <cml__GC_3+0x1a0>  // b.none
  201500:	f9400020 	ldr	x0, [x1]
  201504:	91002021 	add	x1, x1, #0x8
  201508:	d10007de 	sub	x30, x30, #0x1
  20150c:	f9000040 	str	x0, [x2]
  201510:	91002042 	add	x2, x2, #0x8
  201514:	17fffff9 	b	2014f8 <cml__GC_3+0x180>
  201518:	aa0600de 	orr	x30, x6, x6
  20151c:	d37df3de 	lsl	x30, x30, #3
  201520:	cb1e0021 	sub	x1, x1, x30
  201524:	aa03007e 	orr	x30, x3, x3
  201528:	d37ef7de 	lsl	x30, x30, #2
  20152c:	f900003e 	str	x30, [x1]
  201530:	aa030060 	orr	x0, x3, x3
  201534:	d34920a5 	lsl	x5, x5, #55
  201538:	d377fca5 	lsr	x5, x5, #55
  20153c:	d374cc00 	lsl	x0, x0, #12
  201540:	aa0000a5 	orr	x5, x5, x0
  201544:	8b060063 	add	x3, x3, x6
  201548:	14000006 	b	201560 <cml__GC_3+0x1e8>
  20154c:	d342fc00 	lsr	x0, x0, #2
  201550:	d374cc00 	lsl	x0, x0, #12
  201554:	d34920a5 	lsl	x5, x5, #55
  201558:	d377fca5 	lsr	x5, x5, #55
  20155c:	aa0000a5 	orr	x5, x5, x0
  201560:	8b080339 	add	x25, x25, x8
  201564:	f9000325 	str	x5, [x25]
  201568:	cb080339 	sub	x25, x25, x8
  20156c:	91002108 	add	x8, x8, #0x8
  201570:	14000003 	b	20157c <cml__GC_3+0x204>
  201574:	d341fce7 	lsr	x7, x7, #1
  201578:	91002108 	add	x8, x8, #0x8
  20157c:	17ffffc8 	b	20149c <cml__GC_3+0x124>
  201580:	f85a837e 	ldur	x30, [x27, #-88]
  201584:	8b0903de 	add	x30, x30, x9
  201588:	d37df3de 	lsl	x30, x30, #3
  20158c:	f94003de 	ldr	x30, [x30]
  201590:	91000529 	add	x9, x9, #0x1
  201594:	d37fffde 	lsr	x30, x30, #63
  201598:	17ffffbb 	b	201484 <cml__GC_3+0x10c>
  20159c:	aa080109 	orr	x9, x8, x8
  2015a0:	8b190129 	add	x9, x9, x25
  2015a4:	f9400129 	ldr	x9, [x9]
  2015a8:	17ffffb2 	b	201470 <cml__GC_3+0xf8>
  2015ac:	f85e0368 	ldur	x8, [x27, #-32]
  2015b0:	eb08005f 	cmp	x2, x8
  2015b4:	54000780 	b.eq	2016a4 <cml__GC_3+0x32c>  // b.none
  2015b8:	f9400107 	ldr	x7, [x8]
  2015bc:	f27e00ff 	tst	x7, #0x4
  2015c0:	540000c0 	b.eq	2015d8 <cml__GC_3+0x260>  // b.none
  2015c4:	d360fce7 	lsr	x7, x7, #32
  2015c8:	910004e7 	add	x7, x7, #0x1
  2015cc:	d37df0e7 	lsl	x7, x7, #3
  2015d0:	8b070108 	add	x8, x8, x7
  2015d4:	14000033 	b	2016a0 <cml__GC_3+0x328>
  2015d8:	d360fce7 	lsr	x7, x7, #32
  2015dc:	91002108 	add	x8, x8, #0x8
  2015e0:	f10000ff 	cmp	x7, #0x0
  2015e4:	540005e0 	b.eq	2016a0 <cml__GC_3+0x328>  // b.none
  2015e8:	f9400105 	ldr	x5, [x8]
  2015ec:	d10004e7 	sub	x7, x7, #0x1
  2015f0:	f24000bf 	tst	x5, #0x1
  2015f4:	54000500 	b.eq	201694 <cml__GC_3+0x31c>  // b.none
  2015f8:	aa0500be 	orr	x30, x5, x5
  2015fc:	aa1c0380 	orr	x0, x28, x28
  201600:	d34cffde 	lsr	x30, x30, #12
  201604:	d37df3de 	lsl	x30, x30, #3
  201608:	8b0003de 	add	x30, x30, x0
  20160c:	f94003c0 	ldr	x0, [x30]
  201610:	f240041f 	tst	x0, #0x3
  201614:	54000360 	b.eq	201680 <cml__GC_3+0x308>  // b.none
  201618:	d360fc00 	lsr	x0, x0, #32
  20161c:	91000400 	add	x0, x0, #0x1
  201620:	aa000006 	orr	x6, x0, x0
  201624:	aa1e03c1 	orr	x1, x30, x30
  201628:	aa00001e 	orr	x30, x0, x0
  20162c:	f10003df 	cmp	x30, #0x0
  201630:	540000e0 	b.eq	20164c <cml__GC_3+0x2d4>  // b.none
  201634:	f9400020 	ldr	x0, [x1]
  201638:	91002021 	add	x1, x1, #0x8
  20163c:	d10007de 	sub	x30, x30, #0x1
  201640:	f9000040 	str	x0, [x2]
  201644:	91002042 	add	x2, x2, #0x8
  201648:	17fffff9 	b	20162c <cml__GC_3+0x2b4>
  20164c:	aa0600de 	orr	x30, x6, x6
  201650:	d37df3de 	lsl	x30, x30, #3
  201654:	cb1e0021 	sub	x1, x1, x30
  201658:	aa03007e 	orr	x30, x3, x3
  20165c:	d37ef7de 	lsl	x30, x30, #2
  201660:	f900003e 	str	x30, [x1]
  201664:	aa030060 	orr	x0, x3, x3
  201668:	d34920a5 	lsl	x5, x5, #55
  20166c:	d377fca5 	lsr	x5, x5, #55
  201670:	d374cc00 	lsl	x0, x0, #12
  201674:	aa0000a5 	orr	x5, x5, x0
  201678:	8b060063 	add	x3, x3, x6
  20167c:	14000006 	b	201694 <cml__GC_3+0x31c>
  201680:	d342fc00 	lsr	x0, x0, #2
  201684:	d374cc00 	lsl	x0, x0, #12
  201688:	d34920a5 	lsl	x5, x5, #55
  20168c:	d377fca5 	lsr	x5, x5, #55
  201690:	aa0000a5 	orr	x5, x5, x0
  201694:	f9000105 	str	x5, [x8]
  201698:	91002108 	add	x8, x8, #0x8
  20169c:	17ffffd1 	b	2015e0 <cml__GC_3+0x268>
  2016a0:	17ffffc4 	b	2015b0 <cml__GC_3+0x238>
  2016a4:	aa1c039e 	orr	x30, x28, x28
  2016a8:	f85e0360 	ldur	x0, [x27, #-32]
  2016ac:	f85e8361 	ldur	x1, [x27, #-24]
  2016b0:	8b000021 	add	x1, x1, x0
  2016b4:	aa00001c 	orr	x28, x0, x0
  2016b8:	f81e037e 	stur	x30, [x27, #-32]
  2016bc:	f85f837e 	ldur	x30, [x27, #-8]
  2016c0:	f81f8368 	stur	x8, [x27, #-8]
  2016c4:	f81f0361 	stur	x1, [x27, #-16]
  2016c8:	f81d8361 	stur	x1, [x27, #-40]
  2016cc:	f85d0360 	ldur	x0, [x27, #-48]
  2016d0:	cb080021 	sub	x1, x1, x8
  2016d4:	eb00003f 	cmp	x1, x0
  2016d8:	54000062 	b.cs	2016e4 <cml__GC_3+0x36c>  // b.hs, b.nlast
  2016dc:	d2800020 	mov	x0, #0x1                   	// #1
  2016e0:	17fffe64 	b	201070 <cake_exit>
  2016e4:	d61f03c0 	br	x30

00000000002016e8 <cml__Raise_4>:
  2016e8:	f85c8378 	ldur	x24, [x27, #-56]
  2016ec:	d37df318 	lsl	x24, x24, #3
  2016f0:	aa1b0379 	orr	x25, x27, x27
  2016f4:	8b180339 	add	x25, x25, x24
  2016f8:	f9400b38 	ldr	x24, [x25, #16]
  2016fc:	f81c8378 	stur	x24, [x27, #-56]
  201700:	f9400738 	ldr	x24, [x25, #8]
  201704:	91006339 	add	x25, x25, #0x18
  201708:	d61f0300 	br	x24

000000000020170c <cml__StoreConsts_5>:
  20170c:	f85a837d 	ldur	x29, [x27, #-88]
  201710:	8b0003bd 	add	x29, x29, x0
  201714:	d37df3bd 	lsl	x29, x29, #3
  201718:	f94003a0 	ldr	x0, [x29]
  20171c:	910023bd 	add	x29, x29, #0x8
  201720:	f100001f 	cmp	x0, #0x0
  201724:	540001ea 	b.ge	201760 <cml__StoreConsts_5+0x54>  // b.tcont
  201728:	f100041f 	cmp	x0, #0x1
  20172c:	54000140 	b.eq	201754 <cml__StoreConsts_5+0x48>  // b.none
  201730:	f94003b8 	ldr	x24, [x29]
  201734:	910023bd 	add	x29, x29, #0x8
  201738:	f240001f 	tst	x0, #0x1
  20173c:	54000040 	b.eq	201744 <cml__StoreConsts_5+0x38>  // b.none
  201740:	8b020318 	add	x24, x24, x2
  201744:	d341fc00 	lsr	x0, x0, #1
  201748:	f9000038 	str	x24, [x1]
  20174c:	91002021 	add	x1, x1, #0x8
  201750:	17fffff6 	b	201728 <cml__StoreConsts_5+0x1c>
  201754:	f94003a0 	ldr	x0, [x29]
  201758:	910023bd 	add	x29, x29, #0x8
  20175c:	17fffff1 	b	201720 <cml__StoreConsts_5+0x14>
  201760:	f100041f 	cmp	x0, #0x1
  201764:	54000140 	b.eq	20178c <cml__StoreConsts_5+0x80>  // b.none
  201768:	f94003b8 	ldr	x24, [x29]
  20176c:	910023bd 	add	x29, x29, #0x8
  201770:	f240001f 	tst	x0, #0x1
  201774:	54000040 	b.eq	20177c <cml__StoreConsts_5+0x70>  // b.none
  201778:	8b020318 	add	x24, x24, x2
  20177c:	d341fc00 	lsr	x0, x0, #1
  201780:	f9000038 	str	x24, [x1]
  201784:	91002021 	add	x1, x1, #0x8
  201788:	17fffff6 	b	201760 <cml__StoreConsts_5+0x54>
  20178c:	aa000018 	orr	x24, x0, x0
  201790:	aa00001d 	orr	x29, x0, x0
  201794:	d61f03c0 	br	x30

0000000000201798 <cml_generated_main_6>:
  201798:	14000001 	b	20179c <cml_main_7>

000000000020179c <cml_main_7>:
  20179c:	d2800000 	mov	x0, #0x0                   	// #0
  2017a0:	d61f03c0 	br	x30

00000000002017a4 <cml_net_queue_empty_8>:
  2017a4:	79400001 	ldrh	w1, [x0]
  2017a8:	79400400 	ldrh	w0, [x0, #2]
  2017ac:	cb000021 	sub	x1, x1, x0
  2017b0:	d2800000 	mov	x0, #0x0                   	// #0
  2017b4:	eb00003f 	cmp	x1, x0
  2017b8:	54000041 	b.ne	2017c0 <cml_net_queue_empty_8+0x1c>  // b.any
  2017bc:	d2800020 	mov	x0, #0x1                   	// #1
  2017c0:	d61f03c0 	br	x30

00000000002017c4 <cml_net_queue_full_9>:
  2017c4:	79400002 	ldrh	w2, [x0]
  2017c8:	79400400 	ldrh	w0, [x0, #2]
  2017cc:	cb000040 	sub	x0, x2, x0
  2017d0:	eb01001f 	cmp	x0, x1
  2017d4:	54000060 	b.eq	2017e0 <cml_net_queue_full_9+0x1c>  // b.none
  2017d8:	d2800000 	mov	x0, #0x0                   	// #0
  2017dc:	14000002 	b	2017e4 <cml_net_queue_full_9+0x20>
  2017e0:	d2800020 	mov	x0, #0x1                   	// #1
  2017e4:	d61f03c0 	br	x30

00000000002017e8 <cml_net_enqueue_10>:
  2017e8:	79400005 	ldrh	w5, [x0]
  2017ec:	d1000463 	sub	x3, x3, #0x1
  2017f0:	8a050063 	and	x3, x3, x5
  2017f4:	d37cec63 	lsl	x3, x3, #4
  2017f8:	8b000063 	add	x3, x3, x0
  2017fc:	91002063 	add	x3, x3, #0x8
  201800:	f9000061 	str	x1, [x3]
  201804:	f9000462 	str	x2, [x3, #8]
  201808:	910004a1 	add	x1, x5, #0x1
  20180c:	92403c21 	and	x1, x1, #0xffff
  201810:	79000001 	strh	w1, [x0]
  201814:	d2800000 	mov	x0, #0x0                   	// #0
  201818:	d61f03c0 	br	x30

000000000020181c <cml_net_dequeue_11>:
  20181c:	79400403 	ldrh	w3, [x0, #2]
  201820:	d1000421 	sub	x1, x1, #0x1
  201824:	8a030021 	and	x1, x1, x3
  201828:	d37cec21 	lsl	x1, x1, #4
  20182c:	8b000021 	add	x1, x1, x0
  201830:	91002021 	add	x1, x1, #0x8
  201834:	f9400022 	ldr	x2, [x1]
  201838:	f9400421 	ldr	x1, [x1, #8]
  20183c:	91000463 	add	x3, x3, #0x1
  201840:	92403c63 	and	x3, x3, #0xffff
  201844:	79000403 	strh	w3, [x0, #2]
  201848:	f8178362 	stur	x2, [x27, #-136]
  20184c:	f8170361 	stur	x1, [x27, #-144]
  201850:	d2800000 	mov	x0, #0x0                   	// #0
  201854:	d61f03c0 	br	x30

0000000000201858 <cml_net_request_signal_12>:
  201858:	d2800001 	mov	x1, #0x0                   	// #0
  20185c:	b9000401 	str	w1, [x0, #4]
  201860:	d2800000 	mov	x0, #0x0                   	// #0
  201864:	d61f03c0 	br	x30

0000000000201868 <cml_net_cancel_signal_13>:
  201868:	d2800021 	mov	x1, #0x1                   	// #1
  20186c:	b9000401 	str	w1, [x0, #4]
  201870:	d2800000 	mov	x0, #0x0                   	// #0
  201874:	d61f03c0 	br	x30

0000000000201878 <cml_net_require_signal_14>:
  201878:	b9400400 	ldr	w0, [x0, #4]
  20187c:	d2800001 	mov	x1, #0x0                   	// #0
  201880:	eb00003f 	cmp	x1, x0
  201884:	54000060 	b.eq	201890 <cml_net_require_signal_14+0x18>  // b.none
  201888:	d2800000 	mov	x0, #0x0                   	// #0
  20188c:	14000002 	b	201894 <cml_net_require_signal_14+0x1c>
  201890:	d2800020 	mov	x0, #0x1                   	// #1
  201894:	d61f03c0 	br	x30

0000000000201898 <cml_get_mac_addr_match_15>:
  201898:	d2800001 	mov	x1, #0x0                   	// #0
  20189c:	aa01003d 	orr	x29, x1, x1
  2018a0:	aa000001 	orr	x1, x0, x0
  2018a4:	aa1d03a0 	orr	x0, x29, x29
  2018a8:	14000001 	b	2018ac <cml_NOTFOUND_16>

00000000002018ac <cml_NOTFOUND_16>:
  2018ac:	d2800042 	mov	x2, #0x2                   	// #2
  2018b0:	eb02001f 	cmp	x0, x2
  2018b4:	5400010a 	b.ge	2018d4 <cml_NOTFOUND_16+0x28>  // b.tcont
  2018b8:	d2800023 	mov	x3, #0x1                   	// #1
  2018bc:	d2800002 	mov	x2, #0x0                   	// #0
  2018c0:	aa02005d 	orr	x29, x2, x2
  2018c4:	aa010022 	orr	x2, x1, x1
  2018c8:	aa000001 	orr	x1, x0, x0
  2018cc:	aa1d03a0 	orr	x0, x29, x29
  2018d0:	14000003 	b	2018dc <cml_NOTFOUND_17>
  2018d4:	aa010020 	orr	x0, x1, x1
  2018d8:	14000027 	b	201974 <cml_NOTFOUND_20>

00000000002018dc <cml_NOTFOUND_17>:
  2018dc:	aa1e03c7 	orr	x7, x30, x30
  2018e0:	aa020045 	orr	x5, x2, x2
  2018e4:	d28000de 	mov	x30, #0x6                   	// #6
  2018e8:	eb1e001f 	cmp	x0, x30
  2018ec:	540002ea 	b.ge	201948 <cml_NOTFOUND_17+0x6c>  // b.tcont
  2018f0:	aa010026 	orr	x6, x1, x1
  2018f4:	aa01003d 	orr	x29, x1, x1
  2018f8:	aa1e03c1 	orr	x1, x30, x30
  2018fc:	aa1d03be 	orr	x30, x29, x29
  201900:	9bc17fc2 	umulh	x2, x30, x1
  201904:	9b017fde 	mul	x30, x30, x1
  201908:	8b1e001e 	add	x30, x0, x30
  20190c:	910193de 	add	x30, x30, #0x64
  201910:	d37df3de 	lsl	x30, x30, #3
  201914:	8b1c03de 	add	x30, x30, x28
  201918:	f94003c1 	ldr	x1, [x30]
  20191c:	aa0500a2 	orr	x2, x5, x5
  201920:	8b02001e 	add	x30, x0, x2
  201924:	394003de 	ldrb	w30, [x30]
  201928:	eb0103df 	cmp	x30, x1
  20192c:	54000041 	b.ne	201934 <cml_NOTFOUND_17+0x58>  // b.any
  201930:	14000002 	b	201938 <cml_NOTFOUND_17+0x5c>
  201934:	d2800003 	mov	x3, #0x0                   	// #0
  201938:	91000400 	add	x0, x0, #0x1
  20193c:	aa0700fe 	orr	x30, x7, x7
  201940:	aa0600c1 	orr	x1, x6, x6
  201944:	17ffffe6 	b	2018dc <cml_NOTFOUND_17>
  201948:	aa0700fe 	orr	x30, x7, x7
  20194c:	aa010020 	orr	x0, x1, x1
  201950:	aa0500a1 	orr	x1, x5, x5
  201954:	aa030062 	orr	x2, x3, x3
  201958:	14000001 	b	20195c <cml_NOTFOUND_18>

000000000020195c <cml_NOTFOUND_18>:
  20195c:	f100005f 	cmp	x2, #0x0
  201960:	54000040 	b.eq	201968 <cml_NOTFOUND_18+0xc>  // b.none
  201964:	d61f03c0 	br	x30
  201968:	aa000003 	orr	x3, x0, x0
  20196c:	91000460 	add	x0, x3, #0x1
  201970:	17ffffcf 	b	2018ac <cml_NOTFOUND_16>

0000000000201974 <cml_NOTFOUND_20>:
  201974:	d2800022 	mov	x2, #0x1                   	// #1
  201978:	d2800001 	mov	x1, #0x0                   	// #0
  20197c:	aa01003d 	orr	x29, x1, x1
  201980:	aa000001 	orr	x1, x0, x0
  201984:	aa1d03a0 	orr	x0, x29, x29
  201988:	14000001 	b	20198c <cml_NOTFOUND_21>

000000000020198c <cml_NOTFOUND_21>:
  20198c:	d28000c3 	mov	x3, #0x6                   	// #6
  201990:	eb03001f 	cmp	x0, x3
  201994:	5400014a 	b.ge	2019bc <cml_NOTFOUND_21+0x30>  // b.tcont
  201998:	8b010003 	add	x3, x0, x1
  20199c:	39400063 	ldrb	w3, [x3]
  2019a0:	d2801fe5 	mov	x5, #0xff                  	// #255
  2019a4:	eb05007f 	cmp	x3, x5
  2019a8:	54000041 	b.ne	2019b0 <cml_NOTFOUND_21+0x24>  // b.any
  2019ac:	14000002 	b	2019b4 <cml_NOTFOUND_21+0x28>
  2019b0:	d2800002 	mov	x2, #0x0                   	// #0
  2019b4:	91000400 	add	x0, x0, #0x1
  2019b8:	17fffff5 	b	20198c <cml_NOTFOUND_21>
  2019bc:	aa020040 	orr	x0, x2, x2
  2019c0:	14000001 	b	2019c4 <cml_NOTFOUND_22>

00000000002019c4 <cml_NOTFOUND_22>:
  2019c4:	f100001f 	cmp	x0, #0x0
  2019c8:	54000060 	b.eq	2019d4 <cml_NOTFOUND_22+0x10>  // b.none
  2019cc:	92800020 	mov	x0, #0xfffffffffffffffe    	// #-2
  2019d0:	d61f03c0 	br	x30
  2019d4:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
  2019d8:	d61f03c0 	br	x30

00000000002019dc <cml_rx_return_23>:
  2019dc:	d2800021 	mov	x1, #0x1                   	// #1
  2019e0:	d2800000 	mov	x0, #0x0                   	// #0
  2019e4:	14000001 	b	2019e8 <cml_NOTFOUND_24>

00000000002019e8 <cml_NOTFOUND_24>:
  2019e8:	d2800042 	mov	x2, #0x2                   	// #2
  2019ec:	eb02001f 	cmp	x0, x2
  2019f0:	5400010a 	b.ge	201a10 <cml_NOTFOUND_24+0x28>  // b.tcont
  2019f4:	9113b002 	add	x2, x0, #0x4ec
  2019f8:	d37df042 	lsl	x2, x2, #3
  2019fc:	8b1c0042 	add	x2, x2, x28
  201a00:	d2800003 	mov	x3, #0x0                   	// #0
  201a04:	b9000043 	str	w3, [x2]
  201a08:	91000400 	add	x0, x0, #0x1
  201a0c:	17fffff7 	b	2019e8 <cml_NOTFOUND_24>
  201a10:	aa010020 	orr	x0, x1, x1
  201a14:	14000001 	b	201a18 <cml_NOTFOUND_25>

0000000000201a18 <cml_NOTFOUND_25>:
  201a18:	aa1c0381 	orr	x1, x28, x28
  201a1c:	f9432021 	ldr	x1, [x1, #1600]
  201a20:	aa1c0382 	orr	x2, x28, x28
  201a24:	f9432442 	ldr	x2, [x2, #1608]
  201a28:	14000001 	b	201a2c <cml_NOTFOUND_26>

0000000000201a2c <cml_NOTFOUND_26>:
  201a2c:	f100001f 	cmp	x0, #0x0
  201a30:	54000280 	b.eq	201a80 <cml_NOTFOUND_26+0x54>  // b.none
  201a34:	d2800160 	mov	x0, #0xb                   	// #11
  201a38:	d37df000 	lsl	x0, x0, #3
  201a3c:	8b1c0000 	add	x0, x0, x28
  201a40:	f9400000 	ldr	x0, [x0]
  201a44:	d2800183 	mov	x3, #0xc                   	// #12
  201a48:	d37df063 	lsl	x3, x3, #3
  201a4c:	8b1c0063 	add	x3, x3, x28
  201a50:	f9400063 	ldr	x3, [x3]
  201a54:	79400005 	ldrh	w5, [x0]
  201a58:	79400406 	ldrh	w6, [x0, #2]
  201a5c:	cb0600a6 	sub	x6, x5, x6
  201a60:	d2800005 	mov	x5, #0x0                   	// #0
  201a64:	eb0500df 	cmp	x6, x5
  201a68:	54000041 	b.ne	201a70 <cml_NOTFOUND_26+0x44>  // b.any
  201a6c:	d2800025 	mov	x5, #0x1                   	// #1
  201a70:	aa0500bd 	orr	x29, x5, x5
  201a74:	aa020045 	orr	x5, x2, x2
  201a78:	aa1d03a2 	orr	x2, x29, x29
  201a7c:	14000002 	b	201a84 <cml_NOTFOUND_27>
  201a80:	140000eb 	b	201e2c <cml_NOTFOUND_35>

0000000000201a84 <cml_NOTFOUND_27>:
  201a84:	d1012339 	sub	x25, x25, #0x48
  201a88:	eb1b033f 	cmp	x25, x27
  201a8c:	54000062 	b.cs	201a98 <cml_NOTFOUND_27+0x14>  // b.hs, b.nlast
  201a90:	d2800040 	mov	x0, #0x2                   	// #2
  201a94:	17fffd77 	b	201070 <cake_exit>
  201a98:	d2800006 	mov	x6, #0x0                   	// #0
  201a9c:	eb06005f 	cmp	x2, x6
  201aa0:	54000080 	b.eq	201ab0 <cml_NOTFOUND_27+0x2c>  // b.none
  201aa4:	aa0500a2 	orr	x2, x5, x5
  201aa8:	91012339 	add	x25, x25, #0x48
  201aac:	140000d1 	b	201df0 <cml_NOTFOUND_33>
  201ab0:	f9001b23 	str	x3, [x25, #48]
  201ab4:	f9000f20 	str	x0, [x25, #24]
  201ab8:	79400406 	ldrh	w6, [x0, #2]
  201abc:	d1000462 	sub	x2, x3, #0x1
  201ac0:	8a060042 	and	x2, x2, x6
  201ac4:	d37cec42 	lsl	x2, x2, #4
  201ac8:	8b000042 	add	x2, x2, x0
  201acc:	91002042 	add	x2, x2, #0x8
  201ad0:	f9400043 	ldr	x3, [x2]
  201ad4:	f9400442 	ldr	x2, [x2, #8]
  201ad8:	910004c6 	add	x6, x6, #0x1
  201adc:	92403cc6 	and	x6, x6, #0xffff
  201ae0:	79000406 	strh	w6, [x0, #2]
  201ae4:	f8178363 	stur	x3, [x27, #-136]
  201ae8:	f8170362 	stur	x2, [x27, #-144]
  201aec:	f8578360 	ldur	x0, [x27, #-136]
  201af0:	f8570366 	ldur	x6, [x27, #-144]
  201af4:	aa010023 	orr	x3, x1, x1
  201af8:	cb030007 	sub	x7, x0, x3
  201afc:	8b0700a0 	add	x0, x5, x7
  201b00:	8b0000c2 	add	x2, x6, x0
  201b04:	d2800001 	mov	x1, #0x0                   	// #0
  201b08:	f9001723 	str	x3, [x25, #40]
  201b0c:	aa010023 	orr	x3, x1, x1
  201b10:	f9001f3e 	str	x30, [x25, #56]
  201b14:	f9001326 	str	x6, [x25, #32]
  201b18:	f9002320 	str	x0, [x25, #64]
  201b1c:	f9000b25 	str	x5, [x25, #16]
  201b20:	f9000727 	str	x7, [x25, #8]
  201b24:	1000005e 	adr	x30, 201b2c <cml_NOTFOUND_27+0xa8>
  201b28:	17fffd42 	b	201030 <cake_fficache_clean_and_invalidate>
  201b2c:	f9402320 	ldr	x0, [x25, #64]
  201b30:	f9401f38 	ldr	x24, [x25, #56]
  201b34:	f9002338 	str	x24, [x25, #64]
  201b38:	f9401b38 	ldr	x24, [x25, #48]
  201b3c:	f9001f38 	str	x24, [x25, #56]
  201b40:	f9401738 	ldr	x24, [x25, #40]
  201b44:	f9001b38 	str	x24, [x25, #48]
  201b48:	f9401338 	ldr	x24, [x25, #32]
  201b4c:	f9001738 	str	x24, [x25, #40]
  201b50:	f9400f38 	ldr	x24, [x25, #24]
  201b54:	f9001338 	str	x24, [x25, #32]
  201b58:	f9400b38 	ldr	x24, [x25, #16]
  201b5c:	f9000f38 	str	x24, [x25, #24]
  201b60:	f9400738 	ldr	x24, [x25, #8]
  201b64:	f9000b38 	str	x24, [x25, #16]
  201b68:	d2800058 	mov	x24, #0x2                   	// #2
  201b6c:	f9000338 	str	x24, [x25]
  201b70:	d1006339 	sub	x25, x25, #0x18
  201b74:	eb1b033f 	cmp	x25, x27
  201b78:	54000062 	b.cs	201b84 <cml_NOTFOUND_27+0x100>  // b.hs, b.nlast
  201b7c:	d2800040 	mov	x0, #0x2                   	// #2
  201b80:	17fffd3c 	b	201070 <cake_exit>
  201b84:	d2800038 	mov	x24, #0x1                   	// #1
  201b88:	f9000338 	str	x24, [x25]
  201b8c:	10000cb8 	adr	x24, 201d20 <cml_NOTFOUND_27+0x29c>
  201b90:	f9000738 	str	x24, [x25, #8]
  201b94:	f85c8378 	ldur	x24, [x27, #-56]
  201b98:	f9000b38 	str	x24, [x25, #16]
  201b9c:	aa190338 	orr	x24, x25, x25
  201ba0:	cb1b0318 	sub	x24, x24, x27
  201ba4:	d343ff18 	lsr	x24, x24, #3
  201ba8:	f81c8378 	stur	x24, [x27, #-56]
  201bac:	1000005e 	adr	x30, 201bb4 <cml_NOTFOUND_27+0x130>
  201bb0:	17ffff3a 	b	201898 <cml_get_mac_addr_match_15>
  201bb4:	f9400b38 	ldr	x24, [x25, #16]
  201bb8:	f81c8378 	stur	x24, [x27, #-56]
  201bbc:	91006339 	add	x25, x25, #0x18
  201bc0:	f940233e 	ldr	x30, [x25, #64]
  201bc4:	f9401f25 	ldr	x5, [x25, #56]
  201bc8:	f9401b23 	ldr	x3, [x25, #48]
  201bcc:	f9401726 	ldr	x6, [x25, #40]
  201bd0:	f9401329 	ldr	x9, [x25, #32]
  201bd4:	f9400f27 	ldr	x7, [x25, #24]
  201bd8:	f9400b22 	ldr	x2, [x25, #16]
  201bdc:	92800021 	mov	x1, #0xfffffffffffffffe    	// #-2
  201be0:	eb01001f 	cmp	x0, x1
  201be4:	54000161 	b.ne	201c10 <cml_NOTFOUND_27+0x18c>  // b.any
  201be8:	934bfc40 	asr	x0, x2, #11
  201bec:	91034800 	add	x0, x0, #0xd2
  201bf0:	d37df000 	lsl	x0, x0, #3
  201bf4:	8b1c0000 	add	x0, x0, x28
  201bf8:	d2800041 	mov	x1, #0x2                   	// #2
  201bfc:	b9000001 	str	w1, [x0]
  201c00:	d2800001 	mov	x1, #0x0                   	// #0
  201c04:	aa090120 	orr	x0, x9, x9
  201c08:	91012339 	add	x25, x25, #0x48
  201c0c:	14000046 	b	201d24 <cml_NOTFOUND_28>
  201c10:	d2800001 	mov	x1, #0x0                   	// #0
  201c14:	eb01001f 	cmp	x0, x1
  201c18:	5400036a 	b.ge	201c84 <cml_NOTFOUND_27+0x200>  // b.tcont
  201c1c:	aa1c0380 	orr	x0, x28, x28
  201c20:	f9432000 	ldr	x0, [x0, #1600]
  201c24:	8b020001 	add	x1, x0, x2
  201c28:	aa1c0380 	orr	x0, x28, x28
  201c2c:	f9402800 	ldr	x0, [x0, #80]
  201c30:	d2800182 	mov	x2, #0xc                   	// #12
  201c34:	d37df042 	lsl	x2, x2, #3
  201c38:	8b1c0042 	add	x2, x2, x28
  201c3c:	f9400048 	ldr	x8, [x2]
  201c40:	aa080105 	orr	x5, x8, x8
  201c44:	79400002 	ldrh	w2, [x0]
  201c48:	d1000508 	sub	x8, x8, #0x1
  201c4c:	8a020108 	and	x8, x8, x2
  201c50:	d37ced08 	lsl	x8, x8, #4
  201c54:	8b000108 	add	x8, x8, x0
  201c58:	91002108 	add	x8, x8, #0x8
  201c5c:	f9000101 	str	x1, [x8]
  201c60:	f9000506 	str	x6, [x8, #8]
  201c64:	91000441 	add	x1, x2, #0x1
  201c68:	92403c21 	and	x1, x1, #0xffff
  201c6c:	79000001 	strh	w1, [x0]
  201c70:	d284e200 	mov	x0, #0x2710                	// #10000
  201c74:	8b1c0000 	add	x0, x0, x28
  201c78:	d2800021 	mov	x1, #0x1                   	// #1
  201c7c:	b9000001 	str	w1, [x0]
  201c80:	14000021 	b	201d04 <cml_NOTFOUND_27+0x280>
  201c84:	934bfc41 	asr	x1, x2, #11
  201c88:	91034821 	add	x1, x1, #0xd2
  201c8c:	d37df021 	lsl	x1, x1, #3
  201c90:	8b1c0021 	add	x1, x1, x28
  201c94:	d2800028 	mov	x8, #0x1                   	// #1
  201c98:	b9000028 	str	w8, [x1]
  201c9c:	d37ef401 	lsl	x1, x0, #2
  201ca0:	91007828 	add	x8, x1, #0x1e
  201ca4:	91000501 	add	x1, x8, #0x1
  201ca8:	d37df021 	lsl	x1, x1, #3
  201cac:	8b1c0021 	add	x1, x1, x28
  201cb0:	f9400021 	ldr	x1, [x1]
  201cb4:	91000908 	add	x8, x8, #0x2
  201cb8:	d37df108 	lsl	x8, x8, #3
  201cbc:	8b1c0108 	add	x8, x8, x28
  201cc0:	f940010a 	ldr	x10, [x8]
  201cc4:	79400028 	ldrh	w8, [x1]
  201cc8:	d100054a 	sub	x10, x10, #0x1
  201ccc:	8a08014a 	and	x10, x10, x8
  201cd0:	d37ced4a 	lsl	x10, x10, #4
  201cd4:	8b01014a 	add	x10, x10, x1
  201cd8:	9100214a 	add	x10, x10, #0x8
  201cdc:	f9000142 	str	x2, [x10]
  201ce0:	f9000546 	str	x6, [x10, #8]
  201ce4:	91000502 	add	x2, x8, #0x1
  201ce8:	92403c42 	and	x2, x2, #0xffff
  201cec:	79000022 	strh	w2, [x1]
  201cf0:	9113b000 	add	x0, x0, #0x4ec
  201cf4:	d37df000 	lsl	x0, x0, #3
  201cf8:	8b1c0000 	add	x0, x0, x28
  201cfc:	d2800021 	mov	x1, #0x1                   	// #1
  201d00:	b9000001 	str	w1, [x0]
  201d04:	aa090120 	orr	x0, x9, x9
  201d08:	aa030061 	orr	x1, x3, x3
  201d0c:	aa0500a2 	orr	x2, x5, x5
  201d10:	aa0700e3 	orr	x3, x7, x7
  201d14:	91012339 	add	x25, x25, #0x48
  201d18:	14000029 	b	201dbc <cml_NOTFOUND_30>
  201d1c:	14000002 	b	201d24 <cml_NOTFOUND_28>
  201d20:	17fffe72 	b	2016e8 <cml__Raise_4>

0000000000201d24 <cml_NOTFOUND_28>:
  201d24:	d2800048 	mov	x8, #0x2                   	// #2
  201d28:	eb08003f 	cmp	x1, x8
  201d2c:	540003ea 	b.ge	201da8 <cml_NOTFOUND_28+0x84>  // b.tcont
  201d30:	d37ef428 	lsl	x8, x1, #2
  201d34:	91007909 	add	x9, x8, #0x1e
  201d38:	91000528 	add	x8, x9, #0x1
  201d3c:	d37df108 	lsl	x8, x8, #3
  201d40:	8b1c0108 	add	x8, x8, x28
  201d44:	f9400108 	ldr	x8, [x8]
  201d48:	91000929 	add	x9, x9, #0x2
  201d4c:	d37df129 	lsl	x9, x9, #3
  201d50:	8b1c0129 	add	x9, x9, x28
  201d54:	f940012b 	ldr	x11, [x9]
  201d58:	aa0600c9 	orr	x9, x6, x6
  201d5c:	aa02004c 	orr	x12, x2, x2
  201d60:	7940010a 	ldrh	w10, [x8]
  201d64:	d100056b 	sub	x11, x11, #0x1
  201d68:	8a0a016b 	and	x11, x11, x10
  201d6c:	d37ced6b 	lsl	x11, x11, #4
  201d70:	8b08016b 	add	x11, x11, x8
  201d74:	9100216b 	add	x11, x11, #0x8
  201d78:	f900016c 	str	x12, [x11]
  201d7c:	f9000569 	str	x9, [x11, #8]
  201d80:	91000549 	add	x9, x10, #0x1
  201d84:	92403d29 	and	x9, x9, #0xffff
  201d88:	79000109 	strh	w9, [x8]
  201d8c:	9113b028 	add	x8, x1, #0x4ec
  201d90:	d37df108 	lsl	x8, x8, #3
  201d94:	8b1c0108 	add	x8, x8, x28
  201d98:	d2800029 	mov	x9, #0x1                   	// #1
  201d9c:	b9000109 	str	w9, [x8]
  201da0:	91000421 	add	x1, x1, #0x1
  201da4:	17ffffe0 	b	201d24 <cml_NOTFOUND_28>
  201da8:	aa030061 	orr	x1, x3, x3
  201dac:	aa0500a2 	orr	x2, x5, x5
  201db0:	aa0700e3 	orr	x3, x7, x7
  201db4:	14000001 	b	201db8 <cml_NOTFOUND_29>

0000000000201db8 <cml_NOTFOUND_29>:
  201db8:	14000001 	b	201dbc <cml_NOTFOUND_30>

0000000000201dbc <cml_NOTFOUND_30>:
  201dbc:	79400005 	ldrh	w5, [x0]
  201dc0:	79400406 	ldrh	w6, [x0, #2]
  201dc4:	cb0600a6 	sub	x6, x5, x6
  201dc8:	d2800005 	mov	x5, #0x0                   	// #0
  201dcc:	eb0500df 	cmp	x6, x5
  201dd0:	54000041 	b.ne	201dd8 <cml_NOTFOUND_30+0x1c>  // b.any
  201dd4:	d2800025 	mov	x5, #0x1                   	// #1
  201dd8:	aa0500bd 	orr	x29, x5, x5
  201ddc:	aa030065 	orr	x5, x3, x3
  201de0:	aa020043 	orr	x3, x2, x2
  201de4:	aa1d03a2 	orr	x2, x29, x29
  201de8:	14000001 	b	201dec <cml_NOTFOUND_31>

0000000000201dec <cml_NOTFOUND_31>:
  201dec:	17ffff26 	b	201a84 <cml_NOTFOUND_27>

0000000000201df0 <cml_NOTFOUND_33>:
  201df0:	d2800005 	mov	x5, #0x0                   	// #0
  201df4:	aa000003 	orr	x3, x0, x0
  201df8:	b9000465 	str	w5, [x3, #4]
  201dfc:	d2800000 	mov	x0, #0x0                   	// #0
  201e00:	79400065 	ldrh	w5, [x3]
  201e04:	79400466 	ldrh	w6, [x3, #2]
  201e08:	cb0600a5 	sub	x5, x5, x6
  201e0c:	d2800006 	mov	x6, #0x0                   	// #0
  201e10:	eb0600bf 	cmp	x5, x6
  201e14:	540000a0 	b.eq	201e28 <cml_NOTFOUND_33+0x38>  // b.none
  201e18:	d2800020 	mov	x0, #0x1                   	// #1
  201e1c:	b9000460 	str	w0, [x3, #4]
  201e20:	d2800020 	mov	x0, #0x1                   	// #1
  201e24:	14000001 	b	201e28 <cml_NOTFOUND_33+0x38>
  201e28:	17ffff01 	b	201a2c <cml_NOTFOUND_26>

0000000000201e2c <cml_NOTFOUND_35>:
  201e2c:	d2800000 	mov	x0, #0x0                   	// #0
  201e30:	14000001 	b	201e34 <cml_NOTFOUND_36>

0000000000201e34 <cml_NOTFOUND_36>:
  201e34:	d1006339 	sub	x25, x25, #0x18
  201e38:	eb1b033f 	cmp	x25, x27
  201e3c:	54000062 	b.cs	201e48 <cml_NOTFOUND_36+0x14>  // b.hs, b.nlast
  201e40:	d2800040 	mov	x0, #0x2                   	// #2
  201e44:	17fffc8b 	b	201070 <cake_exit>
  201e48:	d2800041 	mov	x1, #0x2                   	// #2
  201e4c:	eb01001f 	cmp	x0, x1
  201e50:	5400048a 	b.ge	201ee0 <cml_NOTFOUND_36+0xac>  // b.tcont
  201e54:	9113b001 	add	x1, x0, #0x4ec
  201e58:	d37df021 	lsl	x1, x1, #3
  201e5c:	8b1c0021 	add	x1, x1, x28
  201e60:	f9400021 	ldr	x1, [x1]
  201e64:	f100003f 	cmp	x1, #0x0
  201e68:	54000380 	b.eq	201ed8 <cml_NOTFOUND_36+0xa4>  // b.none
  201e6c:	d37ef401 	lsl	x1, x0, #2
  201e70:	91007821 	add	x1, x1, #0x1e
  201e74:	91000421 	add	x1, x1, #0x1
  201e78:	d37df021 	lsl	x1, x1, #3
  201e7c:	8b1c0021 	add	x1, x1, x28
  201e80:	f9400021 	ldr	x1, [x1]
  201e84:	b9400422 	ldr	w2, [x1, #4]
  201e88:	d2800003 	mov	x3, #0x0                   	// #0
  201e8c:	eb02007f 	cmp	x3, x2
  201e90:	54000040 	b.eq	201e98 <cml_NOTFOUND_36+0x64>  // b.none
  201e94:	14000011 	b	201ed8 <cml_NOTFOUND_36+0xa4>
  201e98:	d2800022 	mov	x2, #0x1                   	// #1
  201e9c:	b9000422 	str	w2, [x1, #4]
  201ea0:	aa000002 	orr	x2, x0, x0
  201ea4:	9112e840 	add	x0, x2, #0x4ba
  201ea8:	d37df000 	lsl	x0, x0, #3
  201eac:	8b1c0000 	add	x0, x0, x28
  201eb0:	f9400001 	ldr	x1, [x0]
  201eb4:	d2800000 	mov	x0, #0x0                   	// #0
  201eb8:	f9000722 	str	x2, [x25, #8]
  201ebc:	aa000002 	orr	x2, x0, x0
  201ec0:	aa000003 	orr	x3, x0, x0
  201ec4:	f9000b3e 	str	x30, [x25, #16]
  201ec8:	1000005e 	adr	x30, 201ed0 <cml_NOTFOUND_36+0x9c>
  201ecc:	17fffc5d 	b	201040 <cake_ffisddf_notify>
  201ed0:	f9400b3e 	ldr	x30, [x25, #16]
  201ed4:	f9400720 	ldr	x0, [x25, #8]
  201ed8:	91000400 	add	x0, x0, #0x1
  201edc:	17ffffdb 	b	201e48 <cml_NOTFOUND_36+0x14>
  201ee0:	91006339 	add	x25, x25, #0x18
  201ee4:	14000001 	b	201ee8 <cml_NOTFOUND_37>

0000000000201ee8 <cml_NOTFOUND_37>:
  201ee8:	d2800000 	mov	x0, #0x0                   	// #0
  201eec:	d61f03c0 	br	x30

0000000000201ef0 <cml_rx_provide_38>:
  201ef0:	d2800000 	mov	x0, #0x0                   	// #0
  201ef4:	14000001 	b	201ef8 <cml_NOTFOUND_39>

0000000000201ef8 <cml_NOTFOUND_39>:
  201ef8:	d2800041 	mov	x1, #0x2                   	// #2
  201efc:	eb01001f 	cmp	x0, x1
  201f00:	5400006a 	b.ge	201f0c <cml_NOTFOUND_39+0x14>  // b.tcont
  201f04:	d2800021 	mov	x1, #0x1                   	// #1
  201f08:	14000002 	b	201f10 <cml_NOTFOUND_40>
  201f0c:	1400008a 	b	202134 <cml_NOTFOUND_46>

0000000000201f10 <cml_NOTFOUND_40>:
  201f10:	f100003f 	cmp	x1, #0x0
  201f14:	54000240 	b.eq	201f5c <cml_NOTFOUND_40+0x4c>  // b.none
  201f18:	d37ef401 	lsl	x1, x0, #2
  201f1c:	91007821 	add	x1, x1, #0x1e
  201f20:	d37df022 	lsl	x2, x1, #3
  201f24:	8b1c0042 	add	x2, x2, x28
  201f28:	f9400042 	ldr	x2, [x2]
  201f2c:	91000821 	add	x1, x1, #0x2
  201f30:	d37df021 	lsl	x1, x1, #3
  201f34:	8b1c0021 	add	x1, x1, x28
  201f38:	f9400021 	ldr	x1, [x1]
  201f3c:	79400043 	ldrh	w3, [x2]
  201f40:	79400445 	ldrh	w5, [x2, #2]
  201f44:	cb050065 	sub	x5, x3, x5
  201f48:	d2800003 	mov	x3, #0x0                   	// #0
  201f4c:	eb0300bf 	cmp	x5, x3
  201f50:	54000041 	b.ne	201f58 <cml_NOTFOUND_40+0x48>  // b.any
  201f54:	d2800023 	mov	x3, #0x1                   	// #1
  201f58:	14000002 	b	201f60 <cml_NOTFOUND_41>
  201f5c:	14000074 	b	20212c <cml_NOTFOUND_44>

0000000000201f60 <cml_NOTFOUND_41>:
  201f60:	d2800005 	mov	x5, #0x0                   	// #0
  201f64:	eb05007f 	cmp	x3, x5
  201f68:	54000c01 	b.ne	2020e8 <cml_NOTFOUND_41+0x188>  // b.any
  201f6c:	aa010028 	orr	x8, x1, x1
  201f70:	aa020045 	orr	x5, x2, x2
  201f74:	79400446 	ldrh	w6, [x2, #2]
  201f78:	d1000421 	sub	x1, x1, #0x1
  201f7c:	8a060021 	and	x1, x1, x6
  201f80:	d37cec21 	lsl	x1, x1, #4
  201f84:	8b020021 	add	x1, x1, x2
  201f88:	91002021 	add	x1, x1, #0x8
  201f8c:	f9400023 	ldr	x3, [x1]
  201f90:	f9400421 	ldr	x1, [x1, #8]
  201f94:	910004c6 	add	x6, x6, #0x1
  201f98:	92403cc6 	and	x6, x6, #0xffff
  201f9c:	79000446 	strh	w6, [x2, #2]
  201fa0:	f8178363 	stur	x3, [x27, #-136]
  201fa4:	f8170361 	stur	x1, [x27, #-144]
  201fa8:	f8578362 	ldur	x2, [x27, #-136]
  201fac:	f8570363 	ldur	x3, [x27, #-144]
  201fb0:	92402841 	and	x1, x2, #0x7ff
  201fb4:	d2800007 	mov	x7, #0x0                   	// #0
  201fb8:	eb07003f 	cmp	x1, x7
  201fbc:	54000041 	b.ne	201fc4 <cml_NOTFOUND_41+0x64>  // b.any
  201fc0:	d2800027 	mov	x7, #0x1                   	// #1
  201fc4:	aa080101 	orr	x1, x8, x8
  201fc8:	d375d026 	lsl	x6, x1, #11
  201fcc:	eb06005f 	cmp	x2, x6
  201fd0:	5400006b 	b.lt	201fdc <cml_NOTFOUND_41+0x7c>  // b.tstop
  201fd4:	d2800006 	mov	x6, #0x0                   	// #0
  201fd8:	14000002 	b	201fe0 <cml_NOTFOUND_41+0x80>
  201fdc:	d2800026 	mov	x6, #0x1                   	// #1
  201fe0:	d2800008 	mov	x8, #0x0                   	// #0
  201fe4:	eb07011f 	cmp	x8, x7
  201fe8:	54000061 	b.ne	201ff4 <cml_NOTFOUND_41+0x94>  // b.any
  201fec:	d2800007 	mov	x7, #0x0                   	// #0
  201ff0:	14000002 	b	201ff8 <cml_NOTFOUND_41+0x98>
  201ff4:	d2800027 	mov	x7, #0x1                   	// #1
  201ff8:	d2800008 	mov	x8, #0x0                   	// #0
  201ffc:	eb06011f 	cmp	x8, x6
  202000:	54000061 	b.ne	20200c <cml_NOTFOUND_41+0xac>  // b.any
  202004:	d2800006 	mov	x6, #0x0                   	// #0
  202008:	14000002 	b	202010 <cml_NOTFOUND_41+0xb0>
  20200c:	d2800026 	mov	x6, #0x1                   	// #1
  202010:	8a0700c6 	and	x6, x6, x7
  202014:	f10000df 	cmp	x6, #0x0
  202018:	54000560 	b.eq	2020c4 <cml_NOTFOUND_41+0x164>  // b.none
  20201c:	934bfc47 	asr	x7, x2, #11
  202020:	910348e6 	add	x6, x7, #0xd2
  202024:	d37df0c6 	lsl	x6, x6, #3
  202028:	8b1c00c6 	add	x6, x6, x28
  20202c:	f94000c6 	ldr	x6, [x6]
  202030:	d2800008 	mov	x8, #0x0                   	// #0
  202034:	eb06011f 	cmp	x8, x6
  202038:	5400004b 	b.lt	202040 <cml_NOTFOUND_41+0xe0>  // b.tstop
  20203c:	14000022 	b	2020c4 <cml_NOTFOUND_41+0x164>
  202040:	d10004c6 	sub	x6, x6, #0x1
  202044:	910348e7 	add	x7, x7, #0xd2
  202048:	d37df0e7 	lsl	x7, x7, #3
  20204c:	8b1c00e7 	add	x7, x7, x28
  202050:	b90000e6 	str	w6, [x7]
  202054:	d2800007 	mov	x7, #0x0                   	// #0
  202058:	eb0700df 	cmp	x6, x7
  20205c:	54000040 	b.eq	202064 <cml_NOTFOUND_41+0x104>  // b.none
  202060:	14000019 	b	2020c4 <cml_NOTFOUND_41+0x164>
  202064:	aa1c0386 	orr	x6, x28, x28
  202068:	f94320c6 	ldr	x6, [x6, #1600]
  20206c:	8b0200c6 	add	x6, x6, x2
  202070:	aa1c0382 	orr	x2, x28, x28
  202074:	f9402842 	ldr	x2, [x2, #80]
  202078:	d2800187 	mov	x7, #0xc                   	// #12
  20207c:	d37df0e7 	lsl	x7, x7, #3
  202080:	8b1c00e7 	add	x7, x7, x28
  202084:	f94000e8 	ldr	x8, [x7]
  202088:	79400047 	ldrh	w7, [x2]
  20208c:	d1000508 	sub	x8, x8, #0x1
  202090:	8a070108 	and	x8, x8, x7
  202094:	d37ced08 	lsl	x8, x8, #4
  202098:	8b020108 	add	x8, x8, x2
  20209c:	91002108 	add	x8, x8, #0x8
  2020a0:	f9000106 	str	x6, [x8]
  2020a4:	f9000503 	str	x3, [x8, #8]
  2020a8:	910004e3 	add	x3, x7, #0x1
  2020ac:	92403c63 	and	x3, x3, #0xffff
  2020b0:	79000043 	strh	w3, [x2]
  2020b4:	d284e202 	mov	x2, #0x2710                	// #10000
  2020b8:	8b1c0042 	add	x2, x2, x28
  2020bc:	d2800023 	mov	x3, #0x1                   	// #1
  2020c0:	b9000043 	str	w3, [x2]
  2020c4:	794000a3 	ldrh	w3, [x5]
  2020c8:	aa0500a2 	orr	x2, x5, x5
  2020cc:	79400445 	ldrh	w5, [x2, #2]
  2020d0:	cb050065 	sub	x5, x3, x5
  2020d4:	d2800003 	mov	x3, #0x0                   	// #0
  2020d8:	eb0300bf 	cmp	x5, x3
  2020dc:	54000041 	b.ne	2020e4 <cml_NOTFOUND_41+0x184>  // b.any
  2020e0:	d2800023 	mov	x3, #0x1                   	// #1
  2020e4:	17ffff9f 	b	201f60 <cml_NOTFOUND_41>
  2020e8:	aa020041 	orr	x1, x2, x2
  2020ec:	14000001 	b	2020f0 <cml_NOTFOUND_42>

00000000002020f0 <cml_NOTFOUND_42>:
  2020f0:	d2800003 	mov	x3, #0x0                   	// #0
  2020f4:	aa010022 	orr	x2, x1, x1
  2020f8:	b9000443 	str	w3, [x2, #4]
  2020fc:	d2800001 	mov	x1, #0x0                   	// #0
  202100:	79400043 	ldrh	w3, [x2]
  202104:	79400445 	ldrh	w5, [x2, #2]
  202108:	cb050063 	sub	x3, x3, x5
  20210c:	d2800005 	mov	x5, #0x0                   	// #0
  202110:	eb05007f 	cmp	x3, x5
  202114:	540000a0 	b.eq	202128 <cml_NOTFOUND_42+0x38>  // b.none
  202118:	d2800021 	mov	x1, #0x1                   	// #1
  20211c:	b9000441 	str	w1, [x2, #4]
  202120:	d2800021 	mov	x1, #0x1                   	// #1
  202124:	14000001 	b	202128 <cml_NOTFOUND_42+0x38>
  202128:	17ffff7a 	b	201f10 <cml_NOTFOUND_40>

000000000020212c <cml_NOTFOUND_44>:
  20212c:	91000400 	add	x0, x0, #0x1
  202130:	17ffff72 	b	201ef8 <cml_NOTFOUND_39>

0000000000202134 <cml_NOTFOUND_46>:
  202134:	d1004339 	sub	x25, x25, #0x10
  202138:	eb1b033f 	cmp	x25, x27
  20213c:	54000062 	b.cs	202148 <cml_NOTFOUND_46+0x14>  // b.hs, b.nlast
  202140:	d2800040 	mov	x0, #0x2                   	// #2
  202144:	17fffbcb 	b	201070 <cake_exit>
  202148:	d284e200 	mov	x0, #0x2710                	// #10000
  20214c:	8b1c0000 	add	x0, x0, x28
  202150:	f9400000 	ldr	x0, [x0]
  202154:	f100001f 	cmp	x0, #0x0
  202158:	540002e0 	b.eq	2021b4 <cml_NOTFOUND_46+0x80>  // b.none
  20215c:	aa1c0380 	orr	x0, x28, x28
  202160:	f9402800 	ldr	x0, [x0, #80]
  202164:	b9400401 	ldr	w1, [x0, #4]
  202168:	d2800002 	mov	x2, #0x0                   	// #0
  20216c:	eb01005f 	cmp	x2, x1
  202170:	54000040 	b.eq	202178 <cml_NOTFOUND_46+0x44>  // b.none
  202174:	14000010 	b	2021b4 <cml_NOTFOUND_46+0x80>
  202178:	d2800021 	mov	x1, #0x1                   	// #1
  20217c:	b9000401 	str	w1, [x0, #4]
  202180:	aa1c0380 	orr	x0, x28, x28
  202184:	f9400001 	ldr	x1, [x0]
  202188:	d2800000 	mov	x0, #0x0                   	// #0
  20218c:	aa000002 	orr	x2, x0, x0
  202190:	aa000003 	orr	x3, x0, x0
  202194:	f900073e 	str	x30, [x25, #8]
  202198:	1000005e 	adr	x30, 2021a0 <cml_NOTFOUND_46+0x6c>
  20219c:	17fffbad 	b	201050 <cake_ffisddf_deferred_notify>
  2021a0:	f940073e 	ldr	x30, [x25, #8]
  2021a4:	d284e200 	mov	x0, #0x2710                	// #10000
  2021a8:	8b1c0000 	add	x0, x0, x28
  2021ac:	d2800001 	mov	x1, #0x0                   	// #0
  2021b0:	b9000001 	str	w1, [x0]
  2021b4:	d2800000 	mov	x0, #0x0                   	// #0
  2021b8:	91004339 	add	x25, x25, #0x10
  2021bc:	d61f03c0 	br	x30

00000000002021c0 <cml_notified_47>:
  2021c0:	d1004339 	sub	x25, x25, #0x10
  2021c4:	eb1b033f 	cmp	x25, x27
  2021c8:	54000062 	b.cs	2021d4 <cml_notified_47+0x14>  // b.hs, b.nlast
  2021cc:	d2800040 	mov	x0, #0x2                   	// #2
  2021d0:	17fffba8 	b	201070 <cake_exit>
  2021d4:	f900073e 	str	x30, [x25, #8]
  2021d8:	d2800078 	mov	x24, #0x3                   	// #3
  2021dc:	f9000338 	str	x24, [x25]
  2021e0:	d1006339 	sub	x25, x25, #0x18
  2021e4:	eb1b033f 	cmp	x25, x27
  2021e8:	54000062 	b.cs	2021f4 <cml_notified_47+0x34>  // b.hs, b.nlast
  2021ec:	d2800040 	mov	x0, #0x2                   	// #2
  2021f0:	17fffba0 	b	201070 <cake_exit>
  2021f4:	d2800038 	mov	x24, #0x1                   	// #1
  2021f8:	f9000338 	str	x24, [x25]
  2021fc:	100001d8 	adr	x24, 202234 <cml_notified_47+0x74>
  202200:	f9000738 	str	x24, [x25, #8]
  202204:	f85c8378 	ldur	x24, [x27, #-56]
  202208:	f9000b38 	str	x24, [x25, #16]
  20220c:	aa190338 	orr	x24, x25, x25
  202210:	cb1b0318 	sub	x24, x24, x27
  202214:	d343ff18 	lsr	x24, x24, #3
  202218:	f81c8378 	stur	x24, [x27, #-56]
  20221c:	1000005e 	adr	x30, 202224 <cml_notified_47+0x64>
  202220:	17fffdef 	b	2019dc <cml_rx_return_23>
  202224:	f9400b38 	ldr	x24, [x25, #16]
  202228:	f81c8378 	stur	x24, [x27, #-56]
  20222c:	91006339 	add	x25, x25, #0x18
  202230:	14000002 	b	202238 <cml_notified_47+0x78>
  202234:	17fffd2d 	b	2016e8 <cml__Raise_4>
  202238:	d2800098 	mov	x24, #0x4                   	// #4
  20223c:	f9000338 	str	x24, [x25]
  202240:	d1006339 	sub	x25, x25, #0x18
  202244:	eb1b033f 	cmp	x25, x27
  202248:	54000062 	b.cs	202254 <cml_notified_47+0x94>  // b.hs, b.nlast
  20224c:	d2800040 	mov	x0, #0x2                   	// #2
  202250:	17fffb88 	b	201070 <cake_exit>
  202254:	d2800038 	mov	x24, #0x1                   	// #1
  202258:	f9000338 	str	x24, [x25]
  20225c:	100001f8 	adr	x24, 202298 <cml_notified_47+0xd8>
  202260:	f9000738 	str	x24, [x25, #8]
  202264:	f85c8378 	ldur	x24, [x27, #-56]
  202268:	f9000b38 	str	x24, [x25, #16]
  20226c:	aa190338 	orr	x24, x25, x25
  202270:	cb1b0318 	sub	x24, x24, x27
  202274:	d343ff18 	lsr	x24, x24, #3
  202278:	f81c8378 	stur	x24, [x27, #-56]
  20227c:	1000005e 	adr	x30, 202284 <cml_notified_47+0xc4>
  202280:	17ffff1c 	b	201ef0 <cml_rx_provide_38>
  202284:	f9400b38 	ldr	x24, [x25, #16]
  202288:	f81c8378 	stur	x24, [x27, #-56]
  20228c:	91006339 	add	x25, x25, #0x18
  202290:	f940073e 	ldr	x30, [x25, #8]
  202294:	14000003 	b	2022a0 <cml_notified_47+0xe0>
  202298:	f940073e 	ldr	x30, [x25, #8]
  20229c:	17fffd13 	b	2016e8 <cml__Raise_4>
  2022a0:	d2800000 	mov	x0, #0x0                   	// #0
  2022a4:	91004339 	add	x25, x25, #0x10
  2022a8:	d61f03c0 	br	x30

00000000002022ac <cake_codebuffer_begin>:
  2022ac:	d503201f 	nop
  2022b0:	d503201f 	nop
  2022b4:	d503201f 	nop
  2022b8:	d503201f 	nop
  2022bc:	d503201f 	nop
  2022c0:	d503201f 	nop
  2022c4:	d503201f 	nop
  2022c8:	d503201f 	nop
  2022cc:	d503201f 	nop
  2022d0:	d503201f 	nop
  2022d4:	d503201f 	nop
  2022d8:	d503201f 	nop
  2022dc:	d503201f 	nop
  2022e0:	d503201f 	nop
  2022e4:	d503201f 	nop
  2022e8:	d503201f 	nop
  2022ec:	d503201f 	nop
  2022f0:	d503201f 	nop
  2022f4:	d503201f 	nop
  2022f8:	d503201f 	nop
  2022fc:	d503201f 	nop
  202300:	d503201f 	nop
  202304:	d503201f 	nop
  202308:	d503201f 	nop
  20230c:	d503201f 	nop
  202310:	d503201f 	nop
  202314:	d503201f 	nop
  202318:	d503201f 	nop
  20231c:	d503201f 	nop
  202320:	d503201f 	nop
  202324:	d503201f 	nop
  202328:	d503201f 	nop
  20232c:	d503201f 	nop
  202330:	d503201f 	nop
  202334:	d503201f 	nop
  202338:	d503201f 	nop
  20233c:	d503201f 	nop
  202340:	d503201f 	nop
  202344:	d503201f 	nop
  202348:	d503201f 	nop
  20234c:	d503201f 	nop
  202350:	d503201f 	nop
  202354:	d503201f 	nop
  202358:	d503201f 	nop
  20235c:	d503201f 	nop
  202360:	d503201f 	nop
  202364:	d503201f 	nop
  202368:	d503201f 	nop
  20236c:	d503201f 	nop
  202370:	d503201f 	nop
  202374:	d503201f 	nop
  202378:	d503201f 	nop
  20237c:	d503201f 	nop
  202380:	d503201f 	nop
  202384:	d503201f 	nop
  202388:	d503201f 	nop
  20238c:	d503201f 	nop
  202390:	d503201f 	nop
  202394:	d503201f 	nop
  202398:	d503201f 	nop
  20239c:	d503201f 	nop
  2023a0:	d503201f 	nop
  2023a4:	d503201f 	nop
  2023a8:	d503201f 	nop
  2023ac:	d503201f 	nop
  2023b0:	d503201f 	nop
  2023b4:	d503201f 	nop
  2023b8:	d503201f 	nop
  2023bc:	d503201f 	nop
  2023c0:	d503201f 	nop
  2023c4:	d503201f 	nop
  2023c8:	d503201f 	nop
  2023cc:	d503201f 	nop
  2023d0:	d503201f 	nop
  2023d4:	d503201f 	nop
  2023d8:	d503201f 	nop
  2023dc:	d503201f 	nop
  2023e0:	d503201f 	nop
  2023e4:	d503201f 	nop
  2023e8:	d503201f 	nop
  2023ec:	d503201f 	nop
  2023f0:	d503201f 	nop
  2023f4:	d503201f 	nop
  2023f8:	d503201f 	nop
  2023fc:	d503201f 	nop
  202400:	d503201f 	nop
  202404:	d503201f 	nop
  202408:	d503201f 	nop
  20240c:	d503201f 	nop
  202410:	d503201f 	nop
  202414:	d503201f 	nop
  202418:	d503201f 	nop
  20241c:	d503201f 	nop
  202420:	d503201f 	nop
  202424:	d503201f 	nop
  202428:	d503201f 	nop
  20242c:	d503201f 	nop
  202430:	d503201f 	nop
  202434:	d503201f 	nop
  202438:	d503201f 	nop
  20243c:	d503201f 	nop
  202440:	d503201f 	nop
  202444:	d503201f 	nop
  202448:	d503201f 	nop
  20244c:	d503201f 	nop
  202450:	d503201f 	nop
  202454:	d503201f 	nop
  202458:	d503201f 	nop
  20245c:	d503201f 	nop
  202460:	d503201f 	nop
  202464:	d503201f 	nop
  202468:	d503201f 	nop
  20246c:	d503201f 	nop
  202470:	d503201f 	nop
  202474:	d503201f 	nop
  202478:	d503201f 	nop
  20247c:	d503201f 	nop
  202480:	d503201f 	nop
  202484:	d503201f 	nop
  202488:	d503201f 	nop
  20248c:	d503201f 	nop
  202490:	d503201f 	nop
  202494:	d503201f 	nop
  202498:	d503201f 	nop
  20249c:	d503201f 	nop
  2024a0:	d503201f 	nop
  2024a4:	d503201f 	nop
  2024a8:	d503201f 	nop
  2024ac:	d503201f 	nop
  2024b0:	d503201f 	nop
  2024b4:	d503201f 	nop
  2024b8:	d503201f 	nop
  2024bc:	d503201f 	nop
  2024c0:	d503201f 	nop
  2024c4:	d503201f 	nop
  2024c8:	d503201f 	nop
  2024cc:	d503201f 	nop
  2024d0:	d503201f 	nop
  2024d4:	d503201f 	nop
  2024d8:	d503201f 	nop
  2024dc:	d503201f 	nop
  2024e0:	d503201f 	nop
  2024e4:	d503201f 	nop
  2024e8:	d503201f 	nop
  2024ec:	d503201f 	nop
  2024f0:	d503201f 	nop
  2024f4:	d503201f 	nop
  2024f8:	d503201f 	nop
  2024fc:	d503201f 	nop
  202500:	d503201f 	nop
  202504:	d503201f 	nop
  202508:	d503201f 	nop
  20250c:	d503201f 	nop
  202510:	d503201f 	nop
  202514:	d503201f 	nop
  202518:	d503201f 	nop
  20251c:	d503201f 	nop
  202520:	d503201f 	nop
  202524:	d503201f 	nop
  202528:	d503201f 	nop
  20252c:	d503201f 	nop
  202530:	d503201f 	nop
  202534:	d503201f 	nop
  202538:	d503201f 	nop
  20253c:	d503201f 	nop
  202540:	d503201f 	nop
  202544:	d503201f 	nop
  202548:	d503201f 	nop
  20254c:	d503201f 	nop
  202550:	d503201f 	nop
  202554:	d503201f 	nop
  202558:	d503201f 	nop
  20255c:	d503201f 	nop
  202560:	d503201f 	nop
  202564:	d503201f 	nop
  202568:	d503201f 	nop
  20256c:	d503201f 	nop
  202570:	d503201f 	nop
  202574:	d503201f 	nop
  202578:	d503201f 	nop
  20257c:	d503201f 	nop
  202580:	d503201f 	nop
  202584:	d503201f 	nop
  202588:	d503201f 	nop
  20258c:	d503201f 	nop
  202590:	d503201f 	nop
  202594:	d503201f 	nop
  202598:	d503201f 	nop
  20259c:	d503201f 	nop
  2025a0:	d503201f 	nop
  2025a4:	d503201f 	nop
  2025a8:	d503201f 	nop
  2025ac:	d503201f 	nop
  2025b0:	d503201f 	nop
  2025b4:	d503201f 	nop
  2025b8:	d503201f 	nop
  2025bc:	d503201f 	nop
  2025c0:	d503201f 	nop
  2025c4:	d503201f 	nop
  2025c8:	d503201f 	nop
  2025cc:	d503201f 	nop
  2025d0:	d503201f 	nop
  2025d4:	d503201f 	nop
  2025d8:	d503201f 	nop
  2025dc:	d503201f 	nop
  2025e0:	d503201f 	nop
  2025e4:	d503201f 	nop
  2025e8:	d503201f 	nop
  2025ec:	d503201f 	nop
  2025f0:	d503201f 	nop
  2025f4:	d503201f 	nop
  2025f8:	d503201f 	nop
  2025fc:	d503201f 	nop
  202600:	d503201f 	nop
  202604:	d503201f 	nop
  202608:	d503201f 	nop
  20260c:	d503201f 	nop
  202610:	d503201f 	nop
  202614:	d503201f 	nop
  202618:	d503201f 	nop
  20261c:	d503201f 	nop
  202620:	d503201f 	nop
  202624:	d503201f 	nop
  202628:	d503201f 	nop
  20262c:	d503201f 	nop
  202630:	d503201f 	nop
  202634:	d503201f 	nop
  202638:	d503201f 	nop
  20263c:	d503201f 	nop
  202640:	d503201f 	nop
  202644:	d503201f 	nop
  202648:	d503201f 	nop
  20264c:	d503201f 	nop
  202650:	d503201f 	nop
  202654:	d503201f 	nop
  202658:	d503201f 	nop
  20265c:	d503201f 	nop
  202660:	d503201f 	nop
  202664:	d503201f 	nop
  202668:	d503201f 	nop
  20266c:	d503201f 	nop
  202670:	d503201f 	nop
  202674:	d503201f 	nop
  202678:	d503201f 	nop
  20267c:	d503201f 	nop
  202680:	d503201f 	nop
  202684:	d503201f 	nop
  202688:	d503201f 	nop
  20268c:	d503201f 	nop
  202690:	d503201f 	nop
  202694:	d503201f 	nop
  202698:	d503201f 	nop
  20269c:	d503201f 	nop
  2026a0:	d503201f 	nop
  2026a4:	d503201f 	nop
  2026a8:	d503201f 	nop
  2026ac:	d503201f 	nop
  2026b0:	d503201f 	nop
  2026b4:	d503201f 	nop
  2026b8:	d503201f 	nop
  2026bc:	d503201f 	nop
  2026c0:	d503201f 	nop
  2026c4:	d503201f 	nop
  2026c8:	d503201f 	nop
  2026cc:	d503201f 	nop
  2026d0:	d503201f 	nop
  2026d4:	d503201f 	nop
  2026d8:	d503201f 	nop
  2026dc:	d503201f 	nop
  2026e0:	d503201f 	nop
  2026e4:	d503201f 	nop
  2026e8:	d503201f 	nop
  2026ec:	d503201f 	nop
  2026f0:	d503201f 	nop
  2026f4:	d503201f 	nop
  2026f8:	d503201f 	nop
  2026fc:	d503201f 	nop
  202700:	d503201f 	nop
  202704:	d503201f 	nop
  202708:	d503201f 	nop
  20270c:	d503201f 	nop
  202710:	d503201f 	nop
  202714:	d503201f 	nop
  202718:	d503201f 	nop
  20271c:	d503201f 	nop
  202720:	d503201f 	nop
  202724:	d503201f 	nop
  202728:	d503201f 	nop
  20272c:	d503201f 	nop
  202730:	d503201f 	nop
  202734:	d503201f 	nop
  202738:	d503201f 	nop
  20273c:	d503201f 	nop
  202740:	d503201f 	nop
  202744:	d503201f 	nop
  202748:	d503201f 	nop
  20274c:	d503201f 	nop
  202750:	d503201f 	nop
  202754:	d503201f 	nop
  202758:	d503201f 	nop
  20275c:	d503201f 	nop
  202760:	d503201f 	nop
  202764:	d503201f 	nop
  202768:	d503201f 	nop
  20276c:	d503201f 	nop
  202770:	d503201f 	nop
  202774:	d503201f 	nop
  202778:	d503201f 	nop
  20277c:	d503201f 	nop
  202780:	d503201f 	nop
  202784:	d503201f 	nop
  202788:	d503201f 	nop
  20278c:	d503201f 	nop
  202790:	d503201f 	nop
  202794:	d503201f 	nop
  202798:	d503201f 	nop
  20279c:	d503201f 	nop
  2027a0:	d503201f 	nop
  2027a4:	d503201f 	nop
  2027a8:	d503201f 	nop
  2027ac:	d503201f 	nop
  2027b0:	d503201f 	nop
  2027b4:	d503201f 	nop
  2027b8:	d503201f 	nop
  2027bc:	d503201f 	nop
  2027c0:	d503201f 	nop
  2027c4:	d503201f 	nop
  2027c8:	d503201f 	nop
  2027cc:	d503201f 	nop
  2027d0:	d503201f 	nop
  2027d4:	d503201f 	nop
  2027d8:	d503201f 	nop
  2027dc:	d503201f 	nop
  2027e0:	d503201f 	nop
  2027e4:	d503201f 	nop
  2027e8:	d503201f 	nop
  2027ec:	d503201f 	nop
  2027f0:	d503201f 	nop
  2027f4:	d503201f 	nop
  2027f8:	d503201f 	nop
  2027fc:	d503201f 	nop
  202800:	d503201f 	nop
  202804:	d503201f 	nop
  202808:	d503201f 	nop
  20280c:	d503201f 	nop
  202810:	d503201f 	nop
  202814:	d503201f 	nop
  202818:	d503201f 	nop
  20281c:	d503201f 	nop
  202820:	d503201f 	nop
  202824:	d503201f 	nop
  202828:	d503201f 	nop
  20282c:	d503201f 	nop
  202830:	d503201f 	nop
  202834:	d503201f 	nop
  202838:	d503201f 	nop
  20283c:	d503201f 	nop
  202840:	d503201f 	nop
  202844:	d503201f 	nop
  202848:	d503201f 	nop
  20284c:	d503201f 	nop
  202850:	d503201f 	nop
  202854:	d503201f 	nop
  202858:	d503201f 	nop
  20285c:	d503201f 	nop
  202860:	d503201f 	nop
  202864:	d503201f 	nop
  202868:	d503201f 	nop
  20286c:	d503201f 	nop
  202870:	d503201f 	nop
  202874:	d503201f 	nop
  202878:	d503201f 	nop
  20287c:	d503201f 	nop
  202880:	d503201f 	nop
  202884:	d503201f 	nop
  202888:	d503201f 	nop
  20288c:	d503201f 	nop
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
  204010:	17fff41c 	b	201080 <cml__Init_0>
  204014:	d503201f 	nop
  204018:	d503201f 	nop
  20401c:	d503201f 	nop

0000000000204020 <cake_enter>:
  204020:	f81e0ffe 	str	x30, [sp, #-32]!
  204024:	f81e0ffc 	str	x28, [sp, #-32]!
  204028:	f81e0ffb 	str	x27, [sp, #-32]!
  20402c:	f81e0ff9 	str	x25, [sp, #-32]!
  204030:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204034:	9100c129 	add	x9, x9, #0x30
  204038:	f940012b 	ldr	x11, [x9]
  20403c:	b40004ab 	cbz	x11, 2040d0 <cake_err3>
  204040:	f900013f 	str	xzr, [x9]
  204044:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204048:	91006129 	add	x9, x9, #0x18
  20404c:	f940013c 	ldr	x28, [x9]
  204050:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204054:	91008129 	add	x9, x9, #0x20
  204058:	f9400139 	ldr	x25, [x9]
  20405c:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204060:	9100a129 	add	x9, x9, #0x28
  204064:	f940013b 	ldr	x27, [x9]
  204068:	9000001e 	adrp	x30, 204000 <cml_enter>
  20406c:	910293de 	add	x30, x30, #0xa4
  204070:	d61f0140 	br	x10
  204074:	d503201f 	nop
  204078:	d503201f 	nop
  20407c:	d503201f 	nop

0000000000204080 <cml_return>:
  204080:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204084:	91006129 	add	x9, x9, #0x18
  204088:	f900013c 	str	x28, [x9]
  20408c:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204090:	91008129 	add	x9, x9, #0x20
  204094:	f9000139 	str	x25, [x9]
  204098:	d0000009 	adrp	x9, 206000 <__init_array_end>
  20409c:	9100a129 	add	x9, x9, #0x28
  2040a0:	f900013b 	str	x27, [x9]

00000000002040a4 <cake_return>:
  2040a4:	d0000009 	adrp	x9, 206000 <__init_array_end>
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
  2040ec:	17fff835 	b	2021c0 <cml_notified_47>

00000000002040f0 <cml_exit>:
  2040f0:	d503201f 	nop
  2040f4:	700084a0 	adr	x0, 20518b <_text_end+0x77>
  2040f8:	14000362 	b	204e80 <microkit_dbg_puts>
  2040fc:	d503201f 	nop

0000000000204100 <cml_err>:
  204100:	71000c1f 	cmp	w0, #0x3
  204104:	540000e1 	b.ne	204120 <cml_err+0x20>  // b.any
  204108:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  20410c:	910003fd 	mov	x29, sp
  204110:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204114:	9106c400 	add	x0, x0, #0x1b1
  204118:	9400035a 	bl	204e80 <microkit_dbg_puts>
  20411c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  204120:	d503201f 	nop
  204124:	70008320 	adr	x0, 20518b <_text_end+0x77>
  204128:	14000356 	b	204e80 <microkit_dbg_puts>
  20412c:	d503201f 	nop

0000000000204130 <cml_clear>:
  204130:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204134:	91045000 	add	x0, x0, #0x114
  204138:	14000352 	b	204e80 <microkit_dbg_puts>
  20413c:	d503201f 	nop

0000000000204140 <init_pancake_mem>:
  204140:	d503201f 	nop
  204144:	10015be8 	adr	x8, 206cc0 <cml_memory>
  204148:	52878009 	mov	w9, #0x3c00                	// #15360
  20414c:	528f000c 	mov	w12, #0x7800                	// #30720
  204150:	d000000a 	adrp	x10, 206000 <__init_array_end>
  204154:	8b090109 	add	x9, x8, x9
  204158:	d000000b 	adrp	x11, 206000 <__init_array_end>
  20415c:	8b0c010c 	add	x12, x8, x12
  204160:	d000000d 	adrp	x13, 206000 <__init_array_end>
  204164:	f9000148 	str	x8, [x10]
  204168:	f9000569 	str	x9, [x11, #8]
  20416c:	f90009ac 	str	x12, [x13, #16]
  204170:	d65f03c0 	ret
  204174:	d503201f 	nop
  204178:	d503201f 	nop
  20417c:	d503201f 	nop

0000000000204180 <init>:
  204180:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  204184:	f9000bf5 	str	x21, [sp, #16]
  204188:	a9024ff4 	stp	x20, x19, [sp, #32]
  20418c:	910003fd 	mov	x29, sp
  204190:	d503201f 	nop
  204194:	1001596e 	adr	x14, 206cc0 <cml_memory>
  204198:	52878009 	mov	w9, #0x3c00                	// #15360
  20419c:	d000000a 	adrp	x10, 206000 <__init_array_end>
  2041a0:	8b0901c9 	add	x9, x14, x9
  2041a4:	d000000c 	adrp	x12, 206000 <__init_array_end>
  2041a8:	9101a18c 	add	x12, x12, #0x68
  2041ac:	d0000008 	adrp	x8, 206000 <__init_array_end>
  2041b0:	528f000b 	mov	w11, #0x7800                	// #30720
  2041b4:	f9000549 	str	x9, [x10, #8]
  2041b8:	d0000009 	adrp	x9, 206000 <__init_array_end>
  2041bc:	3940898a 	ldrb	w10, [x12, #34]
  2041c0:	f900010e 	str	x14, [x8]
  2041c4:	8b0b01c8 	add	x8, x14, x11
  2041c8:	f940098b 	ldr	x11, [x12, #16]
  2041cc:	f940158f 	ldr	x15, [x12, #40]
  2041d0:	f9000928 	str	x8, [x9, #16]
  2041d4:	f9400188 	ldr	x8, [x12]
  2041d8:	f90001ca 	str	x10, [x14]
  2041dc:	7940418a 	ldrh	w10, [x12, #32]
  2041e0:	f9401d89 	ldr	x9, [x12, #56]
  2041e4:	3971418d 	ldrb	w13, [x12, #3152]
  2041e8:	d503201f 	nop
  2041ec:	1000f3ac 	adr	x12, 206060 <config>
  2041f0:	a9052dc8 	stp	x8, x11, [x14, #80]
  2041f4:	f90031ca 	str	x10, [x14, #96]
  2041f8:	f90321c9 	str	x9, [x14, #1600]
  2041fc:	f90325cf 	str	x15, [x14, #1608]
  204200:	f90329cd 	str	x13, [x14, #1616]
  204204:	3400188d 	cbz	w13, 204514 <init+0x394>
  204208:	924005af 	and	x15, x13, #0x3
  20420c:	710011bf 	cmp	w13, #0x4
  204210:	54000062 	b.cs	20421c <init+0x9c>  // b.hs, b.nlast
  204214:	aa1f03f0 	mov	x16, xzr
  204218:	14000067 	b	2043b4 <init+0x234>
  20421c:	d342fdb2 	lsr	x18, x13, #2
  204220:	aa1f03f1 	mov	x17, xzr
  204224:	aa1f03f0 	mov	x16, xzr
  204228:	8b120640 	add	x0, x18, x18, lsl #1
  20422c:	5284bd12 	mov	w18, #0x25e8                	// #9704
  204230:	d0000001 	adrp	x1, 206000 <__init_array_end>
  204234:	9138a021 	add	x1, x1, #0xe28
  204238:	d37ae400 	lsl	x0, x0, #6
  20423c:	d503201f 	nop
  204240:	8b110182 	add	x2, x12, x17
  204244:	91001210 	add	x16, x16, #0x4
  204248:	91021043 	add	x3, x2, #0x84
  20424c:	9102d044 	add	x4, x2, #0xb4
  204250:	91045054 	add	x20, x2, #0x114
  204254:	bd408041 	ldr	s1, [x2, #128]
  204258:	0d401060 	ld1	{v0.b}[4], [x3]
  20425c:	91021443 	add	x3, x2, #0x85
  204260:	0d401082 	ld1	{v2.b}[4], [x4]
  204264:	91039444 	add	x4, x2, #0xe5
  204268:	bd40e044 	ldr	s4, [x2, #224]
  20426c:	f9402c45 	ldr	x5, [x2, #88]
  204270:	0d401460 	ld1	{v0.b}[5], [x3]
  204274:	9102d443 	add	x3, x2, #0xb5
  204278:	f9403446 	ldr	x6, [x2, #104]
  20427c:	7940f047 	ldrh	w7, [x2, #120]
  204280:	0d401462 	ld1	{v2.b}[5], [x3]
  204284:	91039043 	add	x3, x2, #0xe4
  204288:	6e0a2401 	mov	v1.h[2], v0.h[2]
  20428c:	bd40b040 	ldr	s0, [x2, #176]
  204290:	3941e853 	ldrb	w19, [x2, #122]
  204294:	0d401063 	ld1	{v3.b}[4], [x3]
  204298:	8b1201c3 	add	x3, x14, x18
  20429c:	0d401285 	ld1	{v5.b}[4], [x20]
  2042a0:	91008252 	add	x18, x18, #0x20
  2042a4:	6e0a2440 	mov	v0.h[2], v2.h[2]
  2042a8:	a9389825 	stp	x5, x6, [x1, #-120]
  2042ac:	91045445 	add	x5, x2, #0x115
  2042b0:	a939fc27 	stp	x7, xzr, [x1, #-104]
  2042b4:	2f08a421 	uxtl	v1.8h, v1.8b
  2042b8:	0d401483 	ld1	{v3.b}[5], [x4]
  2042bc:	8b1101c4 	add	x4, x14, x17
  2042c0:	f81e8073 	stur	x19, [x3, #-24]
  2042c4:	f9404455 	ldr	x21, [x2, #136]
  2042c8:	91030231 	add	x17, x17, #0xc0
  2042cc:	f9404c46 	ldr	x6, [x2, #152]
  2042d0:	eb11001f 	cmp	x0, x17
  2042d4:	2f08a400 	uxtl	v0.8h, v0.8b
  2042d8:	79415047 	ldrh	w7, [x2, #168]
  2042dc:	6e0a2464 	mov	v4.h[2], v3.h[2]
  2042e0:	0d4014a5 	ld1	{v5.b}[5], [x5]
  2042e4:	6f10a422 	uxtl2	v2.4s, v1.8h
  2042e8:	3942a845 	ldrb	w5, [x2, #170]
  2042ec:	2f10a421 	uxtl	v1.4s, v1.4h
  2042f0:	39436853 	ldrb	w19, [x2, #218]
  2042f4:	6f10a403 	uxtl2	v3.4s, v0.8h
  2042f8:	2f10a400 	uxtl	v0.4s, v0.4h
  2042fc:	2f20a442 	uxtl	v2.2d, v2.2s
  204300:	6f20a426 	uxtl2	v6.2d, v1.4s
  204304:	2f20a421 	uxtl	v1.2d, v1.2s
  204308:	2f08a484 	uxtl	v4.8h, v4.8b
  20430c:	2f20a463 	uxtl	v3.2d, v3.2s
  204310:	ad198886 	stp	q6, q2, [x4, #816]
  204314:	3d80c881 	str	q1, [x4, #800]
  204318:	6f20a401 	uxtl2	v1.2d, v0.4s
  20431c:	bd411042 	ldr	s2, [x2, #272]
  204320:	2f20a400 	uxtl	v0.2d, v0.2s
  204324:	a93a9835 	stp	x21, x6, [x1, #-88]
  204328:	6f10a486 	uxtl2	v6.4s, v4.8h
  20432c:	a93bfc27 	stp	x7, xzr, [x1, #-72]
  204330:	f81f0065 	stur	x5, [x3, #-16]
  204334:	6e0a24a2 	mov	v2.h[2], v5.h[2]
  204338:	f9405c45 	ldr	x5, [x2, #184]
  20433c:	ad1b0c81 	stp	q1, q3, [x4, #864]
  204340:	2f10a483 	uxtl	v3.4s, v4.4h
  204344:	3d80d480 	str	q0, [x4, #848]
  204348:	2f20a4c0 	uxtl	v0.2d, v6.2s
  20434c:	f9406446 	ldr	x6, [x2, #200]
  204350:	7941b047 	ldrh	w7, [x2, #216]
  204354:	2f08a441 	uxtl	v1.8h, v2.8b
  204358:	6f20a462 	uxtl2	v2.2d, v3.4s
  20435c:	a93c9825 	stp	x5, x6, [x1, #-56]
  204360:	a93dfc27 	stp	x7, xzr, [x1, #-40]
  204364:	2f20a463 	uxtl	v3.2d, v3.2s
  204368:	f81f8073 	stur	x19, [x3, #-8]
  20436c:	f9407445 	ldr	x5, [x2, #232]
  204370:	f9407c46 	ldr	x6, [x2, #248]
  204374:	79421047 	ldrh	w7, [x2, #264]
  204378:	ad1c8082 	stp	q2, q0, [x4, #912]
  20437c:	6f10a420 	uxtl2	v0.4s, v1.8h
  204380:	2f10a421 	uxtl	v1.4s, v1.4h
  204384:	39442842 	ldrb	w2, [x2, #266]
  204388:	3d80e083 	str	q3, [x4, #896]
  20438c:	a93e9825 	stp	x5, x6, [x1, #-24]
  204390:	a93ffc27 	stp	x7, xzr, [x1, #-8]
  204394:	91020021 	add	x1, x1, #0x80
  204398:	f9000062 	str	x2, [x3]
  20439c:	2f20a400 	uxtl	v0.2d, v0.2s
  2043a0:	6f20a422 	uxtl2	v2.2d, v1.4s
  2043a4:	2f20a421 	uxtl	v1.2d, v1.2s
  2043a8:	ad1e0082 	stp	q2, q0, [x4, #960]
  2043ac:	3d80ec81 	str	q1, [x4, #944]
  2043b0:	54fff481 	b.ne	204240 <init+0xc0>  // b.any
  2043b4:	b4000b0f 	cbz	x15, 204514 <init+0x394>
  2043b8:	8b100611 	add	x17, x16, x16, lsl #1
  2043bc:	8b1015c1 	add	x1, x14, x16, lsl #5
  2043c0:	d37cee31 	lsl	x17, x17, #4
  2043c4:	8b110192 	add	x18, x12, x17
  2043c8:	91021240 	add	x0, x18, #0x84
  2043cc:	8b1101d1 	add	x17, x14, x17
  2043d0:	f10005ff 	cmp	x15, #0x1
  2043d4:	bd408241 	ldr	s1, [x18, #128]
  2043d8:	0d401000 	ld1	{v0.b}[4], [x0]
  2043dc:	91021640 	add	x0, x18, #0x85
  2043e0:	f9403642 	ldr	x2, [x18, #104]
  2043e4:	7940f243 	ldrh	w3, [x18, #120]
  2043e8:	0d401400 	ld1	{v0.b}[5], [x0]
  2043ec:	f9402e40 	ldr	x0, [x18, #88]
  2043f0:	3941ea52 	ldrb	w18, [x18, #122]
  2043f4:	a9107c23 	stp	x3, xzr, [x1, #256]
  2043f8:	6e0a2401 	mov	v1.h[2], v0.h[2]
  2043fc:	a90f0820 	stp	x0, x2, [x1, #240]
  204400:	8b100dc0 	add	x0, x14, x16, lsl #3
  204404:	f912e812 	str	x18, [x0, #9680]
  204408:	2f08a420 	uxtl	v0.8h, v1.8b
  20440c:	6f10a401 	uxtl2	v1.4s, v0.8h
  204410:	2f10a400 	uxtl	v0.4s, v0.4h
  204414:	2f20a421 	uxtl	v1.2d, v1.2s
  204418:	6f20a402 	uxtl2	v2.2d, v0.4s
  20441c:	2f20a400 	uxtl	v0.2d, v0.2s
  204420:	ad198622 	stp	q2, q1, [x17, #816]
  204424:	3d80ca20 	str	q0, [x17, #800]
  204428:	54000760 	b.eq	204514 <init+0x394>  // b.none
  20442c:	91000611 	add	x17, x16, #0x1
  204430:	f10009ff 	cmp	x15, #0x2
  204434:	8b110632 	add	x18, x17, x17, lsl #1
  204438:	8b1115c2 	add	x2, x14, x17, lsl #5
  20443c:	d37cee52 	lsl	x18, x18, #4
  204440:	8b120180 	add	x0, x12, x18
  204444:	91021001 	add	x1, x0, #0x84
  204448:	8b110dd1 	add	x17, x14, x17, lsl #3
  20444c:	8b1201d2 	add	x18, x14, x18
  204450:	bd408001 	ldr	s1, [x0, #128]
  204454:	0d401020 	ld1	{v0.b}[4], [x1]
  204458:	91021401 	add	x1, x0, #0x85
  20445c:	f9403403 	ldr	x3, [x0, #104]
  204460:	7940f004 	ldrh	w4, [x0, #120]
  204464:	0d401420 	ld1	{v0.b}[5], [x1]
  204468:	f9402c01 	ldr	x1, [x0, #88]
  20446c:	3941e800 	ldrb	w0, [x0, #122]
  204470:	a9107c44 	stp	x4, xzr, [x2, #256]
  204474:	6e0a2401 	mov	v1.h[2], v0.h[2]
  204478:	a90f0c41 	stp	x1, x3, [x2, #240]
  20447c:	f912ea20 	str	x0, [x17, #9680]
  204480:	2f08a420 	uxtl	v0.8h, v1.8b
  204484:	6f10a401 	uxtl2	v1.4s, v0.8h
  204488:	2f10a400 	uxtl	v0.4s, v0.4h
  20448c:	2f20a421 	uxtl	v1.2d, v1.2s
  204490:	6f20a402 	uxtl2	v2.2d, v0.4s
  204494:	2f20a400 	uxtl	v0.2d, v0.2s
  204498:	ad198642 	stp	q2, q1, [x18, #816]
  20449c:	3d80ca40 	str	q0, [x18, #800]
  2044a0:	540003a0 	b.eq	204514 <init+0x394>  // b.none
  2044a4:	91000a0f 	add	x15, x16, #0x2
  2044a8:	8b0f05f0 	add	x16, x15, x15, lsl #1
  2044ac:	8b0f15c0 	add	x0, x14, x15, lsl #5
  2044b0:	d37cee10 	lsl	x16, x16, #4
  2044b4:	8b100191 	add	x17, x12, x16
  2044b8:	91021232 	add	x18, x17, #0x84
  2044bc:	8b0f0dcf 	add	x15, x14, x15, lsl #3
  2044c0:	8b1001d0 	add	x16, x14, x16
  2044c4:	bd408221 	ldr	s1, [x17, #128]
  2044c8:	0d401240 	ld1	{v0.b}[4], [x18]
  2044cc:	91021632 	add	x18, x17, #0x85
  2044d0:	f9403621 	ldr	x1, [x17, #104]
  2044d4:	7940f222 	ldrh	w2, [x17, #120]
  2044d8:	0d401640 	ld1	{v0.b}[5], [x18]
  2044dc:	f9402e32 	ldr	x18, [x17, #88]
  2044e0:	3941ea31 	ldrb	w17, [x17, #122]
  2044e4:	a9107c02 	stp	x2, xzr, [x0, #256]
  2044e8:	6e0a2401 	mov	v1.h[2], v0.h[2]
  2044ec:	a90f0412 	stp	x18, x1, [x0, #240]
  2044f0:	f912e9f1 	str	x17, [x15, #9680]
  2044f4:	2f08a420 	uxtl	v0.8h, v1.8b
  2044f8:	6f10a401 	uxtl2	v1.4s, v0.8h
  2044fc:	2f10a400 	uxtl	v0.4s, v0.4h
  204500:	2f20a421 	uxtl	v1.2d, v1.2s
  204504:	6f20a402 	uxtl2	v2.2d, v0.4s
  204508:	2f20a400 	uxtl	v0.2d, v0.2s
  20450c:	ad198602 	stp	q2, q1, [x16, #816]
  204510:	3d80ca00 	str	q0, [x16, #800]
  204514:	340002ea 	cbz	w10, 204570 <init+0x3f0>
  204518:	7100115f 	cmp	w10, #0x4
  20451c:	54000062 	b.cs	204528 <init+0x3a8>  // b.hs, b.nlast
  204520:	aa1f03ef 	mov	x15, xzr
  204524:	1400000d 	b	204558 <init+0x3d8>
  204528:	6f00e400 	movi	v0.2d, #0x0
  20452c:	927e354f 	and	x15, x10, #0xfffc
  204530:	aa0f03f0 	mov	x16, x15
  204534:	f0000011 	adrp	x17, 207000 <cml_memory+0x340>
  204538:	910d8231 	add	x17, x17, #0x360
  20453c:	d503201f 	nop
  204540:	ad3f8220 	stp	q0, q0, [x17, #-16]
  204544:	91008231 	add	x17, x17, #0x20
  204548:	f1001210 	subs	x16, x16, #0x4
  20454c:	54ffffa1 	b.ne	204540 <init+0x3c0>  // b.any
  204550:	eb0a01ff 	cmp	x15, x10
  204554:	540000e0 	b.eq	204570 <init+0x3f0>  // b.none
  204558:	8b0f0dce 	add	x14, x14, x15, lsl #3
  20455c:	cb0f014f 	sub	x15, x10, x15
  204560:	911a41ce 	add	x14, x14, #0x690
  204564:	f10005ef 	subs	x15, x15, #0x1
  204568:	f80085df 	str	xzr, [x14], #8
  20456c:	54ffffc1 	b.ne	204564 <init+0x3e4>  // b.any
  204570:	d000000e 	adrp	x14, 206000 <__init_array_end>
  204574:	6f00e400 	movi	v0.2d, #0x0
  204578:	d000004f 	adrp	x15, 20e000 <cml_memory+0x7340>
  20457c:	f94055ce 	ldr	x14, [x14, #168]
  204580:	f90261ee 	str	x14, [x15, #1216]
  204584:	b000002f 	adrp	x15, 209000 <cml_memory+0x2340>
  204588:	910f41ef 	add	x15, x15, #0x3d0
  20458c:	d503201f 	nop
  204590:	1004f9ce 	adr	x14, 20e4c8 <state>
  204594:	f90001ff 	str	xzr, [x15]
  204598:	ad0281e0 	stp	q0, q0, [x15, #80]
  20459c:	ad0381e0 	stp	q0, q0, [x15, #112]
  2045a0:	ad0481e0 	stp	q0, q0, [x15, #144]
  2045a4:	ad0581e0 	stp	q0, q0, [x15, #176]
  2045a8:	ad0681e0 	stp	q0, q0, [x15, #208]
  2045ac:	ad0781e0 	stp	q0, q0, [x15, #240]
  2045b0:	ad0881e0 	stp	q0, q0, [x15, #272]
  2045b4:	ad0981e0 	stp	q0, q0, [x15, #304]
  2045b8:	ad0a81e0 	stp	q0, q0, [x15, #336]
  2045bc:	ad0b81e0 	stp	q0, q0, [x15, #368]
  2045c0:	ad0c81e0 	stp	q0, q0, [x15, #400]
  2045c4:	ad0d81e0 	stp	q0, q0, [x15, #432]
  2045c8:	ad0e81e0 	stp	q0, q0, [x15, #464]
  2045cc:	ad0f81e0 	stp	q0, q0, [x15, #496]
  2045d0:	ad1081e0 	stp	q0, q0, [x15, #528]
  2045d4:	ad1181e0 	stp	q0, q0, [x15, #560]
  2045d8:	3400090d 	cbz	w13, 2046f8 <init+0x578>
  2045dc:	924005af 	and	x15, x13, #0x3
  2045e0:	710011bf 	cmp	w13, #0x4
  2045e4:	54000082 	b.cs	2045f4 <init+0x474>  // b.hs, b.nlast
  2045e8:	aa1f03ed 	mov	x13, xzr
  2045ec:	b500048f 	cbnz	x15, 20467c <init+0x4fc>
  2045f0:	14000042 	b	2046f8 <init+0x578>
  2045f4:	927e15ad 	and	x13, x13, #0xfc
  2045f8:	aa1f03f0 	mov	x16, xzr
  2045fc:	cb0d03ed 	neg	x13, x13
  204600:	d0000051 	adrp	x17, 20e000 <cml_memory+0x7340>
  204604:	91140231 	add	x17, x17, #0x500
  204608:	d0000012 	adrp	x18, 206000 <__init_array_end>
  20460c:	9103a252 	add	x18, x18, #0xe8
  204610:	f85d0240 	ldur	x0, [x18, #-48]
  204614:	d1001210 	sub	x16, x16, #0x4
  204618:	f85e0241 	ldur	x1, [x18, #-32]
  20461c:	eb1001bf 	cmp	x13, x16
  204620:	785f0242 	ldurh	w2, [x18, #-16]
  204624:	79410243 	ldrh	w3, [x18, #128]
  204628:	a93e0620 	stp	x0, x1, [x17, #-32]
  20462c:	f9400240 	ldr	x0, [x18]
  204630:	f9400a41 	ldr	x1, [x18, #16]
  204634:	b81f0222 	stur	w2, [x17, #-16]
  204638:	79404242 	ldrh	w2, [x18, #32]
  20463c:	b9003a23 	str	w3, [x17, #56]
  204640:	a93f8620 	stp	x0, x1, [x17, #-8]
  204644:	f9401a40 	ldr	x0, [x18, #48]
  204648:	f9402241 	ldr	x1, [x18, #64]
  20464c:	b9000a22 	str	w2, [x17, #8]
  204650:	7940a242 	ldrh	w2, [x18, #80]
  204654:	a9010620 	stp	x0, x1, [x17, #16]
  204658:	f9403240 	ldr	x0, [x18, #96]
  20465c:	f9403a41 	ldr	x1, [x18, #112]
  204660:	91030252 	add	x18, x18, #0xc0
  204664:	b9002222 	str	w2, [x17, #32]
  204668:	a9028620 	stp	x0, x1, [x17, #40]
  20466c:	91018231 	add	x17, x17, #0x60
  204670:	54fffd01 	b.ne	204610 <init+0x490>  // b.any
  204674:	cb1003ed 	neg	x13, x16
  204678:	b400040f 	cbz	x15, 2046f8 <init+0x578>
  20467c:	52800610 	mov	w16, #0x30                  	// #48
  204680:	52800311 	mov	w17, #0x18                  	// #24
  204684:	f10005ff 	cmp	x15, #0x1
  204688:	9b1031b0 	madd	x16, x13, x16, x12
  20468c:	9b1139b1 	madd	x17, x13, x17, x14
  204690:	f9402e12 	ldr	x18, [x16, #88]
  204694:	f9403600 	ldr	x0, [x16, #104]
  204698:	7940f210 	ldrh	w16, [x16, #120]
  20469c:	a9018232 	stp	x18, x0, [x17, #24]
  2046a0:	b9002a30 	str	w16, [x17, #40]
  2046a4:	540002a0 	b.eq	2046f8 <init+0x578>  // b.none
  2046a8:	52800610 	mov	w16, #0x30                  	// #48
  2046ac:	52800311 	mov	w17, #0x18                  	// #24
  2046b0:	f10009ff 	cmp	x15, #0x2
  2046b4:	9b1031b0 	madd	x16, x13, x16, x12
  2046b8:	9b1139b1 	madd	x17, x13, x17, x14
  2046bc:	f9404612 	ldr	x18, [x16, #136]
  2046c0:	f9404e00 	ldr	x0, [x16, #152]
  2046c4:	79415210 	ldrh	w16, [x16, #168]
  2046c8:	a9030232 	stp	x18, x0, [x17, #48]
  2046cc:	b9004230 	str	w16, [x17, #64]
  2046d0:	54000140 	b.eq	2046f8 <init+0x578>  // b.none
  2046d4:	5280060f 	mov	w15, #0x30                  	// #48
  2046d8:	9b0f31ac 	madd	x12, x13, x15, x12
  2046dc:	5280030f 	mov	w15, #0x18                  	// #24
  2046e0:	9b0f39ad 	madd	x13, x13, x15, x14
  2046e4:	f9405d8f 	ldr	x15, [x12, #184]
  2046e8:	f9406590 	ldr	x16, [x12, #200]
  2046ec:	7941b18c 	ldrh	w12, [x12, #216]
  2046f0:	a904c1af 	stp	x15, x16, [x13, #72]
  2046f4:	b90059ac 	str	w12, [x13, #88]
  2046f8:	a9002dc8 	stp	x8, x11, [x14]
  2046fc:	b90011ca 	str	w10, [x14, #16]
  204700:	3400036a 	cbz	w10, 20476c <init+0x5ec>
  204704:	7940010d 	ldrh	w13, [x8]
  204708:	aa1f03eb 	mov	x11, xzr
  20470c:	aa1f03ec 	mov	x12, xzr
  204710:	14000005 	b	204724 <init+0x5a4>
  204714:	9100058c 	add	x12, x12, #0x1
  204718:	9120016b 	add	x11, x11, #0x800
  20471c:	eb2a419f 	cmp	x12, w10, uxtw
  204720:	54000262 	b.cs	20476c <init+0x5ec>  // b.hs, b.nlast
  204724:	79400510 	ldrh	w16, [x8, #2]
  204728:	12003daf 	and	w15, w13, #0xffff
  20472c:	4b1001f0 	sub	w16, w15, w16
  204730:	6b0a021f 	cmp	w16, w10
  204734:	54ffff00 	b.eq	204714 <init+0x594>  // b.none
  204738:	1aca09ed 	udiv	w13, w15, w10
  20473c:	1b0abdaa 	msub	w10, w13, w10, w15
  204740:	9275516d 	and	x13, x11, #0xfffff800
  204744:	8b0901b0 	add	x16, x13, x9
  204748:	8b2a510f 	add	x15, x8, w10, uxtw #4
  20474c:	f90009ff 	str	xzr, [x15, #16]
  204750:	f94001c8 	ldr	x8, [x14]
  204754:	f90005f0 	str	x16, [x15, #8]
  204758:	7940010a 	ldrh	w10, [x8]
  20475c:	1100054d 	add	w13, w10, #0x1
  204760:	b94011ca 	ldr	w10, [x14, #16]
  204764:	7900010d 	strh	w13, [x8]
  204768:	17ffffeb 	b	204714 <init+0x594>
  20476c:	b9400509 	ldr	w9, [x8, #4]
  204770:	340000a9 	cbz	w9, 204784 <init+0x604>
  204774:	a9424ff4 	ldp	x20, x19, [sp, #32]
  204778:	f9400bf5 	ldr	x21, [sp, #16]
  20477c:	a8c37bfd 	ldp	x29, x30, [sp], #48
  204780:	17fff220 	b	201000 <cml_main>
  204784:	d0000009 	adrp	x9, 206000 <__init_array_end>
  204788:	39422933 	ldrb	w19, [x9, #138]
  20478c:	52800029 	mov	w9, #0x1                   	// #1
  204790:	b9000509 	str	w9, [x8, #4]
  204794:	7100f67f 	cmp	w19, #0x3d
  204798:	54000208 	b.hi	2047d8 <init+0x658>  // b.pmore
  20479c:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  2047a0:	f945a108 	ldr	x8, [x8, #2880]
  2047a4:	9ad32508 	lsr	x8, x8, x19
  2047a8:	36000188 	tbz	w8, #0, 2047d8 <init+0x658>
  2047ac:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  2047b0:	d000004a 	adrp	x10, 20e000 <cml_memory+0x7340>
  2047b4:	91002a6b 	add	x11, x19, #0xa
  2047b8:	d000004c 	adrp	x12, 20e000 <cml_memory+0x7340>
  2047bc:	392c8509 	strb	w9, [x8, #2849]
  2047c0:	f905955f 	str	xzr, [x10, #2856]
  2047c4:	f905998b 	str	x11, [x12, #2864]
  2047c8:	a9424ff4 	ldp	x20, x19, [sp, #32]
  2047cc:	f9400bf5 	ldr	x21, [sp, #16]
  2047d0:	a8c37bfd 	ldp	x29, x30, [sp], #48
  2047d4:	17fff20b 	b	201000 <cml_main>
  2047d8:	d503201f 	nop
  2047dc:	10051820 	adr	x0, 20eae0 <microkit_name>
  2047e0:	940001a8 	bl	204e80 <microkit_dbg_puts>
  2047e4:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  2047e8:	91056000 	add	x0, x0, #0x158
  2047ec:	940001a5 	bl	204e80 <microkit_dbg_puts>
  2047f0:	2a1303e0 	mov	w0, w19
  2047f4:	940001cb 	bl	204f20 <microkit_dbg_put32>
  2047f8:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  2047fc:	91055400 	add	x0, x0, #0x155
  204800:	940001a0 	bl	204e80 <microkit_dbg_puts>
  204804:	a9424ff4 	ldp	x20, x19, [sp, #32]
  204808:	f9400bf5 	ldr	x21, [sp, #16]
  20480c:	a8c37bfd 	ldp	x29, x30, [sp], #48
  204810:	17fff1fc 	b	201000 <cml_main>
	...

0000000000204820 <ffiTHREAD_MEMORY_RELEASE>:
  204820:	d5033bbf 	dmb	ish
  204824:	d65f03c0 	ret
  204828:	d503201f 	nop
  20482c:	d503201f 	nop

0000000000204830 <ffiTHREAD_MEMORY_ACQUIRE>:
  204830:	d50339bf 	dmb	ishld
  204834:	d65f03c0 	ret
  204838:	d503201f 	nop
  20483c:	d503201f 	nop

0000000000204840 <ffiassert>:
  204840:	d65f03c0 	ret
  204844:	d503201f 	nop
  204848:	d503201f 	nop
  20484c:	d503201f 	nop

0000000000204850 <ffimicrokit_notify>:
  204850:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204854:	f9000bf3 	str	x19, [sp, #16]
  204858:	910003fd 	mov	x29, sp
  20485c:	aa0103f3 	mov	x19, x1
  204860:	7100f67f 	cmp	w19, #0x3d
  204864:	540001a8 	b.hi	204898 <ffimicrokit_notify+0x48>  // b.pmore
  204868:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  20486c:	f945a108 	ldr	x8, [x8, #2880]
  204870:	9ad32508 	lsr	x8, x8, x19
  204874:	36000128 	tbz	w8, #0, 204898 <ffimicrokit_notify+0x48>
  204878:	11002a68 	add	w8, w19, #0xa
  20487c:	aa1f03e1 	mov	x1, xzr
  204880:	92401900 	and	x0, x8, #0x7f
  204884:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  204888:	d4000001 	svc	#0x0
  20488c:	f9400bf3 	ldr	x19, [sp, #16]
  204890:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204894:	d65f03c0 	ret
  204898:	d503201f 	nop
  20489c:	10051220 	adr	x0, 20eae0 <microkit_name>
  2048a0:	94000178 	bl	204e80 <microkit_dbg_puts>
  2048a4:	d503201f 	nop
  2048a8:	70004400 	adr	x0, 20512b <_text_end+0x17>
  2048ac:	94000175 	bl	204e80 <microkit_dbg_puts>
  2048b0:	2a1303e0 	mov	w0, w19
  2048b4:	9400019b 	bl	204f20 <microkit_dbg_put32>
  2048b8:	f9400bf3 	ldr	x19, [sp, #16]
  2048bc:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  2048c0:	91055400 	add	x0, x0, #0x155
  2048c4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2048c8:	1400016e 	b	204e80 <microkit_dbg_puts>
  2048cc:	d503201f 	nop

00000000002048d0 <ffimicrokit_deferred_irq_ack>:
  2048d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2048d4:	f9000bf3 	str	x19, [sp, #16]
  2048d8:	910003fd 	mov	x29, sp
  2048dc:	aa0103f3 	mov	x19, x1
  2048e0:	7100f67f 	cmp	w19, #0x3d
  2048e4:	54000268 	b.hi	204930 <ffimicrokit_deferred_irq_ack+0x60>  // b.pmore
  2048e8:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  2048ec:	f945a508 	ldr	x8, [x8, #2888]
  2048f0:	9ad32508 	lsr	x8, x8, x19
  2048f4:	360001e8 	tbz	w8, #0, 204930 <ffimicrokit_deferred_irq_ack+0x60>
  2048f8:	5294000b 	mov	w11, #0xa000                	// #40960
  2048fc:	11022a6c 	add	w12, w19, #0x8a
  204900:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  204904:	52800029 	mov	w9, #0x1                   	// #1
  204908:	d000004a 	adrp	x10, 20e000 <cml_memory+0x7340>
  20490c:	72a0002b 	movk	w11, #0x1, lsl #16
  204910:	92401d8c 	and	x12, x12, #0xff
  204914:	d000004d 	adrp	x13, 20e000 <cml_memory+0x7340>
  204918:	f9400bf3 	ldr	x19, [sp, #16]
  20491c:	392c8509 	strb	w9, [x8, #2849]
  204920:	f905954b 	str	x11, [x10, #2856]
  204924:	f90599ac 	str	x12, [x13, #2864]
  204928:	a8c27bfd 	ldp	x29, x30, [sp], #32
  20492c:	d65f03c0 	ret
  204930:	d503201f 	nop
  204934:	10050d60 	adr	x0, 20eae0 <microkit_name>
  204938:	94000152 	bl	204e80 <microkit_dbg_puts>
  20493c:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204940:	91092c00 	add	x0, x0, #0x24b
  204944:	9400014f 	bl	204e80 <microkit_dbg_puts>
  204948:	2a1303e0 	mov	w0, w19
  20494c:	94000175 	bl	204f20 <microkit_dbg_put32>
  204950:	f9400bf3 	ldr	x19, [sp, #16]
  204954:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204958:	91055400 	add	x0, x0, #0x155
  20495c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204960:	14000148 	b	204e80 <microkit_dbg_puts>
  204964:	d503201f 	nop
  204968:	d503201f 	nop
  20496c:	d503201f 	nop

0000000000204970 <ffimicrokit_irq_ack>:
  204970:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204974:	f9000bf3 	str	x19, [sp, #16]
  204978:	910003fd 	mov	x29, sp
  20497c:	aa0103f3 	mov	x19, x1
  204980:	7100f67f 	cmp	w19, #0x3d
  204984:	54000328 	b.hi	2049e8 <ffimicrokit_irq_ack+0x78>  // b.pmore
  204988:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  20498c:	f945a508 	ldr	x8, [x8, #2888]
  204990:	9ad32508 	lsr	x8, x8, x19
  204994:	360002a8 	tbz	w8, #0, 2049e8 <ffimicrokit_irq_ack+0x78>
  204998:	11022a68 	add	w8, w19, #0x8a
  20499c:	52940001 	mov	w1, #0xa000                	// #40960
  2049a0:	92401d00 	and	x0, x8, #0xff
  2049a4:	aa1f03e2 	mov	x2, xzr
  2049a8:	aa1f03e3 	mov	x3, xzr
  2049ac:	aa1f03e4 	mov	x4, xzr
  2049b0:	aa1f03e5 	mov	x5, xzr
  2049b4:	72a00021 	movk	w1, #0x1, lsl #16
  2049b8:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  2049bc:	aa1f03e6 	mov	x6, xzr
  2049c0:	d4000001 	svc	#0x0
  2049c4:	f2747c3f 	tst	x1, #0xffffffff000
  2049c8:	540000a0 	b.eq	2049dc <ffimicrokit_irq_ack+0x6c>  // b.none
  2049cc:	d0000008 	adrp	x8, 206000 <__init_array_end>
  2049d0:	f9402d08 	ldr	x8, [x8, #88]
  2049d4:	a9008d02 	stp	x2, x3, [x8, #8]
  2049d8:	a9019504 	stp	x4, x5, [x8, #24]
  2049dc:	f9400bf3 	ldr	x19, [sp, #16]
  2049e0:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2049e4:	d65f03c0 	ret
  2049e8:	d503201f 	nop
  2049ec:	100507a0 	adr	x0, 20eae0 <microkit_name>
  2049f0:	94000124 	bl	204e80 <microkit_dbg_puts>
  2049f4:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  2049f8:	91088000 	add	x0, x0, #0x220
  2049fc:	94000121 	bl	204e80 <microkit_dbg_puts>
  204a00:	2a1303e0 	mov	w0, w19
  204a04:	94000147 	bl	204f20 <microkit_dbg_put32>
  204a08:	f9400bf3 	ldr	x19, [sp, #16]
  204a0c:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204a10:	91055400 	add	x0, x0, #0x155
  204a14:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204a18:	1400011a 	b	204e80 <microkit_dbg_puts>
  204a1c:	d503201f 	nop

0000000000204a20 <ffisddf_irq_ack>:
  204a20:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204a24:	f9000bf3 	str	x19, [sp, #16]
  204a28:	910003fd 	mov	x29, sp
  204a2c:	aa0103f3 	mov	x19, x1
  204a30:	7100f67f 	cmp	w19, #0x3d
  204a34:	54000328 	b.hi	204a98 <ffisddf_irq_ack+0x78>  // b.pmore
  204a38:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  204a3c:	f945a508 	ldr	x8, [x8, #2888]
  204a40:	9ad32508 	lsr	x8, x8, x19
  204a44:	360002a8 	tbz	w8, #0, 204a98 <ffisddf_irq_ack+0x78>
  204a48:	11022a68 	add	w8, w19, #0x8a
  204a4c:	52940001 	mov	w1, #0xa000                	// #40960
  204a50:	92401d00 	and	x0, x8, #0xff
  204a54:	aa1f03e2 	mov	x2, xzr
  204a58:	aa1f03e3 	mov	x3, xzr
  204a5c:	aa1f03e4 	mov	x4, xzr
  204a60:	aa1f03e5 	mov	x5, xzr
  204a64:	72a00021 	movk	w1, #0x1, lsl #16
  204a68:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  204a6c:	aa1f03e6 	mov	x6, xzr
  204a70:	d4000001 	svc	#0x0
  204a74:	f2747c3f 	tst	x1, #0xffffffff000
  204a78:	540000a0 	b.eq	204a8c <ffisddf_irq_ack+0x6c>  // b.none
  204a7c:	d0000008 	adrp	x8, 206000 <__init_array_end>
  204a80:	f9402d08 	ldr	x8, [x8, #88]
  204a84:	a9008d02 	stp	x2, x3, [x8, #8]
  204a88:	a9019504 	stp	x4, x5, [x8, #24]
  204a8c:	f9400bf3 	ldr	x19, [sp, #16]
  204a90:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204a94:	d65f03c0 	ret
  204a98:	d503201f 	nop
  204a9c:	10050220 	adr	x0, 20eae0 <microkit_name>
  204aa0:	940000f8 	bl	204e80 <microkit_dbg_puts>
  204aa4:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204aa8:	91088000 	add	x0, x0, #0x220
  204aac:	940000f5 	bl	204e80 <microkit_dbg_puts>
  204ab0:	2a1303e0 	mov	w0, w19
  204ab4:	9400011b 	bl	204f20 <microkit_dbg_put32>
  204ab8:	f9400bf3 	ldr	x19, [sp, #16]
  204abc:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204ac0:	91055400 	add	x0, x0, #0x155
  204ac4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204ac8:	140000ee 	b	204e80 <microkit_dbg_puts>
  204acc:	d503201f 	nop

0000000000204ad0 <ffisddf_notify>:
  204ad0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204ad4:	f9000bf3 	str	x19, [sp, #16]
  204ad8:	910003fd 	mov	x29, sp
  204adc:	aa0103f3 	mov	x19, x1
  204ae0:	7100f67f 	cmp	w19, #0x3d
  204ae4:	540001a8 	b.hi	204b18 <ffisddf_notify+0x48>  // b.pmore
  204ae8:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  204aec:	f945a108 	ldr	x8, [x8, #2880]
  204af0:	9ad32508 	lsr	x8, x8, x19
  204af4:	36000128 	tbz	w8, #0, 204b18 <ffisddf_notify+0x48>
  204af8:	11002a68 	add	w8, w19, #0xa
  204afc:	aa1f03e1 	mov	x1, xzr
  204b00:	92401900 	and	x0, x8, #0x7f
  204b04:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  204b08:	d4000001 	svc	#0x0
  204b0c:	f9400bf3 	ldr	x19, [sp, #16]
  204b10:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204b14:	d65f03c0 	ret
  204b18:	d503201f 	nop
  204b1c:	1004fe20 	adr	x0, 20eae0 <microkit_name>
  204b20:	940000d8 	bl	204e80 <microkit_dbg_puts>
  204b24:	d503201f 	nop
  204b28:	70003000 	adr	x0, 20512b <_text_end+0x17>
  204b2c:	940000d5 	bl	204e80 <microkit_dbg_puts>
  204b30:	2a1303e0 	mov	w0, w19
  204b34:	940000fb 	bl	204f20 <microkit_dbg_put32>
  204b38:	f9400bf3 	ldr	x19, [sp, #16]
  204b3c:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204b40:	91055400 	add	x0, x0, #0x155
  204b44:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204b48:	140000ce 	b	204e80 <microkit_dbg_puts>
  204b4c:	d503201f 	nop

0000000000204b50 <ffisddf_deferred_notify>:
  204b50:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204b54:	f9000bf3 	str	x19, [sp, #16]
  204b58:	910003fd 	mov	x29, sp
  204b5c:	aa0103f3 	mov	x19, x1
  204b60:	7100f67f 	cmp	w19, #0x3d
  204b64:	54000228 	b.hi	204ba8 <ffisddf_deferred_notify+0x58>  // b.pmore
  204b68:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  204b6c:	f945a108 	ldr	x8, [x8, #2880]
  204b70:	9ad32508 	lsr	x8, x8, x19
  204b74:	360001a8 	tbz	w8, #0, 204ba8 <ffisddf_deferred_notify+0x58>
  204b78:	11002a6b 	add	w11, w19, #0xa
  204b7c:	d0000048 	adrp	x8, 20e000 <cml_memory+0x7340>
  204b80:	52800029 	mov	w9, #0x1                   	// #1
  204b84:	d000004a 	adrp	x10, 20e000 <cml_memory+0x7340>
  204b88:	d000004c 	adrp	x12, 20e000 <cml_memory+0x7340>
  204b8c:	9240196b 	and	x11, x11, #0x7f
  204b90:	f9400bf3 	ldr	x19, [sp, #16]
  204b94:	392c8509 	strb	w9, [x8, #2849]
  204b98:	f905955f 	str	xzr, [x10, #2856]
  204b9c:	f905998b 	str	x11, [x12, #2864]
  204ba0:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204ba4:	d65f03c0 	ret
  204ba8:	d503201f 	nop
  204bac:	1004f9a0 	adr	x0, 20eae0 <microkit_name>
  204bb0:	940000b4 	bl	204e80 <microkit_dbg_puts>
  204bb4:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204bb8:	91056000 	add	x0, x0, #0x158
  204bbc:	940000b1 	bl	204e80 <microkit_dbg_puts>
  204bc0:	2a1303e0 	mov	w0, w19
  204bc4:	940000d7 	bl	204f20 <microkit_dbg_put32>
  204bc8:	f9400bf3 	ldr	x19, [sp, #16]
  204bcc:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204bd0:	91055400 	add	x0, x0, #0x155
  204bd4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204bd8:	140000aa 	b	204e80 <microkit_dbg_puts>
  204bdc:	d503201f 	nop

0000000000204be0 <fficache_clean>:
  204be0:	aa0203e1 	mov	x1, x2
  204be4:	14000027 	b	204c80 <cache_clean>
  204be8:	d503201f 	nop
  204bec:	d503201f 	nop

0000000000204bf0 <fficache_clean_and_invalidate>:
  204bf0:	aa0203e1 	mov	x1, x2
  204bf4:	14000013 	b	204c40 <cache_clean_and_invalidate>
  204bf8:	d503201f 	nop
  204bfc:	d503201f 	nop

0000000000204c00 <ffidebug_print>:
  204c00:	d65f03c0 	ret
  204c04:	d503201f 	nop
  204c08:	d503201f 	nop
  204c0c:	d503201f 	nop

0000000000204c10 <ffiseL4_SetMR>:
  204c10:	d0000008 	adrp	x8, 206000 <__init_array_end>
  204c14:	f9402d08 	ldr	x8, [x8, #88]
  204c18:	8b21cd08 	add	x8, x8, w1, sxtw #3
  204c1c:	f9000503 	str	x3, [x8, #8]
  204c20:	d65f03c0 	ret
  204c24:	d503201f 	nop
  204c28:	d503201f 	nop
  204c2c:	d503201f 	nop

0000000000204c30 <ffinop>:
  204c30:	d65f03c0 	ret
	...

0000000000204c40 <cache_clean_and_invalidate>:
  204c40:	f240143f 	tst	x1, #0x3f
  204c44:	52800808 	mov	w8, #0x40                  	// #64
  204c48:	9a8803e8 	csel	x8, xzr, x8, eq	// eq = none
  204c4c:	d346fc09 	lsr	x9, x0, #6
  204c50:	8b010108 	add	x8, x8, x1
  204c54:	d346fd08 	lsr	x8, x8, #6
  204c58:	eb090108 	subs	x8, x8, x9
  204c5c:	540000c9 	b.ls	204c74 <cache_clean_and_invalidate+0x34>  // b.plast
  204c60:	d37ae529 	lsl	x9, x9, #6
  204c64:	d50b7e29 	dc	civac, x9
  204c68:	91010129 	add	x9, x9, #0x40
  204c6c:	f1000508 	subs	x8, x8, #0x1
  204c70:	54ffffa1 	b.ne	204c64 <cache_clean_and_invalidate+0x24>  // b.any
  204c74:	d5033f9f 	dsb	sy
  204c78:	d65f03c0 	ret
  204c7c:	d503201f 	nop

0000000000204c80 <cache_clean>:
  204c80:	f240143f 	tst	x1, #0x3f
  204c84:	52800808 	mov	w8, #0x40                  	// #64
  204c88:	9a8803e8 	csel	x8, xzr, x8, eq	// eq = none
  204c8c:	d346fc09 	lsr	x9, x0, #6
  204c90:	8b010108 	add	x8, x8, x1
  204c94:	d346fd08 	lsr	x8, x8, #6
  204c98:	eb090108 	subs	x8, x8, x9
  204c9c:	540000c9 	b.ls	204cb4 <cache_clean+0x34>  // b.plast
  204ca0:	d37ae529 	lsl	x9, x9, #6
  204ca4:	d50b7a29 	dc	cvac, x9
  204ca8:	91010129 	add	x9, x9, #0x40
  204cac:	f1000508 	subs	x8, x8, #0x1
  204cb0:	54ffffa1 	b.ne	204ca4 <cache_clean+0x24>  // b.any
  204cb4:	d5033fbf 	dmb	sy
  204cb8:	d65f03c0 	ret
  204cbc:	00000000 	udf	#0

0000000000204cc0 <protected>:
  204cc0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  204cc4:	d503201f 	nop
  204cc8:	1004f0c0 	adr	x0, 20eae0 <microkit_name>
  204ccc:	910003fd 	mov	x29, sp
  204cd0:	9400006c 	bl	204e80 <microkit_dbg_puts>
  204cd4:	d503201f 	nop
  204cd8:	10002d40 	adr	x0, 205280 <_text_end+0x16c>
  204cdc:	94000069 	bl	204e80 <microkit_dbg_puts>
  204ce0:	d2800000 	mov	x0, #0x0                   	// #0
  204ce4:	b900001f 	str	wzr, [x0]
  204ce8:	d4207d00 	brk	#0x3e8
  204cec:	d503201f 	nop

0000000000204cf0 <fault>:
  204cf0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  204cf4:	d503201f 	nop
  204cf8:	1004ef40 	adr	x0, 20eae0 <microkit_name>
  204cfc:	910003fd 	mov	x29, sp
  204d00:	94000060 	bl	204e80 <microkit_dbg_puts>
  204d04:	b0000000 	adrp	x0, 205000 <microkit_dbg_put32+0xe0>
  204d08:	910ae000 	add	x0, x0, #0x2b8
  204d0c:	9400005d 	bl	204e80 <microkit_dbg_puts>
  204d10:	d2800000 	mov	x0, #0x0                   	// #0
  204d14:	b900001f 	str	wzr, [x0]
  204d18:	d4207d00 	brk	#0x3e8
  204d1c:	00000000 	udf	#0

0000000000204d20 <main>:
  204d20:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  204d24:	d503201f 	nop
  204d28:	100096c0 	adr	x0, 206000 <__init_array_end>
  204d2c:	910003fd 	mov	x29, sp
  204d30:	a90153f3 	stp	x19, x20, [sp, #16]
  204d34:	d503201f 	nop
  204d38:	10009654 	adr	x20, 206000 <__init_array_end>
  204d3c:	a9025bf5 	stp	x21, x22, [sp, #32]
  204d40:	eb140015 	subs	x21, x0, x20
  204d44:	54000100 	b.eq	204d64 <main+0x44>  // b.none
  204d48:	9343feb5 	asr	x21, x21, #3
  204d4c:	d2800013 	mov	x19, #0x0                   	// #0
  204d50:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
  204d54:	91000673 	add	x19, x19, #0x1
  204d58:	d63f0000 	blr	x0
  204d5c:	eb1302bf 	cmp	x21, x19
  204d60:	54ffff88 	b.hi	204d50 <main+0x30>  // b.pmore
  204d64:	d503201f 	nop
  204d68:	1004ebd6 	adr	x22, 20eae0 <microkit_name>
  204d6c:	97fffd05 	bl	204180 <init>
  204d70:	394102c0 	ldrb	w0, [x22, #64]
  204d74:	360000a0 	tbz	w0, #0, 204d88 <main+0x68>
  204d78:	52800021 	mov	w1, #0x1                   	// #1
  204d7c:	d28000a0 	mov	x0, #0x5                   	// #5
  204d80:	390106c1 	strb	w1, [x22, #65]
  204d84:	a90482df 	stp	xzr, x0, [x22, #72]
  204d88:	d503201f 	nop
  204d8c:	10009675 	adr	x21, 206058 <__sel4_ipc_buffer>
  204d90:	52800000 	mov	w0, #0x0                   	// #0
  204d94:	35000200 	cbnz	w0, 204dd4 <main+0xb4>
  204d98:	39c106c0 	ldrsb	w0, [x22, #65]
  204d9c:	350004c0 	cbnz	w0, 204e34 <main+0x114>
  204da0:	d2800020 	mov	x0, #0x1                   	// #1
  204da4:	d2800086 	mov	x6, #0x4                   	// #4
  204da8:	928000c7 	mov	x7, #0xfffffffffffffff9    	// #-7
  204dac:	d4000001 	svc	#0x0
  204db0:	f94002a6 	ldr	x6, [x21]
  204db4:	aa0003f3 	mov	x19, x0
  204db8:	a9008cc2 	stp	x2, x3, [x6, #8]
  204dbc:	a90194c4 	stp	x4, x5, [x6, #24]
  204dc0:	b7f001d3 	tbnz	x19, #62, 204df8 <main+0xd8>
  204dc4:	b6f80273 	tbz	x19, #63, 204e10 <main+0xf0>
  204dc8:	12001660 	and	w0, w19, #0x3f
  204dcc:	97ffffbd 	bl	204cc0 <protected>
  204dd0:	f9001fe0 	str	x0, [sp, #56]
  204dd4:	f94002a5 	ldr	x5, [x21]
  204dd8:	d2800020 	mov	x0, #0x1                   	// #1
  204ddc:	f9401fe1 	ldr	x1, [sp, #56]
  204de0:	d2800086 	mov	x6, #0x4                   	// #4
  204de4:	a9408ca2 	ldp	x2, x3, [x5, #8]
  204de8:	92800027 	mov	x7, #0xfffffffffffffffe    	// #-2
  204dec:	a94194a4 	ldp	x4, x5, [x5, #24]
  204df0:	d4000001 	svc	#0x0
  204df4:	17ffffef 	b	204db0 <main+0x90>
  204df8:	12001e60 	and	w0, w19, #0xff
  204dfc:	9100e3e2 	add	x2, sp, #0x38
  204e00:	97ffffbc 	bl	204cf0 <fault>
  204e04:	72001c1f 	tst	w0, #0xff
  204e08:	1a9f07e0 	cset	w0, ne	// ne = any
  204e0c:	17ffffe2 	b	204d94 <main+0x74>
  204e10:	52800014 	mov	w20, #0x0                   	// #0
  204e14:	370000b3 	tbnz	w19, #0, 204e28 <main+0x108>
  204e18:	d341fe73 	lsr	x19, x19, #1
  204e1c:	11000694 	add	w20, w20, #0x1
  204e20:	b4fffb93 	cbz	x19, 204d90 <main+0x70>
  204e24:	3607ffb3 	tbz	w19, #0, 204e18 <main+0xf8>
  204e28:	2a1403e0 	mov	w0, w20
  204e2c:	97fffcad 	bl	2040e0 <notified>
  204e30:	17fffffa 	b	204e18 <main+0xf8>
  204e34:	f94002a5 	ldr	x5, [x21]
  204e38:	d2800020 	mov	x0, #0x1                   	// #1
  204e3c:	a944a2c1 	ldp	x1, x8, [x22, #72]
  204e40:	d2800086 	mov	x6, #0x4                   	// #4
  204e44:	a9408ca2 	ldp	x2, x3, [x5, #8]
  204e48:	92800047 	mov	x7, #0xfffffffffffffffd    	// #-3
  204e4c:	a94194a4 	ldp	x4, x5, [x5, #24]
  204e50:	d4000001 	svc	#0x0
  204e54:	f94002a6 	ldr	x6, [x21]
  204e58:	aa0003f3 	mov	x19, x0
  204e5c:	390106df 	strb	wzr, [x22, #65]
  204e60:	a9008cc2 	stp	x2, x3, [x6, #8]
  204e64:	a90194c4 	stp	x4, x5, [x6, #24]
  204e68:	17ffffd6 	b	204dc0 <main+0xa0>
  204e6c:	00000000 	udf	#0

0000000000204e70 <microkit_dbg_putc>:
  204e70:	d65f03c0 	ret
  204e74:	d503201f 	nop
  204e78:	d503201f 	nop
  204e7c:	d503201f 	nop

0000000000204e80 <microkit_dbg_puts>:
  204e80:	39400001 	ldrb	w1, [x0]
  204e84:	34000061 	cbz	w1, 204e90 <microkit_dbg_puts+0x10>
  204e88:	38401c01 	ldrb	w1, [x0, #1]!
  204e8c:	35ffffe1 	cbnz	w1, 204e88 <microkit_dbg_puts+0x8>
  204e90:	d65f03c0 	ret
  204e94:	d503201f 	nop
  204e98:	d503201f 	nop
  204e9c:	d503201f 	nop

0000000000204ea0 <microkit_dbg_put8>:
  204ea0:	12001c00 	and	w0, w0, #0xff
  204ea4:	529999a2 	mov	w2, #0xcccd                	// #52429
  204ea8:	72b99982 	movk	w2, #0xcccc, lsl #16
  204eac:	52800143 	mov	w3, #0xa                   	// #10
  204eb0:	d10043ff 	sub	sp, sp, #0x10
  204eb4:	7100241f 	cmp	w0, #0x9
  204eb8:	9ba27c01 	umull	x1, w0, w2
  204ebc:	d2800044 	mov	x4, #0x2                   	// #2
  204ec0:	39002fff 	strb	wzr, [sp, #11]
  204ec4:	d363fc21 	lsr	x1, x1, #35
  204ec8:	1b038025 	msub	w5, w1, w3, w0
  204ecc:	1100c0a5 	add	w5, w5, #0x30
  204ed0:	39002be5 	strb	w5, [sp, #10]
  204ed4:	540001a9 	b.ls	204f08 <microkit_dbg_put8+0x68>  // b.plast
  204ed8:	12001c21 	and	w1, w1, #0xff
  204edc:	71018c1f 	cmp	w0, #0x63
  204ee0:	d2800024 	mov	x4, #0x1                   	// #1
  204ee4:	9ba27c22 	umull	x2, w1, w2
  204ee8:	d363fc42 	lsr	x2, x2, #35
  204eec:	1b038443 	msub	w3, w2, w3, w1
  204ef0:	1100c063 	add	w3, w3, #0x30
  204ef4:	390027e3 	strb	w3, [sp, #9]
  204ef8:	54000089 	b.ls	204f08 <microkit_dbg_put8+0x68>  // b.plast
  204efc:	1100c042 	add	w2, w2, #0x30
  204f00:	d2800004 	mov	x4, #0x0                   	// #0
  204f04:	390023e2 	strb	w2, [sp, #8]
  204f08:	910023e0 	add	x0, sp, #0x8
  204f0c:	8b040000 	add	x0, x0, x4
  204f10:	38401c01 	ldrb	w1, [x0, #1]!
  204f14:	35ffffe1 	cbnz	w1, 204f10 <microkit_dbg_put8+0x70>
  204f18:	910043ff 	add	sp, sp, #0x10
  204f1c:	d65f03c0 	ret

0000000000204f20 <microkit_dbg_put32>:
  204f20:	529999a1 	mov	w1, #0xcccd                	// #52429
  204f24:	72b99981 	movk	w1, #0xcccc, lsl #16
  204f28:	52800143 	mov	w3, #0xa                   	// #10
  204f2c:	d10043ff 	sub	sp, sp, #0x10
  204f30:	9ba17c02 	umull	x2, w0, w1
  204f34:	7100241f 	cmp	w0, #0x9
  204f38:	39002bff 	strb	wzr, [sp, #10]
  204f3c:	d363fc42 	lsr	x2, x2, #35
  204f40:	1b038044 	msub	w4, w2, w3, w0
  204f44:	1100c084 	add	w4, w4, #0x30
  204f48:	390027e4 	strb	w4, [sp, #9]
  204f4c:	540009e9 	b.ls	205088 <microkit_dbg_put32+0x168>  // b.plast
  204f50:	9ba17c44 	umull	x4, w2, w1
  204f54:	71018c1f 	cmp	w0, #0x63
  204f58:	d363fc84 	lsr	x4, x4, #35
  204f5c:	1b038882 	msub	w2, w4, w3, w2
  204f60:	1100c042 	add	w2, w2, #0x30
  204f64:	390023e2 	strb	w2, [sp, #8]
  204f68:	54000949 	b.ls	205090 <microkit_dbg_put32+0x170>  // b.plast
  204f6c:	9ba17c82 	umull	x2, w4, w1
  204f70:	710f9c1f 	cmp	w0, #0x3e7
  204f74:	d363fc42 	lsr	x2, x2, #35
  204f78:	1b039044 	msub	w4, w2, w3, w4
  204f7c:	1100c084 	add	w4, w4, #0x30
  204f80:	39001fe4 	strb	w4, [sp, #7]
  204f84:	540008a9 	b.ls	205098 <microkit_dbg_put32+0x178>  // b.plast
  204f88:	9ba17c44 	umull	x4, w2, w1
  204f8c:	5284e1e5 	mov	w5, #0x270f                	// #9999
  204f90:	6b05001f 	cmp	w0, w5
  204f94:	d363fc84 	lsr	x4, x4, #35
  204f98:	1b038882 	msub	w2, w4, w3, w2
  204f9c:	1100c042 	add	w2, w2, #0x30
  204fa0:	39001be2 	strb	w2, [sp, #6]
  204fa4:	540007e9 	b.ls	2050a0 <microkit_dbg_put32+0x180>  // b.plast
  204fa8:	9ba17c82 	umull	x2, w4, w1
  204fac:	5290d3e5 	mov	w5, #0x869f                	// #34463
  204fb0:	72a00025 	movk	w5, #0x1, lsl #16
  204fb4:	6b05001f 	cmp	w0, w5
  204fb8:	d363fc42 	lsr	x2, x2, #35
  204fbc:	1b039044 	msub	w4, w2, w3, w4
  204fc0:	1100c084 	add	w4, w4, #0x30
  204fc4:	390017e4 	strb	w4, [sp, #5]
  204fc8:	54000709 	b.ls	2050a8 <microkit_dbg_put32+0x188>  // b.plast
  204fcc:	9ba17c44 	umull	x4, w2, w1
  204fd0:	528847e5 	mov	w5, #0x423f                	// #16959
  204fd4:	72a001e5 	movk	w5, #0xf, lsl #16
  204fd8:	6b05001f 	cmp	w0, w5
  204fdc:	d363fc84 	lsr	x4, x4, #35
  204fe0:	1b038882 	msub	w2, w4, w3, w2
  204fe4:	1100c042 	add	w2, w2, #0x30
  204fe8:	390013e2 	strb	w2, [sp, #4]
  204fec:	540004a9 	b.ls	205080 <microkit_dbg_put32+0x160>  // b.plast
  204ff0:	9ba17c82 	umull	x2, w4, w1
  204ff4:	5292cfe5 	mov	w5, #0x967f                	// #38527
  204ff8:	72a01305 	movk	w5, #0x98, lsl #16
  204ffc:	6b05001f 	cmp	w0, w5
  205000:	d363fc42 	lsr	x2, x2, #35
  205004:	1b039044 	msub	w4, w2, w3, w4
  205008:	1100c084 	add	w4, w4, #0x30
  20500c:	39000fe4 	strb	w4, [sp, #3]
  205010:	54000509 	b.ls	2050b0 <microkit_dbg_put32+0x190>  // b.plast
  205014:	9ba17c44 	umull	x4, w2, w1
  205018:	529c1fe5 	mov	w5, #0xe0ff                	// #57599
  20501c:	72a0bea5 	movk	w5, #0x5f5, lsl #16
  205020:	6b05001f 	cmp	w0, w5
  205024:	d363fc84 	lsr	x4, x4, #35
  205028:	1b038882 	msub	w2, w4, w3, w2
  20502c:	1100c042 	add	w2, w2, #0x30
  205030:	39000be2 	strb	w2, [sp, #2]
  205034:	54000429 	b.ls	2050b8 <microkit_dbg_put32+0x198>  // b.plast
  205038:	9ba17c81 	umull	x1, w4, w1
  20503c:	52993fe2 	mov	w2, #0xc9ff                	// #51711
  205040:	72a77342 	movk	w2, #0x3b9a, lsl #16
  205044:	6b02001f 	cmp	w0, w2
  205048:	d363fc21 	lsr	x1, x1, #35
  20504c:	1b039023 	msub	w3, w1, w3, w4
  205050:	1100c063 	add	w3, w3, #0x30
  205054:	390007e3 	strb	w3, [sp, #1]
  205058:	54000349 	b.ls	2050c0 <microkit_dbg_put32+0x1a0>  // b.plast
  20505c:	1100c021 	add	w1, w1, #0x30
  205060:	d2800000 	mov	x0, #0x0                   	// #0
  205064:	390003e1 	strb	w1, [sp]
  205068:	8b2063e0 	add	x0, sp, x0
  20506c:	d503201f 	nop
  205070:	38401c01 	ldrb	w1, [x0, #1]!
  205074:	35ffffe1 	cbnz	w1, 205070 <microkit_dbg_put32+0x150>
  205078:	910043ff 	add	sp, sp, #0x10
  20507c:	d65f03c0 	ret
  205080:	d2800080 	mov	x0, #0x4                   	// #4
  205084:	17fffff9 	b	205068 <microkit_dbg_put32+0x148>
  205088:	d2800120 	mov	x0, #0x9                   	// #9
  20508c:	17fffff7 	b	205068 <microkit_dbg_put32+0x148>
  205090:	d2800100 	mov	x0, #0x8                   	// #8
  205094:	17fffff5 	b	205068 <microkit_dbg_put32+0x148>
  205098:	d28000e0 	mov	x0, #0x7                   	// #7
  20509c:	17fffff3 	b	205068 <microkit_dbg_put32+0x148>
  2050a0:	d28000c0 	mov	x0, #0x6                   	// #6
  2050a4:	17fffff1 	b	205068 <microkit_dbg_put32+0x148>
  2050a8:	d28000a0 	mov	x0, #0x5                   	// #5
  2050ac:	17ffffef 	b	205068 <microkit_dbg_put32+0x148>
  2050b0:	d2800060 	mov	x0, #0x3                   	// #3
  2050b4:	17ffffed 	b	205068 <microkit_dbg_put32+0x148>
  2050b8:	d2800040 	mov	x0, #0x2                   	// #2
  2050bc:	17ffffeb 	b	205068 <microkit_dbg_put32+0x148>
  2050c0:	d2800020 	mov	x0, #0x1                   	// #1
  2050c4:	17ffffe9 	b	205068 <microkit_dbg_put32+0x148>
  2050c8:	d503201f 	nop
  2050cc:	d503201f 	nop

00000000002050d0 <__assert_fail>:
  2050d0:	d503201f 	nop
  2050d4:	10001062 	adr	x2, 2052e0 <_text_end+0x1cc>
  2050d8:	38401c44 	ldrb	w4, [x2, #1]!
  2050dc:	35ffffe4 	cbnz	w4, 2050d8 <__assert_fail+0x8>
  2050e0:	39400002 	ldrb	w2, [x0]
  2050e4:	34000062 	cbz	w2, 2050f0 <__assert_fail+0x20>
  2050e8:	38401c02 	ldrb	w2, [x0, #1]!
  2050ec:	35ffffe2 	cbnz	w2, 2050e8 <__assert_fail+0x18>
  2050f0:	39400020 	ldrb	w0, [x1]
  2050f4:	34000060 	cbz	w0, 205100 <__assert_fail+0x30>
  2050f8:	38401c20 	ldrb	w0, [x1, #1]!
  2050fc:	35ffffe0 	cbnz	w0, 2050f8 <__assert_fail+0x28>
  205100:	39400060 	ldrb	w0, [x3]
  205104:	34000060 	cbz	w0, 205110 <__assert_fail+0x40>
  205108:	38401c60 	ldrb	w0, [x3, #1]!
  20510c:	35ffffe0 	cbnz	w0, 205108 <__assert_fail+0x38>
  205110:	d65f03c0 	ret
