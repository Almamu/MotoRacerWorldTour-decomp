/* Handwritten function */
nonmatching func_8001EAF4, 0x59C

glabel func_8001EAF4
    /* D304 8001EAF4 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* D308 8001EAF8 5400B5AF */  sw         $s5, 0x54($sp)
    /* D30C 8001EAFC 21A88000 */  addu       $s5, $a0, $zero
    /* D310 8001EB00 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* D314 8001EB04 21B8C000 */  addu       $s7, $a2, $zero
    /* D318 8001EB08 C2171700 */  srl        $v0, $s7, 31
    /* D31C 8001EB0C 2110E202 */  addu       $v0, $s7, $v0
    /* D320 8001EB10 5000B4AF */  sw         $s4, 0x50($sp)
    /* D324 8001EB14 43A00200 */  sra        $s4, $v0, 1
    /* D328 8001EB18 6000BEAF */  sw         $fp, 0x60($sp)
    /* D32C 8001EB1C 5800B6AF */  sw         $s6, 0x58($sp)
    /* D330 8001EB20 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* D334 8001EB24 4800B2AF */  sw         $s2, 0x48($sp)
    /* D338 8001EB28 4400B1AF */  sw         $s1, 0x44($sp)
    /* D33C 8001EB2C 4000B0AF */  sw         $s0, 0x40($sp)
    /* D340 8001EB30 6C00A5AF */  sw         $a1, 0x6C($sp)
    /* D344 8001EB34 0000B98C */  lw         $t9, 0x0($a1)
    /* D348 8001EB38 FF1F8226 */  addiu      $v0, $s4, 0x1FFF
    /* D34C 8001EB3C 7400A7AF */  sw         $a3, 0x74($sp)
    /* D350 8001EB40 0000F88C */  lw         $t8, 0x0($a3)
    /* D354 8001EB44 2800B08E */  lw         $s0, 0x28($s5)
    /* D358 8001EB48 2C00B18E */  lw         $s1, 0x2C($s5)
    /* D35C 8001EB4C 0C80033C */  lui        $v1, %hi(D_800C5E14)
    /* D360 8001EB50 145E638C */  lw         $v1, %lo(D_800C5E14)($v1)
    /* D364 8001EB54 2000A58E */  lw         $a1, 0x20($s5)
    /* D368 8001EB58 7800B68F */  lw         $s6, 0x78($sp)
    /* D36C 8001EB5C 700C648C */  lw         $a0, 0xC70($v1)
    /* D370 8001EB60 7C00AF8F */  lw         $t7, 0x7C($sp)
    /* D374 8001EB64 24009E8C */  lw         $fp, 0x24($a0)
    /* D378 8001EB68 002B0500 */  sll        $a1, $a1, 12
    /* D37C 8001EB6C 2800BDAF */  sw         $sp, 0x28($sp)
    /* D380 8001EB70 3C00A5AF */  sw         $a1, 0x3C($sp)
    /* D384 8001EB74 3000B28E */  lw         $s2, 0x30($s5)
    /* D388 8001EB78 FF3F422C */  sltiu      $v0, $v0, 0x3FFF
    /* D38C 8001EB7C 02004014 */  bnez       $v0, .L8001EB88
    /* D390 8001EB80 3400B2AF */   sw        $s2, 0x34($sp)
    /* D394 8001EB84 21A00000 */  addu       $s4, $zero, $zero
  .L8001EB88:
    /* D398 8001EB88 C2171600 */  srl        $v0, $s6, 31
    /* D39C 8001EB8C 2110C202 */  addu       $v0, $s6, $v0
    /* D3A0 8001EB90 43100200 */  sra        $v0, $v0, 1
    /* D3A4 8001EB94 FF1F4324 */  addiu      $v1, $v0, 0x1FFF
    /* D3A8 8001EB98 FF3F632C */  sltiu      $v1, $v1, 0x3FFF
    /* D3AC 8001EB9C 02006014 */  bnez       $v1, .L8001EBA8
    /* D3B0 8001EBA0 3800A2AF */   sw        $v0, 0x38($sp)
    /* D3B4 8001EBA4 3800A0AF */  sw         $zero, 0x38($sp)
  .L8001EBA8:
    /* D3B8 8001EBA8 0000E28D */  lw         $v0, 0x0($t7)
    /* D3BC 8001EBAC 00000000 */  nop
    /* D3C0 8001EBB0 23014104 */  bgez       $v0, .L8001F040
    /* D3C4 8001EBB4 00000000 */   nop
  .L8001EBB8:
    /* D3C8 8001EBB8 1400E38D */  lw         $v1, 0x14($t7)
    /* D3CC 8001EBBC 00000000 */  nop
    /* D3D0 8001EBC0 02006104 */  bgez       $v1, .L8001EBCC
    /* D3D4 8001EBC4 21106000 */   addu      $v0, $v1, $zero
    /* D3D8 8001EBC8 FF0F6224 */  addiu      $v0, $v1, 0xFFF
  .L8001EBCC:
    /* D3DC 8001EBCC F8004004 */  bltz       $v0, .L8001EFB0
    /* D3E0 8001EBD0 00000000 */   nop
    /* D3E4 8001EBD4 06008012 */  beqz       $s4, .L8001EBF0
    /* D3E8 8001EBD8 21302003 */   addu      $a2, $t9, $zero
    /* D3EC 8001EBDC 23283403 */  subu       $a1, $t9, $s4
    /* D3F0 8001EBE0 2A10B900 */  slt        $v0, $a1, $t9
    /* D3F4 8001EBE4 02004010 */  beqz       $v0, .L8001EBF0
    /* D3F8 8001EBE8 00000000 */   nop
    /* D3FC 8001EBEC 2130A000 */  addu       $a2, $a1, $zero
  .L8001EBF0:
    /* D400 8001EBF0 3C00B38F */  lw         $s3, 0x3C($sp)
    /* D404 8001EBF4 00000000 */  nop
    /* D408 8001EBF8 2A10D300 */  slt        $v0, $a2, $s3
    /* D40C 8001EBFC EC004010 */  beqz       $v0, .L8001EFB0
    /* D410 8001EC00 00000000 */   nop
    /* D414 8001EC04 0200C104 */  bgez       $a2, .L8001EC10
    /* D418 8001EC08 00000000 */   nop
    /* D41C 8001EC0C 21300000 */  addu       $a2, $zero, $zero
  .L8001EC10:
    /* D420 8001EC10 3800B28F */  lw         $s2, 0x38($sp)
    /* D424 8001EC14 00000000 */  nop
    /* D428 8001EC18 06004012 */  beqz       $s2, .L8001EC34
    /* D42C 8001EC1C 21200003 */   addu      $a0, $t8, $zero
    /* D430 8001EC20 23281203 */  subu       $a1, $t8, $s2
    /* D434 8001EC24 2A100503 */  slt        $v0, $t8, $a1
    /* D438 8001EC28 03004010 */  beqz       $v0, .L8001EC38
    /* D43C 8001EC2C 00108424 */   addiu     $a0, $a0, 0x1000
    /* D440 8001EC30 2120A000 */  addu       $a0, $a1, $zero
  .L8001EC34:
    /* D444 8001EC34 00108424 */  addiu      $a0, $a0, 0x1000
  .L8001EC38:
    /* D448 8001EC38 DD008004 */  bltz       $a0, .L8001EFB0
    /* D44C 8001EC3C 00000000 */   nop
    /* D450 8001EC40 3C00B38F */  lw         $s3, 0x3C($sp)
    /* D454 8001EC44 00000000 */  nop
    /* D458 8001EC48 2A109300 */  slt        $v0, $a0, $s3
    /* D45C 8001EC4C 02004014 */  bnez       $v0, .L8001EC58
    /* D460 8001EC50 21106000 */   addu      $v0, $v1, $zero
    /* D464 8001EC54 21206002 */  addu       $a0, $s3, $zero
  .L8001EC58:
    /* D468 8001EC58 03004104 */  bgez       $v0, .L8001EC68
    /* D46C 8001EC5C 032B0200 */   sra       $a1, $v0, 12
    /* D470 8001EC60 FF0F4224 */  addiu      $v0, $v0, 0xFFF
    /* D474 8001EC64 032B0200 */  sra        $a1, $v0, 12
  .L8001EC68:
    /* D478 8001EC68 0200C104 */  bgez       $a2, .L8001EC74
    /* D47C 8001EC6C 2110C000 */   addu      $v0, $a2, $zero
    /* D480 8001EC70 FF0FC224 */  addiu      $v0, $a2, 0xFFF
  .L8001EC74:
    /* D484 8001EC74 03330200 */  sra        $a2, $v0, 12
    /* D488 8001EC78 02008104 */  bgez       $a0, .L8001EC84
    /* D48C 8001EC7C 21108000 */   addu      $v0, $a0, $zero
    /* D490 8001EC80 FF0F8224 */  addiu      $v0, $a0, 0xFFF
  .L8001EC84:
    /* D494 8001EC84 03230200 */  sra        $a0, $v0, 12
    /* D498 8001EC88 1C00A38E */  lw         $v1, 0x1C($s5)
    /* D49C 8001EC8C 80100500 */  sll        $v0, $a1, 2
    /* D4A0 8001EC90 21284300 */  addu       $a1, $v0, $v1
    /* D4A4 8001EC94 0000A28C */  lw         $v0, 0x0($a1)
    /* D4A8 8001EC98 00000000 */  nop
    /* D4AC 8001EC9C 60004010 */  beqz       $v0, .L8001EE20
    /* D4B0 8001ECA0 23508600 */   subu      $t2, $a0, $a2
    /* D4B4 8001ECA4 2138C000 */  addu       $a3, $a2, $zero
    /* D4B8 8001ECA8 21600000 */  addu       $t4, $zero, $zero
    /* D4BC 8001ECAC 00FF0D24 */  addiu      $t5, $zero, -0x100
    /* D4C0 8001ECB0 21580000 */  addu       $t3, $zero, $zero
    /* D4C4 8001ECB4 01004290 */  lbu        $v0, 0x1($v0)
    /* D4C8 8001ECB8 21200000 */  addu       $a0, $zero, $zero
    /* D4CC 8001ECBC 2100A2A3 */  sb         $v0, 0x21($sp)
    /* D4D0 8001ECC0 0000A38C */  lw         $v1, 0x0($a1)
    /* D4D4 8001ECC4 01000824 */  addiu      $t0, $zero, 0x1
    /* D4D8 8001ECC8 06006294 */  lhu        $v0, 0x6($v1)
    /* D4DC 8001ECCC 3000AE27 */  addiu      $t6, $sp, 0x30
    /* D4E0 8001ECD0 2600A2A7 */  sh         $v0, 0x26($sp)
    /* D4E4 8001ECD4 0000A38C */  lw         $v1, 0x0($a1)
    /* D4E8 8001ECD8 2100A993 */  lbu        $t1, 0x21($sp)
    /* D4EC 8001ECDC 0800628C */  lw         $v0, 0x8($v1)
    /* D4F0 8001ECE0 2118E000 */  addu       $v1, $a3, $zero
    /* D4F4 8001ECE4 3000A0AF */  sw         $zero, 0x30($sp)
    /* D4F8 8001ECE8 21304000 */  addu       $a2, $v0, $zero
    /* D4FC 8001ECEC 2800A2AF */  sw         $v0, 0x28($sp)
    /* D500 8001ECF0 0000C580 */  lb         $a1, 0x0($a2)
    /* D504 8001ECF4 00000000 */  nop
    /* D508 8001ECF8 0F00A104 */  bgez       $a1, .L8001ED38
    /* D50C 8001ECFC 0100C624 */   addiu     $a2, $a2, 0x1
    /* D510 8001ED00 23280500 */  negu       $a1, $a1
    /* D514 8001ED04 2A10E500 */  slt        $v0, $a3, $a1
    /* D518 8001ED08 0F004010 */  beqz       $v0, .L8001ED48
    /* D51C 8001ED0C 00000000 */   nop
    /* D520 8001ED10 1B002811 */  beq        $t1, $t0, .L8001ED80
    /* D524 8001ED14 00000000 */   nop
  .L8001ED18:
    /* D528 8001ED18 2600A297 */  lhu        $v0, 0x26($sp)
    /* D52C 8001ED1C 23186B00 */  subu       $v1, $v1, $t3
    /* D530 8001ED20 21104C00 */  addu       $v0, $v0, $t4
    /* D534 8001ED24 0000C2AD */  sw         $v0, 0x0($t6)
    /* D538 8001ED28 0000C480 */  lb         $a0, 0x0($a2)
    /* D53C 8001ED2C 23686500 */  subu       $t5, $v1, $a1
    /* D540 8001ED30 607B0008 */  j          .L8001ED80
    /* D544 8001ED34 FFFF8424 */   addiu     $a0, $a0, -0x1
  .L8001ED38:
    /* D548 8001ED38 2A10E500 */  slt        $v0, $a3, $a1
    /* D54C 8001ED3C 1A004014 */  bnez       $v0, .L8001EDA8
    /* D550 8001ED40 00000000 */   nop
    /* D554 8001ED44 21608501 */  addu       $t4, $t4, $a1
  .L8001ED48:
    /* D558 8001ED48 2338E500 */  subu       $a3, $a3, $a1
    /* D55C 8001ED4C 2A100901 */  slt        $v0, $t0, $t1
    /* D560 8001ED50 0B004010 */  beqz       $v0, .L8001ED80
    /* D564 8001ED54 21586501 */   addu      $t3, $t3, $a1
    /* D568 8001ED58 0000C580 */  lb         $a1, 0x0($a2)
    /* D56C 8001ED5C 0100C624 */  addiu      $a2, $a2, 0x1
    /* D570 8001ED60 F5FFA104 */  bgez       $a1, .L8001ED38
    /* D574 8001ED64 01000825 */   addiu     $t0, $t0, 0x1
    /* D578 8001ED68 23280500 */  negu       $a1, $a1
    /* D57C 8001ED6C 2A10E500 */  slt        $v0, $a3, $a1
    /* D580 8001ED70 F5FF4010 */  beqz       $v0, .L8001ED48
    /* D584 8001ED74 00000000 */   nop
    /* D588 8001ED78 E7FF0915 */  bne        $t0, $t1, .L8001ED18
    /* D58C 8001ED7C 00000000 */   nop
  .L8001ED80:
    /* D590 8001ED80 0000C290 */  lbu        $v0, 0x0($a2)
    /* D594 8001ED84 2128A001 */  addu       $a1, $t5, $zero
    /* D598 8001ED88 2C00A6AF */  sw         $a2, 0x2C($sp)
    /* D59C 8001ED8C 2200A8A3 */  sb         $t0, 0x22($sp)
    /* D5A0 8001ED90 2300A4A3 */  sb         $a0, 0x23($sp)
    /* D5A4 8001ED94 0E00A004 */  bltz       $a1, .L8001EDD0
    /* D5A8 8001ED98 2500A2A3 */   sb        $v0, 0x25($sp)
    /* D5AC 8001ED9C 3000A38F */  lw         $v1, 0x30($sp)
    /* D5B0 8001EDA0 787B0008 */  j          .L8001EDE0
    /* D5B4 8001EDA4 40100300 */   sll       $v0, $v1, 1
  .L8001EDA8:
    /* D5B8 8001EDA8 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* D5BC 8001EDAC FFFF0825 */  addiu      $t0, $t0, -0x1
    /* D5C0 8001EDB0 2318A700 */  subu       $v1, $a1, $a3
    /* D5C4 8001EDB4 FFFF6D24 */  addiu      $t5, $v1, -0x1
    /* D5C8 8001EDB8 2600A297 */  lhu        $v0, 0x26($sp)
    /* D5CC 8001EDBC 2120A001 */  addu       $a0, $t5, $zero
    /* D5D0 8001EDC0 21104C00 */  addu       $v0, $v0, $t4
    /* D5D4 8001EDC4 21104700 */  addu       $v0, $v0, $a3
    /* D5D8 8001EDC8 607B0008 */  j          .L8001ED80
    /* D5DC 8001EDCC 0000C2AD */   sw        $v0, 0x0($t6)
  .L8001EDD0:
    /* D5E0 8001EDD0 3000A38F */  lw         $v1, 0x30($sp)
    /* D5E4 8001EDD4 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* D5E8 8001EDD8 05007210 */  beq        $v1, $s2, .L8001EDF0
    /* D5EC 8001EDDC 40100300 */   sll       $v0, $v1, 1
  .L8001EDE0:
    /* D5F0 8001EDE0 21104300 */  addu       $v0, $v0, $v1
    /* D5F4 8001EDE4 80100200 */  sll        $v0, $v0, 2
    /* D5F8 8001EDE8 7D7B0008 */  j          .L8001EDF4
    /* D5FC 8001EDEC 2158C203 */   addu      $t3, $fp, $v0
  .L8001EDF0:
    /* D600 8001EDF0 21580000 */  addu       $t3, $zero, $zero
  .L8001EDF4:
    /* D604 8001EDF4 0600A004 */  bltz       $a1, .L8001EE10
    /* D608 8001EDF8 23100D00 */   negu      $v0, $t5
    /* D60C 8001EDFC 2A104201 */  slt        $v0, $t2, $v0
    /* D610 8001EE00 08004010 */  beqz       $v0, .L8001EE24
    /* D614 8001EE04 00000000 */   nop
    /* D618 8001EE08 897B0008 */  j          .L8001EE24
    /* D61C 8001EE0C 21500000 */   addu      $t2, $zero, $zero
  .L8001EE10:
    /* D620 8001EE10 23280D00 */  negu       $a1, $t5
    /* D624 8001EE14 2A104501 */  slt        $v0, $t2, $a1
    /* D628 8001EE18 02004010 */  beqz       $v0, .L8001EE24
    /* D62C 8001EE1C 23504501 */   subu      $t2, $t2, $a1
  .L8001EE20:
    /* D630 8001EE20 21500000 */  addu       $t2, $zero, $zero
  .L8001EE24:
    /* D634 8001EE24 62004019 */  blez       $t2, .L8001EFB0
    /* D638 8001EE28 0C001224 */   addiu     $s2, $zero, 0xC
    /* D63C 8001EE2C 00006385 */  lh         $v1, 0x0($t3)
    /* D640 8001EE30 1C00E78D */  lw         $a3, 0x1C($t7)
    /* D644 8001EE34 0000628D */  lw         $v0, 0x0($t3)
    /* D648 8001EE38 2000F38D */  lw         $s3, 0x20($t7)
    /* D64C 8001EE3C 001B0300 */  sll        $v1, $v1, 12
    /* D650 8001EE40 18007300 */  mult       $v1, $s3
    /* D654 8001EE44 20000434 */  ori        $a0, $zero, 0x20
    /* D658 8001EE48 22209200 */  sub        $a0, $a0, $s2 /* handwritten instruction */
    /* D65C 8001EE4C 10280000 */  mfhi       $a1
    /* D660 8001EE50 04288500 */  sllv       $a1, $a1, $a0
    /* D664 8001EE54 12200000 */  mflo       $a0
    /* D668 8001EE58 06204402 */  srlv       $a0, $a0, $s2
    /* D66C 8001EE5C 2528A400 */  or         $a1, $a1, $a0
    /* D670 8001EE60 03140200 */  sra        $v0, $v0, 16
    /* D674 8001EE64 00130200 */  sll        $v0, $v0, 12
    /* D678 8001EE68 0C001324 */  addiu      $s3, $zero, 0xC
    /* D67C 8001EE6C 18004700 */  mult       $v0, $a3
    /* D680 8001EE70 20000334 */  ori        $v1, $zero, 0x20
    /* D684 8001EE74 22187300 */  sub        $v1, $v1, $s3 /* handwritten instruction */
    /* D688 8001EE78 10300000 */  mfhi       $a2
    /* D68C 8001EE7C 04306600 */  sllv       $a2, $a2, $v1
    /* D690 8001EE80 12180000 */  mflo       $v1
    /* D694 8001EE84 06186302 */  srlv       $v1, $v1, $s3
    /* D698 8001EE88 2530C300 */  or         $a2, $a2, $v1
    /* D69C 8001EE8C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* D6A0 8001EE90 00800E24 */  addiu      $t6, $zero, -0x8000
    /* D6A4 8001EE94 2500A883 */  lb         $t0, 0x25($sp)
    /* D6A8 8001EE98 2200A993 */  lbu        $t1, 0x22($sp)
    /* D6AC 8001EE9C 2100AC93 */  lbu        $t4, 0x21($sp)
    /* D6B0 8001EEA0 2300A593 */  lbu        $a1, 0x23($sp)
    /* D6B4 8001EEA4 2C00A78F */  lw         $a3, 0x2C($sp)
    /* D6B8 8001EEA8 4400ED8D */  lw         $t5, 0x44($t7)
  .L8001EEAC:
    /* D6BC 8001EEAC 08006385 */  lh         $v1, 0x8($t3)
    /* D6C0 8001EEB0 00000000 */  nop
    /* D6C4 8001EEB4 00806230 */  andi       $v0, $v1, 0x8000
    /* D6C8 8001EEB8 0A004014 */  bnez       $v0, .L8001EEE4
    /* D6CC 8001EEBC 00000000 */   nop
    /* D6D0 8001EEC0 0400A011 */  beqz       $t5, .L8001EED4
    /* D6D4 8001EEC4 00000000 */   nop
    /* D6D8 8001EEC8 00000BAE */  sw         $t3, 0x0($s0)
    /* D6DC 8001EECC B77B0008 */  j          .L8001EEDC
    /* D6E0 8001EED0 04001026 */   addiu     $s0, $s0, 0x4
  .L8001EED4:
    /* D6E4 8001EED4 00002BAE */  sw         $t3, 0x0($s1)
    /* D6E8 8001EED8 04003126 */  addiu      $s1, $s1, 0x4
  .L8001EEDC:
    /* D6EC 8001EEDC 25106E00 */  or         $v0, $v1, $t6
    /* D6F0 8001EEE0 080062A5 */  sh         $v0, 0x8($t3)
  .L8001EEE4:
    /* D6F4 8001EEE4 2300C01C */  bgtz       $a2, .L8001EF74
    /* D6F8 8001EEE8 2120C000 */   addu      $a0, $a2, $zero
    /* D6FC 8001EEEC 0300A010 */  beqz       $a1, .L8001EEFC
    /* D700 8001EEF0 00000000 */   nop
    /* D704 8001EEF4 1B00001D */  bgtz       $t0, .L8001EF64
    /* D708 8001EEF8 FFFFA224 */   addiu     $v0, $a1, -0x1
  .L8001EEFC:
    /* D70C 8001EEFC 0700A014 */  bnez       $a1, .L8001EF1C
    /* D710 8001EF00 21200000 */   addu      $a0, $zero, $zero
    /* D714 8001EF04 01002225 */  addiu      $v0, $t1, 0x1
    /* D718 8001EF08 FF004930 */  andi       $t1, $v0, 0xFF
    /* D71C 8001EF0C 2B182C01 */  sltu       $v1, $t1, $t4
    /* D720 8001EF10 02006014 */  bnez       $v1, .L8001EF1C
    /* D724 8001EF14 0100E724 */   addiu     $a3, $a3, 0x1
    /* D728 8001EF18 80FF0424 */  addiu      $a0, $zero, -0x80
  .L8001EF1C:
    /* D72C 8001EF1C 13008014 */  bnez       $a0, .L8001EF6C
    /* D730 8001EF20 00000000 */   nop
    /* D734 8001EF24 0000E880 */  lb         $t0, 0x0($a3)
    /* D738 8001EF28 00000000 */  nop
    /* D73C 8001EF2C 0D000105 */  bgez       $t0, .L8001EF64
    /* D740 8001EF30 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* D744 8001EF34 01002325 */  addiu      $v1, $t1, 0x1
    /* D748 8001EF38 2A106C00 */  slt        $v0, $v1, $t4
    /* D74C 8001EF3C 07004010 */  beqz       $v0, .L8001EF5C
    /* D750 8001EF40 21200001 */   addu      $a0, $t0, $zero
    /* D754 8001EF44 0100E724 */  addiu      $a3, $a3, 0x1
    /* D758 8001EF48 0000E880 */  lb         $t0, 0x0($a3)
    /* D75C 8001EF4C FF006930 */  andi       $t1, $v1, 0xFF
    /* D760 8001EF50 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* D764 8001EF54 DB7B0008 */  j          .L8001EF6C
    /* D768 8001EF58 FF004530 */   andi      $a1, $v0, 0xFF
  .L8001EF5C:
    /* D76C 8001EF5C DB7B0008 */  j          .L8001EF6C
    /* D770 8001EF60 FF000524 */   addiu     $a1, $zero, 0xFF
  .L8001EF64:
    /* D774 8001EF64 FF004430 */  andi       $a0, $v0, 0xFF
    /* D778 8001EF68 21288000 */  addu       $a1, $a0, $zero
  .L8001EF6C:
    /* D77C 8001EF6C E07B0008 */  j          .L8001EF80
    /* D780 8001EF70 FFFF8624 */   addiu     $a2, $a0, -0x1
  .L8001EF74:
    /* D784 8001EF74 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* D788 8001EF78 FFFFA224 */  addiu      $v0, $a1, -0x1
    /* D78C 8001EF7C FF004530 */  andi       $a1, $v0, 0xFF
  .L8001EF80:
    /* D790 8001EF80 07008104 */  bgez       $a0, .L8001EFA0
    /* D794 8001EF84 00000000 */   nop
    /* D798 8001EF88 21504401 */  addu       $t2, $t2, $a0
    /* D79C 8001EF8C 08004019 */  blez       $t2, .L8001EFB0
    /* D7A0 8001EF90 00000000 */   nop
    /* D7A4 8001EF94 0C006B25 */  addiu      $t3, $t3, 0xC
    /* D7A8 8001EF98 EA7B0008 */  j          .L8001EFA8
    /* D7AC 8001EF9C FFFF0624 */   addiu     $a2, $zero, -0x1
  .L8001EFA0:
    /* D7B0 8001EFA0 0C006B25 */  addiu      $t3, $t3, 0xC
    /* D7B4 8001EFA4 FFFF4A25 */  addiu      $t2, $t2, -0x1
  .L8001EFA8:
    /* D7B8 8001EFA8 C0FF401D */  bgtz       $t2, .L8001EEAC
    /* D7BC 8001EFAC 00000000 */   nop
  .L8001EFB0:
    /* D7C0 8001EFB0 23C83703 */  subu       $t9, $t9, $s7
    /* D7C4 8001EFB4 23C01603 */  subu       $t8, $t8, $s6
    /* D7C8 8001EFB8 1400E28D */  lw         $v0, 0x14($t7)
    /* D7CC 8001EFBC 0000E38D */  lw         $v1, 0x0($t7)
    /* D7D0 8001EFC0 00F04224 */  addiu      $v0, $v0, -0x1000
    /* D7D4 8001EFC4 00106324 */  addiu      $v1, $v1, 0x1000
    /* D7D8 8001EFC8 1400E2AD */  sw         $v0, 0x14($t7)
    /* D7DC 8001EFCC FAFE6004 */  bltz       $v1, .L8001EBB8
    /* D7E0 8001EFD0 0000E3AD */   sw        $v1, 0x0($t7)
    /* D7E4 8001EFD4 1800E28D */  lw         $v0, 0x18($t7)
    /* D7E8 8001EFD8 00000000 */  nop
    /* D7EC 8001EFDC 18004010 */  beqz       $v0, .L8001F040
    /* D7F0 8001EFE0 00100424 */   addiu     $a0, $zero, 0x1000
    /* D7F4 8001EFE4 23208300 */  subu       $a0, $a0, $v1
    /* D7F8 8001EFE8 0C001224 */  addiu      $s2, $zero, 0xC
    /* D7FC 8001EFEC 1800E402 */  mult       $s7, $a0
    /* D800 8001EFF0 20000534 */  ori        $a1, $zero, 0x20
    /* D804 8001EFF4 2228B200 */  sub        $a1, $a1, $s2 /* handwritten instruction */
    /* D808 8001EFF8 10100000 */  mfhi       $v0
    /* D80C 8001EFFC 0410A200 */  sllv       $v0, $v0, $a1
    /* D810 8001F000 12280000 */  mflo       $a1
    /* D814 8001F004 06284502 */  srlv       $a1, $a1, $s2
    /* D818 8001F008 25104500 */  or         $v0, $v0, $a1
    /* D81C 8001F00C 2310E202 */  subu       $v0, $s7, $v0
    /* D820 8001F010 21C82203 */  addu       $t9, $t9, $v0
    /* D824 8001F014 0C001324 */  addiu      $s3, $zero, 0xC
    /* D828 8001F018 1800C402 */  mult       $s6, $a0
    /* D82C 8001F01C 20000634 */  ori        $a2, $zero, 0x20
    /* D830 8001F020 2230D300 */  sub        $a2, $a2, $s3 /* handwritten instruction */
    /* D834 8001F024 10180000 */  mfhi       $v1
    /* D838 8001F028 0418C300 */  sllv       $v1, $v1, $a2
    /* D83C 8001F02C 12300000 */  mflo       $a2
    /* D840 8001F030 06306602 */  srlv       $a2, $a2, $s3
    /* D844 8001F034 25186600 */  or         $v1, $v1, $a2
    /* D848 8001F038 2318C302 */  subu       $v1, $s6, $v1
    /* D84C 8001F03C 21C00303 */  addu       $t8, $t8, $v1
  .L8001F040:
    /* D850 8001F040 2800B0AE */  sw         $s0, 0x28($s5)
    /* D854 8001F044 2C00B1AE */  sw         $s1, 0x2C($s5)
    /* D858 8001F048 3400B28F */  lw         $s2, 0x34($sp)
    /* D85C 8001F04C 6000BE8F */  lw         $fp, 0x60($sp)
    /* D860 8001F050 5C00B78F */  lw         $s7, 0x5C($sp)
    /* D864 8001F054 5800B68F */  lw         $s6, 0x58($sp)
    /* D868 8001F058 5000B48F */  lw         $s4, 0x50($sp)
    /* D86C 8001F05C 4400B18F */  lw         $s1, 0x44($sp)
    /* D870 8001F060 4000B08F */  lw         $s0, 0x40($sp)
    /* D874 8001F064 3000B2AE */  sw         $s2, 0x30($s5)
    /* D878 8001F068 6C00B38F */  lw         $s3, 0x6C($sp)
    /* D87C 8001F06C 5400B58F */  lw         $s5, 0x54($sp)
    /* D880 8001F070 000079AE */  sw         $t9, 0x0($s3)
    /* D884 8001F074 7400B28F */  lw         $s2, 0x74($sp)
    /* D888 8001F078 4C00B38F */  lw         $s3, 0x4C($sp)
    /* D88C 8001F07C 000058AE */  sw         $t8, 0x0($s2)
    /* D890 8001F080 4800B28F */  lw         $s2, 0x48($sp)
    /* D894 8001F084 2800A0AF */  sw         $zero, 0x28($sp)
    /* D898 8001F088 0800E003 */  jr         $ra
    /* D89C 8001F08C 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_8001EAF4
