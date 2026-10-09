nonmatching func_8001B974, 0xB2C

glabel func_8001B974
    /* A184 8001B974 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* A188 8001B978 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* A18C 8001B97C 6800BEAF */  sw         $fp, 0x68($sp)
    /* A190 8001B980 6400B7AF */  sw         $s7, 0x64($sp)
    /* A194 8001B984 6000B6AF */  sw         $s6, 0x60($sp)
    /* A198 8001B988 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* A19C 8001B98C 5800B4AF */  sw         $s4, 0x58($sp)
    /* A1A0 8001B990 5400B3AF */  sw         $s3, 0x54($sp)
    /* A1A4 8001B994 5000B2AF */  sw         $s2, 0x50($sp)
    /* A1A8 8001B998 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* A1AC 8001B99C 4800B0AF */  sw         $s0, 0x48($sp)
    /* A1B0 8001B9A0 3000A0AF */  sw         $zero, 0x30($sp)
    /* A1B4 8001B9A4 7000A4AF */  sw         $a0, 0x70($sp)
    /* A1B8 8001B9A8 7400A5AF */  sw         $a1, 0x74($sp)
    /* A1BC 8001B9AC 7800A6AF */  sw         $a2, 0x78($sp)
    /* A1C0 8001B9B0 7C00A7AF */  sw         $a3, 0x7C($sp)
    /* A1C4 8001B9B4 7803C38C */  lw         $v1, 0x378($a2)
    /* A1C8 8001B9B8 0C00A004 */  bltz       $a1, .L8001B9EC
    /* A1CC 8001B9BC 40100500 */   sll       $v0, $a1, 1
    /* A1D0 8001B9C0 21104500 */  addu       $v0, $v0, $a1
    /* A1D4 8001B9C4 80100200 */  sll        $v0, $v0, 2
    /* A1D8 8001B9C8 23104500 */  subu       $v0, $v0, $a1
    /* A1DC 8001B9CC 80100200 */  sll        $v0, $v0, 2
    /* A1E0 8001B9D0 23104500 */  subu       $v0, $v0, $a1
    /* A1E4 8001B9D4 80100200 */  sll        $v0, $v0, 2
    /* A1E8 8001B9D8 21104500 */  addu       $v0, $v0, $a1
    /* A1EC 8001B9DC C0100200 */  sll        $v0, $v0, 3
    /* A1F0 8001B9E0 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* A1F4 8001B9E4 21186200 */  addu       $v1, $v1, $v0
    /* A1F8 8001B9E8 3000A3AF */  sw         $v1, 0x30($sp)
  .L8001B9EC:
    /* A1FC 8001B9EC 7000A98F */  lw         $t1, 0x70($sp)
    /* A200 8001B9F0 00000000 */  nop
    /* A204 8001B9F4 3400228D */  lw         $v0, 0x34($t1)
    /* A208 8001B9F8 00000000 */  nop
    /* A20C 8001B9FC 9C024010 */  beqz       $v0, .L8001C470
    /* A210 8001BA00 00000000 */   nop
    /* A214 8001BA04 3000AA8F */  lw         $t2, 0x30($sp)
    /* A218 8001BA08 00000000 */  nop
    /* A21C 8001BA0C 3000508D */  lw         $s0, 0x30($t2)
    /* A220 8001BA10 00000000 */  nop
    /* A224 8001BA14 B4011126 */  addiu      $s1, $s0, 0x1B4
    /* A228 8001BA18 6800228E */  lw         $v0, 0x68($s1)
    /* A22C 8001BA1C 64000926 */  addiu      $t1, $s0, 0x64
    /* A230 8001BA20 C0014010 */  beqz       $v0, .L8001C124
    /* A234 8001BA24 3400A9AF */   sw        $t1, 0x34($sp)
    /* A238 8001BA28 C8011526 */  addiu      $s5, $s0, 0x1C8
    /* A23C 8001BA2C 2120A002 */  addu       $a0, $s5, $zero
    /* A240 8001BA30 21282001 */  addu       $a1, $t1, $zero
    /* A244 8001BA34 4000238E */  lw         $v1, 0x40($s1)
    /* A248 8001BA38 7000AA8F */  lw         $t2, 0x70($sp)
    /* A24C 8001BA3C 4800268E */  lw         $a2, 0x48($s1)
    /* A250 8001BA40 80100300 */  sll        $v0, $v1, 2
    /* A254 8001BA44 21104300 */  addu       $v0, $v0, $v1
    /* A258 8001BA48 80100200 */  sll        $v0, $v0, 2
    /* A25C 8001BA4C 80180600 */  sll        $v1, $a2, 2
    /* A260 8001BA50 21186600 */  addu       $v1, $v1, $a2
    /* A264 8001BA54 2800478D */  lw         $a3, 0x28($t2)
    /* A268 8001BA58 80180300 */  sll        $v1, $v1, 2
    /* A26C 8001BA5C 2198E200 */  addu       $s3, $a3, $v0
    /* A270 8001BA60 E266020C */  jal        func_80099B88
    /* A274 8001BA64 21A0E300 */   addu      $s4, $a3, $v1
    /* A278 8001BA68 2000268E */  lw         $a2, 0x20($s1)
    /* A27C 8001BA6C E0011626 */  addiu      $s6, $s0, 0x1E0
    /* A280 8001BA70 2130C200 */  addu       $a2, $a2, $v0
    /* A284 8001BA74 3D00C104 */  bgez       $a2, .L8001BB6C
    /* A288 8001BA78 240026AE */   sw        $a2, 0x24($s1)
    /* A28C 8001BA7C 2190C002 */  addu       $s2, $s6, $zero
    /* A290 8001BA80 2180A002 */  addu       $s0, $s5, $zero
    /* A294 8001BA84 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* A298 8001BA88 A0F35524 */  addiu      $s5, $v0, %lo(D_800BF3A0)
    /* A29C 8001BA8C 0200B726 */  addiu      $s7, $s5, 0x2
  .L8001BA90:
    /* A2A0 8001BA90 1400228E */  lw         $v0, 0x14($s1)
    /* A2A4 8001BA94 0400038E */  lw         $v1, 0x4($s0)
    /* A2A8 8001BA98 0800048E */  lw         $a0, 0x8($s0)
    /* A2AC 8001BA9C 2C0022AE */  sw         $v0, 0x2C($s1)
    /* A2B0 8001BAA0 040043AE */  sw         $v1, 0x4($s2)
    /* A2B4 8001BAA4 080044AE */  sw         $a0, 0x8($s2)
    /* A2B8 8001BAA8 4400228E */  lw         $v0, 0x44($s1)
    /* A2BC 8001BAAC 2000258E */  lw         $a1, 0x20($s1)
    /* A2C0 8001BAB0 4000238E */  lw         $v1, 0x40($s1)
    /* A2C4 8001BAB4 4C0022AE */  sw         $v0, 0x4C($s1)
    /* A2C8 8001BAB8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A2CC 8001BABC 380025AE */  sw         $a1, 0x38($s1)
    /* A2D0 8001BAC0 480023AE */  sw         $v1, 0x48($s1)
    /* A2D4 8001BAC4 07004104 */  bgez       $v0, .L8001BAE4
    /* A2D8 8001BAC8 440022AE */   sw        $v0, 0x44($s1)
    /* A2DC 8001BACC 06016014 */  bnez       $v1, .L8001BEE8
    /* A2E0 8001BAD0 00000000 */   nop
    /* A2E4 8001BAD4 0000628E */  lw         $v0, 0x0($s3)
    /* A2E8 8001BAD8 00000000 */  nop
    /* A2EC 8001BADC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A2F0 8001BAE0 440022AE */  sw         $v0, 0x44($s1)
  .L8001BAE4:
    /* A2F4 8001BAE4 4400228E */  lw         $v0, 0x44($s1)
    /* A2F8 8001BAE8 0400638E */  lw         $v1, 0x4($s3)
    /* A2FC 8001BAEC 80280200 */  sll        $a1, $v0, 2
    /* A300 8001BAF0 2128A200 */  addu       $a1, $a1, $v0
    /* A304 8001BAF4 80280500 */  sll        $a1, $a1, 2
    /* A308 8001BAF8 2128A300 */  addu       $a1, $a1, $v1
    /* A30C 8001BAFC 1000A294 */  lhu        $v0, 0x10($a1)
    /* A310 8001BB00 00000000 */  nop
    /* A314 8001BB04 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A318 8001BB08 80100200 */  sll        $v0, $v0, 2
    /* A31C 8001BB0C 21105700 */  addu       $v0, $v0, $s7
    /* A320 8001BB10 00004384 */  lh         $v1, 0x0($v0)
    /* A324 8001BB14 00000000 */  nop
    /* A328 8001BB18 140023AE */  sw         $v1, 0x14($s1)
    /* A32C 8001BB1C 040000AE */  sw         $zero, 0x4($s0)
    /* A330 8001BB20 1000A294 */  lhu        $v0, 0x10($a1)
    /* A334 8001BB24 00000000 */  nop
    /* A338 8001BB28 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A33C 8001BB2C 80100200 */  sll        $v0, $v0, 2
    /* A340 8001BB30 21105500 */  addu       $v0, $v0, $s5
    /* A344 8001BB34 00004384 */  lh         $v1, 0x0($v0)
    /* A348 8001BB38 21200002 */  addu       $a0, $s0, $zero
    /* A34C 8001BB3C E266020C */  jal        func_80099B88
    /* A350 8001BB40 080003AE */   sw        $v1, 0x8($s0)
    /* A354 8001BB44 21200002 */  addu       $a0, $s0, $zero
    /* A358 8001BB48 3400A58F */  lw         $a1, 0x34($sp)
    /* A35C 8001BB4C 23100200 */  negu       $v0, $v0
    /* A360 8001BB50 E266020C */  jal        func_80099B88
    /* A364 8001BB54 200022AE */   sw        $v0, 0x20($s1)
    /* A368 8001BB58 2000238E */  lw         $v1, 0x20($s1)
    /* A36C 8001BB5C 00000000 */  nop
    /* A370 8001BB60 21186200 */  addu       $v1, $v1, $v0
    /* A374 8001BB64 CAFF6004 */  bltz       $v1, .L8001BA90
    /* A378 8001BB68 240023AE */   sw        $v1, 0x24($s1)
  .L8001BB6C:
    /* A37C 8001BB6C 3400A58F */  lw         $a1, 0x34($sp)
    /* A380 8001BB70 E266020C */  jal        func_80099B88
    /* A384 8001BB74 2120C002 */   addu      $a0, $s6, $zero
    /* A388 8001BB78 3800238E */  lw         $v1, 0x38($s1)
    /* A38C 8001BB7C 00000000 */  nop
    /* A390 8001BB80 21186200 */  addu       $v1, $v1, $v0
    /* A394 8001BB84 23180300 */  negu       $v1, $v1
    /* A398 8001BB88 B600601C */  bgtz       $v1, .L8001BE64
    /* A39C 8001BB8C 3C0023AE */   sw        $v1, 0x3C($s1)
    /* A3A0 8001BB90 14003226 */  addiu      $s2, $s1, 0x14
    /* A3A4 8001BB94 2180C002 */  addu       $s0, $s6, $zero
    /* A3A8 8001BB98 0C80093C */  lui        $t1, %hi(D_800BF3A0)
    /* A3AC 8001BB9C 04001E24 */  addiu      $fp, $zero, 0x4
    /* A3B0 8001BBA0 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* A3B4 8001BBA4 A0F33625 */  addiu      $s6, $t1, %lo(D_800BF3A0)
    /* A3B8 8001BBA8 0200D726 */  addiu      $s7, $s6, 0x2
  .L8001BBAC:
    /* A3BC 8001BBAC 2C00228E */  lw         $v0, 0x2C($s1)
    /* A3C0 8001BBB0 0400038E */  lw         $v1, 0x4($s0)
    /* A3C4 8001BBB4 0800048E */  lw         $a0, 0x8($s0)
    /* A3C8 8001BBB8 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* A3CC 8001BBBC 140022AE */  sw         $v0, 0x14($s1)
    /* A3D0 8001BBC0 040043AE */  sw         $v1, 0x4($s2)
    /* A3D4 8001BBC4 080044AE */  sw         $a0, 0x8($s2)
    /* A3D8 8001BBC8 3800258E */  lw         $a1, 0x38($s1)
    /* A3DC 8001BBCC 4800238E */  lw         $v1, 0x48($s1)
    /* A3E0 8001BBD0 4C00228E */  lw         $v0, 0x4C($s1)
    /* A3E4 8001BBD4 01000A24 */  addiu      $t2, $zero, 0x1
    /* A3E8 8001BBD8 440022AE */  sw         $v0, 0x44($s1)
    /* A3EC 8001BBDC 01004224 */  addiu      $v0, $v0, 0x1
    /* A3F0 8001BBE0 200025AE */  sw         $a1, 0x20($s1)
    /* A3F4 8001BBE4 400023AE */  sw         $v1, 0x40($s1)
    /* A3F8 8001BBE8 28006A14 */  bne        $v1, $t2, .L8001BC8C
    /* A3FC 8001BBEC 4C0022AE */   sw        $v0, 0x4C($s1)
    /* A400 8001BBF0 3000A98F */  lw         $t1, 0x30($sp)
    /* A404 8001BBF4 00000000 */  nop
    /* A408 8001BBF8 0000228D */  lw         $v0, 0x0($t1)
    /* A40C 8001BBFC 00000000 */  nop
    /* A410 8001BC00 80160200 */  sll        $v0, $v0, 26
    /* A414 8001BC04 C3160200 */  sra        $v0, $v0, 27
    /* A418 8001BC08 20004314 */  bne        $v0, $v1, .L8001BC8C
    /* A41C 8001BC0C 02000A24 */   addiu     $t2, $zero, 0x2
    /* A420 8001BC10 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* A424 8001BC14 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* A428 8001BC18 00000000 */  nop
    /* A42C 8001BC1C 03008A10 */  beq        $a0, $t2, .L8001BC2C
    /* A430 8001BC20 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* A434 8001BC24 03008014 */  bnez       $a0, .L8001BC34
    /* A438 8001BC28 00000000 */   nop
  .L8001BC2C:
    /* A43C 8001BC2C 106F0008 */  j          .L8001BC40
    /* A440 8001BC30 1D000324 */   addiu     $v1, $zero, 0x1D
  .L8001BC34:
    /* A444 8001BC34 02009E14 */  bne        $a0, $fp, .L8001BC40
    /* A448 8001BC38 00000000 */   nop
    /* A44C 8001BC3C 13000324 */  addiu      $v1, $zero, 0x13
  .L8001BC40:
    /* A450 8001BC40 12007510 */  beq        $v1, $s5, .L8001BC8C
    /* A454 8001BC44 00000000 */   nop
    /* A458 8001BC48 4C00228E */  lw         $v0, 0x4C($s1)
    /* A45C 8001BC4C 00000000 */  nop
    /* A460 8001BC50 2A104300 */  slt        $v0, $v0, $v1
    /* A464 8001BC54 0D004014 */  bnez       $v0, .L8001BC8C
    /* A468 8001BC58 21108000 */   addu      $v0, $a0, $zero
    /* A46C 8001BC5C 02000924 */  addiu      $t1, $zero, 0x2
    /* A470 8001BC60 03004914 */  bne        $v0, $t1, .L8001BC70
    /* A474 8001BC64 00000000 */   nop
    /* A478 8001BC68 236F0008 */  j          .L8001BC8C
    /* A47C 8001BC6C E8000624 */   addiu     $a2, $zero, 0xE8
  .L8001BC70:
    /* A480 8001BC70 03004014 */  bnez       $v0, .L8001BC80
    /* A484 8001BC74 00000000 */   nop
    /* A488 8001BC78 236F0008 */  j          .L8001BC8C
    /* A48C 8001BC7C 46000624 */   addiu     $a2, $zero, 0x46
  .L8001BC80:
    /* A490 8001BC80 02009E14 */  bne        $a0, $fp, .L8001BC8C
    /* A494 8001BC84 00000000 */   nop
    /* A498 8001BC88 CD010624 */  addiu      $a2, $zero, 0x1CD
  .L8001BC8C:
    /* A49C 8001BC8C 4C00248E */  lw         $a0, 0x4C($s1)
    /* A4A0 8001BC90 0000828E */  lw         $v0, 0x0($s4)
    /* A4A4 8001BC94 00000000 */  nop
    /* A4A8 8001BC98 2A108200 */  slt        $v0, $a0, $v0
    /* A4AC 8001BC9C 03004010 */  beqz       $v0, .L8001BCAC
    /* A4B0 8001BCA0 00000000 */   nop
    /* A4B4 8001BCA4 3F00D510 */  beq        $a2, $s5, .L8001BDA4
    /* A4B8 8001BCA8 80280400 */   sll       $a1, $a0, 2
  .L8001BCAC:
    /* A4BC 8001BCAC 4800228E */  lw         $v0, 0x48($s1)
    /* A4C0 8001BCB0 00000000 */  nop
    /* A4C4 8001BCB4 03004014 */  bnez       $v0, .L8001BCC4
    /* A4C8 8001BCB8 21200000 */   addu      $a0, $zero, $zero
    /* A4CC 8001BCBC 686F0008 */  j          .L8001BDA0
    /* A4D0 8001BCC0 4C0020AE */   sw        $zero, 0x4C($s1)
  .L8001BCC4:
    /* A4D4 8001BCC4 0300D510 */  beq        $a2, $s5, .L8001BCD4
    /* A4D8 8001BCC8 00000000 */   nop
    /* A4DC 8001BCCC 386F0008 */  j          .L8001BCE0
    /* A4E0 8001BCD0 4C0026AE */   sw        $a2, 0x4C($s1)
  .L8001BCD4:
    /* A4E4 8001BCD4 1000828E */  lw         $v0, 0x10($s4)
    /* A4E8 8001BCD8 00000000 */  nop
    /* A4EC 8001BCDC 4C0022AE */  sw         $v0, 0x4C($s1)
  .L8001BCE0:
    /* A4F0 8001BCE0 4C00228E */  lw         $v0, 0x4C($s1)
    /* A4F4 8001BCE4 480020AE */  sw         $zero, 0x48($s1)
    /* A4F8 8001BCE8 400020AE */  sw         $zero, 0x40($s1)
    /* A4FC 8001BCEC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A500 8001BCF0 09004104 */  bgez       $v0, .L8001BD18
    /* A504 8001BCF4 440022AE */   sw        $v0, 0x44($s1)
    /* A508 8001BCF8 7000AA8F */  lw         $t2, 0x70($sp)
    /* A50C 8001BCFC 00000000 */  nop
    /* A510 8001BD00 2800438D */  lw         $v1, 0x28($t2)
    /* A514 8001BD04 00000000 */  nop
    /* A518 8001BD08 0000628C */  lw         $v0, 0x0($v1)
    /* A51C 8001BD0C 00000000 */  nop
    /* A520 8001BD10 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A524 8001BD14 440022AE */  sw         $v0, 0x44($s1)
  .L8001BD18:
    /* A528 8001BD18 4000238E */  lw         $v1, 0x40($s1)
    /* A52C 8001BD1C 7000A98F */  lw         $t1, 0x70($sp)
    /* A530 8001BD20 80100300 */  sll        $v0, $v1, 2
    /* A534 8001BD24 21104300 */  addu       $v0, $v0, $v1
    /* A538 8001BD28 80100200 */  sll        $v0, $v0, 2
    /* A53C 8001BD2C 2800248D */  lw         $a0, 0x28($t1)
    /* A540 8001BD30 4400238E */  lw         $v1, 0x44($s1)
    /* A544 8001BD34 21104400 */  addu       $v0, $v0, $a0
    /* A548 8001BD38 80280300 */  sll        $a1, $v1, 2
    /* A54C 8001BD3C 2128A300 */  addu       $a1, $a1, $v1
    /* A550 8001BD40 0400448C */  lw         $a0, 0x4($v0)
    /* A554 8001BD44 80280500 */  sll        $a1, $a1, 2
    /* A558 8001BD48 2128A400 */  addu       $a1, $a1, $a0
    /* A55C 8001BD4C 1000A294 */  lhu        $v0, 0x10($a1)
    /* A560 8001BD50 00000000 */  nop
    /* A564 8001BD54 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A568 8001BD58 80100200 */  sll        $v0, $v0, 2
    /* A56C 8001BD5C 21105700 */  addu       $v0, $v0, $s7
    /* A570 8001BD60 00004384 */  lh         $v1, 0x0($v0)
    /* A574 8001BD64 00000000 */  nop
    /* A578 8001BD68 140023AE */  sw         $v1, 0x14($s1)
    /* A57C 8001BD6C 040040AE */  sw         $zero, 0x4($s2)
    /* A580 8001BD70 1000A294 */  lhu        $v0, 0x10($a1)
    /* A584 8001BD74 00000000 */  nop
    /* A588 8001BD78 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A58C 8001BD7C 80100200 */  sll        $v0, $v0, 2
    /* A590 8001BD80 21105600 */  addu       $v0, $v0, $s6
    /* A594 8001BD84 00004384 */  lh         $v1, 0x0($v0)
    /* A598 8001BD88 21204002 */  addu       $a0, $s2, $zero
    /* A59C 8001BD8C E266020C */  jal        func_80099B88
    /* A5A0 8001BD90 080043AE */   sw        $v1, 0x8($s2)
    /* A5A4 8001BD94 4C00248E */  lw         $a0, 0x4C($s1)
    /* A5A8 8001BD98 23100200 */  negu       $v0, $v0
    /* A5AC 8001BD9C 200022AE */  sw         $v0, 0x20($s1)
  .L8001BDA0:
    /* A5B0 8001BDA0 80280400 */  sll        $a1, $a0, 2
  .L8001BDA4:
    /* A5B4 8001BDA4 2128A400 */  addu       $a1, $a1, $a0
    /* A5B8 8001BDA8 80280500 */  sll        $a1, $a1, 2
    /* A5BC 8001BDAC 4800238E */  lw         $v1, 0x48($s1)
    /* A5C0 8001BDB0 7000AA8F */  lw         $t2, 0x70($sp)
    /* A5C4 8001BDB4 80100300 */  sll        $v0, $v1, 2
    /* A5C8 8001BDB8 21104300 */  addu       $v0, $v0, $v1
    /* A5CC 8001BDBC 2800488D */  lw         $t0, 0x28($t2)
    /* A5D0 8001BDC0 80100200 */  sll        $v0, $v0, 2
    /* A5D4 8001BDC4 21A00201 */  addu       $s4, $t0, $v0
    /* A5D8 8001BDC8 0400838E */  lw         $v1, 0x4($s4)
    /* A5DC 8001BDCC 4000278E */  lw         $a3, 0x40($s1)
    /* A5E0 8001BDD0 2128A300 */  addu       $a1, $a1, $v1
    /* A5E4 8001BDD4 80180700 */  sll        $v1, $a3, 2
    /* A5E8 8001BDD8 1000A294 */  lhu        $v0, 0x10($a1)
    /* A5EC 8001BDDC 21186700 */  addu       $v1, $v1, $a3
    /* A5F0 8001BDE0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A5F4 8001BDE4 80100200 */  sll        $v0, $v0, 2
    /* A5F8 8001BDE8 21105700 */  addu       $v0, $v0, $s7
    /* A5FC 8001BDEC 00004684 */  lh         $a2, 0x0($v0)
    /* A600 8001BDF0 80180300 */  sll        $v1, $v1, 2
    /* A604 8001BDF4 2C0026AE */  sw         $a2, 0x2C($s1)
    /* A608 8001BDF8 040000AE */  sw         $zero, 0x4($s0)
    /* A60C 8001BDFC 1000A294 */  lhu        $v0, 0x10($a1)
    /* A610 8001BE00 21980301 */  addu       $s3, $t0, $v1
    /* A614 8001BE04 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A618 8001BE08 80100200 */  sll        $v0, $v0, 2
    /* A61C 8001BE0C 21105600 */  addu       $v0, $v0, $s6
    /* A620 8001BE10 00004384 */  lh         $v1, 0x0($v0)
    /* A624 8001BE14 21200002 */  addu       $a0, $s0, $zero
    /* A628 8001BE18 E266020C */  jal        func_80099B88
    /* A62C 8001BE1C 080003AE */   sw        $v1, 0x8($s0)
    /* A630 8001BE20 21200002 */  addu       $a0, $s0, $zero
    /* A634 8001BE24 3400A58F */  lw         $a1, 0x34($sp)
    /* A638 8001BE28 23100200 */  negu       $v0, $v0
    /* A63C 8001BE2C E266020C */  jal        func_80099B88
    /* A640 8001BE30 380022AE */   sw        $v0, 0x38($s1)
    /* A644 8001BE34 21204002 */  addu       $a0, $s2, $zero
    /* A648 8001BE38 3800238E */  lw         $v1, 0x38($s1)
    /* A64C 8001BE3C 3400A58F */  lw         $a1, 0x34($sp)
    /* A650 8001BE40 21186200 */  addu       $v1, $v1, $v0
    /* A654 8001BE44 23180300 */  negu       $v1, $v1
    /* A658 8001BE48 E266020C */  jal        func_80099B88
    /* A65C 8001BE4C 3C0023AE */   sw        $v1, 0x3C($s1)
    /* A660 8001BE50 2000268E */  lw         $a2, 0x20($s1)
    /* A664 8001BE54 3C00238E */  lw         $v1, 0x3C($s1)
    /* A668 8001BE58 2130C200 */  addu       $a2, $a2, $v0
    /* A66C 8001BE5C 53FF6018 */  blez       $v1, .L8001BBAC
    /* A670 8001BE60 240026AE */   sw        $a2, 0x24($s1)
  .L8001BE64:
    /* A674 8001BE64 4400238E */  lw         $v1, 0x44($s1)
    /* A678 8001BE68 0400648E */  lw         $a0, 0x4($s3)
    /* A67C 8001BE6C 4800258E */  lw         $a1, 0x48($s1)
    /* A680 8001BE70 7000A98F */  lw         $t1, 0x70($sp)
    /* A684 8001BE74 80100300 */  sll        $v0, $v1, 2
    /* A688 8001BE78 21104300 */  addu       $v0, $v0, $v1
    /* A68C 8001BE7C 80100200 */  sll        $v0, $v0, 2
    /* A690 8001BE80 21104400 */  addu       $v0, $v0, $a0
    /* A694 8001BE84 80180500 */  sll        $v1, $a1, 2
    /* A698 8001BE88 21186500 */  addu       $v1, $v1, $a1
    /* A69C 8001BE8C 80180300 */  sll        $v1, $v1, 2
    /* A6A0 8001BE90 4C00258E */  lw         $a1, 0x4C($s1)
    /* A6A4 8001BE94 0C00468C */  lw         $a2, 0xC($v0)
    /* A6A8 8001BE98 80100500 */  sll        $v0, $a1, 2
    /* A6AC 8001BE9C 540026AE */  sw         $a2, 0x54($s1)
    /* A6B0 8001BEA0 2800248D */  lw         $a0, 0x28($t1)
    /* A6B4 8001BEA4 21104500 */  addu       $v0, $v0, $a1
    /* A6B8 8001BEA8 21186400 */  addu       $v1, $v1, $a0
    /* A6BC 8001BEAC 0400648C */  lw         $a0, 0x4($v1)
    /* A6C0 8001BEB0 80100200 */  sll        $v0, $v0, 2
    /* A6C4 8001BEB4 21104400 */  addu       $v0, $v0, $a0
    /* A6C8 8001BEB8 0C00438C */  lw         $v1, 0xC($v0)
    /* A6CC 8001BEBC 00000000 */  nop
    /* A6D0 8001BEC0 23306600 */  subu       $a2, $v1, $a2
    /* A6D4 8001BEC4 0400C104 */  bgez       $a2, .L8001BED8
    /* A6D8 8001BEC8 00000000 */   nop
    /* A6DC 8001BECC 2C00228D */  lw         $v0, 0x2C($t1)
    /* A6E0 8001BED0 00000000 */  nop
    /* A6E4 8001BED4 2130C200 */  addu       $a2, $a2, $v0
  .L8001BED8:
    /* A6E8 8001BED8 0500C014 */  bnez       $a2, .L8001BEF0
    /* A6EC 8001BEDC 00000000 */   nop
    /* A6F0 8001BEE0 C46F0008 */  j          .L8001BF10
    /* A6F4 8001BEE4 280020AE */   sw        $zero, 0x28($s1)
  .L8001BEE8:
    /* A6F8 8001BEE8 DB6E0008 */  j          .L8001BB6C
    /* A6FC 8001BEEC 440020AE */   sw        $zero, 0x44($s1)
  .L8001BEF0:
    /* A700 8001BEF0 2400238E */  lw         $v1, 0x24($s1)
    /* A704 8001BEF4 3C00248E */  lw         $a0, 0x3C($s1)
    /* A708 8001BEF8 00130300 */  sll        $v0, $v1, 12
    /* A70C 8001BEFC 21186400 */  addu       $v1, $v1, $a0
    /* A710 8001BF00 1A004300 */  div        $zero, $v0, $v1
    /* A714 8001BF04 12100000 */  mflo       $v0
    /* A718 8001BF08 00000000 */  nop
    /* A71C 8001BF0C 280022AE */  sw         $v0, 0x28($s1)
  .L8001BF10:
    /* A720 8001BF10 2800228E */  lw         $v0, 0x28($s1)
    /* A724 8001BF14 00000000 */  nop
    /* A728 8001BF18 1800C200 */  mult       $a2, $v0
    /* A72C 8001BF1C 5400238E */  lw         $v1, 0x54($s1)
    /* A730 8001BF20 12100000 */  mflo       $v0
    /* A734 8001BF24 03130200 */  sra        $v0, $v0, 12
    /* A738 8001BF28 21186200 */  addu       $v1, $v1, $v0
    /* A73C 8001BF2C 540023AE */  sw         $v1, 0x54($s1)
    /* A740 8001BF30 7800A98F */  lw         $t1, 0x78($sp)
    /* A744 8001BF34 7400AA8F */  lw         $t2, 0x74($sp)
    /* A748 8001BF38 7803328D */  lw         $s2, 0x378($t1)
    /* A74C 8001BF3C 80100A00 */  sll        $v0, $t2, 2
    /* A750 8001BF40 21104202 */  addu       $v0, $s2, $v0
    /* A754 8001BF44 4000448C */  lw         $a0, 0x40($v0)
    /* A758 8001BF48 00000000 */  nop
    /* A75C 8001BF4C 600024AE */  sw         $a0, 0x60($s1)
    /* A760 8001BF50 16004386 */  lh         $v1, 0x16($s2)
    /* A764 8001BF54 01008424 */  addiu      $a0, $a0, 0x1
    /* A768 8001BF58 2A188300 */  slt        $v1, $a0, $v1
    /* A76C 8001BF5C 03006014 */  bnez       $v1, .L8001BF6C
    /* A770 8001BF60 80100400 */   sll       $v0, $a0, 2
    /* A774 8001BF64 EC6F0008 */  j          .L8001BFB0
    /* A778 8001BF68 100020AE */   sw        $zero, 0x10($s1)
  .L8001BF6C:
    /* A77C 8001BF6C 21104202 */  addu       $v0, $s2, $v0
    /* A780 8001BF70 2C00438C */  lw         $v1, 0x2C($v0)
    /* A784 8001BF74 00000000 */  nop
    /* A788 8001BF78 0C006004 */  bltz       $v1, .L8001BFAC
    /* A78C 8001BF7C 21100000 */   addu      $v0, $zero, $zero
    /* A790 8001BF80 40100300 */  sll        $v0, $v1, 1
    /* A794 8001BF84 21104300 */  addu       $v0, $v0, $v1
    /* A798 8001BF88 80100200 */  sll        $v0, $v0, 2
    /* A79C 8001BF8C 23104300 */  subu       $v0, $v0, $v1
    /* A7A0 8001BF90 80100200 */  sll        $v0, $v0, 2
    /* A7A4 8001BF94 23104300 */  subu       $v0, $v0, $v1
    /* A7A8 8001BF98 80100200 */  sll        $v0, $v0, 2
    /* A7AC 8001BF9C 21104300 */  addu       $v0, $v0, $v1
    /* A7B0 8001BFA0 C0100200 */  sll        $v0, $v0, 3
    /* A7B4 8001BFA4 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* A7B8 8001BFA8 21104202 */  addu       $v0, $s2, $v0
  .L8001BFAC:
    /* A7BC 8001BFAC 100022AE */  sw         $v0, 0x10($s1)
  .L8001BFB0:
    /* A7C0 8001BFB0 FEFF8424 */  addiu      $a0, $a0, -0x2
    /* A7C4 8001BFB4 03008104 */  bgez       $a0, .L8001BFC4
    /* A7C8 8001BFB8 80100400 */   sll       $v0, $a0, 2
    /* A7CC 8001BFBC 02700008 */  j          .L8001C008
    /* A7D0 8001BFC0 0C0020AE */   sw        $zero, 0xC($s1)
  .L8001BFC4:
    /* A7D4 8001BFC4 21104202 */  addu       $v0, $s2, $v0
    /* A7D8 8001BFC8 2C00438C */  lw         $v1, 0x2C($v0)
    /* A7DC 8001BFCC 00000000 */  nop
    /* A7E0 8001BFD0 0C006004 */  bltz       $v1, .L8001C004
    /* A7E4 8001BFD4 21100000 */   addu      $v0, $zero, $zero
    /* A7E8 8001BFD8 40100300 */  sll        $v0, $v1, 1
    /* A7EC 8001BFDC 21104300 */  addu       $v0, $v0, $v1
    /* A7F0 8001BFE0 80100200 */  sll        $v0, $v0, 2
    /* A7F4 8001BFE4 23104300 */  subu       $v0, $v0, $v1
    /* A7F8 8001BFE8 80100200 */  sll        $v0, $v0, 2
    /* A7FC 8001BFEC 23104300 */  subu       $v0, $v0, $v1
    /* A800 8001BFF0 80100200 */  sll        $v0, $v0, 2
    /* A804 8001BFF4 21104300 */  addu       $v0, $v0, $v1
    /* A808 8001BFF8 C0100200 */  sll        $v0, $v0, 3
    /* A80C 8001BFFC E8024224 */  addiu      $v0, $v0, 0x2E8
    /* A810 8001C000 21104202 */  addu       $v0, $s2, $v0
  .L8001C004:
    /* A814 8001C004 0C0022AE */  sw         $v0, 0xC($s1)
  .L8001C008:
    /* A818 8001C008 3000A98F */  lw         $t1, 0x30($sp)
    /* A81C 8001C00C 00000000 */  nop
    /* A820 8001C010 0000228D */  lw         $v0, 0x0($t1)
    /* A824 8001C014 01000324 */  addiu      $v1, $zero, 0x1
    /* A828 8001C018 80160200 */  sll        $v0, $v0, 26
    /* A82C 8001C01C C3160200 */  sra        $v0, $v0, 27
    /* A830 8001C020 08014314 */  bne        $v0, $v1, .L8001C444
    /* A834 8001C024 01008424 */   addiu     $a0, $a0, 0x1
    /* A838 8001C028 7000AA8F */  lw         $t2, 0x70($sp)
    /* A83C 8001C02C 00000000 */  nop
    /* A840 8001C030 740049AD */  sw         $t1, 0x74($t2)
    /* A844 8001C034 7C0044AD */  sw         $a0, 0x7C($t2)
    /* A848 8001C038 0C00268E */  lw         $a2, 0xC($s1)
    /* A84C 8001C03C 00000000 */  nop
    /* A850 8001C040 2200C010 */  beqz       $a2, .L8001C0CC
    /* A854 8001C044 02000324 */   addiu     $v1, $zero, 0x2
    /* A858 8001C048 0000C28C */  lw         $v0, 0x0($a2)
    /* A85C 8001C04C 00000000 */  nop
    /* A860 8001C050 80160200 */  sll        $v0, $v0, 26
    /* A864 8001C054 C3160200 */  sra        $v0, $v0, 27
    /* A868 8001C058 1C004314 */  bne        $v0, $v1, .L8001C0CC
    /* A86C 8001C05C 00000000 */   nop
    /* A870 8001C060 3000C68C */  lw         $a2, 0x30($a2)
    /* A874 8001C064 7800428D */  lw         $v0, 0x78($t2)
    /* A878 8001C068 7404D08C */  lw         $s0, 0x474($a2)
    /* A87C 8001C06C 00000000 */  nop
    /* A880 8001C070 14005010 */  beq        $v0, $s0, .L8001C0C4
    /* A884 8001C074 21204001 */   addu      $a0, $t2, $zero
    /* A888 8001C078 21282002 */  addu       $a1, $s1, $zero
    /* A88C 8001C07C 0674000C */  jal        func_8001D018
    /* A890 8001C080 B401C624 */   addiu     $a2, $a2, 0x1B4
    /* A894 8001C084 7000A98F */  lw         $t1, 0x70($sp)
    /* A898 8001C088 00000000 */  nop
    /* A89C 8001C08C 8401238D */  lw         $v1, 0x184($t1)
    /* A8A0 8001C090 02004104 */  bgez       $v0, .L8001C09C
    /* A8A4 8001C094 00000000 */   nop
    /* A8A8 8001C098 23100200 */  negu       $v0, $v0
  .L8001C09C:
    /* A8AC 8001C09C 2A104300 */  slt        $v0, $v0, $v1
    /* A8B0 8001C0A0 0A004010 */  beqz       $v0, .L8001C0CC
    /* A8B4 8001C0A4 00000000 */   nop
    /* A8B8 8001C0A8 8400228D */  lw         $v0, 0x84($t1)
    /* A8BC 8001C0AC 00000000 */  nop
    /* A8C0 8001C0B0 06005010 */  beq        $v0, $s0, .L8001C0CC
    /* A8C4 8001C0B4 00000000 */   nop
    /* A8C8 8001C0B8 800030AD */  sw         $s0, 0x80($t1)
    /* A8CC 8001C0BC 33700008 */  j          .L8001C0CC
    /* A8D0 8001C0C0 840030AD */   sw        $s0, 0x84($t1)
  .L8001C0C4:
    /* A8D4 8001C0C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A8D8 8001C0C8 840042AD */  sw         $v0, 0x84($t2)
  .L8001C0CC:
    /* A8DC 8001C0CC 3000A98F */  lw         $t1, 0x30($sp)
    /* A8E0 8001C0D0 00000000 */  nop
    /* A8E4 8001C0D4 40002381 */  lb         $v1, 0x40($t1)
    /* A8E8 8001C0D8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A8EC 8001C0DC D9006210 */  beq        $v1, $v0, .L8001C444
    /* A8F0 8001C0E0 00000000 */   nop
    /* A8F4 8001C0E4 7000AA8F */  lw         $t2, 0x70($sp)
    /* A8F8 8001C0E8 00000000 */  nop
    /* A8FC 8001C0EC 880040AD */  sw         $zero, 0x88($t2)
    /* A900 8001C0F0 0400428E */  lw         $v0, 0x4($s2)
    /* A904 8001C0F4 40002381 */  lb         $v1, 0x40($t1)
    /* A908 8001C0F8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A90C 8001C0FC 2B186200 */  sltu       $v1, $v1, $v0
    /* A910 8001C100 D0006014 */  bnez       $v1, .L8001C444
    /* A914 8001C104 E600023C */   lui       $v0, (0xE66666 >> 16)
    /* A918 8001C108 1000238D */  lw         $v1, 0x10($t1)
    /* A91C 8001C10C 66664234 */  ori        $v0, $v0, (0xE66666 & 0xFFFF)
    /* A920 8001C110 2A104300 */  slt        $v0, $v0, $v1
    /* A924 8001C114 CB004010 */  beqz       $v0, .L8001C444
    /* A928 8001C118 01000224 */   addiu     $v0, $zero, 0x1
    /* A92C 8001C11C 11710008 */  j          .L8001C444
    /* A930 8001C120 880042AD */   sw        $v0, 0x88($t2)
  .L8001C124:
    /* A934 8001C124 7000A48F */  lw         $a0, 0x70($sp)
    /* A938 8001C128 DB6D000C */  jal        func_8001B76C
    /* A93C 8001C12C 00000000 */   nop
    /* A940 8001C130 C4004010 */  beqz       $v0, .L8001C444
    /* A944 8001C134 FFFF0924 */   addiu     $t1, $zero, -0x1
    /* A948 8001C138 FFFF0A24 */  addiu      $t2, $zero, -0x1
    /* A94C 8001C13C 3800A9AF */  sw         $t1, 0x38($sp)
    /* A950 8001C140 FF7F093C */  lui        $t1, (0x7FFFFFFF >> 16)
    /* A954 8001C144 FFFF2935 */  ori        $t1, $t1, (0x7FFFFFFF & 0xFFFF)
    /* A958 8001C148 3C00AAAF */  sw         $t2, 0x3C($sp)
    /* A95C 8001C14C 7000AA8F */  lw         $t2, 0x70($sp)
    /* A960 8001C150 21F00000 */  addu       $fp, $zero, $zero
    /* A964 8001C154 4000A9AF */  sw         $t1, 0x40($sp)
    /* A968 8001C158 2400428D */  lw         $v0, 0x24($t2)
    /* A96C 8001C15C 0C80093C */  lui        $t1, (0x800C0000 >> 16)
    /* A970 8001C160 50004018 */  blez       $v0, .L8001C2A4
    /* A974 8001C164 4400A9AF */   sw        $t1, 0x44($sp)
    /* A978 8001C168 21A80000 */  addu       $s5, $zero, $zero
  .L8001C16C:
    /* A97C 8001C16C 7000AA8F */  lw         $t2, 0x70($sp)
    /* A980 8001C170 00000000 */  nop
    /* A984 8001C174 2800448D */  lw         $a0, 0x28($t2)
    /* A988 8001C178 00000000 */  nop
    /* A98C 8001C17C 2110A402 */  addu       $v0, $s5, $a0
    /* A990 8001C180 0000438C */  lw         $v1, 0x0($v0)
    /* A994 8001C184 00000000 */  nop
    /* A998 8001C188 40006018 */  blez       $v1, .L8001C28C
    /* A99C 8001C18C 21A00000 */   addu      $s4, $zero, $zero
    /* A9A0 8001C190 1000B327 */  addiu      $s3, $sp, 0x10
    /* A9A4 8001C194 2000B727 */  addiu      $s7, $sp, 0x20
    /* A9A8 8001C198 21900000 */  addu       $s2, $zero, $zero
    /* A9AC 8001C19C 21B0A002 */  addu       $s6, $s5, $zero
  .L8001C1A0:
    /* A9B0 8001C1A0 2118C402 */  addu       $v1, $s6, $a0
    /* A9B4 8001C1A4 0400658C */  lw         $a1, 0x4($v1)
    /* A9B8 8001C1A8 0C80093C */  lui        $t1, %hi(D_800BF3A2)
    /* A9BC 8001C1AC 21284502 */  addu       $a1, $s2, $a1
    /* A9C0 8001C1B0 1000A294 */  lhu        $v0, 0x10($a1)
    /* A9C4 8001C1B4 A2F32925 */  addiu      $t1, $t1, %lo(D_800BF3A2)
    /* A9C8 8001C1B8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A9CC 8001C1BC 80100200 */  sll        $v0, $v0, 2
    /* A9D0 8001C1C0 21104900 */  addu       $v0, $v0, $t1
    /* A9D4 8001C1C4 00004384 */  lh         $v1, 0x0($v0)
    /* A9D8 8001C1C8 0C800A3C */  lui        $t2, %hi(D_800BF3A0)
    /* A9DC 8001C1CC 1000A3AF */  sw         $v1, 0x10($sp)
    /* A9E0 8001C1D0 040060AE */  sw         $zero, 0x4($s3)
    /* A9E4 8001C1D4 1000A294 */  lhu        $v0, 0x10($a1)
    /* A9E8 8001C1D8 A0F34A25 */  addiu      $t2, $t2, %lo(D_800BF3A0)
    /* A9EC 8001C1DC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A9F0 8001C1E0 80100200 */  sll        $v0, $v0, 2
    /* A9F4 8001C1E4 21104A00 */  addu       $v0, $v0, $t2
    /* A9F8 8001C1E8 00004384 */  lh         $v1, 0x0($v0)
    /* A9FC 8001C1EC 21206002 */  addu       $a0, $s3, $zero
    /* AA00 8001C1F0 E266020C */  jal        func_80099B88
    /* AA04 8001C1F4 080063AE */   sw        $v1, 0x8($s3)
    /* AA08 8001C1F8 21206002 */  addu       $a0, $s3, $zero
    /* AA0C 8001C1FC 3400A58F */  lw         $a1, 0x34($sp)
    /* AA10 8001C200 E266020C */  jal        func_80099B88
    /* AA14 8001C204 23800200 */   negu      $s0, $v0
    /* AA18 8001C208 21105000 */  addu       $v0, $v0, $s0
    /* AA1C 8001C20C 14004004 */  bltz       $v0, .L8001C260
    /* AA20 8001C210 2120E002 */   addu      $a0, $s7, $zero
    /* AA24 8001C214 7000A98F */  lw         $t1, 0x70($sp)
    /* AA28 8001C218 00000000 */  nop
    /* AA2C 8001C21C 2800228D */  lw         $v0, 0x28($t1)
    /* AA30 8001C220 00000000 */  nop
    /* AA34 8001C224 2110C202 */  addu       $v0, $s6, $v0
    /* AA38 8001C228 0400468C */  lw         $a2, 0x4($v0)
    /* AA3C 8001C22C 3400A58F */  lw         $a1, 0x34($sp)
    /* AA40 8001C230 3466020C */  jal        func_800998D0
    /* AA44 8001C234 2130D200 */   addu      $a2, $a2, $s2
    /* AA48 8001C238 8F64020C */  jal        func_8009923C
    /* AA4C 8001C23C 2120E002 */   addu      $a0, $s7, $zero
    /* AA50 8001C240 4000AA8F */  lw         $t2, 0x40($sp)
    /* AA54 8001C244 00000000 */  nop
    /* AA58 8001C248 2A184A00 */  slt        $v1, $v0, $t2
    /* AA5C 8001C24C 04006010 */  beqz       $v1, .L8001C260
    /* AA60 8001C250 00000000 */   nop
    /* AA64 8001C254 3800BEAF */  sw         $fp, 0x38($sp)
    /* AA68 8001C258 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* AA6C 8001C25C 4000A2AF */  sw         $v0, 0x40($sp)
  .L8001C260:
    /* AA70 8001C260 7000A98F */  lw         $t1, 0x70($sp)
    /* AA74 8001C264 00000000 */  nop
    /* AA78 8001C268 2800248D */  lw         $a0, 0x28($t1)
    /* AA7C 8001C26C 00000000 */  nop
    /* AA80 8001C270 2110A402 */  addu       $v0, $s5, $a0
    /* AA84 8001C274 0000438C */  lw         $v1, 0x0($v0)
    /* AA88 8001C278 01009426 */  addiu      $s4, $s4, 0x1
    /* AA8C 8001C27C 2A188302 */  slt        $v1, $s4, $v1
    /* AA90 8001C280 C7FF6014 */  bnez       $v1, .L8001C1A0
    /* AA94 8001C284 14005226 */   addiu     $s2, $s2, 0x14
    /* AA98 8001C288 7000AA8F */  lw         $t2, 0x70($sp)
  .L8001C28C:
    /* AA9C 8001C28C 00000000 */  nop
    /* AAA0 8001C290 2400428D */  lw         $v0, 0x24($t2)
    /* AAA4 8001C294 0100DE27 */  addiu      $fp, $fp, 0x1
    /* AAA8 8001C298 2A10C203 */  slt        $v0, $fp, $v0
    /* AAAC 8001C29C B3FF4014 */  bnez       $v0, .L8001C16C
    /* AAB0 8001C2A0 1400B526 */   addiu     $s5, $s5, 0x14
  .L8001C2A4:
    /* AAB4 8001C2A4 3800A98F */  lw         $t1, 0x38($sp)
    /* AAB8 8001C2A8 00000000 */  nop
    /* AABC 8001C2AC 400029AE */  sw         $t1, 0x40($s1)
    /* AAC0 8001C2B0 3C00AA8F */  lw         $t2, 0x3C($sp)
    /* AAC4 8001C2B4 80100900 */  sll        $v0, $t1, 2
    /* AAC8 8001C2B8 44002AAE */  sw         $t2, 0x44($s1)
    /* AACC 8001C2BC 21104900 */  addu       $v0, $v0, $t1
    /* AAD0 8001C2C0 80100200 */  sll        $v0, $v0, 2
    /* AAD4 8001C2C4 80280A00 */  sll        $a1, $t2, 2
    /* AAD8 8001C2C8 7000A98F */  lw         $t1, 0x70($sp)
    /* AADC 8001C2CC 2128AA00 */  addu       $a1, $a1, $t2
    /* AAE0 8001C2D0 2800238D */  lw         $v1, 0x28($t1)
    /* AAE4 8001C2D4 80280500 */  sll        $a1, $a1, 2
    /* AAE8 8001C2D8 21104300 */  addu       $v0, $v0, $v1
    /* AAEC 8001C2DC 0400438C */  lw         $v1, 0x4($v0)
    /* AAF0 8001C2E0 4400AA8F */  lw         $t2, 0x44($sp)
    /* AAF4 8001C2E4 2128A300 */  addu       $a1, $a1, $v1
    /* AAF8 8001C2E8 1000A294 */  lhu        $v0, 0x10($a1)
    /* AAFC 8001C2EC A0F34725 */  addiu      $a3, $t2, -0xC60
    /* AB00 8001C2F0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* AB04 8001C2F4 80100200 */  sll        $v0, $v0, 2
    /* AB08 8001C2F8 2110E200 */  addu       $v0, $a3, $v0
    /* AB0C 8001C2FC 02004384 */  lh         $v1, 0x2($v0)
    /* AB10 8001C300 14002626 */  addiu      $a2, $s1, 0x14
    /* AB14 8001C304 140023AE */  sw         $v1, 0x14($s1)
    /* AB18 8001C308 0400C0AC */  sw         $zero, 0x4($a2)
    /* AB1C 8001C30C 1000A294 */  lhu        $v0, 0x10($a1)
    /* AB20 8001C310 00000000 */  nop
    /* AB24 8001C314 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* AB28 8001C318 80100200 */  sll        $v0, $v0, 2
    /* AB2C 8001C31C 21104700 */  addu       $v0, $v0, $a3
    /* AB30 8001C320 00004384 */  lh         $v1, 0x0($v0)
    /* AB34 8001C324 2120C000 */  addu       $a0, $a2, $zero
    /* AB38 8001C328 E266020C */  jal        func_80099B88
    /* AB3C 8001C32C 0800C3AC */   sw        $v1, 0x8($a2)
    /* AB40 8001C330 4400248E */  lw         $a0, 0x44($s1)
    /* AB44 8001C334 4000258E */  lw         $a1, 0x40($s1)
    /* AB48 8001C338 7000A98F */  lw         $t1, 0x70($sp)
    /* AB4C 8001C33C 23100200 */  negu       $v0, $v0
    /* AB50 8001C340 200022AE */  sw         $v0, 0x20($s1)
    /* AB54 8001C344 01008424 */  addiu      $a0, $a0, 0x1
    /* AB58 8001C348 80100500 */  sll        $v0, $a1, 2
    /* AB5C 8001C34C 21104500 */  addu       $v0, $v0, $a1
    /* AB60 8001C350 4C0024AE */  sw         $a0, 0x4C($s1)
    /* AB64 8001C354 480025AE */  sw         $a1, 0x48($s1)
    /* AB68 8001C358 2800268D */  lw         $a2, 0x28($t1)
    /* AB6C 8001C35C 80100200 */  sll        $v0, $v0, 2
    /* AB70 8001C360 21104600 */  addu       $v0, $v0, $a2
    /* AB74 8001C364 0000438C */  lw         $v1, 0x0($v0)
    /* AB78 8001C368 00000000 */  nop
    /* AB7C 8001C36C 2A208300 */  slt        $a0, $a0, $v1
    /* AB80 8001C370 0C008014 */  bnez       $a0, .L8001C3A4
    /* AB84 8001C374 00000000 */   nop
    /* AB88 8001C378 0500A014 */  bnez       $a1, .L8001C390
    /* AB8C 8001C37C 00000000 */   nop
    /* AB90 8001C380 4C0020AE */  sw         $zero, 0x4C($s1)
    /* AB94 8001C384 2800268D */  lw         $a2, 0x28($t1)
    /* AB98 8001C388 E9700008 */  j          .L8001C3A4
    /* AB9C 8001C38C 00000000 */   nop
  .L8001C390:
    /* ABA0 8001C390 1000428C */  lw         $v0, 0x10($v0)
    /* ABA4 8001C394 7000AA8F */  lw         $t2, 0x70($sp)
    /* ABA8 8001C398 480020AE */  sw         $zero, 0x48($s1)
    /* ABAC 8001C39C 4C0022AE */  sw         $v0, 0x4C($s1)
    /* ABB0 8001C3A0 2800468D */  lw         $a2, 0x28($t2)
  .L8001C3A4:
    /* ABB4 8001C3A4 4800238E */  lw         $v1, 0x48($s1)
    /* ABB8 8001C3A8 4C00248E */  lw         $a0, 0x4C($s1)
    /* ABBC 8001C3AC 4400A98F */  lw         $t1, 0x44($sp)
    /* ABC0 8001C3B0 80100300 */  sll        $v0, $v1, 2
    /* ABC4 8001C3B4 21104300 */  addu       $v0, $v0, $v1
    /* ABC8 8001C3B8 80100200 */  sll        $v0, $v0, 2
    /* ABCC 8001C3BC 21104600 */  addu       $v0, $v0, $a2
    /* ABD0 8001C3C0 80280400 */  sll        $a1, $a0, 2
    /* ABD4 8001C3C4 2128A400 */  addu       $a1, $a1, $a0
    /* ABD8 8001C3C8 0400438C */  lw         $v1, 0x4($v0)
    /* ABDC 8001C3CC 80280500 */  sll        $a1, $a1, 2
    /* ABE0 8001C3D0 2128A300 */  addu       $a1, $a1, $v1
    /* ABE4 8001C3D4 1000A294 */  lhu        $v0, 0x10($a1)
    /* ABE8 8001C3D8 A0F32725 */  addiu      $a3, $t1, -0xC60
    /* ABEC 8001C3DC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* ABF0 8001C3E0 80100200 */  sll        $v0, $v0, 2
    /* ABF4 8001C3E4 2110E200 */  addu       $v0, $a3, $v0
    /* ABF8 8001C3E8 02004384 */  lh         $v1, 0x2($v0)
    /* ABFC 8001C3EC 2C002626 */  addiu      $a2, $s1, 0x2C
    /* AC00 8001C3F0 2C0023AE */  sw         $v1, 0x2C($s1)
    /* AC04 8001C3F4 0400C0AC */  sw         $zero, 0x4($a2)
    /* AC08 8001C3F8 1000A294 */  lhu        $v0, 0x10($a1)
    /* AC0C 8001C3FC 00000000 */  nop
    /* AC10 8001C400 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* AC14 8001C404 80100200 */  sll        $v0, $v0, 2
    /* AC18 8001C408 21104700 */  addu       $v0, $v0, $a3
    /* AC1C 8001C40C 00004384 */  lh         $v1, 0x0($v0)
    /* AC20 8001C410 2120C000 */  addu       $a0, $a2, $zero
    /* AC24 8001C414 E266020C */  jal        func_80099B88
    /* AC28 8001C418 0800C3AC */   sw        $v1, 0x8($a2)
    /* AC2C 8001C41C 23100200 */  negu       $v0, $v0
    /* AC30 8001C420 7000A48F */  lw         $a0, 0x70($sp)
    /* AC34 8001C424 7400A58F */  lw         $a1, 0x74($sp)
    /* AC38 8001C428 7800A68F */  lw         $a2, 0x78($sp)
    /* AC3C 8001C42C 01000324 */  addiu      $v1, $zero, 0x1
    /* AC40 8001C430 380022AE */  sw         $v0, 0x38($s1)
    /* AC44 8001C434 680023AE */  sw         $v1, 0x68($s1)
    /* AC48 8001C438 7C00A78F */  lw         $a3, 0x7C($sp)
    /* AC4C 8001C43C 5D6E000C */  jal        func_8001B974
    /* AC50 8001C440 00000000 */   nop
  .L8001C444:
    /* AC54 8001C444 7C00AA8F */  lw         $t2, 0x7C($sp)
    /* AC58 8001C448 00000000 */  nop
    /* AC5C 8001C44C 08004011 */  beqz       $t2, .L8001C470
    /* AC60 8001C450 00000000 */   nop
    /* AC64 8001C454 3000A98F */  lw         $t1, 0x30($sp)
    /* AC68 8001C458 00000000 */  nop
    /* AC6C 8001C45C 3000238D */  lw         $v1, 0x30($t1)
    /* AC70 8001C460 00000000 */  nop
    /* AC74 8001C464 0802628C */  lw         $v0, 0x208($v1)
    /* AC78 8001C468 00000000 */  nop
    /* AC7C 8001C46C 040262AC */  sw         $v0, 0x204($v1)
  .L8001C470:
    /* AC80 8001C470 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* AC84 8001C474 6800BE8F */  lw         $fp, 0x68($sp)
    /* AC88 8001C478 6400B78F */  lw         $s7, 0x64($sp)
    /* AC8C 8001C47C 6000B68F */  lw         $s6, 0x60($sp)
    /* AC90 8001C480 5C00B58F */  lw         $s5, 0x5C($sp)
    /* AC94 8001C484 5800B48F */  lw         $s4, 0x58($sp)
    /* AC98 8001C488 5400B38F */  lw         $s3, 0x54($sp)
    /* AC9C 8001C48C 5000B28F */  lw         $s2, 0x50($sp)
    /* ACA0 8001C490 4C00B18F */  lw         $s1, 0x4C($sp)
    /* ACA4 8001C494 4800B08F */  lw         $s0, 0x48($sp)
    /* ACA8 8001C498 0800E003 */  jr         $ra
    /* ACAC 8001C49C 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_8001B974
