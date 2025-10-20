
build/eth_driver.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000200000 <_start>:
  200000:	1400123c 	b	2048f0 <main>
	...

0000000000201000 <cml_main>:
  201000:	90000000 	adrp	x0, 201000 <cml_main>
  201004:	9102c000 	add	x0, x0, #0xb0
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

0000000000201030 <cake_ffisddf_irq_ack>:
  201030:	14000d74 	b	204600 <ffisddf_irq_ack>
  201034:	d503201f 	nop
  201038:	d503201f 	nop
  20103c:	d503201f 	nop

0000000000201040 <cake_ffiTHREAD_MEMORY_RELEASE>:
  201040:	14000cf0 	b	204400 <ffiTHREAD_MEMORY_RELEASE>
  201044:	d503201f 	nop
  201048:	d503201f 	nop
  20104c:	d503201f 	nop

0000000000201050 <cake_ffiTHREAD_MEMORY_ACQUIRE>:
  201050:	14000cf0 	b	204410 <ffiTHREAD_MEMORY_ACQUIRE>
  201054:	d503201f 	nop
  201058:	d503201f 	nop
  20105c:	d503201f 	nop

0000000000201060 <cake_ffimicrokit_notify>:
  201060:	14000cf4 	b	204430 <ffimicrokit_notify>
  201064:	d503201f 	nop
  201068:	d503201f 	nop
  20106c:	d503201f 	nop

0000000000201070 <cake_ffiassert>:
  201070:	14000cec 	b	204420 <ffiassert>
  201074:	d503201f 	nop
  201078:	d503201f 	nop
  20107c:	d503201f 	nop

0000000000201080 <cake_ffimicrokit_deferred_irq_ack>:
  201080:	14000d0c 	b	2044b0 <ffimicrokit_deferred_irq_ack>
  201084:	d503201f 	nop
  201088:	d503201f 	nop
  20108c:	d503201f 	nop

0000000000201090 <cake_clear>:
  201090:	14000c18 	b	2040f0 <cml_exit>
  201094:	d503201f 	nop
  201098:	d503201f 	nop
  20109c:	d503201f 	nop

00000000002010a0 <cake_exit>:
  2010a0:	14000bf8 	b	204080 <cml_return>
  2010a4:	d503201f 	nop
  2010a8:	d503201f 	nop
  2010ac:	d503201f 	nop

00000000002010b0 <cml__Init_0>:
  2010b0:	aa03007e 	.word	0xaa03007e
  2010b4:	cb0103de 	.word	0xcb0103de
  2010b8:	d344ffde 	.word	0xd344ffde
  2010bc:	d37df3de 	.word	0xd37df3de
  2010c0:	8b0103de 	.word	0x8b0103de
  2010c4:	d280ff05 	.word	0xd280ff05
  2010c8:	8b050021 	.word	0x8b050021
  2010cc:	cb050063 	.word	0xcb050063
  2010d0:	eb01005f 	.word	0xeb01005f
  2010d4:	540000a3 	.word	0x540000a3
  2010d8:	eb02007f 	.word	0xeb02007f
  2010dc:	54000042 	.word	0x54000042
  2010e0:	aa1e03c2 	.word	0xaa1e03c2
  2010e4:	14000002 	.word	0x14000002
  2010e8:	aa1e03c2 	.word	0xaa1e03c2
  2010ec:	d280ff1e 	.word	0xd280ff1e
  2010f0:	cb1e0021 	.word	0xcb1e0021
  2010f4:	8b1e0063 	.word	0x8b1e0063
  2010f8:	aa02005e 	.word	0xaa02005e
  2010fc:	cb0103de 	.word	0xcb0103de
  201100:	b27dd3e5 	.word	0xb27dd3e5
  201104:	eb1e00bf 	.word	0xeb1e00bf
  201108:	54000062 	.word	0x54000062
  20110c:	aa010022 	.word	0xaa010022
  201110:	8b050042 	.word	0x8b050042
  201114:	cb010042 	.word	0xcb010042
  201118:	d344fc42 	.word	0xd344fc42
  20111c:	d37cec42 	.word	0xd37cec42
  201120:	8b010042 	.word	0x8b010042
  201124:	aa020045 	.word	0xaa020045
  201128:	cb0100a5 	.word	0xcb0100a5
  20112c:	d341fca5 	.word	0xd341fca5
  201130:	aa01003c 	.word	0xaa01003c
  201134:	8b050021 	.word	0x8b050021
  201138:	aa030079 	.word	0xaa030079
  20113c:	aa02005b 	.word	0xaa02005b
  201140:	f9400382 	.word	0xf9400382
  201144:	d343fc42 	.word	0xd343fc42
  201148:	aa1c039e 	.word	0xaa1c039e
  20114c:	910023de 	.word	0x910023de
  201150:	f94003c3 	.word	0xf94003c3
  201154:	910023de 	.word	0x910023de
  201158:	f94003c6 	.word	0xf94003c6
  20115c:	910023de 	.word	0x910023de
  201160:	f94003c7 	.word	0xf94003c7
  201164:	910023de 	.word	0x910023de
  201168:	f94003c0 	.word	0xf94003c0
  20116c:	d280011e 	.word	0xd280011e
  201170:	cb1e0339 	.word	0xcb1e0339
  201174:	d280001e 	.word	0xd280001e
  201178:	f900033e 	.word	0xf900033e
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
  2012cc:	d280001e 	.word	0xd280001e
  2012d0:	f900037e 	.word	0xf900037e
  2012d4:	9100237b 	.word	0x9100237b
  2012d8:	d280001e 	.word	0xd280001e
  2012dc:	f900037e 	.word	0xf900037e
  2012e0:	9100237b 	.word	0x9100237b
  2012e4:	d280001e 	.word	0xd280001e
  2012e8:	f900037e 	.word	0xf900037e
  2012ec:	9100237b 	.word	0x9100237b
  2012f0:	d280001e 	.word	0xd280001e
  2012f4:	f900037e 	.word	0xf900037e
  2012f8:	9100237b 	.word	0x9100237b
  2012fc:	f9000366 	.word	0xf9000366
  201300:	9100237b 	.word	0x9100237b
  201304:	f9000363 	.word	0xf9000363
  201308:	9100237b 	.word	0x9100237b
  20130c:	f9000360 	.word	0xf9000360
  201310:	9100237b 	.word	0x9100237b
  201314:	f9000367 	.word	0xf9000367
  201318:	9100237b 	.word	0x9100237b
  20131c:	d280001e 	.word	0xd280001e
  201320:	f900037e 	.word	0xf900037e
  201324:	9100237b 	.word	0x9100237b
  201328:	f9000362 	.word	0xf9000362
  20132c:	9100237b 	.word	0x9100237b
  201330:	d280001e 	.word	0xd280001e
  201334:	f900037e 	.word	0xf900037e
  201338:	9100237b 	.word	0x9100237b
  20133c:	f900037c 	.word	0xf900037c
  201340:	9100237b 	.word	0x9100237b
  201344:	d280001e 	.word	0xd280001e
  201348:	f900037e 	.word	0xf900037e
  20134c:	9100237b 	.word	0x9100237b
  201350:	d280001e 	.word	0xd280001e
  201354:	f900037e 	.word	0xf900037e
  201358:	9100237b 	.word	0x9100237b
  20135c:	d280001e 	.word	0xd280001e
  201360:	f900037e 	.word	0xf900037e
  201364:	9100237b 	.word	0x9100237b
  201368:	f9000361 	.word	0xf9000361
  20136c:	9100237b 	.word	0x9100237b
  201370:	f9000361 	.word	0xf9000361
  201374:	9100237b 	.word	0x9100237b
  201378:	f9000365 	.word	0xf9000365
  20137c:	9100237b 	.word	0x9100237b
  201380:	f9000361 	.word	0xf9000361
  201384:	9100237b 	.word	0x9100237b
  201388:	f900037c 	.word	0xf900037c
  20138c:	9100237b 	.word	0x9100237b
  201390:	1000005e 	.word	0x1000005e
  201394:	1400003b 	.word	0x1400003b

0000000000201398 <cml__Halt0_1>:
  201398:	d2800000 	mov	x0, #0x0                   	// #0
  20139c:	17ffff41 	b	2010a0 <cake_exit>

00000000002013a0 <cml__Halt2_2>:
  2013a0:	d2800040 	mov	x0, #0x2                   	// #2
  2013a4:	17ffff3f 	b	2010a0 <cake_exit>

00000000002013a8 <cml__GC_3>:
  2013a8:	f81d0360 	stur	x0, [x27, #-48]
  2013ac:	aa1c0381 	orr	x1, x28, x28
  2013b0:	f81f8361 	stur	x1, [x27, #-8]
  2013b4:	f81d8361 	stur	x1, [x27, #-40]
  2013b8:	f81f0361 	stur	x1, [x27, #-16]
  2013bc:	ea00001f 	tst	x0, x0
  2013c0:	54000060 	b.eq	2013cc <cml__GC_3+0x24>  // b.none
  2013c4:	d2800020 	mov	x0, #0x1                   	// #1
  2013c8:	17ffff36 	b	2010a0 <cake_exit>
  2013cc:	d61f03c0 	br	x30

00000000002013d0 <cml__Raise_4>:
  2013d0:	f85c8378 	ldur	x24, [x27, #-56]
  2013d4:	d37df318 	lsl	x24, x24, #3
  2013d8:	aa1b0379 	orr	x25, x27, x27
  2013dc:	8b180339 	add	x25, x25, x24
  2013e0:	f9400b38 	ldr	x24, [x25, #16]
  2013e4:	f81c8378 	stur	x24, [x27, #-56]
  2013e8:	f9400738 	ldr	x24, [x25, #8]
  2013ec:	91006339 	add	x25, x25, #0x18
  2013f0:	d61f0300 	br	x24

00000000002013f4 <cml__StoreConsts_5>:
  2013f4:	f85a837d 	ldur	x29, [x27, #-88]
  2013f8:	8b0003bd 	add	x29, x29, x0
  2013fc:	d37df3bd 	lsl	x29, x29, #3
  201400:	f94003a0 	ldr	x0, [x29]
  201404:	910023bd 	add	x29, x29, #0x8
  201408:	f100001f 	cmp	x0, #0x0
  20140c:	540001ea 	b.ge	201448 <cml__StoreConsts_5+0x54>  // b.tcont
  201410:	f100041f 	cmp	x0, #0x1
  201414:	54000140 	b.eq	20143c <cml__StoreConsts_5+0x48>  // b.none
  201418:	f94003b8 	ldr	x24, [x29]
  20141c:	910023bd 	add	x29, x29, #0x8
  201420:	f240001f 	tst	x0, #0x1
  201424:	54000040 	b.eq	20142c <cml__StoreConsts_5+0x38>  // b.none
  201428:	8b020318 	add	x24, x24, x2
  20142c:	d341fc00 	lsr	x0, x0, #1
  201430:	f9000038 	str	x24, [x1]
  201434:	91002021 	add	x1, x1, #0x8
  201438:	17fffff6 	b	201410 <cml__StoreConsts_5+0x1c>
  20143c:	f94003a0 	ldr	x0, [x29]
  201440:	910023bd 	add	x29, x29, #0x8
  201444:	17fffff1 	b	201408 <cml__StoreConsts_5+0x14>
  201448:	f100041f 	cmp	x0, #0x1
  20144c:	54000140 	b.eq	201474 <cml__StoreConsts_5+0x80>  // b.none
  201450:	f94003b8 	ldr	x24, [x29]
  201454:	910023bd 	add	x29, x29, #0x8
  201458:	f240001f 	tst	x0, #0x1
  20145c:	54000040 	b.eq	201464 <cml__StoreConsts_5+0x70>  // b.none
  201460:	8b020318 	add	x24, x24, x2
  201464:	d341fc00 	lsr	x0, x0, #1
  201468:	f9000038 	str	x24, [x1]
  20146c:	91002021 	add	x1, x1, #0x8
  201470:	17fffff6 	b	201448 <cml__StoreConsts_5+0x54>
  201474:	aa000018 	orr	x24, x0, x0
  201478:	aa00001d 	orr	x29, x0, x0
  20147c:	d61f03c0 	br	x30

0000000000201480 <cml_generated_main_6>:
  201480:	f85e8360 	ldur	x0, [x27, #-24]
  201484:	d37ff800 	lsl	x0, x0, #1
  201488:	8b1c0000 	add	x0, x0, x28
  20148c:	d1002001 	sub	x1, x0, #0x8
  201490:	aa1c0380 	orr	x0, x28, x28
  201494:	f9400400 	ldr	x0, [x0, #8]
  201498:	f9000020 	str	x0, [x1]
  20149c:	f85e8360 	ldur	x0, [x27, #-24]
  2014a0:	d37ff800 	lsl	x0, x0, #1
  2014a4:	8b1c0000 	add	x0, x0, x28
  2014a8:	d1004001 	sub	x1, x0, #0x10
  2014ac:	aa1c0380 	orr	x0, x28, x28
  2014b0:	f9400800 	ldr	x0, [x0, #16]
  2014b4:	f9000020 	str	x0, [x1]
  2014b8:	f85e8360 	ldur	x0, [x27, #-24]
  2014bc:	d37ff800 	lsl	x0, x0, #1
  2014c0:	8b1c0000 	add	x0, x0, x28
  2014c4:	d1006001 	sub	x1, x0, #0x18
  2014c8:	aa1c0380 	orr	x0, x28, x28
  2014cc:	f9400c00 	ldr	x0, [x0, #24]
  2014d0:	f9000020 	str	x0, [x1]
  2014d4:	f85e8360 	ldur	x0, [x27, #-24]
  2014d8:	d37ff800 	lsl	x0, x0, #1
  2014dc:	8b1c0000 	add	x0, x0, x28
  2014e0:	d1008001 	sub	x1, x0, #0x20
  2014e4:	aa1c0380 	orr	x0, x28, x28
  2014e8:	f9400000 	ldr	x0, [x0]
  2014ec:	f9000020 	str	x0, [x1]
  2014f0:	f85e8360 	ldur	x0, [x27, #-24]
  2014f4:	d37ff800 	lsl	x0, x0, #1
  2014f8:	8b1c0000 	add	x0, x0, x28
  2014fc:	d100a001 	sub	x1, x0, #0x28
  201500:	aa1c0380 	orr	x0, x28, x28
  201504:	f9401000 	ldr	x0, [x0, #32]
  201508:	f9000020 	str	x0, [x1]
  20150c:	f85e8360 	ldur	x0, [x27, #-24]
  201510:	d37ff800 	lsl	x0, x0, #1
  201514:	8b1c0000 	add	x0, x0, x28
  201518:	d100c001 	sub	x1, x0, #0x30
  20151c:	aa1c0380 	orr	x0, x28, x28
  201520:	f9401400 	ldr	x0, [x0, #40]
  201524:	f9000020 	str	x0, [x1]
  201528:	f85e8360 	ldur	x0, [x27, #-24]
  20152c:	d37ff800 	lsl	x0, x0, #1
  201530:	8b1c0000 	add	x0, x0, x28
  201534:	d100e001 	sub	x1, x0, #0x38
  201538:	aa1c0380 	orr	x0, x28, x28
  20153c:	f9401800 	ldr	x0, [x0, #48]
  201540:	f9000020 	str	x0, [x1]
  201544:	f85e8360 	ldur	x0, [x27, #-24]
  201548:	d37ff800 	lsl	x0, x0, #1
  20154c:	8b1c0000 	add	x0, x0, x28
  201550:	d1010001 	sub	x1, x0, #0x40
  201554:	aa1c0380 	orr	x0, x28, x28
  201558:	f9401c00 	ldr	x0, [x0, #56]
  20155c:	f9000020 	str	x0, [x1]
  201560:	f85e8360 	ldur	x0, [x27, #-24]
  201564:	d37ff800 	lsl	x0, x0, #1
  201568:	8b1c0000 	add	x0, x0, x28
  20156c:	d1012001 	sub	x1, x0, #0x48
  201570:	aa1c0380 	orr	x0, x28, x28
  201574:	f9402000 	ldr	x0, [x0, #64]
  201578:	f9000020 	str	x0, [x1]
  20157c:	f85e8360 	ldur	x0, [x27, #-24]
  201580:	d37ff800 	lsl	x0, x0, #1
  201584:	8b1c0000 	add	x0, x0, x28
  201588:	d1014001 	sub	x1, x0, #0x50
  20158c:	aa1c0380 	orr	x0, x28, x28
  201590:	f9402400 	ldr	x0, [x0, #72]
  201594:	f9000020 	str	x0, [x1]
  201598:	f85e8360 	ldur	x0, [x27, #-24]
  20159c:	d37ff800 	lsl	x0, x0, #1
  2015a0:	8b1c0000 	add	x0, x0, x28
  2015a4:	d1016001 	sub	x1, x0, #0x58
  2015a8:	aa1c0380 	orr	x0, x28, x28
  2015ac:	f9403000 	ldr	x0, [x0, #96]
  2015b0:	f9000020 	str	x0, [x1]
  2015b4:	f85e8360 	ldur	x0, [x27, #-24]
  2015b8:	d37ff800 	lsl	x0, x0, #1
  2015bc:	8b1c0000 	add	x0, x0, x28
  2015c0:	d1018001 	sub	x1, x0, #0x60
  2015c4:	aa1c0380 	orr	x0, x28, x28
  2015c8:	f9404000 	ldr	x0, [x0, #128]
  2015cc:	f9000020 	str	x0, [x1]
  2015d0:	f85e8360 	ldur	x0, [x27, #-24]
  2015d4:	d37ff800 	lsl	x0, x0, #1
  2015d8:	8b1c0000 	add	x0, x0, x28
  2015dc:	d101a001 	sub	x1, x0, #0x68
  2015e0:	aa1c0380 	orr	x0, x28, x28
  2015e4:	f9403400 	ldr	x0, [x0, #104]
  2015e8:	f9000020 	str	x0, [x1]
  2015ec:	f85e8360 	ldur	x0, [x27, #-24]
  2015f0:	d37ff800 	lsl	x0, x0, #1
  2015f4:	8b1c0000 	add	x0, x0, x28
  2015f8:	d101c001 	sub	x1, x0, #0x70
  2015fc:	aa1c0380 	orr	x0, x28, x28
  201600:	f9404400 	ldr	x0, [x0, #136]
  201604:	f9000020 	str	x0, [x1]
  201608:	14000001 	b	20160c <cml_main_7>

000000000020160c <cml_main_7>:
  20160c:	d1004339 	sub	x25, x25, #0x10
  201610:	eb1b033f 	cmp	x25, x27
  201614:	54000062 	b.cs	201620 <cml_main_7+0x14>  // b.hs, b.nlast
  201618:	d2800040 	mov	x0, #0x2                   	// #2
  20161c:	17fffea1 	b	2010a0 <cake_exit>
  201620:	f900073e 	str	x30, [x25, #8]
  201624:	d2800058 	mov	x24, #0x2                   	// #2
  201628:	f9000338 	str	x24, [x25]
  20162c:	d1006339 	sub	x25, x25, #0x18
  201630:	eb1b033f 	cmp	x25, x27
  201634:	54000062 	b.cs	201640 <cml_main_7+0x34>  // b.hs, b.nlast
  201638:	d2800040 	mov	x0, #0x2                   	// #2
  20163c:	17fffe99 	b	2010a0 <cake_exit>
  201640:	d2800038 	mov	x24, #0x1                   	// #1
  201644:	f9000338 	str	x24, [x25]
  201648:	100001d8 	adr	x24, 201680 <cml_main_7+0x74>
  20164c:	f9000738 	str	x24, [x25, #8]
  201650:	f85c8378 	ldur	x24, [x27, #-56]
  201654:	f9000b38 	str	x24, [x25, #16]
  201658:	aa190338 	orr	x24, x25, x25
  20165c:	cb1b0318 	sub	x24, x24, x27
  201660:	d343ff18 	lsr	x24, x24, #3
  201664:	f81c8378 	stur	x24, [x27, #-56]
  201668:	1000005e 	adr	x30, 201670 <cml_main_7+0x64>
  20166c:	1400002b 	b	201718 <cml_rx_provide_8>
  201670:	f9400b38 	ldr	x24, [x25, #16]
  201674:	f81c8378 	stur	x24, [x27, #-56]
  201678:	91006339 	add	x25, x25, #0x18
  20167c:	14000002 	b	201684 <cml_main_7+0x78>
  201680:	17ffff54 	b	2013d0 <cml__Raise_4>
  201684:	d2800078 	mov	x24, #0x3                   	// #3
  201688:	f9000338 	str	x24, [x25]
  20168c:	d1006339 	sub	x25, x25, #0x18
  201690:	eb1b033f 	cmp	x25, x27
  201694:	54000062 	b.cs	2016a0 <cml_main_7+0x94>  // b.hs, b.nlast
  201698:	d2800040 	mov	x0, #0x2                   	// #2
  20169c:	17fffe81 	b	2010a0 <cake_exit>
  2016a0:	d2800038 	mov	x24, #0x1                   	// #1
  2016a4:	f9000338 	str	x24, [x25]
  2016a8:	100001d8 	adr	x24, 2016e0 <cml_main_7+0xd4>
  2016ac:	f9000738 	str	x24, [x25, #8]
  2016b0:	f85c8378 	ldur	x24, [x27, #-56]
  2016b4:	f9000b38 	str	x24, [x25, #16]
  2016b8:	aa190338 	orr	x24, x25, x25
  2016bc:	cb1b0318 	sub	x24, x24, x27
  2016c0:	d343ff18 	lsr	x24, x24, #3
  2016c4:	f81c8378 	stur	x24, [x27, #-56]
  2016c8:	1000005e 	adr	x30, 2016d0 <cml_main_7+0xc4>
  2016cc:	140000b6 	b	2019a4 <cml_tx_provide_14>
  2016d0:	f9400b38 	ldr	x24, [x25, #16]
  2016d4:	f81c8378 	stur	x24, [x27, #-56]
  2016d8:	91006339 	add	x25, x25, #0x18
  2016dc:	14000002 	b	2016e4 <cml_main_7+0xd8>
  2016e0:	17ffff3c 	b	2013d0 <cml__Raise_4>
  2016e4:	f85e837e 	ldur	x30, [x27, #-24]
  2016e8:	d37ffbde 	lsl	x30, x30, #1
  2016ec:	8b1c03de 	add	x30, x30, x28
  2016f0:	f85f83c1 	ldur	x1, [x30, #-8]
  2016f4:	d2800003 	mov	x3, #0x0                   	// #0
  2016f8:	aa030060 	orr	x0, x3, x3
  2016fc:	aa030062 	orr	x2, x3, x3
  201700:	1000005e 	adr	x30, 201708 <cml_main_7+0xfc>
  201704:	17fffe4b 	b	201030 <cake_ffisddf_irq_ack>
  201708:	f940073e 	ldr	x30, [x25, #8]
  20170c:	d2800000 	mov	x0, #0x0                   	// #0
  201710:	91004339 	add	x25, x25, #0x10
  201714:	d61f03c0 	br	x30

0000000000201718 <cml_rx_provide_8>:
  201718:	f85e8360 	ldur	x0, [x27, #-24]
  20171c:	d37ff800 	lsl	x0, x0, #1
  201720:	8b1c0000 	add	x0, x0, x28
  201724:	f85d8005 	ldur	x5, [x0, #-40]
  201728:	f85e8360 	ldur	x0, [x27, #-24]
  20172c:	d37ff800 	lsl	x0, x0, #1
  201730:	8b1c0000 	add	x0, x0, x28
  201734:	f85c8000 	ldur	x0, [x0, #-56]
  201738:	f85e8361 	ldur	x1, [x27, #-24]
  20173c:	d37ff821 	lsl	x1, x1, #1
  201740:	8b1c0021 	add	x1, x1, x28
  201744:	f85a8023 	ldur	x3, [x1, #-88]
  201748:	f85e8361 	ldur	x1, [x27, #-24]
  20174c:	d37ff821 	lsl	x1, x1, #1
  201750:	8b1c0021 	add	x1, x1, x28
  201754:	f8598022 	ldur	x2, [x1, #-104]
  201758:	f85e8361 	ldur	x1, [x27, #-24]
  20175c:	d37ff821 	lsl	x1, x1, #1
  201760:	8b1c0021 	add	x1, x1, x28
  201764:	f85e0026 	ldur	x6, [x1, #-32]
  201768:	d2800021 	mov	x1, #0x1                   	// #1
  20176c:	14000001 	b	201770 <cml_NOTFOUND_9>

0000000000201770 <cml_NOTFOUND_9>:
  201770:	f100003f 	cmp	x1, #0x0
  201774:	540000c0 	b.eq	20178c <cml_NOTFOUND_9+0x1c>  // b.none
  201778:	aa020041 	orr	x1, x2, x2
  20177c:	aa030062 	orr	x2, x3, x3
  201780:	aa0500a3 	orr	x3, x5, x5
  201784:	aa0600c5 	orr	x5, x6, x6
  201788:	14000002 	b	201790 <cml_NOTFOUND_10>
  20178c:	14000084 	b	20199c <cml_NOTFOUND_13>

0000000000201790 <cml_NOTFOUND_10>:
  201790:	d1012339 	sub	x25, x25, #0x48
  201794:	eb1b033f 	cmp	x25, x27
  201798:	54000062 	b.cs	2017a4 <cml_NOTFOUND_10+0x14>  // b.hs, b.nlast
  20179c:	d2800040 	mov	x0, #0x2                   	// #2
  2017a0:	17fffe40 	b	2010a0 <cake_exit>
  2017a4:	aa1c0386 	orr	x6, x28, x28
  2017a8:	f94028c6 	ldr	x6, [x6, #80]
  2017ac:	aa1c0387 	orr	x7, x28, x28
  2017b0:	f9402ce7 	ldr	x7, [x7, #88]
  2017b4:	cb0700c6 	sub	x6, x6, x7
  2017b8:	eb0200df 	cmp	x6, x2
  2017bc:	54000061 	b.ne	2017c8 <cml_NOTFOUND_10+0x38>  // b.any
  2017c0:	91012339 	add	x25, x25, #0x48
  2017c4:	1400004a 	b	2018ec <cml_NOTFOUND_11>
  2017c8:	79400066 	ldrh	w6, [x3]
  2017cc:	79400467 	ldrh	w7, [x3, #2]
  2017d0:	cb0700c6 	sub	x6, x6, x7
  2017d4:	d2800007 	mov	x7, #0x0                   	// #0
  2017d8:	eb0700df 	cmp	x6, x7
  2017dc:	54000061 	b.ne	2017e8 <cml_NOTFOUND_10+0x58>  // b.any
  2017e0:	91012339 	add	x25, x25, #0x48
  2017e4:	14000042 	b	2018ec <cml_NOTFOUND_11>
  2017e8:	aa030066 	orr	x6, x3, x3
  2017ec:	794004c7 	ldrh	w7, [x6, #2]
  2017f0:	d1000403 	sub	x3, x0, #0x1
  2017f4:	8a070063 	and	x3, x3, x7
  2017f8:	d37cec63 	lsl	x3, x3, #4
  2017fc:	8b060063 	add	x3, x3, x6
  201800:	91002068 	add	x8, x3, #0x8
  201804:	f9400103 	ldr	x3, [x8]
  201808:	b9400908 	ldr	w8, [x8, #8]
  20180c:	910004e7 	add	x7, x7, #0x1
  201810:	92403ce7 	and	x7, x7, #0xffff
  201814:	790004c7 	strh	w7, [x6, #2]
  201818:	aa1c0387 	orr	x7, x28, x28
  20181c:	f94028e9 	ldr	x9, [x7, #80]
  201820:	d1000447 	sub	x7, x2, #0x1
  201824:	8a0900e7 	and	x7, x7, x9
  201828:	d280c008 	mov	x8, #0x600                 	// #1536
  20182c:	910004ea 	add	x10, x7, #0x1
  201830:	eb02015f 	cmp	x10, x2
  201834:	54000040 	b.eq	20183c <cml_NOTFOUND_10+0xac>  // b.none
  201838:	14000005 	b	20184c <cml_NOTFOUND_10+0xbc>
  20183c:	f280c008 	movk	x8, #0x600
  201840:	f2a04008 	movk	x8, #0x200, lsl #16
  201844:	f2c00008 	movk	x8, #0x0, lsl #32
  201848:	f2e00008 	movk	x8, #0x0, lsl #48
  20184c:	d37cece7 	lsl	x7, x7, #4
  201850:	aa01002a 	orr	x10, x1, x1
  201854:	8b0a00e7 	add	x7, x7, x10
  201858:	b90008e3 	str	w3, [x7, #8]
  20185c:	d2800003 	mov	x3, #0x0                   	// #0
  201860:	b9000ce3 	str	w3, [x7, #12]
  201864:	b90004e8 	str	w8, [x7, #4]
  201868:	d2800003 	mov	x3, #0x0                   	// #0
  20186c:	f9001320 	str	x0, [x25, #32]
  201870:	aa030060 	orr	x0, x3, x3
  201874:	f9001721 	str	x1, [x25, #40]
  201878:	aa030061 	orr	x1, x3, x3
  20187c:	f9000b22 	str	x2, [x25, #16]
  201880:	aa030062 	orr	x2, x3, x3
  201884:	f900233e 	str	x30, [x25, #64]
  201888:	f9001f26 	str	x6, [x25, #56]
  20188c:	f9001b29 	str	x9, [x25, #48]
  201890:	f9000f25 	str	x5, [x25, #24]
  201894:	f9000727 	str	x7, [x25, #8]
  201898:	1000005e 	adr	x30, 2018a0 <cml_NOTFOUND_10+0x110>
  20189c:	17fffde9 	b	201040 <cake_ffiTHREAD_MEMORY_RELEASE>
  2018a0:	f940233e 	ldr	x30, [x25, #64]
  2018a4:	f9401f23 	ldr	x3, [x25, #56]
  2018a8:	f9401b26 	ldr	x6, [x25, #48]
  2018ac:	f9401721 	ldr	x1, [x25, #40]
  2018b0:	f9401320 	ldr	x0, [x25, #32]
  2018b4:	f9400f25 	ldr	x5, [x25, #24]
  2018b8:	f9400b22 	ldr	x2, [x25, #16]
  2018bc:	f9400727 	ldr	x7, [x25, #8]
  2018c0:	d2b00008 	mov	x8, #0x80000000            	// #2147483648
  2018c4:	b90000e8 	str	w8, [x7]
  2018c8:	d2800a07 	mov	x7, #0x50                  	// #80
  2018cc:	8b1c00e7 	add	x7, x7, x28
  2018d0:	910004c6 	add	x6, x6, #0x1
  2018d4:	f90000e6 	str	x6, [x7]
  2018d8:	d2820106 	mov	x6, #0x1008                	// #4104
  2018dc:	8b0600a6 	add	x6, x5, x6
  2018e0:	b2407fe7 	mov	x7, #0xffffffff            	// #4294967295
  2018e4:	b90000c7 	str	w7, [x6]
  2018e8:	17ffffaf 	b	2017a4 <cml_NOTFOUND_10+0x14>

00000000002018ec <cml_NOTFOUND_11>:
  2018ec:	aa010028 	orr	x8, x1, x1
  2018f0:	aa0500a6 	orr	x6, x5, x5
  2018f4:	d2800001 	mov	x1, #0x0                   	// #0
  2018f8:	aa030065 	orr	x5, x3, x3
  2018fc:	b90004a1 	str	w1, [x5, #4]
  201900:	d2800001 	mov	x1, #0x0                   	// #0
  201904:	794000a3 	ldrh	w3, [x5]
  201908:	794004a7 	ldrh	w7, [x5, #2]
  20190c:	cb070063 	sub	x3, x3, x7
  201910:	d2800007 	mov	x7, #0x0                   	// #0
  201914:	eb07007f 	cmp	x3, x7
  201918:	54000041 	b.ne	201920 <cml_NOTFOUND_11+0x34>  // b.any
  20191c:	d2800027 	mov	x7, #0x1                   	// #1
  201920:	aa1c0383 	orr	x3, x28, x28
  201924:	f9402863 	ldr	x3, [x3, #80]
  201928:	aa1c0389 	orr	x9, x28, x28
  20192c:	f9402d29 	ldr	x9, [x9, #88]
  201930:	cb090069 	sub	x9, x3, x9
  201934:	aa020043 	orr	x3, x2, x2
  201938:	eb03013f 	cmp	x9, x3
  20193c:	54000060 	b.eq	201948 <cml_NOTFOUND_11+0x5c>  // b.none
  201940:	d2800002 	mov	x2, #0x0                   	// #0
  201944:	14000002 	b	20194c <cml_NOTFOUND_11+0x60>
  201948:	d2800022 	mov	x2, #0x1                   	// #1
  20194c:	d2800009 	mov	x9, #0x0                   	// #0
  201950:	eb07013f 	cmp	x9, x7
  201954:	54000060 	b.eq	201960 <cml_NOTFOUND_11+0x74>  // b.none
  201958:	d2800007 	mov	x7, #0x0                   	// #0
  20195c:	14000002 	b	201964 <cml_NOTFOUND_11+0x78>
  201960:	d2800027 	mov	x7, #0x1                   	// #1
  201964:	d2800009 	mov	x9, #0x0                   	// #0
  201968:	eb02013f 	cmp	x9, x2
  20196c:	54000060 	b.eq	201978 <cml_NOTFOUND_11+0x8c>  // b.none
  201970:	d2800002 	mov	x2, #0x0                   	// #0
  201974:	14000002 	b	20197c <cml_NOTFOUND_11+0x90>
  201978:	d2800022 	mov	x2, #0x1                   	// #1
  20197c:	8a070042 	and	x2, x2, x7
  201980:	f100005f 	cmp	x2, #0x0
  201984:	54000080 	b.eq	201994 <cml_NOTFOUND_11+0xa8>  // b.none
  201988:	d2800021 	mov	x1, #0x1                   	// #1
  20198c:	b90004a1 	str	w1, [x5, #4]
  201990:	d2800021 	mov	x1, #0x1                   	// #1
  201994:	aa080102 	orr	x2, x8, x8
  201998:	17ffff76 	b	201770 <cml_NOTFOUND_9>

000000000020199c <cml_NOTFOUND_13>:
  20199c:	d2800000 	mov	x0, #0x0                   	// #0
  2019a0:	d61f03c0 	br	x30

00000000002019a4 <cml_tx_provide_14>:
  2019a4:	f85e8360 	ldur	x0, [x27, #-24]
  2019a8:	d37ff800 	lsl	x0, x0, #1
  2019ac:	8b1c0000 	add	x0, x0, x28
  2019b0:	f85b8005 	ldur	x5, [x0, #-72]
  2019b4:	f85e8360 	ldur	x0, [x27, #-24]
  2019b8:	d37ff800 	lsl	x0, x0, #1
  2019bc:	8b1c0000 	add	x0, x0, x28
  2019c0:	f85b0000 	ldur	x0, [x0, #-80]
  2019c4:	f85e8361 	ldur	x1, [x27, #-24]
  2019c8:	d37ff821 	lsl	x1, x1, #1
  2019cc:	8b1c0021 	add	x1, x1, x28
  2019d0:	f85a0023 	ldur	x3, [x1, #-96]
  2019d4:	f85e8361 	ldur	x1, [x27, #-24]
  2019d8:	d37ff821 	lsl	x1, x1, #1
  2019dc:	8b1c0021 	add	x1, x1, x28
  2019e0:	f8590022 	ldur	x2, [x1, #-112]
  2019e4:	f85e8361 	ldur	x1, [x27, #-24]
  2019e8:	d37ff821 	lsl	x1, x1, #1
  2019ec:	8b1c0021 	add	x1, x1, x28
  2019f0:	f85e0026 	ldur	x6, [x1, #-32]
  2019f4:	d2800021 	mov	x1, #0x1                   	// #1
  2019f8:	14000001 	b	2019fc <cml_NOTFOUND_15>

00000000002019fc <cml_NOTFOUND_15>:
  2019fc:	f100003f 	cmp	x1, #0x0
  201a00:	540000c0 	b.eq	201a18 <cml_NOTFOUND_15+0x1c>  // b.none
  201a04:	aa020041 	orr	x1, x2, x2
  201a08:	aa030062 	orr	x2, x3, x3
  201a0c:	aa0500a3 	orr	x3, x5, x5
  201a10:	aa0600c5 	orr	x5, x6, x6
  201a14:	14000003 	b	201a20 <cml_NOTFOUND_16>
  201a18:	aa0600c0 	orr	x0, x6, x6
  201a1c:	14000079 	b	201c00 <cml_NOTFOUND_19>

0000000000201a20 <cml_NOTFOUND_16>:
  201a20:	d1012339 	sub	x25, x25, #0x48
  201a24:	eb1b033f 	cmp	x25, x27
  201a28:	54000062 	b.cs	201a34 <cml_NOTFOUND_16+0x14>  // b.hs, b.nlast
  201a2c:	d2800040 	mov	x0, #0x2                   	// #2
  201a30:	17fffd9c 	b	2010a0 <cake_exit>
  201a34:	aa1c0386 	orr	x6, x28, x28
  201a38:	f94038c6 	ldr	x6, [x6, #112]
  201a3c:	aa1c0387 	orr	x7, x28, x28
  201a40:	f9403ce7 	ldr	x7, [x7, #120]
  201a44:	cb0700c6 	sub	x6, x6, x7
  201a48:	eb0200df 	cmp	x6, x2
  201a4c:	54000061 	b.ne	201a58 <cml_NOTFOUND_16+0x38>  // b.any
  201a50:	91012339 	add	x25, x25, #0x48
  201a54:	14000044 	b	201b64 <cml_NOTFOUND_17>
  201a58:	79400066 	ldrh	w6, [x3]
  201a5c:	79400467 	ldrh	w7, [x3, #2]
  201a60:	cb0700c6 	sub	x6, x6, x7
  201a64:	d2800007 	mov	x7, #0x0                   	// #0
  201a68:	eb0700df 	cmp	x6, x7
  201a6c:	54000061 	b.ne	201a78 <cml_NOTFOUND_16+0x58>  // b.any
  201a70:	91012339 	add	x25, x25, #0x48
  201a74:	1400003c 	b	201b64 <cml_NOTFOUND_17>
  201a78:	aa030066 	orr	x6, x3, x3
  201a7c:	794004c7 	ldrh	w7, [x6, #2]
  201a80:	d1000403 	sub	x3, x0, #0x1
  201a84:	8a070063 	and	x3, x3, x7
  201a88:	d37cec63 	lsl	x3, x3, #4
  201a8c:	8b060063 	add	x3, x3, x6
  201a90:	91002068 	add	x8, x3, #0x8
  201a94:	f9400103 	ldr	x3, [x8]
  201a98:	b9400908 	ldr	w8, [x8, #8]
  201a9c:	910004e7 	add	x7, x7, #0x1
  201aa0:	92403ce7 	and	x7, x7, #0xffff
  201aa4:	790004c7 	strh	w7, [x6, #2]
  201aa8:	aa1c0387 	orr	x7, x28, x28
  201aac:	f94038e9 	ldr	x9, [x7, #112]
  201ab0:	d1000447 	sub	x7, x2, #0x1
  201ab4:	8a0900e7 	and	x7, x7, x9
  201ab8:	92402908 	and	x8, x8, #0x7ff
  201abc:	b2630908 	orr	x8, x8, #0xe0000000
  201ac0:	910004ea 	add	x10, x7, #0x1
  201ac4:	eb02015f 	cmp	x10, x2
  201ac8:	54000040 	b.eq	201ad0 <cml_NOTFOUND_16+0xb0>  // b.none
  201acc:	14000002 	b	201ad4 <cml_NOTFOUND_16+0xb4>
  201ad0:	b2670108 	orr	x8, x8, #0x2000000
  201ad4:	d37cece7 	lsl	x7, x7, #4
  201ad8:	aa01002a 	orr	x10, x1, x1
  201adc:	8b0a00e7 	add	x7, x7, x10
  201ae0:	b90008e3 	str	w3, [x7, #8]
  201ae4:	d2800003 	mov	x3, #0x0                   	// #0
  201ae8:	b9000ce3 	str	w3, [x7, #12]
  201aec:	b90004e8 	str	w8, [x7, #4]
  201af0:	d2800003 	mov	x3, #0x0                   	// #0
  201af4:	f9001320 	str	x0, [x25, #32]
  201af8:	aa030060 	orr	x0, x3, x3
  201afc:	f9001721 	str	x1, [x25, #40]
  201b00:	aa030061 	orr	x1, x3, x3
  201b04:	f9000b22 	str	x2, [x25, #16]
  201b08:	aa030062 	orr	x2, x3, x3
  201b0c:	f900233e 	str	x30, [x25, #64]
  201b10:	f9001f26 	str	x6, [x25, #56]
  201b14:	f9001b29 	str	x9, [x25, #48]
  201b18:	f9000f25 	str	x5, [x25, #24]
  201b1c:	f9000727 	str	x7, [x25, #8]
  201b20:	1000005e 	adr	x30, 201b28 <cml_NOTFOUND_16+0x108>
  201b24:	17fffd47 	b	201040 <cake_ffiTHREAD_MEMORY_RELEASE>
  201b28:	f940233e 	ldr	x30, [x25, #64]
  201b2c:	f9401f23 	ldr	x3, [x25, #56]
  201b30:	f9401b26 	ldr	x6, [x25, #48]
  201b34:	f9401721 	ldr	x1, [x25, #40]
  201b38:	f9401320 	ldr	x0, [x25, #32]
  201b3c:	f9400f25 	ldr	x5, [x25, #24]
  201b40:	f9400b22 	ldr	x2, [x25, #16]
  201b44:	f9400727 	ldr	x7, [x25, #8]
  201b48:	d2b00008 	mov	x8, #0x80000000            	// #2147483648
  201b4c:	b90000e8 	str	w8, [x7]
  201b50:	d2800e07 	mov	x7, #0x70                  	// #112
  201b54:	8b1c00e7 	add	x7, x7, x28
  201b58:	910004c6 	add	x6, x6, #0x1
  201b5c:	f90000e6 	str	x6, [x7]
  201b60:	17ffffb5 	b	201a34 <cml_NOTFOUND_16+0x14>

0000000000201b64 <cml_NOTFOUND_17>:
  201b64:	aa010029 	orr	x9, x1, x1
  201b68:	aa0500a6 	orr	x6, x5, x5
  201b6c:	d2800001 	mov	x1, #0x0                   	// #0
  201b70:	aa030065 	orr	x5, x3, x3
  201b74:	b90004a1 	str	w1, [x5, #4]
  201b78:	d2800001 	mov	x1, #0x0                   	// #0
  201b7c:	aa1c0383 	orr	x3, x28, x28
  201b80:	f9403863 	ldr	x3, [x3, #112]
  201b84:	aa1c0387 	orr	x7, x28, x28
  201b88:	f9403ce7 	ldr	x7, [x7, #120]
  201b8c:	cb070067 	sub	x7, x3, x7
  201b90:	aa020043 	orr	x3, x2, x2
  201b94:	eb0300ff 	cmp	x7, x3
  201b98:	54000060 	b.eq	201ba4 <cml_NOTFOUND_17+0x40>  // b.none
  201b9c:	d2800002 	mov	x2, #0x0                   	// #0
  201ba0:	14000002 	b	201ba8 <cml_NOTFOUND_17+0x44>
  201ba4:	d2800022 	mov	x2, #0x1                   	// #1
  201ba8:	794000a7 	ldrh	w7, [x5]
  201bac:	794004a8 	ldrh	w8, [x5, #2]
  201bb0:	cb0800e8 	sub	x8, x7, x8
  201bb4:	d2800007 	mov	x7, #0x0                   	// #0
  201bb8:	eb07011f 	cmp	x8, x7
  201bbc:	54000060 	b.eq	201bc8 <cml_NOTFOUND_17+0x64>  // b.none
  201bc0:	d2800027 	mov	x7, #0x1                   	// #1
  201bc4:	14000001 	b	201bc8 <cml_NOTFOUND_17+0x64>
  201bc8:	d2800008 	mov	x8, #0x0                   	// #0
  201bcc:	eb02011f 	cmp	x8, x2
  201bd0:	54000060 	b.eq	201bdc <cml_NOTFOUND_17+0x78>  // b.none
  201bd4:	d2800002 	mov	x2, #0x0                   	// #0
  201bd8:	14000002 	b	201be0 <cml_NOTFOUND_17+0x7c>
  201bdc:	d2800022 	mov	x2, #0x1                   	// #1
  201be0:	8a070042 	and	x2, x2, x7
  201be4:	f100005f 	cmp	x2, #0x0
  201be8:	54000080 	b.eq	201bf8 <cml_NOTFOUND_17+0x94>  // b.none
  201bec:	d2800021 	mov	x1, #0x1                   	// #1
  201bf0:	b90004a1 	str	w1, [x5, #4]
  201bf4:	d2800021 	mov	x1, #0x1                   	// #1
  201bf8:	aa090122 	orr	x2, x9, x9
  201bfc:	17ffff80 	b	2019fc <cml_NOTFOUND_15>

0000000000201c00 <cml_NOTFOUND_19>:
  201c00:	d2820081 	mov	x1, #0x1004                	// #4100
  201c04:	8b010000 	add	x0, x0, x1
  201c08:	b2407fe1 	mov	x1, #0xffffffff            	// #4294967295
  201c0c:	b9000001 	str	w1, [x0]
  201c10:	d2800000 	mov	x0, #0x0                   	// #0
  201c14:	d61f03c0 	br	x30

0000000000201c18 <cml_rx_return_20>:
  201c18:	f85e8360 	ldur	x0, [x27, #-24]
  201c1c:	d37ff800 	lsl	x0, x0, #1
  201c20:	8b1c0000 	add	x0, x0, x28
  201c24:	f85d0001 	ldur	x1, [x0, #-48]
  201c28:	f85e8360 	ldur	x0, [x27, #-24]
  201c2c:	d37ff800 	lsl	x0, x0, #1
  201c30:	8b1c0000 	add	x0, x0, x28
  201c34:	f8598005 	ldur	x5, [x0, #-104]
  201c38:	f85e8360 	ldur	x0, [x27, #-24]
  201c3c:	d37ff800 	lsl	x0, x0, #1
  201c40:	8b1c0000 	add	x0, x0, x28
  201c44:	f85c8000 	ldur	x0, [x0, #-56]
  201c48:	f85e8362 	ldur	x2, [x27, #-24]
  201c4c:	d37ff842 	lsl	x2, x2, #1
  201c50:	8b1c0042 	add	x2, x2, x28
  201c54:	f85a8043 	ldur	x3, [x2, #-88]
  201c58:	f85e8362 	ldur	x2, [x27, #-24]
  201c5c:	d37ff842 	lsl	x2, x2, #1
  201c60:	8b1c0042 	add	x2, x2, x28
  201c64:	f85e0042 	ldur	x2, [x2, #-32]
  201c68:	d2800006 	mov	x6, #0x0                   	// #0
  201c6c:	14000001 	b	201c70 <cml_NOTFOUND_21>

0000000000201c70 <cml_NOTFOUND_21>:
  201c70:	d1016339 	sub	x25, x25, #0x58
  201c74:	eb1b033f 	cmp	x25, x27
  201c78:	54000062 	b.cs	201c84 <cml_NOTFOUND_21+0x14>  // b.hs, b.nlast
  201c7c:	d2800040 	mov	x0, #0x2                   	// #2
  201c80:	17fffd08 	b	2010a0 <cake_exit>
  201c84:	aa00000a 	orr	x10, x0, x0
  201c88:	aa010020 	orr	x0, x1, x1
  201c8c:	aa0600c1 	orr	x1, x6, x6
  201c90:	aa1c0386 	orr	x6, x28, x28
  201c94:	f9402cc6 	ldr	x6, [x6, #88]
  201c98:	aa1c0387 	orr	x7, x28, x28
  201c9c:	f94028e7 	ldr	x7, [x7, #80]
  201ca0:	eb0700df 	cmp	x6, x7
  201ca4:	54000061 	b.ne	201cb0 <cml_NOTFOUND_21+0x40>  // b.any
  201ca8:	91012339 	add	x25, x25, #0x48
  201cac:	14000082 	b	201eb4 <cml_NOTFOUND_22+0x14>
  201cb0:	aa1c0386 	orr	x6, x28, x28
  201cb4:	f9402cc8 	ldr	x8, [x6, #88]
  201cb8:	aa030067 	orr	x7, x3, x3
  201cbc:	d10004e3 	sub	x3, x7, #0x1
  201cc0:	8a080063 	and	x3, x3, x8
  201cc4:	d37cec63 	lsl	x3, x3, #4
  201cc8:	8b050069 	add	x9, x3, x5
  201ccc:	b9400126 	ldr	w6, [x9]
  201cd0:	926100c3 	and	x3, x6, #0x80000000
  201cd4:	f100007f 	cmp	x3, #0x0
  201cd8:	54000060 	b.eq	201ce4 <cml_NOTFOUND_21+0x74>  // b.none
  201cdc:	91012339 	add	x25, x25, #0x48
  201ce0:	14000075 	b	201eb4 <cml_NOTFOUND_22+0x14>
  201ce4:	d2800003 	mov	x3, #0x0                   	// #0
  201ce8:	f9001f20 	str	x0, [x25, #56]
  201cec:	aa030060 	orr	x0, x3, x3
  201cf0:	f9001b21 	str	x1, [x25, #48]
  201cf4:	aa030061 	orr	x1, x3, x3
  201cf8:	f9000f22 	str	x2, [x25, #24]
  201cfc:	aa030062 	orr	x2, x3, x3
  201d00:	f900273e 	str	x30, [x25, #72]
  201d04:	f9002b26 	str	x6, [x25, #80]
  201d08:	f9002327 	str	x7, [x25, #64]
  201d0c:	f900172a 	str	x10, [x25, #40]
  201d10:	f9001325 	str	x5, [x25, #32]
  201d14:	f9000b28 	str	x8, [x25, #16]
  201d18:	f9000729 	str	x9, [x25, #8]
  201d1c:	1000005e 	adr	x30, 201d24 <cml_NOTFOUND_21+0xb4>
  201d20:	17fffccc 	b	201050 <cake_ffiTHREAD_MEMORY_ACQUIRE>
  201d24:	f9402b3e 	ldr	x30, [x25, #80]
  201d28:	f9402738 	ldr	x24, [x25, #72]
  201d2c:	f9002b38 	str	x24, [x25, #80]
  201d30:	f9402323 	ldr	x3, [x25, #64]
  201d34:	f9401f38 	ldr	x24, [x25, #56]
  201d38:	f9002338 	str	x24, [x25, #64]
  201d3c:	f9401b38 	ldr	x24, [x25, #48]
  201d40:	f9001f38 	str	x24, [x25, #56]
  201d44:	f9401738 	ldr	x24, [x25, #40]
  201d48:	f9001b38 	str	x24, [x25, #48]
  201d4c:	f9401325 	ldr	x5, [x25, #32]
  201d50:	f9400f38 	ldr	x24, [x25, #24]
  201d54:	f9001338 	str	x24, [x25, #32]
  201d58:	f9400721 	ldr	x1, [x25, #8]
  201d5c:	927103c0 	and	x0, x30, #0x8000
  201d60:	f100001f 	cmp	x0, #0x0
  201d64:	540002c1 	b.ne	201dbc <cml_NOTFOUND_21+0x14c>  // b.any
  201d68:	927037de 	and	x30, x30, #0x3fff0000
  201d6c:	9350ffc2 	asr	x2, x30, #16
  201d70:	b9400827 	ldr	w7, [x1, #8]
  201d74:	f9402321 	ldr	x1, [x25, #64]
  201d78:	7940003e 	ldrh	w30, [x1]
  201d7c:	f9401b20 	ldr	x0, [x25, #48]
  201d80:	d1000406 	sub	x6, x0, #0x1
  201d84:	8a1e00c6 	and	x6, x6, x30
  201d88:	d37cecc6 	lsl	x6, x6, #4
  201d8c:	8b0100c6 	add	x6, x6, x1
  201d90:	910020c6 	add	x6, x6, #0x8
  201d94:	f90000c7 	str	x7, [x6]
  201d98:	b90008c2 	str	w2, [x6, #8]
  201d9c:	910007de 	add	x30, x30, #0x1
  201da0:	92403fde 	and	x30, x30, #0xffff
  201da4:	7900003e 	strh	w30, [x1]
  201da8:	d2800026 	mov	x6, #0x1                   	// #1
  201dac:	f9402b3e 	ldr	x30, [x25, #80]
  201db0:	f9401322 	ldr	x2, [x25, #32]
  201db4:	f9400b27 	ldr	x7, [x25, #16]
  201db8:	14000035 	b	201e8c <cml_NOTFOUND_21+0x21c>
  201dbc:	aa1c039e 	orr	x30, x28, x28
  201dc0:	f9402bc6 	ldr	x6, [x30, #80]
  201dc4:	aa03007e 	orr	x30, x3, x3
  201dc8:	d10007c0 	sub	x0, x30, #0x1
  201dcc:	8a060000 	and	x0, x0, x6
  201dd0:	b9400822 	ldr	w2, [x1, #8]
  201dd4:	d280c001 	mov	x1, #0x600                 	// #1536
  201dd8:	91000403 	add	x3, x0, #0x1
  201ddc:	eb1e007f 	cmp	x3, x30
  201de0:	54000040 	b.eq	201de8 <cml_NOTFOUND_21+0x178>  // b.none
  201de4:	14000005 	b	201df8 <cml_NOTFOUND_21+0x188>
  201de8:	f280c001 	movk	x1, #0x600
  201dec:	f2a04001 	movk	x1, #0x200, lsl #16
  201df0:	f2c00001 	movk	x1, #0x0, lsl #32
  201df4:	f2e00001 	movk	x1, #0x0, lsl #48
  201df8:	d37cec00 	lsl	x0, x0, #4
  201dfc:	aa0500a3 	orr	x3, x5, x5
  201e00:	8b030000 	add	x0, x0, x3
  201e04:	b9000802 	str	w2, [x0, #8]
  201e08:	d2800002 	mov	x2, #0x0                   	// #0
  201e0c:	b9000c02 	str	w2, [x0, #12]
  201e10:	b9000401 	str	w1, [x0, #4]
  201e14:	d2800003 	mov	x3, #0x0                   	// #0
  201e18:	f9000f20 	str	x0, [x25, #24]
  201e1c:	aa030060 	orr	x0, x3, x3
  201e20:	aa030061 	orr	x1, x3, x3
  201e24:	aa030062 	orr	x2, x3, x3
  201e28:	f900273e 	str	x30, [x25, #72]
  201e2c:	f9001725 	str	x5, [x25, #40]
  201e30:	f9000726 	str	x6, [x25, #8]
  201e34:	1000005e 	adr	x30, 201e3c <cml_NOTFOUND_21+0x1cc>
  201e38:	17fffc82 	b	201040 <cake_ffiTHREAD_MEMORY_RELEASE>
  201e3c:	f9402b3e 	ldr	x30, [x25, #80]
  201e40:	f9402723 	ldr	x3, [x25, #72]
  201e44:	f9402321 	ldr	x1, [x25, #64]
  201e48:	f9401f26 	ldr	x6, [x25, #56]
  201e4c:	f9401b20 	ldr	x0, [x25, #48]
  201e50:	f9401725 	ldr	x5, [x25, #40]
  201e54:	f9401322 	ldr	x2, [x25, #32]
  201e58:	f9400f29 	ldr	x9, [x25, #24]
  201e5c:	f9400b27 	ldr	x7, [x25, #16]
  201e60:	f9400728 	ldr	x8, [x25, #8]
  201e64:	d2b0000a 	mov	x10, #0x80000000            	// #2147483648
  201e68:	b900012a 	str	w10, [x9]
  201e6c:	d2800a09 	mov	x9, #0x50                  	// #80
  201e70:	8b1c0129 	add	x9, x9, x28
  201e74:	91000508 	add	x8, x8, #0x1
  201e78:	f9000128 	str	x8, [x9]
  201e7c:	d2820108 	mov	x8, #0x1008                	// #4104
  201e80:	8b080048 	add	x8, x2, x8
  201e84:	b2407fe9 	mov	x9, #0xffffffff            	// #4294967295
  201e88:	b9000109 	str	w9, [x8]
  201e8c:	d2800b08 	mov	x8, #0x58                  	// #88
  201e90:	8b1c0108 	add	x8, x8, x28
  201e94:	910004e7 	add	x7, x7, #0x1
  201e98:	f9000107 	str	x7, [x8]
  201e9c:	17ffff7a 	b	201c84 <cml_NOTFOUND_21+0x14>

0000000000201ea0 <cml_NOTFOUND_22>:
  201ea0:	d1004339 	sub	x25, x25, #0x10
  201ea4:	eb1b033f 	cmp	x25, x27
  201ea8:	54000062 	b.cs	201eb4 <cml_NOTFOUND_22+0x14>  // b.hs, b.nlast
  201eac:	d2800040 	mov	x0, #0x2                   	// #2
  201eb0:	17fffc7c 	b	2010a0 <cake_exit>
  201eb4:	b9400402 	ldr	w2, [x0, #4]
  201eb8:	d2800003 	mov	x3, #0x0                   	// #0
  201ebc:	eb02007f 	cmp	x3, x2
  201ec0:	54000060 	b.eq	201ecc <cml_NOTFOUND_22+0x2c>  // b.none
  201ec4:	d2800003 	mov	x3, #0x0                   	// #0
  201ec8:	14000002 	b	201ed0 <cml_NOTFOUND_22+0x30>
  201ecc:	d2800023 	mov	x3, #0x1                   	// #1
  201ed0:	d2800002 	mov	x2, #0x0                   	// #0
  201ed4:	eb01005f 	cmp	x2, x1
  201ed8:	54000061 	b.ne	201ee4 <cml_NOTFOUND_22+0x44>  // b.any
  201edc:	d2800002 	mov	x2, #0x0                   	// #0
  201ee0:	14000002 	b	201ee8 <cml_NOTFOUND_22+0x48>
  201ee4:	d2800022 	mov	x2, #0x1                   	// #1
  201ee8:	d2800001 	mov	x1, #0x0                   	// #0
  201eec:	eb03003f 	cmp	x1, x3
  201ef0:	54000061 	b.ne	201efc <cml_NOTFOUND_22+0x5c>  // b.any
  201ef4:	d2800001 	mov	x1, #0x0                   	// #0
  201ef8:	14000002 	b	201f00 <cml_NOTFOUND_22+0x60>
  201efc:	d2800021 	mov	x1, #0x1                   	// #1
  201f00:	8a020021 	and	x1, x1, x2
  201f04:	f100003f 	cmp	x1, #0x0
  201f08:	540001c0 	b.eq	201f40 <cml_NOTFOUND_22+0xa0>  // b.none
  201f0c:	d2800021 	mov	x1, #0x1                   	// #1
  201f10:	b9000401 	str	w1, [x0, #4]
  201f14:	f85e8360 	ldur	x0, [x27, #-24]
  201f18:	d37ff800 	lsl	x0, x0, #1
  201f1c:	8b1c0000 	add	x0, x0, x28
  201f20:	f85f0001 	ldur	x1, [x0, #-16]
  201f24:	d2800003 	mov	x3, #0x0                   	// #0
  201f28:	aa030060 	orr	x0, x3, x3
  201f2c:	aa030062 	orr	x2, x3, x3
  201f30:	f900073e 	str	x30, [x25, #8]
  201f34:	1000005e 	adr	x30, 201f3c <cml_NOTFOUND_22+0x9c>
  201f38:	17fffc4a 	b	201060 <cake_ffimicrokit_notify>
  201f3c:	f940073e 	ldr	x30, [x25, #8]
  201f40:	d2800000 	mov	x0, #0x0                   	// #0
  201f44:	91004339 	add	x25, x25, #0x10
  201f48:	d61f03c0 	br	x30

0000000000201f4c <cml_tx_return_23>:
  201f4c:	f85e8360 	ldur	x0, [x27, #-24]
  201f50:	d37ff800 	lsl	x0, x0, #1
  201f54:	8b1c0000 	add	x0, x0, x28
  201f58:	f85c0001 	ldur	x1, [x0, #-64]
  201f5c:	f85e8360 	ldur	x0, [x27, #-24]
  201f60:	d37ff800 	lsl	x0, x0, #1
  201f64:	8b1c0000 	add	x0, x0, x28
  201f68:	f8590005 	ldur	x5, [x0, #-112]
  201f6c:	f85e8360 	ldur	x0, [x27, #-24]
  201f70:	d37ff800 	lsl	x0, x0, #1
  201f74:	8b1c0000 	add	x0, x0, x28
  201f78:	f85b0000 	ldur	x0, [x0, #-80]
  201f7c:	f85e8362 	ldur	x2, [x27, #-24]
  201f80:	d37ff842 	lsl	x2, x2, #1
  201f84:	8b1c0042 	add	x2, x2, x28
  201f88:	f85a0043 	ldur	x3, [x2, #-96]
  201f8c:	d2800002 	mov	x2, #0x0                   	// #0
  201f90:	14000001 	b	201f94 <cml_NOTFOUND_24>

0000000000201f94 <cml_NOTFOUND_24>:
  201f94:	d1010339 	sub	x25, x25, #0x40
  201f98:	eb1b033f 	cmp	x25, x27
  201f9c:	54000062 	b.cs	201fa8 <cml_NOTFOUND_24+0x14>  // b.hs, b.nlast
  201fa0:	d2800040 	mov	x0, #0x2                   	// #2
  201fa4:	17fffc3f 	b	2010a0 <cake_exit>
  201fa8:	aa000008 	orr	x8, x0, x0
  201fac:	aa010020 	orr	x0, x1, x1
  201fb0:	aa020041 	orr	x1, x2, x2
  201fb4:	aa1c0382 	orr	x2, x28, x28
  201fb8:	f9403c42 	ldr	x2, [x2, #120]
  201fbc:	aa1c0386 	orr	x6, x28, x28
  201fc0:	f94038c6 	ldr	x6, [x6, #112]
  201fc4:	eb06005f 	cmp	x2, x6
  201fc8:	54000061 	b.ne	201fd4 <cml_NOTFOUND_24+0x40>  // b.any
  201fcc:	9100c339 	add	x25, x25, #0x30
  201fd0:	1400003a 	b	2020b8 <cml_NOTFOUND_25+0x14>
  201fd4:	aa1c0382 	orr	x2, x28, x28
  201fd8:	f9403c47 	ldr	x7, [x2, #120]
  201fdc:	aa030066 	orr	x6, x3, x3
  201fe0:	d10004c2 	sub	x2, x6, #0x1
  201fe4:	8a070042 	and	x2, x2, x7
  201fe8:	d37cec42 	lsl	x2, x2, #4
  201fec:	8b050042 	add	x2, x2, x5
  201ff0:	b9400043 	ldr	w3, [x2]
  201ff4:	92610063 	and	x3, x3, #0x80000000
  201ff8:	f100007f 	cmp	x3, #0x0
  201ffc:	54000060 	b.eq	202008 <cml_NOTFOUND_24+0x74>  // b.none
  202000:	9100c339 	add	x25, x25, #0x30
  202004:	1400002d 	b	2020b8 <cml_NOTFOUND_25+0x14>
  202008:	d2800003 	mov	x3, #0x0                   	// #0
  20200c:	f9001320 	str	x0, [x25, #32]
  202010:	aa030060 	orr	x0, x3, x3
  202014:	aa030061 	orr	x1, x3, x3
  202018:	f9001f22 	str	x2, [x25, #56]
  20201c:	aa030062 	orr	x2, x3, x3
  202020:	f9001b3e 	str	x30, [x25, #48]
  202024:	f9001726 	str	x6, [x25, #40]
  202028:	f9000f27 	str	x7, [x25, #24]
  20202c:	f9000b28 	str	x8, [x25, #16]
  202030:	f9000725 	str	x5, [x25, #8]
  202034:	1000005e 	adr	x30, 20203c <cml_NOTFOUND_24+0xa8>
  202038:	17fffc06 	b	201050 <cake_ffiTHREAD_MEMORY_ACQUIRE>
  20203c:	f9401f26 	ldr	x6, [x25, #56]
  202040:	f9401b3e 	ldr	x30, [x25, #48]
  202044:	f9401723 	ldr	x3, [x25, #40]
  202048:	f9401321 	ldr	x1, [x25, #32]
  20204c:	f9400f22 	ldr	x2, [x25, #24]
  202050:	f9400b20 	ldr	x0, [x25, #16]
  202054:	f9400725 	ldr	x5, [x25, #8]
  202058:	b94008c8 	ldr	w8, [x6, #8]
  20205c:	79400026 	ldrh	w6, [x1]
  202060:	d1000407 	sub	x7, x0, #0x1
  202064:	8a0600e7 	and	x7, x7, x6
  202068:	d37cece7 	lsl	x7, x7, #4
  20206c:	8b0100e7 	add	x7, x7, x1
  202070:	910020e7 	add	x7, x7, #0x8
  202074:	f90000e8 	str	x8, [x7]
  202078:	d2800008 	mov	x8, #0x0                   	// #0
  20207c:	b90008e8 	str	w8, [x7, #8]
  202080:	910004c6 	add	x6, x6, #0x1
  202084:	92403cc6 	and	x6, x6, #0xffff
  202088:	79000026 	strh	w6, [x1]
  20208c:	d2800f06 	mov	x6, #0x78                  	// #120
  202090:	8b1c00c6 	add	x6, x6, x28
  202094:	91000442 	add	x2, x2, #0x1
  202098:	f90000c2 	str	x2, [x6]
  20209c:	d2800022 	mov	x2, #0x1                   	// #1
  2020a0:	17ffffc2 	b	201fa8 <cml_NOTFOUND_24+0x14>

00000000002020a4 <cml_NOTFOUND_25>:
  2020a4:	d1004339 	sub	x25, x25, #0x10
  2020a8:	eb1b033f 	cmp	x25, x27
  2020ac:	54000062 	b.cs	2020b8 <cml_NOTFOUND_25+0x14>  // b.hs, b.nlast
  2020b0:	d2800040 	mov	x0, #0x2                   	// #2
  2020b4:	17fffbfb 	b	2010a0 <cake_exit>
  2020b8:	b9400402 	ldr	w2, [x0, #4]
  2020bc:	d2800003 	mov	x3, #0x0                   	// #0
  2020c0:	eb02007f 	cmp	x3, x2
  2020c4:	54000060 	b.eq	2020d0 <cml_NOTFOUND_25+0x2c>  // b.none
  2020c8:	d2800003 	mov	x3, #0x0                   	// #0
  2020cc:	14000002 	b	2020d4 <cml_NOTFOUND_25+0x30>
  2020d0:	d2800023 	mov	x3, #0x1                   	// #1
  2020d4:	d2800002 	mov	x2, #0x0                   	// #0
  2020d8:	eb01005f 	cmp	x2, x1
  2020dc:	54000061 	b.ne	2020e8 <cml_NOTFOUND_25+0x44>  // b.any
  2020e0:	d2800002 	mov	x2, #0x0                   	// #0
  2020e4:	14000002 	b	2020ec <cml_NOTFOUND_25+0x48>
  2020e8:	d2800022 	mov	x2, #0x1                   	// #1
  2020ec:	d2800001 	mov	x1, #0x0                   	// #0
  2020f0:	eb03003f 	cmp	x1, x3
  2020f4:	54000061 	b.ne	202100 <cml_NOTFOUND_25+0x5c>  // b.any
  2020f8:	d2800001 	mov	x1, #0x0                   	// #0
  2020fc:	14000002 	b	202104 <cml_NOTFOUND_25+0x60>
  202100:	d2800021 	mov	x1, #0x1                   	// #1
  202104:	8a020021 	and	x1, x1, x2
  202108:	f100003f 	cmp	x1, #0x0
  20210c:	540001c0 	b.eq	202144 <cml_NOTFOUND_25+0xa0>  // b.none
  202110:	d2800021 	mov	x1, #0x1                   	// #1
  202114:	b9000401 	str	w1, [x0, #4]
  202118:	f85e8360 	ldur	x0, [x27, #-24]
  20211c:	d37ff800 	lsl	x0, x0, #1
  202120:	8b1c0000 	add	x0, x0, x28
  202124:	f85e8001 	ldur	x1, [x0, #-24]
  202128:	d2800003 	mov	x3, #0x0                   	// #0
  20212c:	aa030060 	orr	x0, x3, x3
  202130:	aa030062 	orr	x2, x3, x3
  202134:	f900073e 	str	x30, [x25, #8]
  202138:	1000005e 	adr	x30, 202140 <cml_NOTFOUND_25+0x9c>
  20213c:	17fffbc9 	b	201060 <cake_ffimicrokit_notify>
  202140:	f940073e 	ldr	x30, [x25, #8]
  202144:	d2800000 	mov	x0, #0x0                   	// #0
  202148:	91004339 	add	x25, x25, #0x10
  20214c:	d61f03c0 	br	x30

0000000000202150 <cml_handle_irq_26>:
  202150:	f85e8360 	ldur	x0, [x27, #-24]
  202154:	d37ff800 	lsl	x0, x0, #1
  202158:	8b1c0000 	add	x0, x0, x28
  20215c:	f85e0000 	ldur	x0, [x0, #-32]
  202160:	d2820281 	mov	x1, #0x1014                	// #4116
  202164:	8b010001 	add	x1, x0, x1
  202168:	b9400021 	ldr	w1, [x1]
  20216c:	d2820282 	mov	x2, #0x1014                	// #4116
  202170:	8b020002 	add	x2, x0, x2
  202174:	b9000041 	str	w1, [x2]
  202178:	14000001 	b	20217c <cml_NOTFOUND_27>

000000000020217c <cml_NOTFOUND_27>:
  20217c:	d1008339 	sub	x25, x25, #0x20
  202180:	eb1b033f 	cmp	x25, x27
  202184:	54000062 	b.cs	202190 <cml_NOTFOUND_27+0x14>  // b.hs, b.nlast
  202188:	d2800040 	mov	x0, #0x2                   	// #2
  20218c:	17fffbc5 	b	2010a0 <cake_exit>
  202190:	f2940822 	movk	x2, #0xa041
  202194:	f2a00022 	movk	x2, #0x1, lsl #16
  202198:	f2c00002 	movk	x2, #0x0, lsl #32
  20219c:	f2e00002 	movk	x2, #0x0, lsl #48
  2021a0:	8a020022 	and	x2, x1, x2
  2021a4:	f100005f 	cmp	x2, #0x0
  2021a8:	54000fe0 	b.eq	2023a4 <cml_NOTFOUND_27+0x228>  // b.none
  2021ac:	92400022 	and	x2, x1, #0x1
  2021b0:	f100005f 	cmp	x2, #0x0
  2021b4:	54000081 	b.ne	2021c4 <cml_NOTFOUND_27+0x48>  // b.any
  2021b8:	f9000f3e 	str	x30, [x25, #24]
  2021bc:	f9000b20 	str	x0, [x25, #16]
  2021c0:	1400003a 	b	2022a8 <cml_NOTFOUND_27+0x12c>
  2021c4:	f9000f3e 	str	x30, [x25, #24]
  2021c8:	f9000b21 	str	x1, [x25, #16]
  2021cc:	f9000720 	str	x0, [x25, #8]
  2021d0:	d2800098 	mov	x24, #0x4                   	// #4
  2021d4:	f9000338 	str	x24, [x25]
  2021d8:	d1006339 	sub	x25, x25, #0x18
  2021dc:	eb1b033f 	cmp	x25, x27
  2021e0:	54000062 	b.cs	2021ec <cml_NOTFOUND_27+0x70>  // b.hs, b.nlast
  2021e4:	d2800040 	mov	x0, #0x2                   	// #2
  2021e8:	17fffbae 	b	2010a0 <cake_exit>
  2021ec:	d2800038 	mov	x24, #0x1                   	// #1
  2021f0:	f9000338 	str	x24, [x25]
  2021f4:	100001d8 	adr	x24, 20222c <cml_NOTFOUND_27+0xb0>
  2021f8:	f9000738 	str	x24, [x25, #8]
  2021fc:	f85c8378 	ldur	x24, [x27, #-56]
  202200:	f9000b38 	str	x24, [x25, #16]
  202204:	aa190338 	orr	x24, x25, x25
  202208:	cb1b0318 	sub	x24, x24, x27
  20220c:	d343ff18 	lsr	x24, x24, #3
  202210:	f81c8378 	stur	x24, [x27, #-56]
  202214:	1000005e 	adr	x30, 20221c <cml_NOTFOUND_27+0xa0>
  202218:	17ffff4d 	b	201f4c <cml_tx_return_23>
  20221c:	f9400b38 	ldr	x24, [x25, #16]
  202220:	f81c8378 	stur	x24, [x27, #-56]
  202224:	91006339 	add	x25, x25, #0x18
  202228:	14000002 	b	202230 <cml_NOTFOUND_27+0xb4>
  20222c:	17fffc69 	b	2013d0 <cml__Raise_4>
  202230:	d28000b8 	mov	x24, #0x5                   	// #5
  202234:	f9000338 	str	x24, [x25]
  202238:	d1006339 	sub	x25, x25, #0x18
  20223c:	eb1b033f 	cmp	x25, x27
  202240:	54000062 	b.cs	20224c <cml_NOTFOUND_27+0xd0>  // b.hs, b.nlast
  202244:	d2800040 	mov	x0, #0x2                   	// #2
  202248:	17fffb96 	b	2010a0 <cake_exit>
  20224c:	d2800038 	mov	x24, #0x1                   	// #1
  202250:	f9000338 	str	x24, [x25]
  202254:	10000238 	adr	x24, 202298 <cml_NOTFOUND_27+0x11c>
  202258:	f9000738 	str	x24, [x25, #8]
  20225c:	f85c8378 	ldur	x24, [x27, #-56]
  202260:	f9000b38 	str	x24, [x25, #16]
  202264:	aa190338 	orr	x24, x25, x25
  202268:	cb1b0318 	sub	x24, x24, x27
  20226c:	d343ff18 	lsr	x24, x24, #3
  202270:	f81c8378 	stur	x24, [x27, #-56]
  202274:	1000005e 	adr	x30, 20227c <cml_NOTFOUND_27+0x100>
  202278:	17fffdcb 	b	2019a4 <cml_tx_provide_14>
  20227c:	f9400b38 	ldr	x24, [x25, #16]
  202280:	f81c8378 	stur	x24, [x27, #-56]
  202284:	91006339 	add	x25, x25, #0x18
  202288:	f9400b21 	ldr	x1, [x25, #16]
  20228c:	f9400738 	ldr	x24, [x25, #8]
  202290:	f9000b38 	str	x24, [x25, #16]
  202294:	14000005 	b	2022a8 <cml_NOTFOUND_27+0x12c>
  202298:	f9400b21 	ldr	x1, [x25, #16]
  20229c:	f9400738 	ldr	x24, [x25, #8]
  2022a0:	f9000b38 	str	x24, [x25, #16]
  2022a4:	17fffc4b 	b	2013d0 <cml__Raise_4>
  2022a8:	927a003e 	and	x30, x1, #0x40
  2022ac:	f10003df 	cmp	x30, #0x0
  2022b0:	54000440 	b.eq	202338 <cml_NOTFOUND_27+0x1bc>  // b.none
  2022b4:	f9400b38 	ldr	x24, [x25, #16]
  2022b8:	f9000738 	str	x24, [x25, #8]
  2022bc:	f9000b21 	str	x1, [x25, #16]
  2022c0:	d28000d8 	mov	x24, #0x6                   	// #6
  2022c4:	f9000338 	str	x24, [x25]
  2022c8:	d1006339 	sub	x25, x25, #0x18
  2022cc:	eb1b033f 	cmp	x25, x27
  2022d0:	54000062 	b.cs	2022dc <cml_NOTFOUND_27+0x160>  // b.hs, b.nlast
  2022d4:	d2800040 	mov	x0, #0x2                   	// #2
  2022d8:	17fffb72 	b	2010a0 <cake_exit>
  2022dc:	d2800038 	mov	x24, #0x1                   	// #1
  2022e0:	f9000338 	str	x24, [x25]
  2022e4:	10000238 	adr	x24, 202328 <cml_NOTFOUND_27+0x1ac>
  2022e8:	f9000738 	str	x24, [x25, #8]
  2022ec:	f85c8378 	ldur	x24, [x27, #-56]
  2022f0:	f9000b38 	str	x24, [x25, #16]
  2022f4:	aa190338 	orr	x24, x25, x25
  2022f8:	cb1b0318 	sub	x24, x24, x27
  2022fc:	d343ff18 	lsr	x24, x24, #3
  202300:	f81c8378 	stur	x24, [x27, #-56]
  202304:	1000005e 	adr	x30, 20230c <cml_NOTFOUND_27+0x190>
  202308:	17fffe44 	b	201c18 <cml_rx_return_20>
  20230c:	f9400b38 	ldr	x24, [x25, #16]
  202310:	f81c8378 	stur	x24, [x27, #-56]
  202314:	91006339 	add	x25, x25, #0x18
  202318:	f9400b21 	ldr	x1, [x25, #16]
  20231c:	f9400738 	ldr	x24, [x25, #8]
  202320:	f9000b38 	str	x24, [x25, #16]
  202324:	14000005 	b	202338 <cml_NOTFOUND_27+0x1bc>
  202328:	f9400b21 	ldr	x1, [x25, #16]
  20232c:	f9400738 	ldr	x24, [x25, #8]
  202330:	f9000b38 	str	x24, [x25, #16]
  202334:	17fffc27 	b	2013d0 <cml__Raise_4>
  202338:	9271003e 	and	x30, x1, #0x8000
  20233c:	f10003df 	cmp	x30, #0x0
  202340:	54000081 	b.ne	202350 <cml_NOTFOUND_27+0x1d4>  // b.any
  202344:	f9400f3e 	ldr	x30, [x25, #24]
  202348:	f9400b20 	ldr	x0, [x25, #16]
  20234c:	1400000f 	b	202388 <cml_NOTFOUND_27+0x20c>
  202350:	9273003e 	and	x30, x1, #0x2000
  202354:	f10003df 	cmp	x30, #0x0
  202358:	54000081 	b.ne	202368 <cml_NOTFOUND_27+0x1ec>  // b.any
  20235c:	f9400f3e 	ldr	x30, [x25, #24]
  202360:	f9400b20 	ldr	x0, [x25, #16]
  202364:	14000009 	b	202388 <cml_NOTFOUND_27+0x20c>
  202368:	d2800003 	mov	x3, #0x0                   	// #0
  20236c:	aa030060 	orr	x0, x3, x3
  202370:	aa030061 	orr	x1, x3, x3
  202374:	aa030062 	orr	x2, x3, x3
  202378:	1000005e 	adr	x30, 202380 <cml_NOTFOUND_27+0x204>
  20237c:	17fffb3d 	b	201070 <cake_ffiassert>
  202380:	f9400f3e 	ldr	x30, [x25, #24]
  202384:	f9400b20 	ldr	x0, [x25, #16]
  202388:	d2820281 	mov	x1, #0x1014                	// #4116
  20238c:	8b010001 	add	x1, x0, x1
  202390:	b9400021 	ldr	w1, [x1]
  202394:	d2820282 	mov	x2, #0x1014                	// #4116
  202398:	8b020002 	add	x2, x0, x2
  20239c:	b9000041 	str	w1, [x2]
  2023a0:	17ffff7c 	b	202190 <cml_NOTFOUND_27+0x14>
  2023a4:	91008339 	add	x25, x25, #0x20
  2023a8:	14000001 	b	2023ac <cml_NOTFOUND_28>

00000000002023ac <cml_NOTFOUND_28>:
  2023ac:	d2800000 	mov	x0, #0x0                   	// #0
  2023b0:	d61f03c0 	br	x30

00000000002023b4 <cml_notified_29>:
  2023b4:	d1006339 	sub	x25, x25, #0x18
  2023b8:	eb1b033f 	cmp	x25, x27
  2023bc:	54000062 	b.cs	2023c8 <cml_notified_29+0x14>  // b.hs, b.nlast
  2023c0:	d2800040 	mov	x0, #0x2                   	// #2
  2023c4:	17fffb37 	b	2010a0 <cake_exit>
  2023c8:	aa000001 	orr	x1, x0, x0
  2023cc:	f85e8360 	ldur	x0, [x27, #-24]
  2023d0:	d37ff800 	lsl	x0, x0, #1
  2023d4:	8b1c0000 	add	x0, x0, x28
  2023d8:	f85f8000 	ldur	x0, [x0, #-8]
  2023dc:	eb00003f 	cmp	x1, x0
  2023e0:	540004c1 	b.ne	202478 <cml_notified_29+0xc4>  // b.any
  2023e4:	f900073e 	str	x30, [x25, #8]
  2023e8:	f9000b21 	str	x1, [x25, #16]
  2023ec:	d28000f8 	mov	x24, #0x7                   	// #7
  2023f0:	f9000338 	str	x24, [x25]
  2023f4:	d1006339 	sub	x25, x25, #0x18
  2023f8:	eb1b033f 	cmp	x25, x27
  2023fc:	54000062 	b.cs	202408 <cml_notified_29+0x54>  // b.hs, b.nlast
  202400:	d2800040 	mov	x0, #0x2                   	// #2
  202404:	17fffb27 	b	2010a0 <cake_exit>
  202408:	d2800038 	mov	x24, #0x1                   	// #1
  20240c:	f9000338 	str	x24, [x25]
  202410:	100001f8 	adr	x24, 20244c <cml_notified_29+0x98>
  202414:	f9000738 	str	x24, [x25, #8]
  202418:	f85c8378 	ldur	x24, [x27, #-56]
  20241c:	f9000b38 	str	x24, [x25, #16]
  202420:	aa190338 	orr	x24, x25, x25
  202424:	cb1b0318 	sub	x24, x24, x27
  202428:	d343ff18 	lsr	x24, x24, #3
  20242c:	f81c8378 	stur	x24, [x27, #-56]
  202430:	1000005e 	adr	x30, 202438 <cml_notified_29+0x84>
  202434:	17ffff47 	b	202150 <cml_handle_irq_26>
  202438:	f9400b38 	ldr	x24, [x25, #16]
  20243c:	f81c8378 	stur	x24, [x27, #-56]
  202440:	91006339 	add	x25, x25, #0x18
  202444:	f9400b21 	ldr	x1, [x25, #16]
  202448:	14000003 	b	202454 <cml_notified_29+0xa0>
  20244c:	f9400b21 	ldr	x1, [x25, #16]
  202450:	17fffbe0 	b	2013d0 <cml__Raise_4>
  202454:	d2800003 	mov	x3, #0x0                   	// #0
  202458:	aa030060 	orr	x0, x3, x3
  20245c:	aa030062 	orr	x2, x3, x3
  202460:	1000005e 	adr	x30, 202468 <cml_notified_29+0xb4>
  202464:	17fffb07 	b	201080 <cake_ffimicrokit_deferred_irq_ack>
  202468:	f940073e 	ldr	x30, [x25, #8]
  20246c:	d2800000 	mov	x0, #0x0                   	// #0
  202470:	91006339 	add	x25, x25, #0x18
  202474:	d61f03c0 	br	x30
  202478:	f9000b3e 	str	x30, [x25, #16]
  20247c:	f85e837e 	ldur	x30, [x27, #-24]
  202480:	d37ffbde 	lsl	x30, x30, #1
  202484:	8b1c03de 	add	x30, x30, x28
  202488:	f85f03de 	ldur	x30, [x30, #-16]
  20248c:	eb1e003f 	cmp	x1, x30
  202490:	54000401 	b.ne	202510 <cml_notified_29+0x15c>  // b.any
  202494:	f9400b38 	ldr	x24, [x25, #16]
  202498:	f9000738 	str	x24, [x25, #8]
  20249c:	d2800118 	mov	x24, #0x8                   	// #8
  2024a0:	f9000338 	str	x24, [x25]
  2024a4:	d1006339 	sub	x25, x25, #0x18
  2024a8:	eb1b033f 	cmp	x25, x27
  2024ac:	54000062 	b.cs	2024b8 <cml_notified_29+0x104>  // b.hs, b.nlast
  2024b0:	d2800040 	mov	x0, #0x2                   	// #2
  2024b4:	17fffafb 	b	2010a0 <cake_exit>
  2024b8:	d2800038 	mov	x24, #0x1                   	// #1
  2024bc:	f9000338 	str	x24, [x25]
  2024c0:	100001f8 	adr	x24, 2024fc <cml_notified_29+0x148>
  2024c4:	f9000738 	str	x24, [x25, #8]
  2024c8:	f85c8378 	ldur	x24, [x27, #-56]
  2024cc:	f9000b38 	str	x24, [x25, #16]
  2024d0:	aa190338 	orr	x24, x25, x25
  2024d4:	cb1b0318 	sub	x24, x24, x27
  2024d8:	d343ff18 	lsr	x24, x24, #3
  2024dc:	f81c8378 	stur	x24, [x27, #-56]
  2024e0:	1000005e 	adr	x30, 2024e8 <cml_notified_29+0x134>
  2024e4:	17fffc8d 	b	201718 <cml_rx_provide_8>
  2024e8:	f9400b38 	ldr	x24, [x25, #16]
  2024ec:	f81c8378 	stur	x24, [x27, #-56]
  2024f0:	91006339 	add	x25, x25, #0x18
  2024f4:	f940073e 	ldr	x30, [x25, #8]
  2024f8:	14000003 	b	202504 <cml_notified_29+0x150>
  2024fc:	f940073e 	ldr	x30, [x25, #8]
  202500:	17fffbb4 	b	2013d0 <cml__Raise_4>
  202504:	d2800000 	mov	x0, #0x0                   	// #0
  202508:	91006339 	add	x25, x25, #0x18
  20250c:	d61f03c0 	br	x30
  202510:	f85e837e 	ldur	x30, [x27, #-24]
  202514:	d37ffbde 	lsl	x30, x30, #1
  202518:	8b1c03de 	add	x30, x30, x28
  20251c:	f85e83de 	ldur	x30, [x30, #-24]
  202520:	eb1e003f 	cmp	x1, x30
  202524:	540003c1 	b.ne	20259c <cml_notified_29+0x1e8>  // b.any
  202528:	d2800138 	mov	x24, #0x9                   	// #9
  20252c:	f9000338 	str	x24, [x25]
  202530:	d1006339 	sub	x25, x25, #0x18
  202534:	eb1b033f 	cmp	x25, x27
  202538:	54000062 	b.cs	202544 <cml_notified_29+0x190>  // b.hs, b.nlast
  20253c:	d2800040 	mov	x0, #0x2                   	// #2
  202540:	17fffad8 	b	2010a0 <cake_exit>
  202544:	d2800038 	mov	x24, #0x1                   	// #1
  202548:	f9000338 	str	x24, [x25]
  20254c:	100001f8 	adr	x24, 202588 <cml_notified_29+0x1d4>
  202550:	f9000738 	str	x24, [x25, #8]
  202554:	f85c8378 	ldur	x24, [x27, #-56]
  202558:	f9000b38 	str	x24, [x25, #16]
  20255c:	aa190338 	orr	x24, x25, x25
  202560:	cb1b0318 	sub	x24, x24, x27
  202564:	d343ff18 	lsr	x24, x24, #3
  202568:	f81c8378 	stur	x24, [x27, #-56]
  20256c:	1000005e 	adr	x30, 202574 <cml_notified_29+0x1c0>
  202570:	17fffd0d 	b	2019a4 <cml_tx_provide_14>
  202574:	f9400b38 	ldr	x24, [x25, #16]
  202578:	f81c8378 	stur	x24, [x27, #-56]
  20257c:	91006339 	add	x25, x25, #0x18
  202580:	f9400b21 	ldr	x1, [x25, #16]
  202584:	14000003 	b	202590 <cml_notified_29+0x1dc>
  202588:	f9400b21 	ldr	x1, [x25, #16]
  20258c:	17fffb91 	b	2013d0 <cml__Raise_4>
  202590:	d2800000 	mov	x0, #0x0                   	// #0
  202594:	91006339 	add	x25, x25, #0x18
  202598:	d61f0020 	br	x1
  20259c:	f9400b3e 	ldr	x30, [x25, #16]
  2025a0:	d2800000 	mov	x0, #0x0                   	// #0
  2025a4:	91006339 	add	x25, x25, #0x18
  2025a8:	d61f03c0 	br	x30

00000000002025ac <cake_codebuffer_begin>:
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
  204010:	17fff428 	b	2010b0 <cml__Init_0>
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
  2040ec:	17fff8b2 	b	2023b4 <cml_notified_29>

00000000002040f0 <cml_exit>:
  2040f0:	d503201f 	nop
  2040f4:	70006340 	adr	x0, 204d5f <_text_end+0x77>
  2040f8:	14000256 	b	204a50 <microkit_dbg_puts>
  2040fc:	d503201f 	nop

0000000000204100 <cml_err>:
  204100:	71000c1f 	cmp	w0, #0x3
  204104:	540000e1 	b.ne	204120 <cml_err+0x20>  // b.any
  204108:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  20410c:	910003fd 	mov	x29, sp
  204110:	90000000 	adrp	x0, 204000 <cml_enter>
  204114:	91361400 	add	x0, x0, #0xd85
  204118:	9400024e 	bl	204a50 <microkit_dbg_puts>
  20411c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  204120:	d503201f 	nop
  204124:	700061c0 	adr	x0, 204d5f <_text_end+0x77>
  204128:	1400024a 	b	204a50 <microkit_dbg_puts>
  20412c:	d503201f 	nop

0000000000204130 <cml_clear>:
  204130:	90000000 	adrp	x0, 204000 <cml_enter>
  204134:	9133a000 	add	x0, x0, #0xce8
  204138:	14000246 	b	204a50 <microkit_dbg_puts>
  20413c:	d503201f 	nop

0000000000204140 <init_pancake_mem>:
  204140:	d503201f 	nop
  204144:	1000af68 	adr	x8, 205730 <cml_memory>
  204148:	91400509 	add	x9, x8, #0x1, lsl #12
  20414c:	9140090a 	add	x10, x8, #0x2, lsl #12
  204150:	b000000b 	adrp	x11, 205000 <__init_array_end>
  204154:	f9000168 	str	x8, [x11]
  204158:	b0000008 	adrp	x8, 205000 <__init_array_end>
  20415c:	f9000509 	str	x9, [x8, #8]
  204160:	b0000008 	adrp	x8, 205000 <__init_array_end>
  204164:	f900090a 	str	x10, [x8, #16]
  204168:	d65f03c0 	ret
  20416c:	d503201f 	nop

0000000000204170 <init>:
  204170:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
  204174:	f9000bf9 	str	x25, [sp, #16]
  204178:	a9025ff8 	stp	x24, x23, [sp, #32]
  20417c:	a90357f6 	stp	x22, x21, [sp, #48]
  204180:	a9044ff4 	stp	x20, x19, [sp, #64]
  204184:	910003fd 	mov	x29, sp
  204188:	d503201f 	nop
  20418c:	1000ad34 	adr	x20, 205730 <cml_memory>
  204190:	91400688 	add	x8, x20, #0x1, lsl #12
  204194:	b0000009 	adrp	x9, 205000 <__init_array_end>
  204198:	b000000a 	adrp	x10, 205000 <__init_array_end>
  20419c:	f9000134 	str	x20, [x9]
  2041a0:	91400a89 	add	x9, x20, #0x2, lsl #12
  2041a4:	f9000548 	str	x8, [x10, #8]
  2041a8:	b0000008 	adrp	x8, 205000 <__init_array_end>
  2041ac:	395ba113 	ldrb	w19, [x8, #1768]
  2041b0:	b0000008 	adrp	x8, 205000 <__init_array_end>
  2041b4:	9102c908 	add	x8, x8, #0xb2
  2041b8:	b000000b 	adrp	x11, 205000 <__init_array_end>
  2041bc:	f9000969 	str	x9, [x11, #16]
  2041c0:	91008289 	add	x9, x20, #0x20
  2041c4:	f0000016 	adrp	x22, 207000 <__global_pointer$+0x1778>
  2041c8:	7100f67f 	cmp	w19, #0x3d
  2041cc:	3940010a 	ldrb	w10, [x8]
  2041d0:	f9039ac9 	str	x9, [x22, #1840]
  2041d4:	3940a108 	ldrb	w8, [x8, #40]
  2041d8:	91014289 	add	x9, x20, #0x50
  2041dc:	f0000019 	adrp	x25, 207000 <__global_pointer$+0x1778>
  2041e0:	a900aa93 	stp	x19, x10, [x20, #8]
  2041e4:	9101c28a 	add	x10, x20, #0x70
  2041e8:	f9000e88 	str	x8, [x20, #24]
  2041ec:	9100e288 	add	x8, x20, #0x38
  2041f0:	f903a329 	str	x9, [x25, #1856]
  2041f4:	f0000015 	adrp	x21, 207000 <__global_pointer$+0x1778>
  2041f8:	f0000018 	adrp	x24, 207000 <__global_pointer$+0x1778>
  2041fc:	f903a70a 	str	x10, [x24, #1864]
  204200:	f9039ea8 	str	x8, [x21, #1848]
  204204:	540002c8 	b.hi	20425c <init+0xec>  // b.pmore
  204208:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  20420c:	f943e508 	ldr	x8, [x8, #1992]
  204210:	9ad32508 	lsr	x8, x8, x19
  204214:	36000248 	tbz	w8, #0, 20425c <init+0xec>
  204218:	52940001 	mov	w1, #0xa000                	// #40960
  20421c:	91022a60 	add	x0, x19, #0x8a
  204220:	aa1f03e2 	mov	x2, xzr
  204224:	aa1f03e3 	mov	x3, xzr
  204228:	aa1f03e4 	mov	x4, xzr
  20422c:	aa1f03e5 	mov	x5, xzr
  204230:	72a00021 	movk	w1, #0x1, lsl #16
  204234:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  204238:	aa1f03e6 	mov	x6, xzr
  20423c:	d4000001 	svc	#0x0
  204240:	f2747c3f 	tst	x1, #0xffffffff000
  204244:	54000220 	b.eq	204288 <init+0x118>  // b.none
  204248:	b0000008 	adrp	x8, 205000 <__init_array_end>
  20424c:	f9404108 	ldr	x8, [x8, #128]
  204250:	a9008d02 	stp	x2, x3, [x8, #8]
  204254:	a9019504 	stp	x4, x5, [x8, #24]
  204258:	1400000c 	b	204288 <init+0x118>
  20425c:	d503201f 	nop
  204260:	1001a800 	adr	x0, 207760 <microkit_name>
  204264:	940001fb 	bl	204a50 <microkit_dbg_puts>
  204268:	90000000 	adrp	x0, 204000 <cml_enter>
  20426c:	9137d000 	add	x0, x0, #0xdf4
  204270:	940001f8 	bl	204a50 <microkit_dbg_puts>
  204274:	2a1303e0 	mov	w0, w19
  204278:	9400021e 	bl	204af0 <microkit_dbg_put32>
  20427c:	90000000 	adrp	x0, 204000 <cml_enter>
  204280:	9134a400 	add	x0, x0, #0xd29
  204284:	940001f3 	bl	204a50 <microkit_dbg_puts>
  204288:	b0000009 	adrp	x9, 205000 <__init_array_end>
  20428c:	9103a129 	add	x9, x9, #0xe8
  204290:	52802010 	mov	w16, #0x100                 	// #256
  204294:	f9400128 	ldr	x8, [x9]
  204298:	f0000013 	adrp	x19, 207000 <__global_pointer$+0x1778>
  20429c:	f903aa68 	str	x8, [x19, #1872]
  2042a0:	9140050e 	add	x14, x8, #0x1, lsl #12
  2042a4:	f0000017 	adrp	x23, 207000 <__global_pointer$+0x1778>
  2042a8:	f903aeee 	str	x14, [x23, #1880]
  2042ac:	b940450d 	ldr	w13, [x8, #68]
  2042b0:	b940410c 	ldr	w12, [x8, #64]
  2042b4:	f9400d2f 	ldr	x15, [x9, #24]
  2042b8:	f943a32b 	ldr	x11, [x25, #1856]
  2042bc:	f9401929 	ldr	x9, [x9, #48]
  2042c0:	f943a70a 	ldr	x10, [x24, #1864]
  2042c4:	a9013d70 	stp	x16, x15, [x11, #16]
  2042c8:	a9012550 	stp	x16, x9, [x10, #16]
  2042cc:	b950010f 	ldr	w15, [x8, #4096]
  2042d0:	320001ef 	orr	w15, w15, #0x1
  2042d4:	b910010f 	str	w15, [x8, #4096]
  2042d8:	d503201f 	nop
  2042dc:	d503201f 	nop
  2042e0:	b94001cf 	ldr	w15, [x14]
  2042e4:	3707ffef 	tbnz	w15, #0, 2042e0 <init+0x170>
  2042e8:	52a0020f 	mov	w15, #0x100000              	// #1048576
  2042ec:	b90019cf 	str	w15, [x14, #24]
  2042f0:	b94019cf 	ldr	w15, [x14, #24]
  2042f4:	37a7ffef 	tbnz	w15, #20, 2042f0 <init+0x180>
  2042f8:	b900450d 	str	w13, [x8, #68]
  2042fc:	528020ad 	mov	w13, #0x105                 	// #261
  204300:	5284000e 	mov	w14, #0x2000                	// #8192
  204304:	72a0040d 	movk	w13, #0x20, lsl #16
  204308:	b900410c 	str	w12, [x8, #64]
  20430c:	5281000c 	mov	w12, #0x800                 	// #2048
  204310:	b910010e 	str	w14, [x8, #4096]
  204314:	b000000e 	adrp	x14, 205000 <__init_array_end>
  204318:	910241ce 	add	x14, x14, #0x90
  20431c:	b910190d 	str	w13, [x8, #4120]
  204320:	b900010c 	str	w12, [x8]
  204324:	b000000c 	adrp	x12, 205000 <__init_array_end>
  204328:	9104418c 	add	x12, x12, #0x110
  20432c:	f940018d 	ldr	x13, [x12]
  204330:	b9100d0d 	str	w13, [x8, #4108]
  204334:	129ffe2d 	mov	w13, #0xffff000e            	// #-65522
  204338:	f9400d8c 	ldr	x12, [x12, #24]
  20433c:	b910110c 	str	w12, [x8, #4112]
  204340:	b940050c 	ldr	w12, [x8, #4]
  204344:	3200018c 	orr	w12, w12, #0x1
  204348:	b900050c 	str	w12, [x8, #4]
  20434c:	b900190d 	str	w13, [x8, #24]
  204350:	a9412d6c 	ldp	x12, x11, [x11, #16]
  204354:	f9000288 	str	x8, [x20]
  204358:	f9439acd 	ldr	x13, [x22, #1840]
  20435c:	f94001cf 	ldr	x15, [x14]
  204360:	f94009c8 	ldr	x8, [x14, #16]
  204364:	a9062e8c 	stp	x12, x11, [x20, #96]
  204368:	f9439eac 	ldr	x12, [x21, #1848]
  20436c:	f94015cb 	ldr	x11, [x14, #40]
  204370:	794041d0 	ldrh	w16, [x14, #32]
  204374:	a90021af 	stp	x15, x8, [x13]
  204378:	f9401dc8 	ldr	x8, [x14, #56]
  20437c:	f940094a 	ldr	x10, [x10, #16]
  204380:	f900018b 	str	x11, [x12]
  204384:	794091cb 	ldrh	w11, [x14, #72]
  204388:	b90011b0 	str	w16, [x13, #16]
  20438c:	f9000588 	str	x8, [x12, #8]
  204390:	a908268a 	stp	x10, x9, [x20, #128]
  204394:	b900118b 	str	w11, [x12, #16]
  204398:	97fff31a 	bl	201000 <cml_main>
  20439c:	f943aee8 	ldr	x8, [x23, #1880]
  2043a0:	5294082a 	mov	w10, #0xa041                	// #41025
  2043a4:	72a0002a 	movk	w10, #0x1, lsl #16
  2043a8:	b9401d09 	ldr	w9, [x8, #28]
  2043ac:	2a0a0129 	orr	w9, w9, w10
  2043b0:	b9001d09 	str	w9, [x8, #28]
  2043b4:	f943aa69 	ldr	x9, [x19, #1872]
  2043b8:	b9403d2a 	ldr	w10, [x9, #60]
  2043bc:	32000d4a 	orr	w10, w10, #0xf
  2043c0:	b9003d2a 	str	w10, [x9, #60]
  2043c4:	b940012a 	ldr	w10, [x9]
  2043c8:	321e054a 	orr	w10, w10, #0xc
  2043cc:	b900012a 	str	w10, [x9]
  2043d0:	5284004a 	mov	w10, #0x2002                	// #8194
  2043d4:	b9401909 	ldr	w9, [x8, #24]
  2043d8:	2a0a0129 	orr	w9, w9, w10
  2043dc:	b9001909 	str	w9, [x8, #24]
  2043e0:	a9444ff4 	ldp	x20, x19, [sp, #64]
  2043e4:	a94357f6 	ldp	x22, x21, [sp, #48]
  2043e8:	a9425ff8 	ldp	x24, x23, [sp, #32]
  2043ec:	f9400bf9 	ldr	x25, [sp, #16]
  2043f0:	a8c57bfd 	ldp	x29, x30, [sp], #80
  2043f4:	d65f03c0 	ret
	...

0000000000204400 <ffiTHREAD_MEMORY_RELEASE>:
  204400:	d5033bbf 	dmb	ish
  204404:	d65f03c0 	ret
  204408:	d503201f 	nop
  20440c:	d503201f 	nop

0000000000204410 <ffiTHREAD_MEMORY_ACQUIRE>:
  204410:	d50339bf 	dmb	ishld
  204414:	d65f03c0 	ret
  204418:	d503201f 	nop
  20441c:	d503201f 	nop

0000000000204420 <ffiassert>:
  204420:	d65f03c0 	ret
  204424:	d503201f 	nop
  204428:	d503201f 	nop
  20442c:	d503201f 	nop

0000000000204430 <ffimicrokit_notify>:
  204430:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204434:	f9000bf3 	str	x19, [sp, #16]
  204438:	910003fd 	mov	x29, sp
  20443c:	aa0103f3 	mov	x19, x1
  204440:	7100f67f 	cmp	w19, #0x3d
  204444:	540001a8 	b.hi	204478 <ffimicrokit_notify+0x48>  // b.pmore
  204448:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  20444c:	f943e108 	ldr	x8, [x8, #1984]
  204450:	9ad32508 	lsr	x8, x8, x19
  204454:	36000128 	tbz	w8, #0, 204478 <ffimicrokit_notify+0x48>
  204458:	11002a68 	add	w8, w19, #0xa
  20445c:	aa1f03e1 	mov	x1, xzr
  204460:	92401900 	and	x0, x8, #0x7f
  204464:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  204468:	d4000001 	svc	#0x0
  20446c:	f9400bf3 	ldr	x19, [sp, #16]
  204470:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204474:	d65f03c0 	ret
  204478:	d503201f 	nop
  20447c:	10019720 	adr	x0, 207760 <microkit_name>
  204480:	94000174 	bl	204a50 <microkit_dbg_puts>
  204484:	d503201f 	nop
  204488:	700043a0 	adr	x0, 204cff <_text_end+0x17>
  20448c:	94000171 	bl	204a50 <microkit_dbg_puts>
  204490:	2a1303e0 	mov	w0, w19
  204494:	94000197 	bl	204af0 <microkit_dbg_put32>
  204498:	f9400bf3 	ldr	x19, [sp, #16]
  20449c:	90000000 	adrp	x0, 204000 <cml_enter>
  2044a0:	9134a400 	add	x0, x0, #0xd29
  2044a4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2044a8:	1400016a 	b	204a50 <microkit_dbg_puts>
  2044ac:	d503201f 	nop

00000000002044b0 <ffimicrokit_deferred_irq_ack>:
  2044b0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2044b4:	f9000bf3 	str	x19, [sp, #16]
  2044b8:	910003fd 	mov	x29, sp
  2044bc:	aa0103f3 	mov	x19, x1
  2044c0:	7100f67f 	cmp	w19, #0x3d
  2044c4:	54000268 	b.hi	204510 <ffimicrokit_deferred_irq_ack+0x60>  // b.pmore
  2044c8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  2044cc:	f943e508 	ldr	x8, [x8, #1992]
  2044d0:	9ad32508 	lsr	x8, x8, x19
  2044d4:	360001e8 	tbz	w8, #0, 204510 <ffimicrokit_deferred_irq_ack+0x60>
  2044d8:	52800028 	mov	w8, #0x1                   	// #1
  2044dc:	52940009 	mov	w9, #0xa000                	// #40960
  2044e0:	11022a6a 	add	w10, w19, #0x8a
  2044e4:	72a00029 	movk	w9, #0x1, lsl #16
  2044e8:	92401d4a 	and	x10, x10, #0xff
  2044ec:	f9400bf3 	ldr	x19, [sp, #16]
  2044f0:	f000000b 	adrp	x11, 207000 <__global_pointer$+0x1778>
  2044f4:	391e8568 	strb	w8, [x11, #1953]
  2044f8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  2044fc:	f903d509 	str	x9, [x8, #1960]
  204500:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  204504:	f903d90a 	str	x10, [x8, #1968]
  204508:	a8c27bfd 	ldp	x29, x30, [sp], #32
  20450c:	d65f03c0 	ret
  204510:	d503201f 	nop
  204514:	10019260 	adr	x0, 207760 <microkit_name>
  204518:	9400014e 	bl	204a50 <microkit_dbg_puts>
  20451c:	90000000 	adrp	x0, 204000 <cml_enter>
  204520:	91387c00 	add	x0, x0, #0xe1f
  204524:	9400014b 	bl	204a50 <microkit_dbg_puts>
  204528:	2a1303e0 	mov	w0, w19
  20452c:	94000171 	bl	204af0 <microkit_dbg_put32>
  204530:	f9400bf3 	ldr	x19, [sp, #16]
  204534:	90000000 	adrp	x0, 204000 <cml_enter>
  204538:	9134a400 	add	x0, x0, #0xd29
  20453c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204540:	14000144 	b	204a50 <microkit_dbg_puts>
  204544:	d503201f 	nop
  204548:	d503201f 	nop
  20454c:	d503201f 	nop

0000000000204550 <ffimicrokit_irq_ack>:
  204550:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204554:	f9000bf3 	str	x19, [sp, #16]
  204558:	910003fd 	mov	x29, sp
  20455c:	aa0103f3 	mov	x19, x1
  204560:	7100f67f 	cmp	w19, #0x3d
  204564:	54000328 	b.hi	2045c8 <ffimicrokit_irq_ack+0x78>  // b.pmore
  204568:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  20456c:	f943e508 	ldr	x8, [x8, #1992]
  204570:	9ad32508 	lsr	x8, x8, x19
  204574:	360002a8 	tbz	w8, #0, 2045c8 <ffimicrokit_irq_ack+0x78>
  204578:	11022a68 	add	w8, w19, #0x8a
  20457c:	52940001 	mov	w1, #0xa000                	// #40960
  204580:	92401d00 	and	x0, x8, #0xff
  204584:	aa1f03e2 	mov	x2, xzr
  204588:	aa1f03e3 	mov	x3, xzr
  20458c:	aa1f03e4 	mov	x4, xzr
  204590:	aa1f03e5 	mov	x5, xzr
  204594:	72a00021 	movk	w1, #0x1, lsl #16
  204598:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  20459c:	aa1f03e6 	mov	x6, xzr
  2045a0:	d4000001 	svc	#0x0
  2045a4:	f2747c3f 	tst	x1, #0xffffffff000
  2045a8:	540000a0 	b.eq	2045bc <ffimicrokit_irq_ack+0x6c>  // b.none
  2045ac:	b0000008 	adrp	x8, 205000 <__init_array_end>
  2045b0:	f9404108 	ldr	x8, [x8, #128]
  2045b4:	a9008d02 	stp	x2, x3, [x8, #8]
  2045b8:	a9019504 	stp	x4, x5, [x8, #24]
  2045bc:	f9400bf3 	ldr	x19, [sp, #16]
  2045c0:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2045c4:	d65f03c0 	ret
  2045c8:	d503201f 	nop
  2045cc:	10018ca0 	adr	x0, 207760 <microkit_name>
  2045d0:	94000120 	bl	204a50 <microkit_dbg_puts>
  2045d4:	90000000 	adrp	x0, 204000 <cml_enter>
  2045d8:	9137d000 	add	x0, x0, #0xdf4
  2045dc:	9400011d 	bl	204a50 <microkit_dbg_puts>
  2045e0:	2a1303e0 	mov	w0, w19
  2045e4:	94000143 	bl	204af0 <microkit_dbg_put32>
  2045e8:	f9400bf3 	ldr	x19, [sp, #16]
  2045ec:	90000000 	adrp	x0, 204000 <cml_enter>
  2045f0:	9134a400 	add	x0, x0, #0xd29
  2045f4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2045f8:	14000116 	b	204a50 <microkit_dbg_puts>
  2045fc:	d503201f 	nop

0000000000204600 <ffisddf_irq_ack>:
  204600:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204604:	f9000bf3 	str	x19, [sp, #16]
  204608:	910003fd 	mov	x29, sp
  20460c:	aa0103f3 	mov	x19, x1
  204610:	7100f67f 	cmp	w19, #0x3d
  204614:	54000328 	b.hi	204678 <ffisddf_irq_ack+0x78>  // b.pmore
  204618:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  20461c:	f943e508 	ldr	x8, [x8, #1992]
  204620:	9ad32508 	lsr	x8, x8, x19
  204624:	360002a8 	tbz	w8, #0, 204678 <ffisddf_irq_ack+0x78>
  204628:	11022a68 	add	w8, w19, #0x8a
  20462c:	52940001 	mov	w1, #0xa000                	// #40960
  204630:	92401d00 	and	x0, x8, #0xff
  204634:	aa1f03e2 	mov	x2, xzr
  204638:	aa1f03e3 	mov	x3, xzr
  20463c:	aa1f03e4 	mov	x4, xzr
  204640:	aa1f03e5 	mov	x5, xzr
  204644:	72a00021 	movk	w1, #0x1, lsl #16
  204648:	92800007 	mov	x7, #0xffffffffffffffff    	// #-1
  20464c:	aa1f03e6 	mov	x6, xzr
  204650:	d4000001 	svc	#0x0
  204654:	f2747c3f 	tst	x1, #0xffffffff000
  204658:	540000a0 	b.eq	20466c <ffisddf_irq_ack+0x6c>  // b.none
  20465c:	b0000008 	adrp	x8, 205000 <__init_array_end>
  204660:	f9404108 	ldr	x8, [x8, #128]
  204664:	a9008d02 	stp	x2, x3, [x8, #8]
  204668:	a9019504 	stp	x4, x5, [x8, #24]
  20466c:	f9400bf3 	ldr	x19, [sp, #16]
  204670:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204674:	d65f03c0 	ret
  204678:	d503201f 	nop
  20467c:	10018720 	adr	x0, 207760 <microkit_name>
  204680:	940000f4 	bl	204a50 <microkit_dbg_puts>
  204684:	90000000 	adrp	x0, 204000 <cml_enter>
  204688:	9137d000 	add	x0, x0, #0xdf4
  20468c:	940000f1 	bl	204a50 <microkit_dbg_puts>
  204690:	2a1303e0 	mov	w0, w19
  204694:	94000117 	bl	204af0 <microkit_dbg_put32>
  204698:	f9400bf3 	ldr	x19, [sp, #16]
  20469c:	90000000 	adrp	x0, 204000 <cml_enter>
  2046a0:	9134a400 	add	x0, x0, #0xd29
  2046a4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2046a8:	140000ea 	b	204a50 <microkit_dbg_puts>
  2046ac:	d503201f 	nop

00000000002046b0 <ffisddf_notify>:
  2046b0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  2046b4:	f9000bf3 	str	x19, [sp, #16]
  2046b8:	910003fd 	mov	x29, sp
  2046bc:	aa0103f3 	mov	x19, x1
  2046c0:	7100f67f 	cmp	w19, #0x3d
  2046c4:	540001a8 	b.hi	2046f8 <ffisddf_notify+0x48>  // b.pmore
  2046c8:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  2046cc:	f943e108 	ldr	x8, [x8, #1984]
  2046d0:	9ad32508 	lsr	x8, x8, x19
  2046d4:	36000128 	tbz	w8, #0, 2046f8 <ffisddf_notify+0x48>
  2046d8:	11002a68 	add	w8, w19, #0xa
  2046dc:	aa1f03e1 	mov	x1, xzr
  2046e0:	92401900 	and	x0, x8, #0x7f
  2046e4:	92800087 	mov	x7, #0xfffffffffffffffb    	// #-5
  2046e8:	d4000001 	svc	#0x0
  2046ec:	f9400bf3 	ldr	x19, [sp, #16]
  2046f0:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2046f4:	d65f03c0 	ret
  2046f8:	d503201f 	nop
  2046fc:	10018320 	adr	x0, 207760 <microkit_name>
  204700:	940000d4 	bl	204a50 <microkit_dbg_puts>
  204704:	d503201f 	nop
  204708:	70002fa0 	adr	x0, 204cff <_text_end+0x17>
  20470c:	940000d1 	bl	204a50 <microkit_dbg_puts>
  204710:	2a1303e0 	mov	w0, w19
  204714:	940000f7 	bl	204af0 <microkit_dbg_put32>
  204718:	f9400bf3 	ldr	x19, [sp, #16]
  20471c:	90000000 	adrp	x0, 204000 <cml_enter>
  204720:	9134a400 	add	x0, x0, #0xd29
  204724:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204728:	140000ca 	b	204a50 <microkit_dbg_puts>
  20472c:	d503201f 	nop

0000000000204730 <ffisddf_deferred_notify>:
  204730:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  204734:	f9000bf3 	str	x19, [sp, #16]
  204738:	910003fd 	mov	x29, sp
  20473c:	aa0103f3 	mov	x19, x1
  204740:	7100f67f 	cmp	w19, #0x3d
  204744:	54000228 	b.hi	204788 <ffisddf_deferred_notify+0x58>  // b.pmore
  204748:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  20474c:	f943e108 	ldr	x8, [x8, #1984]
  204750:	9ad32508 	lsr	x8, x8, x19
  204754:	360001a8 	tbz	w8, #0, 204788 <ffisddf_deferred_notify+0x58>
  204758:	52800028 	mov	w8, #0x1                   	// #1
  20475c:	11002a69 	add	w9, w19, #0xa
  204760:	92401929 	and	x9, x9, #0x7f
  204764:	f9400bf3 	ldr	x19, [sp, #16]
  204768:	f000000a 	adrp	x10, 207000 <__global_pointer$+0x1778>
  20476c:	391e8548 	strb	w8, [x10, #1953]
  204770:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  204774:	f903d51f 	str	xzr, [x8, #1960]
  204778:	f0000008 	adrp	x8, 207000 <__global_pointer$+0x1778>
  20477c:	f903d909 	str	x9, [x8, #1968]
  204780:	a8c27bfd 	ldp	x29, x30, [sp], #32
  204784:	d65f03c0 	ret
  204788:	d503201f 	nop
  20478c:	10017ea0 	adr	x0, 207760 <microkit_name>
  204790:	940000b0 	bl	204a50 <microkit_dbg_puts>
  204794:	90000000 	adrp	x0, 204000 <cml_enter>
  204798:	9134b000 	add	x0, x0, #0xd2c
  20479c:	940000ad 	bl	204a50 <microkit_dbg_puts>
  2047a0:	2a1303e0 	mov	w0, w19
  2047a4:	940000d3 	bl	204af0 <microkit_dbg_put32>
  2047a8:	f9400bf3 	ldr	x19, [sp, #16]
  2047ac:	90000000 	adrp	x0, 204000 <cml_enter>
  2047b0:	9134a400 	add	x0, x0, #0xd29
  2047b4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  2047b8:	140000a6 	b	204a50 <microkit_dbg_puts>
  2047bc:	d503201f 	nop

00000000002047c0 <fficache_clean>:
  2047c0:	aa0203e1 	mov	x1, x2
  2047c4:	14000023 	b	204850 <cache_clean>
  2047c8:	d503201f 	nop
  2047cc:	d503201f 	nop

00000000002047d0 <fficache_clean_and_invalidate>:
  2047d0:	aa0203e1 	mov	x1, x2
  2047d4:	1400000f 	b	204810 <cache_clean_and_invalidate>
  2047d8:	d503201f 	nop
  2047dc:	d503201f 	nop

00000000002047e0 <ffidebug_print>:
  2047e0:	d65f03c0 	ret
  2047e4:	d503201f 	nop
  2047e8:	d503201f 	nop
  2047ec:	d503201f 	nop

00000000002047f0 <ffiseL4_SetMR>:
  2047f0:	b0000008 	adrp	x8, 205000 <__init_array_end>
  2047f4:	f9404108 	ldr	x8, [x8, #128]
  2047f8:	8b21cd08 	add	x8, x8, w1, sxtw #3
  2047fc:	f9000503 	str	x3, [x8, #8]
  204800:	d65f03c0 	ret
	...

0000000000204810 <cache_clean_and_invalidate>:
  204810:	f240143f 	tst	x1, #0x3f
  204814:	d346fc09 	lsr	x9, x0, #6
  204818:	1a9f07e8 	cset	w8, ne	// ne = any
  20481c:	8b081828 	add	x8, x1, x8, lsl #6
  204820:	d346fd08 	lsr	x8, x8, #6
  204824:	eb090108 	subs	x8, x8, x9
  204828:	540000c9 	b.ls	204840 <cache_clean_and_invalidate+0x30>  // b.plast
  20482c:	d37ae529 	lsl	x9, x9, #6
  204830:	d50b7e29 	dc	civac, x9
  204834:	f1000508 	subs	x8, x8, #0x1
  204838:	91010129 	add	x9, x9, #0x40
  20483c:	54ffffa1 	b.ne	204830 <cache_clean_and_invalidate+0x20>  // b.any
  204840:	d5033f9f 	dsb	sy
  204844:	d65f03c0 	ret
  204848:	d503201f 	nop
  20484c:	d503201f 	nop

0000000000204850 <cache_clean>:
  204850:	f240143f 	tst	x1, #0x3f
  204854:	d346fc09 	lsr	x9, x0, #6
  204858:	1a9f07e8 	cset	w8, ne	// ne = any
  20485c:	8b081828 	add	x8, x1, x8, lsl #6
  204860:	d346fd08 	lsr	x8, x8, #6
  204864:	eb090108 	subs	x8, x8, x9
  204868:	540000c9 	b.ls	204880 <cache_clean+0x30>  // b.plast
  20486c:	d37ae529 	lsl	x9, x9, #6
  204870:	d50b7a29 	dc	cvac, x9
  204874:	f1000508 	subs	x8, x8, #0x1
  204878:	91010129 	add	x9, x9, #0x40
  20487c:	54ffffa1 	b.ne	204870 <cache_clean+0x20>  // b.any
  204880:	d5033fbf 	dmb	sy
  204884:	d65f03c0 	ret
	...

0000000000204890 <protected>:
  204890:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  204894:	d503201f 	nop
  204898:	10017640 	adr	x0, 207760 <microkit_name>
  20489c:	910003fd 	mov	x29, sp
  2048a0:	9400006c 	bl	204a50 <microkit_dbg_puts>
  2048a4:	d503201f 	nop
  2048a8:	10002d80 	adr	x0, 204e58 <_text_end+0x170>
  2048ac:	94000069 	bl	204a50 <microkit_dbg_puts>
  2048b0:	d2800000 	mov	x0, #0x0                   	// #0
  2048b4:	b900001f 	str	wzr, [x0]
  2048b8:	d4207d00 	brk	#0x3e8
  2048bc:	d503201f 	nop

00000000002048c0 <fault>:
  2048c0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  2048c4:	d503201f 	nop
  2048c8:	100174c0 	adr	x0, 207760 <microkit_name>
  2048cc:	910003fd 	mov	x29, sp
  2048d0:	94000060 	bl	204a50 <microkit_dbg_puts>
  2048d4:	90000000 	adrp	x0, 204000 <cml_enter>
  2048d8:	913a4000 	add	x0, x0, #0xe90
  2048dc:	9400005d 	bl	204a50 <microkit_dbg_puts>
  2048e0:	d2800000 	mov	x0, #0x0                   	// #0
  2048e4:	b900001f 	str	wzr, [x0]
  2048e8:	d4207d00 	brk	#0x3e8
  2048ec:	00000000 	udf	#0

00000000002048f0 <main>:
  2048f0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  2048f4:	d503201f 	nop
  2048f8:	10003840 	adr	x0, 205000 <__init_array_end>
  2048fc:	910003fd 	mov	x29, sp
  204900:	a90153f3 	stp	x19, x20, [sp, #16]
  204904:	d503201f 	nop
  204908:	100037d4 	adr	x20, 205000 <__init_array_end>
  20490c:	a9025bf5 	stp	x21, x22, [sp, #32]
  204910:	eb140015 	subs	x21, x0, x20
  204914:	54000100 	b.eq	204934 <main+0x44>  // b.none
  204918:	9343feb5 	asr	x21, x21, #3
  20491c:	d2800013 	mov	x19, #0x0                   	// #0
  204920:	f8737a80 	ldr	x0, [x20, x19, lsl #3]
  204924:	91000673 	add	x19, x19, #0x1
  204928:	d63f0000 	blr	x0
  20492c:	eb1302bf 	cmp	x21, x19
  204930:	54ffff88 	b.hi	204920 <main+0x30>  // b.pmore
  204934:	d503201f 	nop
  204938:	10017156 	adr	x22, 207760 <microkit_name>
  20493c:	97fffe0d 	bl	204170 <init>
  204940:	394102c0 	ldrb	w0, [x22, #64]
  204944:	360000a0 	tbz	w0, #0, 204958 <main+0x68>
  204948:	52800021 	mov	w1, #0x1                   	// #1
  20494c:	d28000a0 	mov	x0, #0x5                   	// #5
  204950:	390106c1 	strb	w1, [x22, #65]
  204954:	a90482df 	stp	xzr, x0, [x22, #72]
  204958:	d503201f 	nop
  20495c:	10003935 	adr	x21, 205080 <__sel4_ipc_buffer>
  204960:	52800000 	mov	w0, #0x0                   	// #0
  204964:	35000200 	cbnz	w0, 2049a4 <main+0xb4>
  204968:	39c106c0 	ldrsb	w0, [x22, #65]
  20496c:	350004c0 	cbnz	w0, 204a04 <main+0x114>
  204970:	d2800020 	mov	x0, #0x1                   	// #1
  204974:	d2800086 	mov	x6, #0x4                   	// #4
  204978:	928000c7 	mov	x7, #0xfffffffffffffff9    	// #-7
  20497c:	d4000001 	svc	#0x0
  204980:	f94002a6 	ldr	x6, [x21]
  204984:	aa0003f3 	mov	x19, x0
  204988:	a9008cc2 	stp	x2, x3, [x6, #8]
  20498c:	a90194c4 	stp	x4, x5, [x6, #24]
  204990:	b7f001d3 	tbnz	x19, #62, 2049c8 <main+0xd8>
  204994:	b6f80273 	tbz	x19, #63, 2049e0 <main+0xf0>
  204998:	12001660 	and	w0, w19, #0x3f
  20499c:	97ffffbd 	bl	204890 <protected>
  2049a0:	f9001fe0 	str	x0, [sp, #56]
  2049a4:	f94002a5 	ldr	x5, [x21]
  2049a8:	d2800020 	mov	x0, #0x1                   	// #1
  2049ac:	f9401fe1 	ldr	x1, [sp, #56]
  2049b0:	d2800086 	mov	x6, #0x4                   	// #4
  2049b4:	a9408ca2 	ldp	x2, x3, [x5, #8]
  2049b8:	92800027 	mov	x7, #0xfffffffffffffffe    	// #-2
  2049bc:	a94194a4 	ldp	x4, x5, [x5, #24]
  2049c0:	d4000001 	svc	#0x0
  2049c4:	17ffffef 	b	204980 <main+0x90>
  2049c8:	12001e60 	and	w0, w19, #0xff
  2049cc:	9100e3e2 	add	x2, sp, #0x38
  2049d0:	97ffffbc 	bl	2048c0 <fault>
  2049d4:	72001c1f 	tst	w0, #0xff
  2049d8:	1a9f07e0 	cset	w0, ne	// ne = any
  2049dc:	17ffffe2 	b	204964 <main+0x74>
  2049e0:	52800014 	mov	w20, #0x0                   	// #0
  2049e4:	370000b3 	tbnz	w19, #0, 2049f8 <main+0x108>
  2049e8:	d341fe73 	lsr	x19, x19, #1
  2049ec:	11000694 	add	w20, w20, #0x1
  2049f0:	b4fffb93 	cbz	x19, 204960 <main+0x70>
  2049f4:	3607ffb3 	tbz	w19, #0, 2049e8 <main+0xf8>
  2049f8:	2a1403e0 	mov	w0, w20
  2049fc:	97fffdb9 	bl	2040e0 <notified>
  204a00:	17fffffa 	b	2049e8 <main+0xf8>
  204a04:	f94002a5 	ldr	x5, [x21]
  204a08:	d2800020 	mov	x0, #0x1                   	// #1
  204a0c:	a944a2c1 	ldp	x1, x8, [x22, #72]
  204a10:	d2800086 	mov	x6, #0x4                   	// #4
  204a14:	a9408ca2 	ldp	x2, x3, [x5, #8]
  204a18:	92800047 	mov	x7, #0xfffffffffffffffd    	// #-3
  204a1c:	a94194a4 	ldp	x4, x5, [x5, #24]
  204a20:	d4000001 	svc	#0x0
  204a24:	f94002a6 	ldr	x6, [x21]
  204a28:	aa0003f3 	mov	x19, x0
  204a2c:	390106df 	strb	wzr, [x22, #65]
  204a30:	a9008cc2 	stp	x2, x3, [x6, #8]
  204a34:	a90194c4 	stp	x4, x5, [x6, #24]
  204a38:	17ffffd6 	b	204990 <main+0xa0>
  204a3c:	00000000 	udf	#0

0000000000204a40 <microkit_dbg_putc>:
  204a40:	d65f03c0 	ret
  204a44:	d503201f 	nop
  204a48:	d503201f 	nop
  204a4c:	d503201f 	nop

0000000000204a50 <microkit_dbg_puts>:
  204a50:	39400001 	ldrb	w1, [x0]
  204a54:	34000061 	cbz	w1, 204a60 <microkit_dbg_puts+0x10>
  204a58:	38401c01 	ldrb	w1, [x0, #1]!
  204a5c:	35ffffe1 	cbnz	w1, 204a58 <microkit_dbg_puts+0x8>
  204a60:	d65f03c0 	ret
  204a64:	d503201f 	nop
  204a68:	d503201f 	nop
  204a6c:	d503201f 	nop

0000000000204a70 <microkit_dbg_put8>:
  204a70:	12001c00 	and	w0, w0, #0xff
  204a74:	529999a2 	mov	w2, #0xcccd                	// #52429
  204a78:	72b99982 	movk	w2, #0xcccc, lsl #16
  204a7c:	52800143 	mov	w3, #0xa                   	// #10
  204a80:	d10043ff 	sub	sp, sp, #0x10
  204a84:	7100241f 	cmp	w0, #0x9
  204a88:	9ba27c01 	umull	x1, w0, w2
  204a8c:	d2800044 	mov	x4, #0x2                   	// #2
  204a90:	39002fff 	strb	wzr, [sp, #11]
  204a94:	d363fc21 	lsr	x1, x1, #35
  204a98:	1b038025 	msub	w5, w1, w3, w0
  204a9c:	1100c0a5 	add	w5, w5, #0x30
  204aa0:	39002be5 	strb	w5, [sp, #10]
  204aa4:	540001a9 	b.ls	204ad8 <microkit_dbg_put8+0x68>  // b.plast
  204aa8:	12001c21 	and	w1, w1, #0xff
  204aac:	71018c1f 	cmp	w0, #0x63
  204ab0:	d2800024 	mov	x4, #0x1                   	// #1
  204ab4:	9ba27c22 	umull	x2, w1, w2
  204ab8:	d363fc42 	lsr	x2, x2, #35
  204abc:	1b038443 	msub	w3, w2, w3, w1
  204ac0:	1100c063 	add	w3, w3, #0x30
  204ac4:	390027e3 	strb	w3, [sp, #9]
  204ac8:	54000089 	b.ls	204ad8 <microkit_dbg_put8+0x68>  // b.plast
  204acc:	1100c042 	add	w2, w2, #0x30
  204ad0:	d2800004 	mov	x4, #0x0                   	// #0
  204ad4:	390023e2 	strb	w2, [sp, #8]
  204ad8:	910023e0 	add	x0, sp, #0x8
  204adc:	8b040000 	add	x0, x0, x4
  204ae0:	38401c01 	ldrb	w1, [x0, #1]!
  204ae4:	35ffffe1 	cbnz	w1, 204ae0 <microkit_dbg_put8+0x70>
  204ae8:	910043ff 	add	sp, sp, #0x10
  204aec:	d65f03c0 	ret

0000000000204af0 <microkit_dbg_put32>:
  204af0:	529999a1 	mov	w1, #0xcccd                	// #52429
  204af4:	72b99981 	movk	w1, #0xcccc, lsl #16
  204af8:	52800143 	mov	w3, #0xa                   	// #10
  204afc:	d10043ff 	sub	sp, sp, #0x10
  204b00:	9ba17c02 	umull	x2, w0, w1
  204b04:	7100241f 	cmp	w0, #0x9
  204b08:	39002bff 	strb	wzr, [sp, #10]
  204b0c:	d363fc42 	lsr	x2, x2, #35
  204b10:	1b038044 	msub	w4, w2, w3, w0
  204b14:	1100c084 	add	w4, w4, #0x30
  204b18:	390027e4 	strb	w4, [sp, #9]
  204b1c:	540009e9 	b.ls	204c58 <microkit_dbg_put32+0x168>  // b.plast
  204b20:	9ba17c44 	umull	x4, w2, w1
  204b24:	71018c1f 	cmp	w0, #0x63
  204b28:	d363fc84 	lsr	x4, x4, #35
  204b2c:	1b038882 	msub	w2, w4, w3, w2
  204b30:	1100c042 	add	w2, w2, #0x30
  204b34:	390023e2 	strb	w2, [sp, #8]
  204b38:	54000949 	b.ls	204c60 <microkit_dbg_put32+0x170>  // b.plast
  204b3c:	9ba17c82 	umull	x2, w4, w1
  204b40:	710f9c1f 	cmp	w0, #0x3e7
  204b44:	d363fc42 	lsr	x2, x2, #35
  204b48:	1b039044 	msub	w4, w2, w3, w4
  204b4c:	1100c084 	add	w4, w4, #0x30
  204b50:	39001fe4 	strb	w4, [sp, #7]
  204b54:	540008a9 	b.ls	204c68 <microkit_dbg_put32+0x178>  // b.plast
  204b58:	9ba17c44 	umull	x4, w2, w1
  204b5c:	5284e1e5 	mov	w5, #0x270f                	// #9999
  204b60:	6b05001f 	cmp	w0, w5
  204b64:	d363fc84 	lsr	x4, x4, #35
  204b68:	1b038882 	msub	w2, w4, w3, w2
  204b6c:	1100c042 	add	w2, w2, #0x30
  204b70:	39001be2 	strb	w2, [sp, #6]
  204b74:	540007e9 	b.ls	204c70 <microkit_dbg_put32+0x180>  // b.plast
  204b78:	9ba17c82 	umull	x2, w4, w1
  204b7c:	5290d3e5 	mov	w5, #0x869f                	// #34463
  204b80:	72a00025 	movk	w5, #0x1, lsl #16
  204b84:	6b05001f 	cmp	w0, w5
  204b88:	d363fc42 	lsr	x2, x2, #35
  204b8c:	1b039044 	msub	w4, w2, w3, w4
  204b90:	1100c084 	add	w4, w4, #0x30
  204b94:	390017e4 	strb	w4, [sp, #5]
  204b98:	54000709 	b.ls	204c78 <microkit_dbg_put32+0x188>  // b.plast
  204b9c:	9ba17c44 	umull	x4, w2, w1
  204ba0:	528847e5 	mov	w5, #0x423f                	// #16959
  204ba4:	72a001e5 	movk	w5, #0xf, lsl #16
  204ba8:	6b05001f 	cmp	w0, w5
  204bac:	d363fc84 	lsr	x4, x4, #35
  204bb0:	1b038882 	msub	w2, w4, w3, w2
  204bb4:	1100c042 	add	w2, w2, #0x30
  204bb8:	390013e2 	strb	w2, [sp, #4]
  204bbc:	540004a9 	b.ls	204c50 <microkit_dbg_put32+0x160>  // b.plast
  204bc0:	9ba17c82 	umull	x2, w4, w1
  204bc4:	5292cfe5 	mov	w5, #0x967f                	// #38527
  204bc8:	72a01305 	movk	w5, #0x98, lsl #16
  204bcc:	6b05001f 	cmp	w0, w5
  204bd0:	d363fc42 	lsr	x2, x2, #35
  204bd4:	1b039044 	msub	w4, w2, w3, w4
  204bd8:	1100c084 	add	w4, w4, #0x30
  204bdc:	39000fe4 	strb	w4, [sp, #3]
  204be0:	54000509 	b.ls	204c80 <microkit_dbg_put32+0x190>  // b.plast
  204be4:	9ba17c44 	umull	x4, w2, w1
  204be8:	529c1fe5 	mov	w5, #0xe0ff                	// #57599
  204bec:	72a0bea5 	movk	w5, #0x5f5, lsl #16
  204bf0:	6b05001f 	cmp	w0, w5
  204bf4:	d363fc84 	lsr	x4, x4, #35
  204bf8:	1b038882 	msub	w2, w4, w3, w2
  204bfc:	1100c042 	add	w2, w2, #0x30
  204c00:	39000be2 	strb	w2, [sp, #2]
  204c04:	54000429 	b.ls	204c88 <microkit_dbg_put32+0x198>  // b.plast
  204c08:	9ba17c81 	umull	x1, w4, w1
  204c0c:	52993fe2 	mov	w2, #0xc9ff                	// #51711
  204c10:	72a77342 	movk	w2, #0x3b9a, lsl #16
  204c14:	6b02001f 	cmp	w0, w2
  204c18:	d363fc21 	lsr	x1, x1, #35
  204c1c:	1b039023 	msub	w3, w1, w3, w4
  204c20:	1100c063 	add	w3, w3, #0x30
  204c24:	390007e3 	strb	w3, [sp, #1]
  204c28:	54000349 	b.ls	204c90 <microkit_dbg_put32+0x1a0>  // b.plast
  204c2c:	1100c021 	add	w1, w1, #0x30
  204c30:	d2800000 	mov	x0, #0x0                   	// #0
  204c34:	390003e1 	strb	w1, [sp]
  204c38:	8b2063e0 	add	x0, sp, x0
  204c3c:	d503201f 	nop
  204c40:	38401c01 	ldrb	w1, [x0, #1]!
  204c44:	35ffffe1 	cbnz	w1, 204c40 <microkit_dbg_put32+0x150>
  204c48:	910043ff 	add	sp, sp, #0x10
  204c4c:	d65f03c0 	ret
  204c50:	d2800080 	mov	x0, #0x4                   	// #4
  204c54:	17fffff9 	b	204c38 <microkit_dbg_put32+0x148>
  204c58:	d2800120 	mov	x0, #0x9                   	// #9
  204c5c:	17fffff7 	b	204c38 <microkit_dbg_put32+0x148>
  204c60:	d2800100 	mov	x0, #0x8                   	// #8
  204c64:	17fffff5 	b	204c38 <microkit_dbg_put32+0x148>
  204c68:	d28000e0 	mov	x0, #0x7                   	// #7
  204c6c:	17fffff3 	b	204c38 <microkit_dbg_put32+0x148>
  204c70:	d28000c0 	mov	x0, #0x6                   	// #6
  204c74:	17fffff1 	b	204c38 <microkit_dbg_put32+0x148>
  204c78:	d28000a0 	mov	x0, #0x5                   	// #5
  204c7c:	17ffffef 	b	204c38 <microkit_dbg_put32+0x148>
  204c80:	d2800060 	mov	x0, #0x3                   	// #3
  204c84:	17ffffed 	b	204c38 <microkit_dbg_put32+0x148>
  204c88:	d2800040 	mov	x0, #0x2                   	// #2
  204c8c:	17ffffeb 	b	204c38 <microkit_dbg_put32+0x148>
  204c90:	d2800020 	mov	x0, #0x1                   	// #1
  204c94:	17ffffe9 	b	204c38 <microkit_dbg_put32+0x148>
  204c98:	d503201f 	nop
  204c9c:	d503201f 	nop

0000000000204ca0 <__assert_fail>:
  204ca0:	d503201f 	nop
  204ca4:	100010a2 	adr	x2, 204eb8 <_text_end+0x1d0>
  204ca8:	38401c44 	ldrb	w4, [x2, #1]!
  204cac:	35ffffe4 	cbnz	w4, 204ca8 <__assert_fail+0x8>
  204cb0:	39400002 	ldrb	w2, [x0]
  204cb4:	34000062 	cbz	w2, 204cc0 <__assert_fail+0x20>
  204cb8:	38401c02 	ldrb	w2, [x0, #1]!
  204cbc:	35ffffe2 	cbnz	w2, 204cb8 <__assert_fail+0x18>
  204cc0:	39400020 	ldrb	w0, [x1]
  204cc4:	34000060 	cbz	w0, 204cd0 <__assert_fail+0x30>
  204cc8:	38401c20 	ldrb	w0, [x1, #1]!
  204ccc:	35ffffe0 	cbnz	w0, 204cc8 <__assert_fail+0x28>
  204cd0:	39400060 	ldrb	w0, [x3]
  204cd4:	34000060 	cbz	w0, 204ce0 <__assert_fail+0x40>
  204cd8:	38401c60 	ldrb	w0, [x3, #1]!
  204cdc:	35ffffe0 	cbnz	w0, 204cd8 <__assert_fail+0x38>
  204ce0:	d65f03c0 	ret

0000000000204ce4 <pause_time>:
  204ce4:	0000ffff                                ....
