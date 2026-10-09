/* Handwritten function */
nonmatching func_8007E408, 0x33C

glabel func_8007E408
    /* 6CC18 8007E408 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6CC1C 8007E40C 21408000 */  addu       $t0, $a0, $zero
    /* 6CC20 8007E410 21C8C000 */  addu       $t9, $a2, $zero
    /* 6CC24 8007E414 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6CC28 8007E418 2188A000 */  addu       $s1, $a1, $zero
    /* 6CC2C 8007E41C C0181900 */  sll        $v1, $t9, 3
    /* 6CC30 8007E420 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* 6CC34 8007E424 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* 6CC38 8007E428 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6CC3C 8007E42C 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6CC40 8007E430 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6CC44 8007E434 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6CC48 8007E438 21187900 */  addu       $v1, $v1, $t9
    /* 6CC4C 8007E43C 3800BEAF */  sw         $fp, 0x38($sp)
    /* 6CC50 8007E440 3400B7AF */  sw         $s7, 0x34($sp)
    /* 6CC54 8007E444 3000B6AF */  sw         $s6, 0x30($sp)
    /* 6CC58 8007E448 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 6CC5C 8007E44C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 6CC60 8007E450 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6CC64 8007E454 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6CC68 8007E458 2310C200 */  subu       $v0, $a2, $v0
    /* 6CC6C 8007E45C 11004224 */  addiu      $v0, $v0, 0x11
    /* 6CC70 8007E460 21104300 */  addu       $v0, $v0, $v1
    /* 6CC74 8007E464 2A104400 */  slt        $v0, $v0, $a0
    /* 6CC78 8007E468 AB004010 */  beqz       $v0, .L8007E718
    /* 6CC7C 8007E46C 1800B0AF */   sw        $s0, 0x18($sp)
    /* 6CC80 8007E470 2138C000 */  addu       $a3, $a2, $zero
    /* 6CC84 8007E474 C77F143C */  lui        $s4, (0x7FC7E000 >> 16)
    /* 6CC88 8007E478 21800001 */  addu       $s0, $t0, $zero
    /* 6CC8C 8007E47C 00E09436 */  ori        $s4, $s4, (0x7FC7E000 & 0xFFFF)
    /* 6CC90 8007E480 0000038E */  lw         $v1, 0x0($s0)
    /* 6CC94 8007E484 0400048E */  lw         $a0, 0x4($s0)
    /* 6CC98 8007E488 B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6CC9C 8007E48C 0D80173C */  lui        $s7, %hi(D_800CBDC0)
    /* 6CCA0 8007E490 C0BDF78E */  lw         $s7, %lo(D_800CBDC0)($s7)
    /* 6CCA4 8007E494 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6CCA8 8007E498 C0100200 */  sll        $v0, $v0, 3
    /* 6CCAC 8007E49C 21C02202 */  addu       $t8, $s1, $v0
    /* 6CCB0 8007E4A0 021C0300 */  srl        $v1, $v1, 16
    /* 6CCB4 8007E4A4 C0180300 */  sll        $v1, $v1, 3
    /* 6CCB8 8007E4A8 21782302 */  addu       $t7, $s1, $v1
    /* 6CCBC 8007E4AC FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6CCC0 8007E4B0 C0100200 */  sll        $v0, $v0, 3
    /* 6CCC4 8007E4B4 21A82202 */  addu       $s5, $s1, $v0
    /* 6CCC8 8007E4B8 02240400 */  srl        $a0, $a0, 16
    /* 6CCCC 8007E4BC C0200400 */  sll        $a0, $a0, 3
    /* 6CCD0 8007E4C0 0600A294 */  lhu        $v0, 0x6($a1)
    /* 6CCD4 8007E4C4 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 6CCD8 8007E4C8 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 6CCDC 8007E4CC 20004224 */  addiu      $v0, $v0, 0x20
    /* 6CCE0 8007E4D0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 6CCE4 8007E4D4 0000A2AF */  sw         $v0, 0x0($sp)
    /* 6CCE8 8007E4D8 0400738C */  lw         $s3, 0x4($v1)
    /* 6CCEC 8007E4DC 0200A594 */  lhu        $a1, 0x2($a1)
    /* 6CCF0 8007E4E0 21682402 */  addu       $t5, $s1, $a0
    /* 6CCF4 8007E4E4 8A002013 */  beqz       $t9, .L8007E710
    /* 6CCF8 8007E4E8 0400A5AF */   sw        $a1, 0x4($sp)
    /* 6CCFC 8007E4EC 00091E3C */  lui        $fp, (0x9000000 >> 16)
    /* 6CD00 8007E4F0 802E163C */  lui        $s6, (0x2E808080 >> 16)
    /* 6CD04 8007E4F4 8080D636 */  ori        $s6, $s6, (0x2E808080 & 0xFFFF)
    /* 6CD08 8007E4F8 FBFF6E26 */  addiu      $t6, $s3, -0x5
    /* 6CD0C 8007E4FC 0800AEAF */  sw         $t6, 0x8($sp)
  .L8007E500:
    /* 6CD10 8007E500 000000CB */  lwc2       $0, 0x0($t8)
    /* 6CD14 8007E504 040001CB */  lwc2       $1, 0x4($t8)
    /* 6CD18 8007E508 0000E2C9 */  lwc2       $2, 0x0($t7)
    /* 6CD1C 8007E50C 0400E3C9 */  lwc2       $3, 0x4($t7)
    /* 6CD20 8007E510 0000A4C9 */  lwc2       $4, 0x0($t5)
    /* 6CD24 8007E514 0400A5C9 */  lwc2       $5, 0x4($t5)
    /* 6CD28 8007E518 21400002 */  addu       $t0, $s0, $zero
    /* 6CD2C 8007E51C 1C001025 */  addiu      $s0, $t0, 0x1C
    /* 6CD30 8007E520 2130A002 */  addu       $a2, $s5, $zero
    /* 6CD34 8007E524 3000284A */  rtpt
    /* 6CD38 8007E528 2158E000 */  addu       $t3, $a3, $zero
    /* 6CD3C 8007E52C 2800E924 */  addiu      $t1, $a3, 0x28
    /* 6CD40 8007E530 21902001 */  addu       $s2, $t1, $zero
    /* 6CD44 8007E534 06000297 */  lhu        $v0, 0x6($t8)
    /* 6CD48 8007E538 0600E395 */  lhu        $v1, 0x6($t7)
    /* 6CD4C 8007E53C 0600C494 */  lhu        $a0, 0x6($a2)
    /* 6CD50 8007E540 0600A595 */  lhu        $a1, 0x6($t5)
    /* 6CD54 8007E544 21502001 */  addu       $t2, $t1, $zero
    /* 6CD58 8007E548 0C00E2A4 */  sh         $v0, 0xC($a3)
    /* 6CD5C 8007E54C 1400E3A4 */  sh         $v1, 0x14($a3)
    /* 6CD60 8007E550 2400E4A4 */  sh         $a0, 0x24($a3)
    /* 6CD64 8007E554 1C00E5A4 */  sh         $a1, 0x1C($a3)
    /* 6CD68 8007E558 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6CD6C 8007E55C 0400048E */  lw         $a0, 0x4($s0)
    /* 6CD70 8007E560 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6CD74 8007E564 C0100200 */  sll        $v0, $v0, 3
    /* 6CD78 8007E568 21C02202 */  addu       $t8, $s1, $v0
    /* 6CD7C 8007E56C 021C0300 */  srl        $v1, $v1, 16
    /* 6CD80 8007E570 C0180300 */  sll        $v1, $v1, 3
    /* 6CD84 8007E574 21782302 */  addu       $t7, $s1, $v1
    /* 6CD88 8007E578 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6CD8C 8007E57C C0100200 */  sll        $v0, $v0, 3
    /* 6CD90 8007E580 21A82202 */  addu       $s5, $s1, $v0
    /* 6CD94 8007E584 02240400 */  srl        $a0, $a0, 16
    /* 6CD98 8007E588 C0200400 */  sll        $a0, $a0, 3
    /* 6CD9C 8007E58C 21682402 */  addu       $t5, $s1, $a0
    /* 6CDA0 8007E590 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6CDA4 8007E594 00000000 */  nop
    /* 6CDA8 8007E598 24105400 */  and        $v0, $v0, $s4
    /* 6CDAC 8007E59C 59004014 */  bnez       $v0, .L8007E704
    /* 6CDB0 8007E5A0 00000000 */   nop
    /* 6CDB4 8007E5A4 0600404B */  nclip
    /* 6CDB8 8007E5A8 18000C8D */  lw         $t4, 0x18($t0)
    /* 6CDBC 8007E5AC 2800FEAC */  sw         $fp, 0x28($a3)
    /* 6CDC0 8007E5B0 0800028D */  lw         $v0, 0x8($t0)
    /* 6CDC4 8007E5B4 00000000 */  nop
    /* 6CDC8 8007E5B8 040022AD */  sw         $v0, 0x4($t1)
    /* 6CDCC 8007E5BC 00C00E48 */  mfc2       $t6, $24 /* handwritten instruction */
    /* 6CDD0 8007E5C0 00000000 */  nop
    /* 6CDD4 8007E5C4 1000AEAF */  sw         $t6, 0x10($sp)
    /* 6CDD8 8007E5C8 08004CE9 */  swc2       $12, 0x8($t2)
    /* 6CDDC 8007E5CC 10004DE9 */  swc2       $13, 0x10($t2)
    /* 6CDE0 8007E5D0 18004EE9 */  swc2       $14, 0x18($t2)
    /* 6CDE4 8007E5D4 08006CE9 */  swc2       $12, 0x8($t3)
    /* 6CDE8 8007E5D8 10006DE9 */  swc2       $13, 0x10($t3)
    /* 6CDEC 8007E5DC 18006EE9 */  swc2       $14, 0x18($t3)
    /* 6CDF0 8007E5E0 0000C0C8 */  lwc2       $0, 0x0($a2)
    /* 6CDF4 8007E5E4 0400C1C8 */  lwc2       $1, 0x4($a2)
    /* 6CDF8 8007E5E8 00000000 */  nop
    /* 6CDFC 8007E5EC 00000000 */  nop
    /* 6CE00 8007E5F0 0100184A */  rtps
    /* 6CE04 8007E5F4 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6CE08 8007E5F8 0C00038D */  lw         $v1, 0xC($t0)
    /* 6CE0C 8007E5FC 1000048D */  lw         $a0, 0x10($t0)
    /* 6CE10 8007E600 14000595 */  lhu        $a1, 0x14($t0)
    /* 6CE14 8007E604 16000695 */  lhu        $a2, 0x16($t0)
    /* 6CE18 8007E608 21104300 */  addu       $v0, $v0, $v1
    /* 6CE1C 8007E60C 0C0022AD */  sw         $v0, 0xC($t1)
    /* 6CE20 8007E610 140024AD */  sw         $a0, 0x14($t1)
    /* 6CE24 8007E614 240025A5 */  sh         $a1, 0x24($t1)
    /* 6CE28 8007E618 1C0026A5 */  sh         $a2, 0x1C($t1)
    /* 6CE2C 8007E61C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6CE30 8007E620 00000000 */  nop
    /* 6CE34 8007E624 24105400 */  and        $v0, $v0, $s4
    /* 6CE38 8007E628 36004014 */  bnez       $v0, .L8007E704
    /* 6CE3C 8007E62C 00000000 */   nop
    /* 6CE40 8007E630 20004EE9 */  swc2       $14, 0x20($t2)
    /* 6CE44 8007E634 20006EE9 */  swc2       $14, 0x20($t3)
    /* 6CE48 8007E638 82170C00 */  srl        $v0, $t4, 30
    /* 6CE4C 8007E63C 01004238 */  xori       $v0, $v0, 0x1
    /* 6CE50 8007E640 01004230 */  andi       $v0, $v0, 0x1
    /* 6CE54 8007E644 09004010 */  beqz       $v0, .L8007E66C
    /* 6CE58 8007E648 00000000 */   nop
    /* 6CE5C 8007E64C 0700C105 */  bgez       $t6, .L8007E66C
    /* 6CE60 8007E650 00000000 */   nop
    /* 6CE64 8007E654 0600404B */  nclip
    /* 6CE68 8007E658 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6CE6C 8007E65C 00000000 */  nop
    /* 6CE70 8007E660 F4FF4228 */  slti       $v0, $v0, -0xC
    /* 6CE74 8007E664 27004010 */  beqz       $v0, .L8007E704
    /* 6CE78 8007E668 00000000 */   nop
  .L8007E66C:
    /* 6CE7C 8007E66C 2E00684B */  avsz4
    /* 6CE80 8007E670 C0140C00 */  sll        $v0, $t4, 19
    /* 6CE84 8007E674 00C00E3C */  lui        $t6, (0xC0000000 >> 16)
    /* 6CE88 8007E678 24104E00 */  and        $v0, $v0, $t6
    /* 6CE8C 8007E67C 0000FEAC */  sw         $fp, 0x0($a3)
    /* 6CE90 8007E680 0400F6AC */  sw         $s6, 0x4($a3)
    /* 6CE94 8007E684 0400AE8F */  lw         $t6, 0x4($sp)
    /* 6CE98 8007E688 00000000 */  nop
    /* 6CE9C 8007E68C 0E00EEA4 */  sh         $t6, 0xE($a3)
    /* 6CEA0 8007E690 0000AE8F */  lw         $t6, 0x0($sp)
    /* 6CEA4 8007E694 432E0200 */  sra        $a1, $v0, 25
    /* 6CEA8 8007E698 1600EEA4 */  sh         $t6, 0x16($a3)
    /* 6CEAC 8007E69C 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 6CEB0 8007E6A0 00000000 */  nop
    /* 6CEB4 8007E6A4 2128A200 */  addu       $a1, $a1, $v0
    /* 6CEB8 8007E6A8 0800AE8F */  lw         $t6, 0x8($sp)
    /* 6CEBC 8007E6AC 00000000 */  nop
    /* 6CEC0 8007E6B0 2A30AE00 */  slt        $a2, $a1, $t6
    /* 6CEC4 8007E6B4 0200C014 */  bnez       $a2, .L8007E6C0
    /* 6CEC8 8007E6B8 2110A000 */   addu      $v0, $a1, $zero
    /* 6CECC 8007E6BC FAFF6226 */  addiu      $v0, $s3, -0x6
  .L8007E6C0:
    /* 6CED0 8007E6C0 80100200 */  sll        $v0, $v0, 2
    /* 6CED4 8007E6C4 2110E202 */  addu       $v0, $s7, $v0
    /* 6CED8 8007E6C8 02004488 */  lwl        $a0, 0x2($v0)
    /* 6CEDC 8007E6CC 001A0700 */  sll        $v1, $a3, 8
    /* 6CEE0 8007E6D0 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6CEE4 8007E6D4 020043A8 */  swl        $v1, 0x2($v0)
    /* 6CEE8 8007E6D8 21384002 */  addu       $a3, $s2, $zero
    /* 6CEEC 8007E6DC 0200C014 */  bnez       $a2, .L8007E6E8
    /* 6CEF0 8007E6E0 2110A000 */   addu      $v0, $a1, $zero
    /* 6CEF4 8007E6E4 FAFF6226 */  addiu      $v0, $s3, -0x6
  .L8007E6E8:
    /* 6CEF8 8007E6E8 80100200 */  sll        $v0, $v0, 2
    /* 6CEFC 8007E6EC 2110E202 */  addu       $v0, $s7, $v0
    /* 6CF00 8007E6F0 02004488 */  lwl        $a0, 0x2($v0)
    /* 6CF04 8007E6F4 001A0700 */  sll        $v1, $a3, 8
    /* 6CF08 8007E6F8 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6CF0C 8007E6FC 020043A8 */  swl        $v1, 0x2($v0)
    /* 6CF10 8007E700 28002725 */  addiu      $a3, $t1, 0x28
  .L8007E704:
    /* 6CF14 8007E704 FFFF3927 */  addiu      $t9, $t9, -0x1
    /* 6CF18 8007E708 7DFF2017 */  bnez       $t9, .L8007E500
    /* 6CF1C 8007E70C 00000000 */   nop
  .L8007E710:
    /* 6CF20 8007E710 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6CF24 8007E714 708C27AC */  sw         $a3, %lo(D_800C8C70)($at)
  .L8007E718:
    /* 6CF28 8007E718 3800BE8F */  lw         $fp, 0x38($sp)
    /* 6CF2C 8007E71C 3400B78F */  lw         $s7, 0x34($sp)
    /* 6CF30 8007E720 3000B68F */  lw         $s6, 0x30($sp)
    /* 6CF34 8007E724 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 6CF38 8007E728 2800B48F */  lw         $s4, 0x28($sp)
    /* 6CF3C 8007E72C 2400B38F */  lw         $s3, 0x24($sp)
    /* 6CF40 8007E730 2000B28F */  lw         $s2, 0x20($sp)
    /* 6CF44 8007E734 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6CF48 8007E738 1800B08F */  lw         $s0, 0x18($sp)
    /* 6CF4C 8007E73C 0800E003 */  jr         $ra
    /* 6CF50 8007E740 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8007E408
