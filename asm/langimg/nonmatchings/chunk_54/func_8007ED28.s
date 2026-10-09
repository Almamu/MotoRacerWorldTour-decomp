/* Handwritten function */
nonmatching func_8007ED28, 0x2D8

glabel func_8007ED28
    /* 6D538 8007ED28 48FFBD27 */  addiu      $sp, $sp, -0xB8
    /* 6D53C 8007ED2C A800B6AF */  sw         $s6, 0xA8($sp)
    /* 6D540 8007ED30 21B0C000 */  addu       $s6, $a2, $zero
    /* 6D544 8007ED34 A400B5AF */  sw         $s5, 0xA4($sp)
    /* 6D548 8007ED38 21A8E000 */  addu       $s5, $a3, $zero
    /* 6D54C 8007ED3C A000B4AF */  sw         $s4, 0xA0($sp)
    /* 6D550 8007ED40 21A08000 */  addu       $s4, $a0, $zero
    /* 6D554 8007ED44 9800B2AF */  sw         $s2, 0x98($sp)
    /* 6D558 8007ED48 8000B227 */  addiu      $s2, $sp, 0x80
    /* 6D55C 8007ED4C AC00B7AF */  sw         $s7, 0xAC($sp)
    /* 6D560 8007ED50 C800B78F */  lw         $s7, 0xC8($sp)
    /* 6D564 8007ED54 21204002 */  addu       $a0, $s2, $zero
    /* 6D568 8007ED58 9C00B3AF */  sw         $s3, 0x9C($sp)
    /* 6D56C 8007ED5C B475938F */  lw         $s3, %gp_rel(D_800CBCA4)($gp)
    /* 6D570 8007ED60 0D80063C */  lui        $a2, %hi(D_800CBCA8)
    /* 6D574 8007ED64 A8BCC624 */  addiu      $a2, $a2, %lo(D_800CBCA8)
    /* 6D578 8007ED68 B000BFAF */  sw         $ra, 0xB0($sp)
    /* 6D57C 8007ED6C 9400B1AF */  sw         $s1, 0x94($sp)
    /* 6D580 8007ED70 3466020C */  jal        func_800998D0
    /* 6D584 8007ED74 9000B0AF */   sw        $s0, 0x90($sp)
    /* 6D588 8007ED78 7000B127 */  addiu      $s1, $sp, 0x70
    /* 6D58C 8007ED7C 21202002 */  addu       $a0, $s1, $zero
    /* 6D590 8007ED80 8000A28F */  lw         $v0, 0x80($sp)
    /* 6D594 8007ED84 8400A38F */  lw         $v1, 0x84($sp)
    /* 6D598 8007ED88 8800A68F */  lw         $a2, 0x88($sp)
    /* 6D59C 8007ED8C 0C000524 */  addiu      $a1, $zero, 0xC
    /* 6D5A0 8007ED90 7000A2AF */  sw         $v0, 0x70($sp)
    /* 6D5A4 8007ED94 7400A3AF */  sw         $v1, 0x74($sp)
    /* 6D5A8 8007ED98 3A64020C */  jal        func_800990E8
    /* 6D5AC 8007ED9C 7800A6AF */   sw        $a2, 0x78($sp)
    /* 6D5B0 8007EDA0 5000B027 */  addiu      $s0, $sp, 0x50
    /* 6D5B4 8007EDA4 21200002 */  addu       $a0, $s0, $zero
    /* 6D5B8 8007EDA8 21284002 */  addu       $a1, $s2, $zero
    /* 6D5BC 8007EDAC 21302002 */  addu       $a2, $s1, $zero
    /* 6D5C0 8007EDB0 00F00224 */  addiu      $v0, $zero, -0x1000
    /* 6D5C4 8007EDB4 8000A0AF */  sw         $zero, 0x80($sp)
    /* 6D5C8 8007EDB8 040042AE */  sw         $v0, 0x4($s2)
    /* 6D5CC 8007EDBC 4266020C */  jal        func_80099908
    /* 6D5D0 8007EDC0 8800A0AF */   sw        $zero, 0x88($sp)
    /* 6D5D4 8007EDC4 A763020C */  jal        func_80098E9C
    /* 6D5D8 8007EDC8 21200002 */   addu      $a0, $s0, $zero
    /* 6D5DC 8007EDCC 6000A427 */  addiu      $a0, $sp, 0x60
    /* 6D5E0 8007EDD0 21282002 */  addu       $a1, $s1, $zero
    /* 6D5E4 8007EDD4 4266020C */  jal        func_80099908
    /* 6D5E8 8007EDD8 21300002 */   addu      $a2, $s0, $zero
    /* 6D5EC 8007EDDC 3000A427 */  addiu      $a0, $sp, 0x30
    /* 6D5F0 8007EDE0 14008526 */  addiu      $a1, $s4, 0x14
    /* 6D5F4 8007EDE4 2400B127 */  addiu      $s1, $sp, 0x24
    /* 6D5F8 8007EDE8 21302002 */  addu       $a2, $s1, $zero
    /* 6D5FC 8007EDEC 5000A297 */  lhu        $v0, 0x50($sp)
    /* 6D600 8007EDF0 5400A397 */  lhu        $v1, 0x54($sp)
    /* 6D604 8007EDF4 5800A797 */  lhu        $a3, 0x58($sp)
    /* 6D608 8007EDF8 6000A897 */  lhu        $t0, 0x60($sp)
    /* 6D60C 8007EDFC 6400A997 */  lhu        $t1, 0x64($sp)
    /* 6D610 8007EE00 6800AA97 */  lhu        $t2, 0x68($sp)
    /* 6D614 8007EE04 1000B027 */  addiu      $s0, $sp, 0x10
    /* 6D618 8007EE08 3C00A0A7 */  sh         $zero, 0x3C($sp)
    /* 6D61C 8007EE0C 3E00A0A7 */  sh         $zero, 0x3E($sp)
    /* 6D620 8007EE10 4000A0A7 */  sh         $zero, 0x40($sp)
    /* 6D624 8007EE14 3000A2A7 */  sh         $v0, 0x30($sp)
    /* 6D628 8007EE18 3200A3A7 */  sh         $v1, 0x32($sp)
    /* 6D62C 8007EE1C 3400A7A7 */  sh         $a3, 0x34($sp)
    /* 6D630 8007EE20 3600A8A7 */  sh         $t0, 0x36($sp)
    /* 6D634 8007EE24 3800A9A7 */  sh         $t1, 0x38($sp)
    /* 6D638 8007EE28 DA61020C */  jal        func_80098768
    /* 6D63C 8007EE2C 3A00AAA7 */   sh        $t2, 0x3A($sp)
    /* 6D640 8007EE30 21202002 */  addu       $a0, $s1, $zero
    /* 6D644 8007EE34 F465020C */  jal        func_800997D0
    /* 6D648 8007EE38 4400A527 */   addiu     $a1, $sp, 0x44
    /* 6D64C 8007EE3C 21208002 */  addu       $a0, $s4, $zero
    /* 6D650 8007EE40 6A61020C */  jal        func_800985A8
    /* 6D654 8007EE44 21280002 */   addu      $a1, $s0, $zero
    /* 6D658 8007EE48 0A006392 */  lbu        $v1, 0xA($s3)
    /* 6D65C 8007EE4C 00006292 */  lbu        $v0, 0x0($s3)
    /* 6D660 8007EE50 1000A887 */  lh         $t0, 0x10($sp)
    /* 6D664 8007EE54 23186200 */  subu       $v1, $v1, $v0
    /* 6D668 8007EE58 18000301 */  mult       $t0, $v1
    /* 6D66C 8007EE5C 12400000 */  mflo       $t0
    /* 6D670 8007EE60 1200A687 */  lh         $a2, 0x12($sp)
    /* 6D674 8007EE64 00000000 */  nop
    /* 6D678 8007EE68 1800C300 */  mult       $a2, $v1
    /* 6D67C 8007EE6C 12300000 */  mflo       $a2
    /* 6D680 8007EE70 1400A787 */  lh         $a3, 0x14($sp)
    /* 6D684 8007EE74 00000000 */  nop
    /* 6D688 8007EE78 1800E300 */  mult       $a3, $v1
    /* 6D68C 8007EE7C 01006492 */  lbu        $a0, 0x1($s3)
    /* 6D690 8007EE80 0B006292 */  lbu        $v0, 0xB($s3)
    /* 6D694 8007EE84 12380000 */  mflo       $a3
    /* 6D698 8007EE88 1600A587 */  lh         $a1, 0x16($sp)
    /* 6D69C 8007EE8C 23104400 */  subu       $v0, $v0, $a0
    /* 6D6A0 8007EE90 1800A200 */  mult       $a1, $v0
    /* 6D6A4 8007EE94 12280000 */  mflo       $a1
    /* 6D6A8 8007EE98 1800A387 */  lh         $v1, 0x18($sp)
    /* 6D6AC 8007EE9C 00000000 */  nop
    /* 6D6B0 8007EEA0 18006200 */  mult       $v1, $v0
    /* 6D6B4 8007EEA4 12180000 */  mflo       $v1
    /* 6D6B8 8007EEA8 1A00A487 */  lh         $a0, 0x1A($sp)
    /* 6D6BC 8007EEAC 00000000 */  nop
    /* 6D6C0 8007EEB0 18008200 */  mult       $a0, $v0
    /* 6D6C4 8007EEB4 43410800 */  sra        $t0, $t0, 5
    /* 6D6C8 8007EEB8 1000A8A7 */  sh         $t0, 0x10($sp)
    /* 6D6CC 8007EEBC 43310600 */  sra        $a2, $a2, 5
    /* 6D6D0 8007EEC0 1200A6A7 */  sh         $a2, 0x12($sp)
    /* 6D6D4 8007EEC4 43390700 */  sra        $a3, $a3, 5
    /* 6D6D8 8007EEC8 1400A7A7 */  sh         $a3, 0x14($sp)
    /* 6D6DC 8007EECC 43290500 */  sra        $a1, $a1, 5
    /* 6D6E0 8007EED0 1600A5A7 */  sh         $a1, 0x16($sp)
    /* 6D6E4 8007EED4 43190300 */  sra        $v1, $v1, 5
    /* 6D6E8 8007EED8 1800A3A7 */  sh         $v1, 0x18($sp)
    /* 6D6EC 8007EEDC 12200000 */  mflo       $a0
    /* 6D6F0 8007EEE0 43210400 */  sra        $a0, $a0, 5
    /* 6D6F4 8007EEE4 1A00A4A7 */  sh         $a0, 0x1A($sp)
    /* 6D6F8 8007EEE8 00006592 */  lbu        $a1, 0x0($s3)
    /* 6D6FC 8007EEEC 0A006292 */  lbu        $v0, 0xA($s3)
    /* 6D700 8007EEF0 01006492 */  lbu        $a0, 0x1($s3)
    /* 6D704 8007EEF4 0B006392 */  lbu        $v1, 0xB($s3)
    /* 6D708 8007EEF8 2128A200 */  addu       $a1, $a1, $v0
    /* 6D70C 8007EEFC C0280500 */  sll        $a1, $a1, 3
    /* 6D710 8007EF00 21208300 */  addu       $a0, $a0, $v1
    /* 6D714 8007EF04 C0200400 */  sll        $a0, $a0, 3
    /* 6D718 8007EF08 0000028E */  lw         $v0, 0x0($s0)
    /* 6D71C 8007EF0C 0400038E */  lw         $v1, 0x4($s0)
    /* 6D720 8007EF10 0080C248 */  ctc2       $v0, $16 /* handwritten instruction */
    /* 6D724 8007EF14 0088C348 */  ctc2       $v1, $17 /* handwritten instruction */
    /* 6D728 8007EF18 0800028E */  lw         $v0, 0x8($s0)
    /* 6D72C 8007EF1C 0C00038E */  lw         $v1, 0xC($s0)
    /* 6D730 8007EF20 0090C248 */  ctc2       $v0, $18 /* handwritten instruction */
    /* 6D734 8007EF24 1000028E */  lw         $v0, 0x10($s0)
    /* 6D738 8007EF28 0098C348 */  ctc2       $v1, $19 /* handwritten instruction */
    /* 6D73C 8007EF2C 00A0C248 */  ctc2       $v0, $20 /* handwritten instruction */
    /* 6D740 8007EF30 0068C548 */  ctc2       $a1, $13 /* handwritten instruction */
    /* 6D744 8007EF34 0070C448 */  ctc2       $a0, $14 /* handwritten instruction */
    /* 6D748 8007EF38 21580000 */  addu       $t3, $zero, $zero
    /* 6D74C 8007EF3C 0078CB48 */  ctc2       $t3, $15 /* handwritten instruction */
    /* 6D750 8007EF40 FFFF0B24 */  addiu      $t3, $zero, -0x1
    /* 6D754 8007EF44 00308B48 */  mtc2       $t3, $6 /* handwritten instruction */
    /* 6D758 8007EF48 0000A58E */  lw         $a1, 0x0($s5)
    /* 6D75C 8007EF4C 0400B526 */  addiu      $s5, $s5, 0x4
    /* 6D760 8007EF50 00FF043C */  lui        $a0, (0xFF000000 >> 16)
    /* 6D764 8007EF54 003E0500 */  sll        $a3, $a1, 24
    /* 6D768 8007EF58 001C0500 */  sll        $v1, $a1, 16
    /* 6D76C 8007EF5C 24306400 */  and        $a2, $v1, $a0
    /* 6D770 8007EF60 00120500 */  sll        $v0, $a1, 8
    /* 6D774 8007EF64 24184400 */  and        $v1, $v0, $a0
    /* 6D778 8007EF68 833D0700 */  sra        $a3, $a3, 22
    /* 6D77C 8007EF6C 83350600 */  sra        $a2, $a2, 22
    /* 6D780 8007EF70 831D0300 */  sra        $v1, $v1, 22
    /* 6D784 8007EF74 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 6D788 8007EF78 00508648 */  mtc2       $a2, $10 /* handwritten instruction */
    /* 6D78C 8007EF7C 00588348 */  mtc2       $v1, $11 /* handwritten instruction */
    /* 6D790 8007EF80 F8FFD626 */  addiu      $s6, $s6, -0x8
  .L8007EF84:
    /* 6D794 8007EF84 00000000 */  nop
    /* 6D798 8007EF88 1C04384B */  cc
    /* 6D79C 8007EF8C 0000A58E */  lw         $a1, 0x0($s5)
    /* 6D7A0 8007EF90 0400B526 */  addiu      $s5, $s5, 0x4
    /* 6D7A4 8007EF94 0800D626 */  addiu      $s6, $s6, 0x8
    /* 6D7A8 8007EF98 003E0500 */  sll        $a3, $a1, 24
    /* 6D7AC 8007EF9C 00140500 */  sll        $v0, $a1, 16
    /* 6D7B0 8007EFA0 24304400 */  and        $a2, $v0, $a0
    /* 6D7B4 8007EFA4 001A0500 */  sll        $v1, $a1, 8
    /* 6D7B8 8007EFA8 24186400 */  and        $v1, $v1, $a0
    /* 6D7BC 8007EFAC 833D0700 */  sra        $a3, $a3, 22
    /* 6D7C0 8007EFB0 83350600 */  sra        $a2, $a2, 22
    /* 6D7C4 8007EFB4 831D0300 */  sra        $v1, $v1, 22
    /* 6D7C8 8007EFB8 00B00248 */  mfc2       $v0, $22 /* handwritten instruction */
    /* 6D7CC 8007EFBC 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 6D7D0 8007EFC0 00508648 */  mtc2       $a2, $10 /* handwritten instruction */
    /* 6D7D4 8007EFC4 00588348 */  mtc2       $v1, $11 /* handwritten instruction */
    /* 6D7D8 8007EFC8 FFFFF726 */  addiu      $s7, $s7, -0x1
    /* 6D7DC 8007EFCC EDFFE016 */  bnez       $s7, .L8007EF84
    /* 6D7E0 8007EFD0 0600C2A6 */   sh        $v0, 0x6($s6)
    /* 6D7E4 8007EFD4 B000BF8F */  lw         $ra, 0xB0($sp)
    /* 6D7E8 8007EFD8 AC00B78F */  lw         $s7, 0xAC($sp)
    /* 6D7EC 8007EFDC A800B68F */  lw         $s6, 0xA8($sp)
    /* 6D7F0 8007EFE0 A400B58F */  lw         $s5, 0xA4($sp)
    /* 6D7F4 8007EFE4 A000B48F */  lw         $s4, 0xA0($sp)
    /* 6D7F8 8007EFE8 9C00B38F */  lw         $s3, 0x9C($sp)
    /* 6D7FC 8007EFEC 9800B28F */  lw         $s2, 0x98($sp)
    /* 6D800 8007EFF0 9400B18F */  lw         $s1, 0x94($sp)
    /* 6D804 8007EFF4 9000B08F */  lw         $s0, 0x90($sp)
    /* 6D808 8007EFF8 0800E003 */  jr         $ra
    /* 6D80C 8007EFFC B800BD27 */   addiu     $sp, $sp, 0xB8
endlabel func_8007ED28
