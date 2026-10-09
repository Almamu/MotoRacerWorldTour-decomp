nonmatching func_8008D2DC, 0x5A4

glabel func_8008D2DC
    /* 7BAEC 8008D2DC A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 7BAF0 8008D2E0 5400BFAF */  sw         $ra, 0x54($sp)
    /* 7BAF4 8008D2E4 5000BEAF */  sw         $fp, 0x50($sp)
    /* 7BAF8 8008D2E8 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 7BAFC 8008D2EC 4800B6AF */  sw         $s6, 0x48($sp)
    /* 7BB00 8008D2F0 4400B5AF */  sw         $s5, 0x44($sp)
    /* 7BB04 8008D2F4 4000B4AF */  sw         $s4, 0x40($sp)
    /* 7BB08 8008D2F8 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 7BB0C 8008D2FC 3800B2AF */  sw         $s2, 0x38($sp)
    /* 7BB10 8008D300 3400B1AF */  sw         $s1, 0x34($sp)
    /* 7BB14 8008D304 3000B0AF */  sw         $s0, 0x30($sp)
    /* 7BB18 8008D308 5800A4AF */  sw         $a0, 0x58($sp)
    /* 7BB1C 8008D30C 54008A8C */  lw         $t2, 0x54($a0)
    /* 7BB20 8008D310 00000000 */  nop
    /* 7BB24 8008D314 1000AAAF */  sw         $t2, 0x10($sp)
    /* 7BB28 8008D318 58008A8C */  lw         $t2, 0x58($a0)
    /* 7BB2C 8008D31C 00000000 */  nop
    /* 7BB30 8008D320 1400AAAF */  sw         $t2, 0x14($sp)
    /* 7BB34 8008D324 5C008A8C */  lw         $t2, 0x5C($a0)
    /* 7BB38 8008D328 0C000224 */  addiu      $v0, $zero, 0xC
    /* 7BB3C 8008D32C 1800AAAF */  sw         $t2, 0x18($sp)
    /* 7BB40 8008D330 1000AA8F */  lw         $t2, 0x10($sp)
    /* 7BB44 8008D334 23B84500 */  subu       $s7, $v0, $a1
    /* 7BB48 8008D338 0450EA02 */  sllv       $t2, $t2, $s7
    /* 7BB4C 8008D33C 1000AAAF */  sw         $t2, 0x10($sp)
    /* 7BB50 8008D340 08008A8C */  lw         $t2, 0x8($a0)
    /* 7BB54 8008D344 00000000 */  nop
    /* 7BB58 8008D348 1C00AAAF */  sw         $t2, 0x1C($sp)
    /* 7BB5C 8008D34C 1400AA8F */  lw         $t2, 0x14($sp)
    /* 7BB60 8008D350 00000000 */  nop
    /* 7BB64 8008D354 0450EA02 */  sllv       $t2, $t2, $s7
    /* 7BB68 8008D358 1400AAAF */  sw         $t2, 0x14($sp)
    /* 7BB6C 8008D35C 1C00AA8F */  lw         $t2, 0x1C($sp)
    /* 7BB70 8008D360 00000000 */  nop
    /* 7BB74 8008D364 0800428D */  lw         $v0, 0x8($t2)
    /* 7BB78 8008D368 1800AA8F */  lw         $t2, 0x18($sp)
    /* 7BB7C 8008D36C 00000000 */  nop
    /* 7BB80 8008D370 0450EA02 */  sllv       $t2, $t2, $s7
    /* 7BB84 8008D374 1800AAAF */  sw         $t2, 0x18($sp)
    /* 7BB88 8008D378 5400538C */  lw         $s3, 0x54($v0)
    /* 7BB8C 8008D37C 5800548C */  lw         $s4, 0x58($v0)
    /* 7BB90 8008D380 5C00558C */  lw         $s5, 0x5C($v0)
    /* 7BB94 8008D384 1000AA8F */  lw         $t2, 0x10($sp)
    /* 7BB98 8008D388 0498F302 */  sllv       $s3, $s3, $s7
    /* 7BB9C 8008D38C 04A0F402 */  sllv       $s4, $s4, $s7
    /* 7BBA0 8008D390 23986A02 */  subu       $s3, $s3, $t2
    /* 7BBA4 8008D394 1400AA8F */  lw         $t2, 0x14($sp)
    /* 7BBA8 8008D398 04A8F502 */  sllv       $s5, $s5, $s7
    /* 7BBAC 8008D39C 23A08A02 */  subu       $s4, $s4, $t2
    /* 7BBB0 8008D3A0 1800AA8F */  lw         $t2, 0x18($sp)
    /* 7BBB4 8008D3A4 21206002 */  addu       $a0, $s3, $zero
    /* 7BBB8 8008D3A8 23A8AA02 */  subu       $s5, $s5, $t2
    /* 7BBBC 8008D3AC 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7BBC0 8008D3B0 21288002 */  addu       $a1, $s4, $zero
    /* 7BBC4 8008D3B4 70005E8D */  lw         $fp, 0x70($t2)
    /* 7BBC8 8008D3B8 1C00AA8F */  lw         $t2, 0x1C($sp)
    /* 7BBCC 8008D3BC 00000000 */  nop
    /* 7BBD0 8008D3C0 7000508D */  lw         $s0, 0x70($t2)
    /* 7BBD4 8008D3C4 9F34020C */  jal        func_8008D27C
    /* 7BBD8 8008D3C8 2130A002 */   addu      $a2, $s5, $zero
    /* 7BBDC 8008D3CC 21884000 */  addu       $s1, $v0, $zero
    /* 7BBE0 8008D3D0 E837020C */  jal        func_8008DFA0
    /* 7BBE4 8008D3D4 21202002 */   addu      $a0, $s1, $zero
    /* 7BBE8 8008D3D8 009B1300 */  sll        $s3, $s3, 12
    /* 7BBEC 8008D3DC 00A31400 */  sll        $s4, $s4, 12
    /* 7BBF0 8008D3E0 21284000 */  addu       $a1, $v0, $zero
    /* 7BBF4 8008D3E4 0B00A010 */  beqz       $a1, .L8008D414
    /* 7BBF8 8008D3E8 00AB1500 */   sll       $s5, $s5, 12
    /* 7BBFC 8008D3EC 1A006502 */  div        $zero, $s3, $a1
    /* 7BC00 8008D3F0 12980000 */  mflo       $s3
    /* 7BC04 8008D3F4 00000000 */  nop
    /* 7BC08 8008D3F8 00000000 */  nop
    /* 7BC0C 8008D3FC 1A008502 */  div        $zero, $s4, $a1
    /* 7BC10 8008D400 12A00000 */  mflo       $s4
    /* 7BC14 8008D404 00000000 */  nop
    /* 7BC18 8008D408 00000000 */  nop
    /* 7BC1C 8008D40C 1A00A502 */  div        $zero, $s5, $a1
    /* 7BC20 8008D410 12A80000 */  mflo       $s5
  .L8008D414:
    /* 7BC24 8008D414 2118D003 */  addu       $v1, $fp, $s0
    /* 7BC28 8008D418 2A106500 */  slt        $v0, $v1, $a1
    /* 7BC2C 8008D41C 0B004014 */  bnez       $v0, .L8008D44C
    /* 7BC30 8008D420 CEFF6424 */   addiu     $a0, $v1, -0x32
    /* 7BC34 8008D424 2A108500 */  slt        $v0, $a0, $a1
    /* 7BC38 8008D428 48004010 */  beqz       $v0, .L8008D54C
    /* 7BC3C 8008D42C 1800DE03 */   mult      $fp, $fp
    /* 7BC40 8008D430 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7BC44 8008D434 00000000 */  nop
    /* 7BC48 8008D438 36004295 */  lhu        $v0, 0x36($t2)
    /* 7BC4C 8008D43C 00000000 */  nop
    /* 7BC50 8008D440 00014230 */  andi       $v0, $v0, 0x100
    /* 7BC54 8008D444 41004010 */  beqz       $v0, .L8008D54C
    /* 7BC58 8008D448 00000000 */   nop
  .L8008D44C:
    /* 7BC5C 8008D44C 18007E02 */  mult       $s3, $fp
    /* 7BC60 8008D450 12880000 */  mflo       $s1
    /* 7BC64 8008D454 00000000 */  nop
    /* 7BC68 8008D458 00000000 */  nop
    /* 7BC6C 8008D45C 18009E02 */  mult       $s4, $fp
    /* 7BC70 8008D460 12900000 */  mflo       $s2
    /* 7BC74 8008D464 00000000 */  nop
    /* 7BC78 8008D468 00000000 */  nop
    /* 7BC7C 8008D46C 1800BE02 */  mult       $s5, $fp
    /* 7BC80 8008D470 12800000 */  mflo       $s0
    /* 7BC84 8008D474 00000000 */  nop
    /* 7BC88 8008D478 00000000 */  nop
    /* 7BC8C 8008D47C 18006302 */  mult       $s3, $v1
    /* 7BC90 8008D480 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7BC94 8008D484 00000000 */  nop
    /* 7BC98 8008D488 36004295 */  lhu        $v0, 0x36($t2)
    /* 7BC9C 8008D48C 12980000 */  mflo       $s3
    /* 7BCA0 8008D490 00014234 */  ori        $v0, $v0, 0x100
    /* 7BCA4 8008D494 360042A5 */  sh         $v0, 0x36($t2)
    /* 7BCA8 8008D498 18008302 */  mult       $s4, $v1
    /* 7BCAC 8008D49C 038B1100 */  sra        $s1, $s1, 12
    /* 7BCB0 8008D4A0 600051AD */  sw         $s1, 0x60($t2)
    /* 7BCB4 8008D4A4 1000AA8F */  lw         $t2, 0x10($sp)
    /* 7BCB8 8008D4A8 00000000 */  nop
    /* 7BCBC 8008D4AC 21882A02 */  addu       $s1, $s1, $t2
    /* 7BCC0 8008D4B0 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7BCC4 8008D4B4 03931200 */  sra        $s2, $s2, 12
    /* 7BCC8 8008D4B8 640052AD */  sw         $s2, 0x64($t2)
    /* 7BCCC 8008D4BC 1400AA8F */  lw         $t2, 0x14($sp)
    /* 7BCD0 8008D4C0 00000000 */  nop
    /* 7BCD4 8008D4C4 21904A02 */  addu       $s2, $s2, $t2
    /* 7BCD8 8008D4C8 12A00000 */  mflo       $s4
    /* 7BCDC 8008D4CC 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7BCE0 8008D4D0 03831000 */  sra        $s0, $s0, 12
    /* 7BCE4 8008D4D4 1800A302 */  mult       $s5, $v1
    /* 7BCE8 8008D4D8 680050AD */  sw         $s0, 0x68($t2)
    /* 7BCEC 8008D4DC 1800AA8F */  lw         $t2, 0x18($sp)
    /* 7BCF0 8008D4E0 00000000 */  nop
    /* 7BCF4 8008D4E4 21800A02 */  addu       $s0, $s0, $t2
    /* 7BCF8 8008D4E8 1000AA8F */  lw         $t2, 0x10($sp)
    /* 7BCFC 8008D4EC 039B1300 */  sra        $s3, $s3, 12
    /* 7BD00 8008D4F0 21986A02 */  addu       $s3, $s3, $t2
    /* 7BD04 8008D4F4 1400AA8F */  lw         $t2, 0x14($sp)
    /* 7BD08 8008D4F8 03A31400 */  sra        $s4, $s4, 12
    /* 7BD0C 8008D4FC 21A08A02 */  addu       $s4, $s4, $t2
    /* 7BD10 8008D500 1800AA8F */  lw         $t2, 0x18($sp)
    /* 7BD14 8008D504 12A80000 */  mflo       $s5
    /* 7BD18 8008D508 03AB1500 */  sra        $s5, $s5, 12
    /* 7BD1C 8008D50C 21A8AA02 */  addu       $s5, $s5, $t2
    /* 7BD20 8008D510 1C00AA8F */  lw         $t2, 0x1C($sp)
    /* 7BD24 8008D514 00000000 */  nop
    /* 7BD28 8008D518 0800438D */  lw         $v1, 0x8($t2)
    /* 7BD2C 8008D51C 0798F302 */  srav       $s3, $s3, $s7
    /* 7BD30 8008D520 540051AD */  sw         $s1, 0x54($t2)
    /* 7BD34 8008D524 580052AD */  sw         $s2, 0x58($t2)
    /* 7BD38 8008D528 5C0050AD */  sw         $s0, 0x5C($t2)
    /* 7BD3C 8008D52C 540073AC */  sw         $s3, 0x54($v1)
    /* 7BD40 8008D530 0800428D */  lw         $v0, 0x8($t2)
    /* 7BD44 8008D534 07A0F402 */  srav       $s4, $s4, $s7
    /* 7BD48 8008D538 580054AC */  sw         $s4, 0x58($v0)
    /* 7BD4C 8008D53C 0800438D */  lw         $v1, 0x8($t2)
    /* 7BD50 8008D540 07A8F502 */  srav       $s5, $s5, $s7
    /* 7BD54 8008D544 14360208 */  j          .L8008D850
    /* 7BD58 8008D548 5C0075AC */   sw        $s5, 0x5C($v1)
  .L8008D54C:
    /* 7BD5C 8008D54C 12300000 */  mflo       $a2
    /* 7BD60 8008D550 00000000 */  nop
    /* 7BD64 8008D554 00000000 */  nop
    /* 7BD68 8008D558 18001002 */  mult       $s0, $s0
    /* 7BD6C 8008D55C 40200500 */  sll        $a0, $a1, 1
    /* 7BD70 8008D560 12180000 */  mflo       $v1
    /* 7BD74 8008D564 2318C300 */  subu       $v1, $a2, $v1
    /* 7BD78 8008D568 21187100 */  addu       $v1, $v1, $s1
    /* 7BD7C 8008D56C 1A006400 */  div        $zero, $v1, $a0
    /* 7BD80 8008D570 12B00000 */  mflo       $s6
    /* 7BD84 8008D574 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7BD88 8008D578 00000000 */  nop
    /* 7BD8C 8008D57C 36004295 */  lhu        $v0, 0x36($t2)
    /* 7BD90 8008D580 00000000 */  nop
    /* 7BD94 8008D584 FFFE4230 */  andi       $v0, $v0, 0xFEFF
    /* 7BD98 8008D588 360042A5 */  sh         $v0, 0x36($t2)
    /* 7BD9C 8008D58C 1C00AA8F */  lw         $t2, 0x1C($sp)
    /* 7BDA0 8008D590 00000000 */  nop
    /* 7BDA4 8008D594 5800528D */  lw         $s2, 0x58($t2)
    /* 7BDA8 8008D598 5C00508D */  lw         $s0, 0x5C($t2)
    /* 7BDAC 8008D59C 5400518D */  lw         $s1, 0x54($t2)
    /* 7BDB0 8008D5A0 1000AA8F */  lw         $t2, 0x10($sp)
    /* 7BDB4 8008D5A4 0488F102 */  sllv       $s1, $s1, $s7
    /* 7BDB8 8008D5A8 23882A02 */  subu       $s1, $s1, $t2
    /* 7BDBC 8008D5AC 1400AA8F */  lw         $t2, 0x14($sp)
    /* 7BDC0 8008D5B0 0490F202 */  sllv       $s2, $s2, $s7
    /* 7BDC4 8008D5B4 23904A02 */  subu       $s2, $s2, $t2
    /* 7BDC8 8008D5B8 1800AA8F */  lw         $t2, 0x18($sp)
    /* 7BDCC 8008D5BC 0480F002 */  sllv       $s0, $s0, $s7
    /* 7BDD0 8008D5C0 0200C106 */  bgez       $s6, .L8008D5CC
    /* 7BDD4 8008D5C4 23800A02 */   subu      $s0, $s0, $t2
    /* 7BDD8 8008D5C8 23B01600 */  negu       $s6, $s6
  .L8008D5CC:
    /* 7BDDC 8008D5CC 5300C01A */  blez       $s6, .L8008D71C
    /* 7BDE0 8008D5D0 1800D602 */   mult      $s6, $s6
    /* 7BDE4 8008D5D4 12100000 */  mflo       $v0
    /* 7BDE8 8008D5D8 2320C200 */  subu       $a0, $a2, $v0
    /* 7BDEC 8008D5DC 05008104 */  bgez       $a0, .L8008D5F4
    /* 7BDF0 8008D5E0 00000000 */   nop
    /* 7BDF4 8008D5E4 E837020C */  jal        func_8008DFA0
    /* 7BDF8 8008D5E8 23200400 */   negu      $a0, $a0
    /* 7BDFC 8008D5EC 81350208 */  j          .L8008D604
    /* 7BE00 8008D5F0 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L8008D5F4:
    /* 7BE04 8008D5F4 E837020C */  jal        func_8008DFA0
    /* 7BE08 8008D5F8 00000000 */   nop
    /* 7BE0C 8008D5FC 23100200 */  negu       $v0, $v0
    /* 7BE10 8008D600 2C00A2AF */  sw         $v0, 0x2C($sp)
  .L8008D604:
    /* 7BE14 8008D604 18007602 */  mult       $s3, $s6
    /* 7BE18 8008D608 12500000 */  mflo       $t2
    /* 7BE1C 8008D60C 00000000 */  nop
    /* 7BE20 8008D610 00000000 */  nop
    /* 7BE24 8008D614 1800B602 */  mult       $s5, $s6
    /* 7BE28 8008D618 2000AAAF */  sw         $t2, 0x20($sp)
    /* 7BE2C 8008D61C 12500000 */  mflo       $t2
    /* 7BE30 8008D620 00000000 */  nop
    /* 7BE34 8008D624 00000000 */  nop
    /* 7BE38 8008D628 18009602 */  mult       $s4, $s6
    /* 7BE3C 8008D62C 2800AAAF */  sw         $t2, 0x28($sp)
    /* 7BE40 8008D630 12500000 */  mflo       $t2
    /* 7BE44 8008D634 2400AAAF */  sw         $t2, 0x24($sp)
    /* 7BE48 8008D638 2800AA8F */  lw         $t2, 0x28($sp)
    /* 7BE4C 8008D63C 00000000 */  nop
    /* 7BE50 8008D640 03530A00 */  sra        $t2, $t2, 12
    /* 7BE54 8008D644 18004A02 */  mult       $s2, $t2
    /* 7BE58 8008D648 2800AAAF */  sw         $t2, 0x28($sp)
    /* 7BE5C 8008D64C 2400AA8F */  lw         $t2, 0x24($sp)
    /* 7BE60 8008D650 12200000 */  mflo       $a0
    /* 7BE64 8008D654 03530A00 */  sra        $t2, $t2, 12
    /* 7BE68 8008D658 00000000 */  nop
    /* 7BE6C 8008D65C 18000A02 */  mult       $s0, $t2
    /* 7BE70 8008D660 2400AAAF */  sw         $t2, 0x24($sp)
    /* 7BE74 8008D664 2000AA8F */  lw         $t2, 0x20($sp)
    /* 7BE78 8008D668 12480000 */  mflo       $t1
    /* 7BE7C 8008D66C 03530A00 */  sra        $t2, $t2, 12
    /* 7BE80 8008D670 00000000 */  nop
    /* 7BE84 8008D674 18000A02 */  mult       $s0, $t2
    /* 7BE88 8008D678 2000AAAF */  sw         $t2, 0x20($sp)
    /* 7BE8C 8008D67C 12180000 */  mflo       $v1
    /* 7BE90 8008D680 2800AA8F */  lw         $t2, 0x28($sp)
    /* 7BE94 8008D684 00000000 */  nop
    /* 7BE98 8008D688 18002A02 */  mult       $s1, $t2
    /* 7BE9C 8008D68C 12280000 */  mflo       $a1
    /* 7BEA0 8008D690 2400AA8F */  lw         $t2, 0x24($sp)
    /* 7BEA4 8008D694 00000000 */  nop
    /* 7BEA8 8008D698 18002A02 */  mult       $s1, $t2
    /* 7BEAC 8008D69C 12100000 */  mflo       $v0
    /* 7BEB0 8008D6A0 2000AA8F */  lw         $t2, 0x20($sp)
    /* 7BEB4 8008D6A4 00000000 */  nop
    /* 7BEB8 8008D6A8 18004A02 */  mult       $s2, $t2
    /* 7BEBC 8008D6AC 12300000 */  mflo       $a2
    /* 7BEC0 8008D6B0 23186500 */  subu       $v1, $v1, $a1
    /* 7BEC4 8008D6B4 0718E302 */  srav       $v1, $v1, $s7
    /* 7BEC8 8008D6B8 18007500 */  mult       $v1, $s5
    /* 7BECC 8008D6BC 12400000 */  mflo       $t0
    /* 7BED0 8008D6C0 23104600 */  subu       $v0, $v0, $a2
    /* 7BED4 8008D6C4 0710E202 */  srav       $v0, $v0, $s7
    /* 7BED8 8008D6C8 18005400 */  mult       $v0, $s4
    /* 7BEDC 8008D6CC 12380000 */  mflo       $a3
    /* 7BEE0 8008D6D0 00000000 */  nop
    /* 7BEE4 8008D6D4 00000000 */  nop
    /* 7BEE8 8008D6D8 18005300 */  mult       $v0, $s3
    /* 7BEEC 8008D6DC 12100000 */  mflo       $v0
    /* 7BEF0 8008D6E0 23208900 */  subu       $a0, $a0, $t1
    /* 7BEF4 8008D6E4 0720E402 */  srav       $a0, $a0, $s7
    /* 7BEF8 8008D6E8 18009500 */  mult       $a0, $s5
    /* 7BEFC 8008D6EC 12280000 */  mflo       $a1
    /* 7BF00 8008D6F0 00000000 */  nop
    /* 7BF04 8008D6F4 00000000 */  nop
    /* 7BF08 8008D6F8 18009400 */  mult       $a0, $s4
    /* 7BF0C 8008D6FC 12200000 */  mflo       $a0
    /* 7BF10 8008D700 00000000 */  nop
    /* 7BF14 8008D704 00000000 */  nop
    /* 7BF18 8008D708 18007300 */  mult       $v1, $s3
    /* 7BF1C 8008D70C 23880701 */  subu       $s1, $t0, $a3
    /* 7BF20 8008D710 23904500 */  subu       $s2, $v0, $a1
    /* 7BF24 8008D714 12180000 */  mflo       $v1
    /* 7BF28 8008D718 23808300 */  subu       $s0, $a0, $v1
  .L8008D71C:
    /* 7BF2C 8008D71C 21202002 */  addu       $a0, $s1, $zero
    /* 7BF30 8008D720 21284002 */  addu       $a1, $s2, $zero
    /* 7BF34 8008D724 AC34020C */  jal        func_8008D2B0
    /* 7BF38 8008D728 21300002 */   addu      $a2, $s0, $zero
    /* 7BF3C 8008D72C 03230200 */  sra        $a0, $v0, 12
    /* 7BF40 8008D730 0B008010 */  beqz       $a0, .L8008D760
    /* 7BF44 8008D734 00000000 */   nop
    /* 7BF48 8008D738 1A002402 */  div        $zero, $s1, $a0
    /* 7BF4C 8008D73C 12880000 */  mflo       $s1
    /* 7BF50 8008D740 00000000 */  nop
    /* 7BF54 8008D744 00000000 */  nop
    /* 7BF58 8008D748 1A004402 */  div        $zero, $s2, $a0
    /* 7BF5C 8008D74C 12900000 */  mflo       $s2
    /* 7BF60 8008D750 00000000 */  nop
    /* 7BF64 8008D754 00000000 */  nop
    /* 7BF68 8008D758 1A000402 */  div        $zero, $s0, $a0
    /* 7BF6C 8008D75C 12800000 */  mflo       $s0
  .L8008D760:
    /* 7BF70 8008D760 00000000 */  nop
    /* 7BF74 8008D764 1700C01A */  blez       $s6, .L8008D7C4
    /* 7BF78 8008D768 18003E02 */   mult      $s1, $fp
    /* 7BF7C 8008D76C 2C00AA8F */  lw         $t2, 0x2C($sp)
    /* 7BF80 8008D770 00000000 */  nop
    /* 7BF84 8008D774 18002A02 */  mult       $s1, $t2
    /* 7BF88 8008D778 12880000 */  mflo       $s1
    /* 7BF8C 8008D77C 00000000 */  nop
    /* 7BF90 8008D780 00000000 */  nop
    /* 7BF94 8008D784 18004A02 */  mult       $s2, $t2
    /* 7BF98 8008D788 12900000 */  mflo       $s2
    /* 7BF9C 8008D78C 00000000 */  nop
    /* 7BFA0 8008D790 00000000 */  nop
    /* 7BFA4 8008D794 18000A02 */  mult       $s0, $t2
    /* 7BFA8 8008D798 2000AA8F */  lw         $t2, 0x20($sp)
    /* 7BFAC 8008D79C 038B1100 */  sra        $s1, $s1, 12
    /* 7BFB0 8008D7A0 21882A02 */  addu       $s1, $s1, $t2
    /* 7BFB4 8008D7A4 2400AA8F */  lw         $t2, 0x24($sp)
    /* 7BFB8 8008D7A8 03931200 */  sra        $s2, $s2, 12
    /* 7BFBC 8008D7AC 21904A02 */  addu       $s2, $s2, $t2
    /* 7BFC0 8008D7B0 2800AA8F */  lw         $t2, 0x28($sp)
    /* 7BFC4 8008D7B4 12800000 */  mflo       $s0
    /* 7BFC8 8008D7B8 03831000 */  sra        $s0, $s0, 12
    /* 7BFCC 8008D7BC FD350208 */  j          .L8008D7F4
    /* 7BFD0 8008D7C0 21800A02 */   addu      $s0, $s0, $t2
  .L8008D7C4:
    /* 7BFD4 8008D7C4 12880000 */  mflo       $s1
    /* 7BFD8 8008D7C8 00000000 */  nop
    /* 7BFDC 8008D7CC 00000000 */  nop
    /* 7BFE0 8008D7D0 18005E02 */  mult       $s2, $fp
    /* 7BFE4 8008D7D4 12900000 */  mflo       $s2
    /* 7BFE8 8008D7D8 00000000 */  nop
    /* 7BFEC 8008D7DC 00000000 */  nop
    /* 7BFF0 8008D7E0 18001E02 */  mult       $s0, $fp
    /* 7BFF4 8008D7E4 038B1100 */  sra        $s1, $s1, 12
    /* 7BFF8 8008D7E8 03931200 */  sra        $s2, $s2, 12
    /* 7BFFC 8008D7EC 12800000 */  mflo       $s0
    /* 7C000 8008D7F0 03831000 */  sra        $s0, $s0, 12
  .L8008D7F4:
    /* 7C004 8008D7F4 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7C008 8008D7F8 00000000 */  nop
    /* 7C00C 8008D7FC 600051AD */  sw         $s1, 0x60($t2)
    /* 7C010 8008D800 1000AA8F */  lw         $t2, 0x10($sp)
    /* 7C014 8008D804 00000000 */  nop
    /* 7C018 8008D808 21882A02 */  addu       $s1, $s1, $t2
    /* 7C01C 8008D80C 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7C020 8008D810 00000000 */  nop
    /* 7C024 8008D814 640052AD */  sw         $s2, 0x64($t2)
    /* 7C028 8008D818 1400AA8F */  lw         $t2, 0x14($sp)
    /* 7C02C 8008D81C 00000000 */  nop
    /* 7C030 8008D820 21904A02 */  addu       $s2, $s2, $t2
    /* 7C034 8008D824 5800AA8F */  lw         $t2, 0x58($sp)
    /* 7C038 8008D828 00000000 */  nop
    /* 7C03C 8008D82C 680050AD */  sw         $s0, 0x68($t2)
    /* 7C040 8008D830 1800AA8F */  lw         $t2, 0x18($sp)
    /* 7C044 8008D834 00000000 */  nop
    /* 7C048 8008D838 21800A02 */  addu       $s0, $s0, $t2
    /* 7C04C 8008D83C 1C00AA8F */  lw         $t2, 0x1C($sp)
    /* 7C050 8008D840 00000000 */  nop
    /* 7C054 8008D844 540051AD */  sw         $s1, 0x54($t2)
    /* 7C058 8008D848 580052AD */  sw         $s2, 0x58($t2)
    /* 7C05C 8008D84C 5C0050AD */  sw         $s0, 0x5C($t2)
  .L8008D850:
    /* 7C060 8008D850 5400BF8F */  lw         $ra, 0x54($sp)
    /* 7C064 8008D854 5000BE8F */  lw         $fp, 0x50($sp)
    /* 7C068 8008D858 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 7C06C 8008D85C 4800B68F */  lw         $s6, 0x48($sp)
    /* 7C070 8008D860 4400B58F */  lw         $s5, 0x44($sp)
    /* 7C074 8008D864 4000B48F */  lw         $s4, 0x40($sp)
    /* 7C078 8008D868 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 7C07C 8008D86C 3800B28F */  lw         $s2, 0x38($sp)
    /* 7C080 8008D870 3400B18F */  lw         $s1, 0x34($sp)
    /* 7C084 8008D874 3000B08F */  lw         $s0, 0x30($sp)
    /* 7C088 8008D878 0800E003 */  jr         $ra
    /* 7C08C 8008D87C 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_8008D2DC
