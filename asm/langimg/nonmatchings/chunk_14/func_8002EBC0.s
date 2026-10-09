/* Handwritten function */
nonmatching func_8002EBC0, 0x768

glabel func_8002EBC0
    /* 1D3D0 8002EBC0 38FFBD27 */  addiu      $sp, $sp, -0xC8
    /* 1D3D4 8002EBC4 B800B4AF */  sw         $s4, 0xB8($sp)
    /* 1D3D8 8002EBC8 21A08000 */  addu       $s4, $a0, $zero
    /* 1D3DC 8002EBCC C400BFAF */  sw         $ra, 0xC4($sp)
    /* 1D3E0 8002EBD0 C000B6AF */  sw         $s6, 0xC0($sp)
    /* 1D3E4 8002EBD4 BC00B5AF */  sw         $s5, 0xBC($sp)
    /* 1D3E8 8002EBD8 B400B3AF */  sw         $s3, 0xB4($sp)
    /* 1D3EC 8002EBDC B000B2AF */  sw         $s2, 0xB0($sp)
    /* 1D3F0 8002EBE0 AC00B1AF */  sw         $s1, 0xAC($sp)
    /* 1D3F4 8002EBE4 A800B0AF */  sw         $s0, 0xA8($sp)
    /* 1D3F8 8002EBE8 A005828E */  lw         $v0, 0x5A0($s4)
    /* 1D3FC 8002EBEC 00000000 */  nop
    /* 1D400 8002EBF0 48014384 */  lh         $v1, 0x148($v0)
    /* 1D404 8002EBF4 98028486 */  lh         $a0, 0x298($s4)
    /* 1D408 8002EBF8 40810300 */  sll        $s0, $v1, 5
    /* 1D40C 8002EBFC 23800302 */  subu       $s0, $s0, $v1
    /* 1D410 8002EC00 80801000 */  sll        $s0, $s0, 2
    /* 1D414 8002EC04 21800302 */  addu       $s0, $s0, $v1
    /* 1D418 8002EC08 C0801000 */  sll        $s0, $s0, 3
    /* 1D41C 8002EC0C 1A000402 */  div        $zero, $s0, $a0
    /* 1D420 8002EC10 12A80000 */  mflo       $s5
    /* 1D424 8002EC14 F402828E */  lw         $v0, 0x2F4($s4)
    /* 1D428 8002EC18 00000000 */  nop
    /* 1D42C 8002EC1C 18004400 */  mult       $v0, $a0
    /* 1D430 8002EC20 11000524 */  addiu      $a1, $zero, 0x11
    /* 1D434 8002EC24 12200000 */  mflo       $a0
    /* 1D438 8002EC28 9A5E020C */  jal        func_80097A68
    /* 1D43C 8002EC2C 21300002 */   addu      $a2, $s0, $zero
    /* 1D440 8002EC30 F802838E */  lw         $v1, 0x2F8($s4)
    /* 1D444 8002EC34 00000000 */  nop
    /* 1D448 8002EC38 801B0300 */  sll        $v1, $v1, 14
    /* 1D44C 8002EC3C 1A007500 */  div        $zero, $v1, $s5
    /* 1D450 8002EC40 12180000 */  mflo       $v1
    /* 1D454 8002EC44 98028686 */  lh         $a2, 0x298($s4)
    /* 1D458 8002EC48 FC02848E */  lw         $a0, 0x2FC($s4)
    /* 1D45C 8002EC4C 00000000 */  nop
    /* 1D460 8002EC50 18008600 */  mult       $a0, $a2
    /* 1D464 8002EC54 11000524 */  addiu      $a1, $zero, 0x11
    /* 1D468 8002EC58 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1D46C 8002EC5C 21300002 */  addu       $a2, $s0, $zero
    /* 1D470 8002EC60 12200000 */  mflo       $a0
    /* 1D474 8002EC64 C0180300 */  sll        $v1, $v1, 3
    /* 1D478 8002EC68 9A5E020C */  jal        func_80097A68
    /* 1D47C 8002EC6C 1400A3AF */   sw        $v1, 0x14($sp)
    /* 1D480 8002EC70 A0029626 */  addiu      $s6, $s4, 0x2A0
    /* 1D484 8002EC74 2120C002 */  addu       $a0, $s6, $zero
    /* 1D488 8002EC78 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1D48C 8002EC7C F465020C */  jal        func_800997D0
    /* 1D490 8002EC80 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1D494 8002EC84 CC05838E */  lw         $v1, 0x5CC($s4)
    /* 1D498 8002EC88 00000000 */  nop
    /* 1D49C 8002EC8C 1000628C */  lw         $v0, 0x10($v1)
    /* 1D4A0 8002EC90 00000000 */  nop
    /* 1D4A4 8002EC94 22004014 */  bnez       $v0, .L8002ED20
    /* 1D4A8 8002EC98 21208002 */   addu      $a0, $s4, $zero
    /* 1D4AC 8002EC9C 52B9000C */  jal        func_8002E548
    /* 1D4B0 8002ECA0 21208002 */   addu      $a0, $s4, $zero
    /* 1D4B4 8002ECA4 0803828E */  lw         $v0, 0x308($s4)
    /* 1D4B8 8002ECA8 00000000 */  nop
    /* 1D4BC 8002ECAC 00130200 */  sll        $v0, $v0, 12
    /* 1D4C0 8002ECB0 1A005500 */  div        $zero, $v0, $s5
    /* 1D4C4 8002ECB4 12300000 */  mflo       $a2
    /* 1D4C8 8002ECB8 9C02828E */  lw         $v0, 0x29C($s4)
    /* 1D4CC 8002ECBC 00000000 */  nop
    /* 1D4D0 8002ECC0 06004018 */  blez       $v0, .L8002ECDC
    /* 1D4D4 8002ECC4 1800A6AF */   sw        $a2, 0x18($sp)
    /* 1D4D8 8002ECC8 23104600 */  subu       $v0, $v0, $a2
    /* 1D4DC 8002ECCC 09004104 */  bgez       $v0, .L8002ECF4
    /* 1D4E0 8002ECD0 9C0282AE */   sw        $v0, 0x29C($s4)
    /* 1D4E4 8002ECD4 3DBB0008 */  j          .L8002ECF4
    /* 1D4E8 8002ECD8 9C0280AE */   sw        $zero, 0x29C($s4)
  .L8002ECDC:
    /* 1D4EC 8002ECDC 06004104 */  bgez       $v0, .L8002ECF8
    /* 1D4F0 8002ECE0 2120C002 */   addu      $a0, $s6, $zero
    /* 1D4F4 8002ECE4 21104600 */  addu       $v0, $v0, $a2
    /* 1D4F8 8002ECE8 03004018 */  blez       $v0, .L8002ECF8
    /* 1D4FC 8002ECEC 9C0282AE */   sw        $v0, 0x29C($s4)
    /* 1D500 8002ECF0 9C0280AE */  sw         $zero, 0x29C($s4)
  .L8002ECF4:
    /* 1D504 8002ECF4 2120C002 */  addu       $a0, $s6, $zero
  .L8002ECF8:
    /* 1D508 8002ECF8 9C02858E */  lw         $a1, 0x29C($s4)
    /* 1D50C 8002ECFC 00000000 */  nop
    /* 1D510 8002ED00 40290500 */  sll        $a1, $a1, 5
    /* 1D514 8002ED04 0200A104 */  bgez       $a1, .L8002ED10
    /* 1D518 8002ED08 00000000 */   nop
    /* 1D51C 8002ED0C 23280500 */  negu       $a1, $a1
  .L8002ED10:
    /* 1D520 8002ED10 508C000C */  jal        func_80023140
    /* 1D524 8002ED14 18000624 */   addiu     $a2, $zero, 0x18
    /* 1D528 8002ED18 9EBC0008 */  j          .L8002F278
    /* 1D52C 8002ED1C 00000000 */   nop
  .L8002ED20:
    /* 1D530 8002ED20 2000B227 */  addiu      $s2, $sp, 0x20
    /* 1D534 8002ED24 21284002 */  addu       $a1, $s2, $zero
    /* 1D538 8002ED28 3000B127 */  addiu      $s1, $sp, 0x30
    /* 1D53C 8002ED2C 21302002 */  addu       $a2, $s1, $zero
    /* 1D540 8002ED30 2000A0AF */  sw         $zero, 0x20($sp)
    /* 1D544 8002ED34 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1D548 8002ED38 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1D54C 8002ED3C 3000A0AF */  sw         $zero, 0x30($sp)
    /* 1D550 8002ED40 3400A0AF */  sw         $zero, 0x34($sp)
    /* 1D554 8002ED44 17BA000C */  jal        func_8002E85C
    /* 1D558 8002ED48 3800A0AF */   sw        $zero, 0x38($sp)
    /* 1D55C 8002ED4C 2120C002 */  addu       $a0, $s6, $zero
    /* 1D560 8002ED50 21284002 */  addu       $a1, $s2, $zero
    /* 1D564 8002ED54 0867020C */  jal        func_80099C20
    /* 1D568 8002ED58 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D56C 8002ED5C 21984000 */  addu       $s3, $v0, $zero
    /* 1D570 8002ED60 4000A427 */  addiu      $a0, $sp, 0x40
    /* 1D574 8002ED64 21286002 */  addu       $a1, $s3, $zero
    /* 1D578 8002ED68 2000A88F */  lw         $t0, 0x20($sp)
    /* 1D57C 8002ED6C 2400A98F */  lw         $t1, 0x24($sp)
    /* 1D580 8002ED70 2800AA8F */  lw         $t2, 0x28($sp)
    /* 1D584 8002ED74 4000A8AF */  sw         $t0, 0x40($sp)
    /* 1D588 8002ED78 4400A9AF */  sw         $t1, 0x44($sp)
    /* 1D58C 8002ED7C 4800AAAF */  sw         $t2, 0x48($sp)
    /* 1D590 8002ED80 3C65020C */  jal        func_800994F0
    /* 1D594 8002ED84 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D598 8002ED88 2120C002 */  addu       $a0, $s6, $zero
    /* 1D59C 8002ED8C 21282002 */  addu       $a1, $s1, $zero
    /* 1D5A0 8002ED90 0867020C */  jal        func_80099C20
    /* 1D5A4 8002ED94 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D5A8 8002ED98 5000A427 */  addiu      $a0, $sp, 0x50
    /* 1D5AC 8002ED9C 21284000 */  addu       $a1, $v0, $zero
    /* 1D5B0 8002EDA0 3000A88F */  lw         $t0, 0x30($sp)
    /* 1D5B4 8002EDA4 3400A98F */  lw         $t1, 0x34($sp)
    /* 1D5B8 8002EDA8 3800AA8F */  lw         $t2, 0x38($sp)
    /* 1D5BC 8002EDAC 5000A8AF */  sw         $t0, 0x50($sp)
    /* 1D5C0 8002EDB0 5400A9AF */  sw         $t1, 0x54($sp)
    /* 1D5C4 8002EDB4 5800AAAF */  sw         $t2, 0x58($sp)
    /* 1D5C8 8002EDB8 3C65020C */  jal        func_800994F0
    /* 1D5CC 8002EDBC 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D5D0 8002EDC0 6000B027 */  addiu      $s0, $sp, 0x60
    /* 1D5D4 8002EDC4 21200002 */  addu       $a0, $s0, $zero
    /* 1D5D8 8002EDC8 21282002 */  addu       $a1, $s1, $zero
    /* 1D5DC 8002EDCC 21304002 */  addu       $a2, $s2, $zero
    /* 1D5E0 8002EDD0 D866020C */  jal        func_80099B60
    /* 1D5E4 8002EDD4 1A000724 */   addiu     $a3, $zero, 0x1A
    /* 1D5E8 8002EDD8 2120C002 */  addu       $a0, $s6, $zero
    /* 1D5EC 8002EDDC 21280002 */  addu       $a1, $s0, $zero
    /* 1D5F0 8002EDE0 0867020C */  jal        func_80099C20
    /* 1D5F4 8002EDE4 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D5F8 8002EDE8 7000A427 */  addiu      $a0, $sp, 0x70
    /* 1D5FC 8002EDEC A000A2AF */  sw         $v0, 0xA0($sp)
    /* 1D600 8002EDF0 6000A88F */  lw         $t0, 0x60($sp)
    /* 1D604 8002EDF4 6400A98F */  lw         $t1, 0x64($sp)
    /* 1D608 8002EDF8 6800AA8F */  lw         $t2, 0x68($sp)
    /* 1D60C 8002EDFC 7000A8AF */  sw         $t0, 0x70($sp)
    /* 1D610 8002EE00 7400A9AF */  sw         $t1, 0x74($sp)
    /* 1D614 8002EE04 7800AAAF */  sw         $t2, 0x78($sp)
    /* 1D618 8002EE08 A000A58F */  lw         $a1, 0xA0($sp)
    /* 1D61C 8002EE0C 3C65020C */  jal        func_800994F0
    /* 1D620 8002EE10 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D624 8002EE14 11000524 */  addiu      $a1, $zero, 0x11
    /* 1D628 8002EE18 0003848E */  lw         $a0, 0x300($s4)
    /* 1D62C 8002EE1C 9A5E020C */  jal        func_80097A68
    /* 1D630 8002EE20 2130A002 */   addu      $a2, $s5, $zero
    /* 1D634 8002EE24 11000524 */  addiu      $a1, $zero, 0x11
    /* 1D638 8002EE28 0803848E */  lw         $a0, 0x308($s4)
    /* 1D63C 8002EE2C 2130A002 */  addu       $a2, $s5, $zero
    /* 1D640 8002EE30 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1D644 8002EE34 9A5E020C */  jal        func_80097A68
    /* 1D648 8002EE38 1400A0AF */   sw        $zero, 0x14($sp)
    /* 1D64C 8002EE3C 0900601A */  blez       $s3, .L8002EE64
    /* 1D650 8002EE40 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1D654 8002EE44 02004104 */  bgez       $v0, .L8002EE50
    /* 1D658 8002EE48 00000000 */   nop
    /* 1D65C 8002EE4C 23100200 */  negu       $v0, $v0
  .L8002EE50:
    /* 1D660 8002EE50 23986202 */  subu       $s3, $s3, $v0
    /* 1D664 8002EE54 0C006106 */  bgez       $s3, .L8002EE88
    /* 1D668 8002EE58 00000000 */   nop
    /* 1D66C 8002EE5C A2BB0008 */  j          .L8002EE88
    /* 1D670 8002EE60 21980000 */   addu      $s3, $zero, $zero
  .L8002EE64:
    /* 1D674 8002EE64 08006106 */  bgez       $s3, .L8002EE88
    /* 1D678 8002EE68 00000000 */   nop
    /* 1D67C 8002EE6C 02004104 */  bgez       $v0, .L8002EE78
    /* 1D680 8002EE70 00000000 */   nop
    /* 1D684 8002EE74 23100200 */  negu       $v0, $v0
  .L8002EE78:
    /* 1D688 8002EE78 21986202 */  addu       $s3, $s3, $v0
    /* 1D68C 8002EE7C 0200601A */  blez       $s3, .L8002EE88
    /* 1D690 8002EE80 00000000 */   nop
    /* 1D694 8002EE84 21980000 */  addu       $s3, $zero, $zero
  .L8002EE88:
    /* 1D698 8002EE88 58008282 */  lb         $v0, 0x58($s4)
    /* 1D69C 8002EE8C 00000000 */  nop
    /* 1D6A0 8002EE90 06004010 */  beqz       $v0, .L8002EEAC
    /* 1D6A4 8002EE94 21208002 */   addu      $a0, $s4, $zero
    /* 1D6A8 8002EE98 1000A68F */  lw         $a2, 0x10($sp)
    /* 1D6AC 8002EE9C 61BA000C */  jal        func_8002E984
    /* 1D6B0 8002EEA0 A000A527 */   addiu     $a1, $sp, 0xA0
    /* 1D6B4 8002EEA4 C4BB0008 */  j          .L8002EF10
    /* 1D6B8 8002EEA8 00000000 */   nop
  .L8002EEAC:
    /* 1D6BC 8002EEAC A000A48F */  lw         $a0, 0xA0($sp)
    /* 1D6C0 8002EEB0 00000000 */  nop
    /* 1D6C4 8002EEB4 0B008018 */  blez       $a0, .L8002EEE4
    /* 1D6C8 8002EEB8 00000000 */   nop
    /* 1D6CC 8002EEBC 1000A28F */  lw         $v0, 0x10($sp)
    /* 1D6D0 8002EEC0 00000000 */  nop
    /* 1D6D4 8002EEC4 02004104 */  bgez       $v0, .L8002EED0
    /* 1D6D8 8002EEC8 00000000 */   nop
    /* 1D6DC 8002EECC 23100200 */  negu       $v0, $v0
  .L8002EED0:
    /* 1D6E0 8002EED0 23108200 */  subu       $v0, $a0, $v0
    /* 1D6E4 8002EED4 0E004104 */  bgez       $v0, .L8002EF10
    /* 1D6E8 8002EED8 A000A2AF */   sw        $v0, 0xA0($sp)
    /* 1D6EC 8002EEDC C4BB0008 */  j          .L8002EF10
    /* 1D6F0 8002EEE0 A000A0AF */   sw        $zero, 0xA0($sp)
  .L8002EEE4:
    /* 1D6F4 8002EEE4 0A008104 */  bgez       $a0, .L8002EF10
    /* 1D6F8 8002EEE8 00000000 */   nop
    /* 1D6FC 8002EEEC 1000A28F */  lw         $v0, 0x10($sp)
    /* 1D700 8002EEF0 00000000 */  nop
    /* 1D704 8002EEF4 02004104 */  bgez       $v0, .L8002EF00
    /* 1D708 8002EEF8 00000000 */   nop
    /* 1D70C 8002EEFC 23100200 */  negu       $v0, $v0
  .L8002EF00:
    /* 1D710 8002EF00 21108200 */  addu       $v0, $a0, $v0
    /* 1D714 8002EF04 02004018 */  blez       $v0, .L8002EF10
    /* 1D718 8002EF08 A000A2AF */   sw        $v0, 0xA0($sp)
    /* 1D71C 8002EF0C A000A0AF */  sw         $zero, 0xA0($sp)
  .L8002EF10:
    /* 1D720 8002EF10 CC05838E */  lw         $v1, 0x5CC($s4)
    /* 1D724 8002EF14 00000000 */  nop
    /* 1D728 8002EF18 1400628C */  lw         $v0, 0x14($v1)
    /* 1D72C 8002EF1C 00000000 */  nop
    /* 1D730 8002EF20 13004010 */  beqz       $v0, .L8002EF70
    /* 1D734 8002EF24 00000000 */   nop
    /* 1D738 8002EF28 1800628C */  lw         $v0, 0x18($v1)
    /* 1D73C 8002EF2C 00000000 */  nop
    /* 1D740 8002EF30 0F004010 */  beqz       $v0, .L8002EF70
    /* 1D744 8002EF34 00000000 */   nop
    /* 1D748 8002EF38 B802838E */  lw         $v1, 0x2B8($s4)
    /* 1D74C 8002EF3C A000A48F */  lw         $a0, 0xA0($sp)
    /* 1D750 8002EF40 40190300 */  sll        $v1, $v1, 5
    /* 1D754 8002EF44 2A107300 */  slt        $v0, $v1, $s3
    /* 1D758 8002EF48 02004010 */  beqz       $v0, .L8002EF54
    /* 1D75C 8002EF4C 00000000 */   nop
    /* 1D760 8002EF50 21986000 */  addu       $s3, $v1, $zero
  .L8002EF54:
    /* 1D764 8002EF54 1801828E */  lw         $v0, 0x118($s4)
    /* 1D768 8002EF58 00000000 */  nop
    /* 1D76C 8002EF5C 40110200 */  sll        $v0, $v0, 5
    /* 1D770 8002EF60 2A184400 */  slt        $v1, $v0, $a0
    /* 1D774 8002EF64 02006010 */  beqz       $v1, .L8002EF70
    /* 1D778 8002EF68 00000000 */   nop
    /* 1D77C 8002EF6C A000A2AF */  sw         $v0, 0xA0($sp)
  .L8002EF70:
    /* 1D780 8002EF70 0F048282 */  lb         $v0, 0x40F($s4)
    /* 1D784 8002EF74 00000000 */  nop
    /* 1D788 8002EF78 28004010 */  beqz       $v0, .L8002F01C
    /* 1D78C 8002EF7C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1D790 8002EF80 2004838E */  lw         $v1, 0x420($s4)
    /* 1D794 8002EF84 00000000 */  nop
    /* 1D798 8002EF88 07006104 */  bgez       $v1, .L8002EFA8
    /* 1D79C 8002EF8C 2A106302 */   slt       $v0, $s3, $v1
    /* 1D7A0 8002EF90 1200033C */  lui        $v1, (0x120000 >> 16)
    /* 1D7A4 8002EF94 2A107300 */  slt        $v0, $v1, $s3
    /* 1D7A8 8002EF98 0C004010 */  beqz       $v0, .L8002EFCC
    /* 1D7AC 8002EF9C 200493AE */   sw        $s3, 0x420($s4)
    /* 1D7B0 8002EFA0 F3BB0008 */  j          .L8002EFCC
    /* 1D7B4 8002EFA4 200483AE */   sw        $v1, 0x420($s4)
  .L8002EFA8:
    /* 1D7B8 8002EFA8 07004014 */  bnez       $v0, .L8002EFC8
    /* 1D7BC 8002EFAC 0700023C */   lui       $v0, (0x7FFFF >> 16)
    /* 1D7C0 8002EFB0 FFFF4234 */  ori        $v0, $v0, (0x7FFFF & 0xFFFF)
    /* 1D7C4 8002EFB4 2A104300 */  slt        $v0, $v0, $v1
    /* 1D7C8 8002EFB8 04004014 */  bnez       $v0, .L8002EFCC
    /* 1D7CC 8002EFBC 2A107300 */   slt       $v0, $v1, $s3
    /* 1D7D0 8002EFC0 02004010 */  beqz       $v0, .L8002EFCC
    /* 1D7D4 8002EFC4 00000000 */   nop
  .L8002EFC8:
    /* 1D7D8 8002EFC8 200493AE */  sw         $s3, 0x420($s4)
  .L8002EFCC:
    /* 1D7DC 8002EFCC 2004838E */  lw         $v1, 0x420($s4)
    /* 1D7E0 8002EFD0 0500023C */  lui        $v0, (0x5FFFF >> 16)
    /* 1D7E4 8002EFD4 FFFF4234 */  ori        $v0, $v0, (0x5FFFF & 0xFFFF)
    /* 1D7E8 8002EFD8 2A104300 */  slt        $v0, $v0, $v1
    /* 1D7EC 8002EFDC 05004014 */  bnez       $v0, .L8002EFF4
    /* 1D7F0 8002EFE0 2A107300 */   slt       $v0, $v1, $s3
    /* 1D7F4 8002EFE4 0600023C */  lui        $v0, (0x60000 >> 16)
    /* 1D7F8 8002EFE8 200482AE */  sw         $v0, 0x420($s4)
    /* 1D7FC 8002EFEC 0600033C */  lui        $v1, (0x60000 >> 16)
    /* 1D800 8002EFF0 2A107300 */  slt        $v0, $v1, $s3
  .L8002EFF4:
    /* 1D804 8002EFF4 0A004010 */  beqz       $v0, .L8002F020
    /* 1D808 8002EFF8 5555023C */   lui       $v0, (0x55555556 >> 16)
    /* 1D80C 8002EFFC 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 1D810 8002F000 23186302 */  subu       $v1, $s3, $v1
    /* 1D814 8002F004 18006200 */  mult       $v1, $v0
    /* 1D818 8002F008 C31F0300 */  sra        $v1, $v1, 31
    /* 1D81C 8002F00C 10100000 */  mfhi       $v0
    /* 1D820 8002F010 23104300 */  subu       $v0, $v0, $v1
    /* 1D824 8002F014 08BC0008 */  j          .L8002F020
    /* 1D828 8002F018 23986202 */   subu      $s3, $s3, $v0
  .L8002F01C:
    /* 1D82C 8002F01C 200482AE */  sw         $v0, 0x420($s4)
  .L8002F020:
    /* 1D830 8002F020 4000A427 */  addiu      $a0, $sp, 0x40
    /* 1D834 8002F024 21286002 */  addu       $a1, $s3, $zero
    /* 1D838 8002F028 2000A28F */  lw         $v0, 0x20($sp)
    /* 1D83C 8002F02C 2400A38F */  lw         $v1, 0x24($sp)
    /* 1D840 8002F030 2800A78F */  lw         $a3, 0x28($sp)
    /* 1D844 8002F034 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 1D848 8002F038 4000A2AF */  sw         $v0, 0x40($sp)
    /* 1D84C 8002F03C 4400A3AF */  sw         $v1, 0x44($sp)
    /* 1D850 8002F040 3C65020C */  jal        func_800994F0
    /* 1D854 8002F044 4800A7AF */   sw        $a3, 0x48($sp)
    /* 1D858 8002F048 0D048382 */  lb         $v1, 0x40D($s4)
    /* 1D85C 8002F04C 00000000 */  nop
    /* 1D860 8002F050 0B006014 */  bnez       $v1, .L8002F080
    /* 1D864 8002F054 21A80000 */   addu      $s5, $zero, $zero
    /* 1D868 8002F058 58008382 */  lb         $v1, 0x58($s4)
    /* 1D86C 8002F05C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1D870 8002F060 06006214 */  bne        $v1, $v0, .L8002F07C
    /* 1D874 8002F064 00A00234 */   ori       $v0, $zero, 0xA000
    /* 1D878 8002F068 9C02838E */  lw         $v1, 0x29C($s4)
    /* 1D87C 8002F06C 00000000 */  nop
    /* 1D880 8002F070 2A104300 */  slt        $v0, $v0, $v1
    /* 1D884 8002F074 02004014 */  bnez       $v0, .L8002F080
    /* 1D888 8002F078 00000000 */   nop
  .L8002F07C:
    /* 1D88C 8002F07C 01001524 */  addiu      $s5, $zero, 0x1
  .L8002F080:
    /* 1D890 8002F080 9C02828E */  lw         $v0, 0x29C($s4)
    /* 1D894 8002F084 00000000 */  nop
    /* 1D898 8002F088 01104228 */  slti       $v0, $v0, 0x1001
    /* 1D89C 8002F08C 02004014 */  bnez       $v0, .L8002F098
    /* 1D8A0 8002F090 00000000 */   nop
    /* 1D8A4 8002F094 01001524 */  addiu      $s5, $zero, 0x1
  .L8002F098:
    /* 1D8A8 8002F098 2500A012 */  beqz       $s5, .L8002F130
    /* 1D8AC 8002F09C 7000B227 */   addiu     $s2, $sp, 0x70
    /* 1D8B0 8002F0A0 AC03828E */  lw         $v0, 0x3AC($s4)
    /* 1D8B4 8002F0A4 00000000 */  nop
    /* 1D8B8 8002F0A8 21004010 */  beqz       $v0, .L8002F130
    /* 1D8BC 8002F0AC 21404000 */   addu      $t0, $v0, $zero
    /* 1D8C0 8002F0B0 10000924 */  addiu      $t1, $zero, 0x10
    /* 1D8C4 8002F0B4 18006802 */  mult       $s3, $t0
    /* 1D8C8 8002F0B8 20000234 */  ori        $v0, $zero, 0x20
    /* 1D8CC 8002F0BC 22104900 */  sub        $v0, $v0, $t1 /* handwritten instruction */
    /* 1D8D0 8002F0C0 10280000 */  mfhi       $a1
    /* 1D8D4 8002F0C4 04284500 */  sllv       $a1, $a1, $v0
    /* 1D8D8 8002F0C8 12100000 */  mflo       $v0
    /* 1D8DC 8002F0CC 06102201 */  srlv       $v0, $v0, $t1
    /* 1D8E0 8002F0D0 2528A200 */  or         $a1, $a1, $v0
    /* 1D8E4 8002F0D4 1700A010 */  beqz       $a1, .L8002F134
    /* 1D8E8 8002F0D8 21204002 */   addu      $a0, $s2, $zero
    /* 1D8EC 8002F0DC 6000AA8F */  lw         $t2, 0x60($sp)
    /* 1D8F0 8002F0E0 6400AB8F */  lw         $t3, 0x64($sp)
    /* 1D8F4 8002F0E4 6800A88F */  lw         $t0, 0x68($sp)
    /* 1D8F8 8002F0E8 8000AAAF */  sw         $t2, 0x80($sp)
    /* 1D8FC 8002F0EC 8400ABAF */  sw         $t3, 0x84($sp)
    /* 1D900 8002F0F0 8800A8AF */  sw         $t0, 0x88($sp)
    /* 1D904 8002F0F4 8000B127 */  addiu      $s1, $sp, 0x80
    /* 1D908 8002F0F8 21202002 */  addu       $a0, $s1, $zero
    /* 1D90C 8002F0FC 3C65020C */  jal        func_800994F0
    /* 1D910 8002F100 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D914 8002F104 4000B027 */  addiu      $s0, $sp, 0x40
    /* 1D918 8002F108 21200002 */  addu       $a0, $s0, $zero
    /* 1D91C 8002F10C F465020C */  jal        func_800997D0
    /* 1D920 8002F110 21282002 */   addu      $a1, $s1, $zero
    /* 1D924 8002F114 21200002 */  addu       $a0, $s0, $zero
    /* 1D928 8002F118 02006106 */  bgez       $s3, .L8002F124
    /* 1D92C 8002F11C 21286002 */   addu      $a1, $s3, $zero
    /* 1D930 8002F120 23280500 */  negu       $a1, $a1
  .L8002F124:
    /* 1D934 8002F124 508C000C */  jal        func_80023140
    /* 1D938 8002F128 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1D93C 8002F12C 7000B227 */  addiu      $s2, $sp, 0x70
  .L8002F130:
    /* 1D940 8002F130 21204002 */  addu       $a0, $s2, $zero
  .L8002F134:
    /* 1D944 8002F134 A000A58F */  lw         $a1, 0xA0($sp)
    /* 1D948 8002F138 6000A28F */  lw         $v0, 0x60($sp)
    /* 1D94C 8002F13C 6400A38F */  lw         $v1, 0x64($sp)
    /* 1D950 8002F140 6800A78F */  lw         $a3, 0x68($sp)
    /* 1D954 8002F144 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 1D958 8002F148 7000A2AF */  sw         $v0, 0x70($sp)
    /* 1D95C 8002F14C 7400A3AF */  sw         $v1, 0x74($sp)
    /* 1D960 8002F150 3C65020C */  jal        func_800994F0
    /* 1D964 8002F154 7800A7AF */   sw        $a3, 0x78($sp)
    /* 1D968 8002F158 A005838E */  lw         $v1, 0x5A0($s4)
    /* 1D96C 8002F15C 00000000 */  nop
    /* 1D970 8002F160 2000628C */  lw         $v0, 0x20($v1)
    /* 1D974 8002F164 00000000 */  nop
    /* 1D978 8002F168 08004230 */  andi       $v0, $v0, 0x8
    /* 1D97C 8002F16C 05004014 */  bnez       $v0, .L8002F184
    /* 1D980 8002F170 01000224 */   addiu     $v0, $zero, 0x1
    /* 1D984 8002F174 58008382 */  lb         $v1, 0x58($s4)
    /* 1D988 8002F178 00000000 */  nop
    /* 1D98C 8002F17C 2E006214 */  bne        $v1, $v0, .L8002F238
    /* 1D990 8002F180 00000000 */   nop
  .L8002F184:
    /* 1D994 8002F184 2C00A012 */  beqz       $s5, .L8002F238
    /* 1D998 8002F188 00000000 */   nop
    /* 1D99C 8002F18C AC03828E */  lw         $v0, 0x3AC($s4)
    /* 1D9A0 8002F190 00000000 */  nop
    /* 1D9A4 8002F194 29004010 */  beqz       $v0, .L8002F23C
    /* 1D9A8 8002F198 9000B127 */   addiu     $s1, $sp, 0x90
    /* 1D9AC 8002F19C 4004828E */  lw         $v0, 0x440($s4)
    /* 1D9B0 8002F1A0 00000000 */  nop
    /* 1D9B4 8002F1A4 02004104 */  bgez       $v0, .L8002F1B0
    /* 1D9B8 8002F1A8 00000000 */   nop
    /* 1D9BC 8002F1AC 23100200 */  negu       $v0, $v0
  .L8002F1B0:
    /* 1D9C0 8002F1B0 51084228 */  slti       $v0, $v0, 0x851
    /* 1D9C4 8002F1B4 21004010 */  beqz       $v0, .L8002F23C
    /* 1D9C8 8002F1B8 10000824 */   addiu     $t0, $zero, 0x10
    /* 1D9CC 8002F1BC A000AA8F */  lw         $t2, 0xA0($sp)
    /* 1D9D0 8002F1C0 AC038B8E */  lw         $t3, 0x3AC($s4)
    /* 1D9D4 8002F1C4 00000000 */  nop
    /* 1D9D8 8002F1C8 18004B01 */  mult       $t2, $t3
    /* 1D9DC 8002F1CC 20000234 */  ori        $v0, $zero, 0x20
    /* 1D9E0 8002F1D0 22104800 */  sub        $v0, $v0, $t0 /* handwritten instruction */
    /* 1D9E4 8002F1D4 10880000 */  mfhi       $s1
    /* 1D9E8 8002F1D8 04885100 */  sllv       $s1, $s1, $v0
    /* 1D9EC 8002F1DC 12100000 */  mflo       $v0
    /* 1D9F0 8002F1E0 06100201 */  srlv       $v0, $v0, $t0
    /* 1D9F4 8002F1E4 25882202 */  or         $s1, $s1, $v0
    /* 1D9F8 8002F1E8 13002012 */  beqz       $s1, .L8002F238
    /* 1D9FC 8002F1EC 8000B027 */   addiu     $s0, $sp, 0x80
    /* 1DA00 8002F1F0 21200002 */  addu       $a0, $s0, $zero
    /* 1DA04 8002F1F4 E965020C */  jal        func_800997A4
    /* 1DA08 8002F1F8 2000A527 */   addiu     $a1, $sp, 0x20
    /* 1DA0C 8002F1FC 21200002 */  addu       $a0, $s0, $zero
    /* 1DA10 8002F200 21282002 */  addu       $a1, $s1, $zero
    /* 1DA14 8002F204 3C65020C */  jal        func_800994F0
    /* 1DA18 8002F208 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1DA1C 8002F20C 21204002 */  addu       $a0, $s2, $zero
    /* 1DA20 8002F210 F465020C */  jal        func_800997D0
    /* 1DA24 8002F214 21280002 */   addu      $a1, $s0, $zero
    /* 1DA28 8002F218 21204002 */  addu       $a0, $s2, $zero
    /* 1DA2C 8002F21C A000A58F */  lw         $a1, 0xA0($sp)
    /* 1DA30 8002F220 00000000 */  nop
    /* 1DA34 8002F224 0200A104 */  bgez       $a1, .L8002F230
    /* 1DA38 8002F228 00000000 */   nop
    /* 1DA3C 8002F22C 23280500 */  negu       $a1, $a1
  .L8002F230:
    /* 1DA40 8002F230 508C000C */  jal        func_80023140
    /* 1DA44 8002F234 1A000624 */   addiu     $a2, $zero, 0x1A
  .L8002F238:
    /* 1DA48 8002F238 9000B127 */  addiu      $s1, $sp, 0x90
  .L8002F23C:
    /* 1DA4C 8002F23C 21202002 */  addu       $a0, $s1, $zero
    /* 1DA50 8002F240 4000A527 */  addiu      $a1, $sp, 0x40
    /* 1DA54 8002F244 7000A627 */  addiu      $a2, $sp, 0x70
    /* 1DA58 8002F248 2666020C */  jal        func_80099898
    /* 1DA5C 8002F24C 8000B027 */   addiu     $s0, $sp, 0x80
    /* 1DA60 8002F250 21200002 */  addu       $a0, $s0, $zero
    /* 1DA64 8002F254 21282002 */  addu       $a1, $s1, $zero
    /* 1DA68 8002F258 2666020C */  jal        func_80099898
    /* 1DA6C 8002F25C 5000A627 */   addiu     $a2, $sp, 0x50
    /* 1DA70 8002F260 8000A28F */  lw         $v0, 0x80($sp)
    /* 1DA74 8002F264 8400A38F */  lw         $v1, 0x84($sp)
    /* 1DA78 8002F268 8800A48F */  lw         $a0, 0x88($sp)
    /* 1DA7C 8002F26C A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1DA80 8002F270 0400C3AE */  sw         $v1, 0x4($s6)
    /* 1DA84 8002F274 0800C4AE */  sw         $a0, 0x8($s6)
  .L8002F278:
    /* 1DA88 8002F278 52B9000C */  jal        func_8002E548
    /* 1DA8C 8002F27C 21208002 */   addu      $a0, $s4, $zero
    /* 1DA90 8002F280 2000B227 */  addiu      $s2, $sp, 0x20
    /* 1DA94 8002F284 21204002 */  addu       $a0, $s2, $zero
    /* 1DA98 8002F288 2128C002 */  addu       $a1, $s6, $zero
    /* 1DA9C 8002F28C AC029126 */  addiu      $s1, $s4, 0x2AC
    /* 1DAA0 8002F290 3466020C */  jal        func_800998D0
    /* 1DAA4 8002F294 21302002 */   addu      $a2, $s1, $zero
    /* 1DAA8 8002F298 3000B027 */  addiu      $s0, $sp, 0x30
    /* 1DAAC 8002F29C 21200002 */  addu       $a0, $s0, $zero
    /* 1DAB0 8002F2A0 3003898E */  lw         $t1, 0x330($s4)
    /* 1DAB4 8002F2A4 34038A8E */  lw         $t2, 0x334($s4)
    /* 1DAB8 8002F2A8 38038B8E */  lw         $t3, 0x338($s4)
    /* 1DABC 8002F2AC 3000A9AF */  sw         $t1, 0x30($sp)
    /* 1DAC0 8002F2B0 3400AAAF */  sw         $t2, 0x34($sp)
    /* 1DAC4 8002F2B4 3800ABAF */  sw         $t3, 0x38($sp)
    /* 1DAC8 8002F2B8 5267020C */  jal        func_80099D48
    /* 1DACC 8002F2BC 0E000524 */   addiu     $a1, $zero, 0xE
    /* 1DAD0 8002F2C0 21200002 */  addu       $a0, $s0, $zero
    /* 1DAD4 8002F2C4 21284002 */  addu       $a1, $s2, $zero
    /* 1DAD8 8002F2C8 0867020C */  jal        func_80099C20
    /* 1DADC 8002F2CC 11000624 */   addiu     $a2, $zero, 0x11
    /* 1DAE0 8002F2D0 9002848E */  lw         $a0, 0x290($s4)
    /* 1DAE4 8002F2D4 001B0200 */  sll        $v1, $v0, 12
    /* 1DAE8 8002F2D8 1A006400 */  div        $zero, $v1, $a0
    /* 1DAEC 8002F2DC 12180000 */  mflo       $v1
    /* 1DAF0 8002F2E0 F40082AE */  sw         $v0, 0xF4($s4)
    /* 1DAF4 8002F2E4 A002828E */  lw         $v0, 0x2A0($s4)
    /* 1DAF8 8002F2E8 C400BF8F */  lw         $ra, 0xC4($sp)
    /* 1DAFC 8002F2EC BC00B58F */  lw         $s5, 0xBC($sp)
    /* 1DB00 8002F2F0 B400B38F */  lw         $s3, 0xB4($sp)
    /* 1DB04 8002F2F4 B000B28F */  lw         $s2, 0xB0($sp)
    /* 1DB08 8002F2F8 A800B08F */  lw         $s0, 0xA8($sp)
    /* 1DB0C 8002F2FC F40083AE */  sw         $v1, 0xF4($s4)
    /* 1DB10 8002F300 0400C48E */  lw         $a0, 0x4($s6)
    /* 1DB14 8002F304 0800C38E */  lw         $v1, 0x8($s6)
    /* 1DB18 8002F308 C000B68F */  lw         $s6, 0xC0($sp)
    /* 1DB1C 8002F30C AC0282AE */  sw         $v0, 0x2AC($s4)
    /* 1DB20 8002F310 B800B48F */  lw         $s4, 0xB8($sp)
    /* 1DB24 8002F314 040024AE */  sw         $a0, 0x4($s1)
    /* 1DB28 8002F318 080023AE */  sw         $v1, 0x8($s1)
    /* 1DB2C 8002F31C AC00B18F */  lw         $s1, 0xAC($sp)
    /* 1DB30 8002F320 0800E003 */  jr         $ra
    /* 1DB34 8002F324 C800BD27 */   addiu     $sp, $sp, 0xC8
endlabel func_8002EBC0
