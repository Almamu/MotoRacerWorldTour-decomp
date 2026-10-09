/* Handwritten function */
nonmatching func_8001E458, 0x69C

glabel func_8001E458
    /* CC68 8001E458 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* CC6C 8001E45C 21588000 */  addu       $t3, $a0, $zero
    /* CC70 8001E460 A400BFAF */  sw         $ra, 0xA4($sp)
    /* CC74 8001E464 A000BEAF */  sw         $fp, 0xA0($sp)
    /* CC78 8001E468 9C00B7AF */  sw         $s7, 0x9C($sp)
    /* CC7C 8001E46C 9800B6AF */  sw         $s6, 0x98($sp)
    /* CC80 8001E470 9400B5AF */  sw         $s5, 0x94($sp)
    /* CC84 8001E474 9000B4AF */  sw         $s4, 0x90($sp)
    /* CC88 8001E478 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* CC8C 8001E47C 8800B2AF */  sw         $s2, 0x88($sp)
    /* CC90 8001E480 8400B1AF */  sw         $s1, 0x84($sp)
    /* CC94 8001E484 8000B0AF */  sw         $s0, 0x80($sp)
    /* CC98 8001E488 280065AD */  sw         $a1, 0x28($t3)
    /* CC9C 8001E48C 2C0066AD */  sw         $a2, 0x2C($t3)
    /* CCA0 8001E490 300067AD */  sw         $a3, 0x30($t3)
    /* CCA4 8001E494 B800AC8F */  lw         $t4, 0xB8($sp)
    /* CCA8 8001E498 2400698D */  lw         $t1, 0x24($t3)
    /* CCAC 8001E49C 000080AD */  sw         $zero, 0x0($t4)
    /* CCB0 8001E4A0 BC00AD8F */  lw         $t5, 0xBC($sp)
    /* CCB4 8001E4A4 00000000 */  nop
    /* CCB8 8001E4A8 0000A0AD */  sw         $zero, 0x0($t5)
    /* CCBC 8001E4AC C000AC8F */  lw         $t4, 0xC0($sp)
    /* CCC0 8001E4B0 00000000 */  nop
    /* CCC4 8001E4B4 000080AD */  sw         $zero, 0x0($t4)
    /* CCC8 8001E4B8 B800658D */  lw         $a1, 0xB8($t3)
    /* CCCC 8001E4BC 00000000 */  nop
    /* CCD0 8001E4C0 0800A28C */  lw         $v0, 0x8($a1)
    /* CCD4 8001E4C4 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* CCD8 8001E4C8 0000448C */  lw         $a0, 0x0($v0)
    /* CCDC 8001E4CC 1800AD27 */  addiu      $t5, $sp, 0x18
    /* CCE0 8001E4D0 7400ADAF */  sw         $t5, 0x74($sp)
    /* CCE4 8001E4D4 83230400 */  sra        $a0, $a0, 14
    /* CCE8 8001E4D8 3400A4AF */  sw         $a0, 0x34($sp)
    /* CCEC 8001E4DC 0800A38C */  lw         $v1, 0x8($a1)
    /* CCF0 8001E4E0 00B30900 */  sll        $s6, $t1, 12
    /* CCF4 8001E4E4 0800628C */  lw         $v0, 0x8($v1)
    /* CCF8 8001E4E8 C400AA8F */  lw         $t2, 0xC4($sp)
    /* CCFC 8001E4EC 83130200 */  sra        $v0, $v0, 14
    /* CD00 8001E4F0 3800A2AF */  sw         $v0, 0x38($sp)
    /* CD04 8001E4F4 6401668D */  lw         $a2, 0x164($t3)
    /* CD08 8001E4F8 0C00A28C */  lw         $v0, 0xC($a1)
    /* CD0C 8001E4FC 3801638D */  lw         $v1, 0x138($t3)
    /* CD10 8001E500 C800658D */  lw         $a1, 0xC8($t3)
    /* CD14 8001E504 5801678D */  lw         $a3, 0x158($t3)
    /* CD18 8001E508 5401688D */  lw         $t0, 0x154($t3)
    /* CD1C 8001E50C 1800C400 */  mult       $a2, $a0
    /* CD20 8001E510 C000648D */  lw         $a0, 0xC0($t3)
    /* CD24 8001E514 40100200 */  sll        $v0, $v0, 1
    /* CD28 8001E518 4400A3AF */  sw         $v1, 0x44($sp)
    /* CD2C 8001E51C 4C00A5AF */  sw         $a1, 0x4C($sp)
    /* CD30 8001E520 5000A7AF */  sw         $a3, 0x50($sp)
    /* CD34 8001E524 5400A8AF */  sw         $t0, 0x54($sp)
    /* CD38 8001E528 4800A4AF */  sw         $a0, 0x48($sp)
    /* CD3C 8001E52C 5C01638D */  lw         $v1, 0x15C($t3)
    /* CD40 8001E530 43100200 */  sra        $v0, $v0, 1
    /* CD44 8001E534 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* CD48 8001E538 02000224 */  addiu      $v0, $zero, 0x2
    /* CD4C 8001E53C 031B0300 */  sra        $v1, $v1, 12
    /* CD50 8001E540 12300000 */  mflo       $a2
    /* CD54 8001E544 4000A6AF */  sw         $a2, 0x40($sp)
    /* CD58 8001E548 5800A3AF */  sw         $v1, 0x58($sp)
    /* CD5C 8001E54C 5C00A2AF */  sw         $v0, 0x5C($sp)
  .L8001E550:
    /* CD60 8001E550 0000558D */  lw         $s5, 0x0($t2)
    /* CD64 8001E554 0800538D */  lw         $s3, 0x8($t2)
    /* CD68 8001E558 0C004A25 */  addiu      $t2, $t2, 0xC
    /* CD6C 8001E55C 00005E8D */  lw         $fp, 0x0($t2)
    /* CD70 8001E560 0800548D */  lw         $s4, 0x8($t2)
    /* CD74 8001E564 0C004A25 */  addiu      $t2, $t2, 0xC
    /* CD78 8001E568 28006C8D */  lw         $t4, 0x28($t3)
    /* CD7C 8001E56C 0000578D */  lw         $s7, 0x0($t2)
    /* CD80 8001E570 0800528D */  lw         $s2, 0x8($t2)
    /* CD84 8001E574 6800ACAF */  sw         $t4, 0x68($sp)
    /* CD88 8001E578 2C006D8D */  lw         $t5, 0x2C($t3)
    /* CD8C 8001E57C 0C004A25 */  addiu      $t2, $t2, 0xC
    /* CD90 8001E580 6C00ADAF */  sw         $t5, 0x6C($sp)
    /* CD94 8001E584 30006C8D */  lw         $t4, 0x30($t3)
    /* CD98 8001E588 2A107402 */  slt        $v0, $s3, $s4
    /* CD9C 8001E58C 6D790008 */  j          .L8001E5B4
    /* CDA0 8001E590 7000ACAF */   sw        $t4, 0x70($sp)
  .L8001E594:
    /* CDA4 8001E594 21A8C003 */  addu       $s5, $fp, $zero
    /* CDA8 8001E598 21F0E002 */  addu       $fp, $s7, $zero
    /* CDAC 8001E59C 21B84000 */  addu       $s7, $v0, $zero
    /* CDB0 8001E5A0 21186002 */  addu       $v1, $s3, $zero
    /* CDB4 8001E5A4 21988002 */  addu       $s3, $s4, $zero
    /* CDB8 8001E5A8 21A04002 */  addu       $s4, $s2, $zero
    /* CDBC 8001E5AC 21906000 */  addu       $s2, $v1, $zero
    /* CDC0 8001E5B0 2A107402 */  slt        $v0, $s3, $s4
  .L8001E5B4:
    /* CDC4 8001E5B4 F7FF4014 */  bnez       $v0, .L8001E594
    /* CDC8 8001E5B8 2110A002 */   addu      $v0, $s5, $zero
    /* CDCC 8001E5BC 2A107202 */  slt        $v0, $s3, $s2
    /* CDD0 8001E5C0 F4FF4014 */  bnez       $v0, .L8001E594
    /* CDD4 8001E5C4 2110A002 */   addu      $v0, $s5, $zero
    /* CDD8 8001E5C8 2A109202 */  slt        $v0, $s4, $s2
    /* CDDC 8001E5CC 8B004014 */  bnez       $v0, .L8001E7FC
    /* CDE0 8001E5D0 2A109302 */   slt       $v0, $s4, $s3
    /* CDE4 8001E5D4 2A105302 */  slt        $v0, $s2, $s3
    /* CDE8 8001E5D8 10014010 */  beqz       $v0, .L8001EA1C
    /* CDEC 8001E5DC 2A10D202 */   slt       $v0, $s6, $s2
    /* CDF0 8001E5E0 0E014014 */  bnez       $v0, .L8001EA1C
    /* CDF4 8001E5E4 23105302 */   subu      $v0, $s2, $s3
    /* CDF8 8001E5E8 2318F502 */  subu       $v1, $s7, $s5
    /* CDFC 8001E5EC 80190300 */  sll        $v1, $v1, 6
    /* CE00 8001E5F0 1A006200 */  div        $zero, $v1, $v0
    /* CE04 8001E5F4 12180000 */  mflo       $v1
    /* CE08 8001E5F8 6000B5AF */  sw         $s5, 0x60($sp)
    /* CE0C 8001E5FC 23489302 */  subu       $t1, $s4, $s3
    /* CE10 8001E600 3F002105 */  bgez       $t1, .L8001E700
    /* CE14 8001E604 80810300 */   sll       $s0, $v1, 6
    /* CE18 8001E608 2A10D402 */  slt        $v0, $s6, $s4
    /* CE1C 8001E60C 3C004014 */  bnez       $v0, .L8001E700
    /* CE20 8001E610 01F02229 */   slti      $v0, $t1, -0xFFF
    /* CE24 8001E614 03004014 */  bnez       $v0, .L8001E624
    /* CE28 8001E618 2310D503 */   subu      $v0, $fp, $s5
    /* CE2C 8001E61C 8E790008 */  j          .L8001E638
    /* CE30 8001E620 21880000 */   addu      $s1, $zero, $zero
  .L8001E624:
    /* CE34 8001E624 80110200 */  sll        $v0, $v0, 6
    /* CE38 8001E628 1A004900 */  div        $zero, $v0, $t1
    /* CE3C 8001E62C 12100000 */  mflo       $v0
    /* CE40 8001E630 00000000 */  nop
    /* CE44 8001E634 80890200 */  sll        $s1, $v0, 6
  .L8001E638:
    /* CE48 8001E638 21406002 */  addu       $t0, $s3, $zero
    /* CE4C 8001E63C 2A10C802 */  slt        $v0, $s6, $t0
    /* CE50 8001E640 1D004010 */  beqz       $v0, .L8001E6B8
    /* CE54 8001E644 6400B5AF */   sw        $s5, 0x64($sp)
    /* CE58 8001E648 00F02229 */  slti       $v0, $t1, -0x1000
    /* CE5C 8001E64C 18004010 */  beqz       $v0, .L8001E6B0
    /* CE60 8001E650 2340C802 */   subu      $t0, $s6, $t0
    /* CE64 8001E654 0C000C24 */  addiu      $t4, $zero, 0xC
    /* CE68 8001E658 18000802 */  mult       $s0, $t0
    /* CE6C 8001E65C 20000334 */  ori        $v1, $zero, 0x20
    /* CE70 8001E660 22186C00 */  sub        $v1, $v1, $t4 /* handwritten instruction */
    /* CE74 8001E664 10200000 */  mfhi       $a0
    /* CE78 8001E668 04206400 */  sllv       $a0, $a0, $v1
    /* CE7C 8001E66C 12180000 */  mflo       $v1
    /* CE80 8001E670 06188301 */  srlv       $v1, $v1, $t4
    /* CE84 8001E674 25208300 */  or         $a0, $a0, $v1
    /* CE88 8001E678 6000A28F */  lw         $v0, 0x60($sp)
    /* CE8C 8001E67C 0C000D24 */  addiu      $t5, $zero, 0xC
    /* CE90 8001E680 21104400 */  addu       $v0, $v0, $a0
    /* CE94 8001E684 6000A2AF */  sw         $v0, 0x60($sp)
    /* CE98 8001E688 18002802 */  mult       $s1, $t0
    /* CE9C 8001E68C 20000534 */  ori        $a1, $zero, 0x20
    /* CEA0 8001E690 2228AD00 */  sub        $a1, $a1, $t5 /* handwritten instruction */
    /* CEA4 8001E694 10180000 */  mfhi       $v1
    /* CEA8 8001E698 0418A300 */  sllv       $v1, $v1, $a1
    /* CEAC 8001E69C 12280000 */  mflo       $a1
    /* CEB0 8001E6A0 0628A501 */  srlv       $a1, $a1, $t5
    /* CEB4 8001E6A4 25186500 */  or         $v1, $v1, $a1
    /* CEB8 8001E6A8 2118A302 */  addu       $v1, $s5, $v1
    /* CEBC 8001E6AC 6400A3AF */  sw         $v1, 0x64($sp)
  .L8001E6B0:
    /* CEC0 8001E6B0 23482801 */  subu       $t1, $t1, $t0
    /* CEC4 8001E6B4 2140C002 */  addu       $t0, $s6, $zero
  .L8001E6B8:
    /* CEC8 8001E6B8 02008106 */  bgez       $s4, .L8001E6C4
    /* CECC 8001E6BC 21206001 */   addu      $a0, $t3, $zero
    /* CED0 8001E6C0 23483401 */  subu       $t1, $t1, $s4
  .L8001E6C4:
    /* CED4 8001E6C4 6000A527 */  addiu      $a1, $sp, 0x60
    /* CED8 8001E6C8 21300002 */  addu       $a2, $s0, $zero
    /* CEDC 8001E6CC 6400A727 */  addiu      $a3, $sp, 0x64
    /* CEE0 8001E6D0 7400AD8F */  lw         $t5, 0x74($sp)
    /* CEE4 8001E6D4 01000C24 */  addiu      $t4, $zero, 0x1
    /* CEE8 8001E6D8 1800A9AF */  sw         $t1, 0x18($sp)
    /* CEEC 8001E6DC 2C00A8AF */  sw         $t0, 0x2C($sp)
    /* CEF0 8001E6E0 3000ACAF */  sw         $t4, 0x30($sp)
    /* CEF4 8001E6E4 1000B1AF */  sw         $s1, 0x10($sp)
    /* CEF8 8001E6E8 7800AAAF */  sw         $t2, 0x78($sp)
    /* CEFC 8001E6EC 7C00ABAF */  sw         $t3, 0x7C($sp)
    /* CF00 8001E6F0 BD7A000C */  jal        func_8001EAF4
    /* CF04 8001E6F4 1400ADAF */   sw        $t5, 0x14($sp)
    /* CF08 8001E6F8 7C00AB8F */  lw         $t3, 0x7C($sp)
    /* CF0C 8001E6FC 7800AA8F */  lw         $t2, 0x78($sp)
  .L8001E700:
    /* CF10 8001E700 23485402 */  subu       $t1, $s2, $s4
    /* CF14 8001E704 C5002105 */  bgez       $t1, .L8001EA1C
    /* CF18 8001E708 01F02229 */   slti      $v0, $t1, -0xFFF
    /* CF1C 8001E70C 03004014 */  bnez       $v0, .L8001E71C
    /* CF20 8001E710 2310FE02 */   subu      $v0, $s7, $fp
    /* CF24 8001E714 CC790008 */  j          .L8001E730
    /* CF28 8001E718 21880000 */   addu      $s1, $zero, $zero
  .L8001E71C:
    /* CF2C 8001E71C 80110200 */  sll        $v0, $v0, 6
    /* CF30 8001E720 1A004900 */  div        $zero, $v0, $t1
    /* CF34 8001E724 12100000 */  mflo       $v0
    /* CF38 8001E728 00000000 */  nop
    /* CF3C 8001E72C 80890200 */  sll        $s1, $v0, 6
  .L8001E730:
    /* CF40 8001E730 21408002 */  addu       $t0, $s4, $zero
    /* CF44 8001E734 2A10C802 */  slt        $v0, $s6, $t0
    /* CF48 8001E738 1D004010 */  beqz       $v0, .L8001E7B0
    /* CF4C 8001E73C 6400BEAF */   sw        $fp, 0x64($sp)
    /* CF50 8001E740 2340C802 */  subu       $t0, $s6, $t0
    /* CF54 8001E744 00F02229 */  slti       $v0, $t1, -0x1000
    /* CF58 8001E748 0C004010 */  beqz       $v0, .L8001E77C
    /* CF5C 8001E74C 2318D302 */   subu      $v1, $s6, $s3
    /* CF60 8001E750 0C000D24 */  addiu      $t5, $zero, 0xC
    /* CF64 8001E754 18000302 */  mult       $s0, $v1
    /* CF68 8001E758 20000C34 */  ori        $t4, $zero, 0x20
    /* CF6C 8001E75C 22608D01 */  sub        $t4, $t4, $t5 /* handwritten instruction */
    /* CF70 8001E760 10100000 */  mfhi       $v0
    /* CF74 8001E764 04108201 */  sllv       $v0, $v0, $t4
    /* CF78 8001E768 12600000 */  mflo       $t4
    /* CF7C 8001E76C 0660AC01 */  srlv       $t4, $t4, $t5
    /* CF80 8001E770 25104C00 */  or         $v0, $v0, $t4
    /* CF84 8001E774 2110A202 */  addu       $v0, $s5, $v0
    /* CF88 8001E778 6000A2AF */  sw         $v0, 0x60($sp)
  .L8001E77C:
    /* CF8C 8001E77C 0C000C24 */  addiu      $t4, $zero, 0xC
    /* CF90 8001E780 18002802 */  mult       $s1, $t0
    /* CF94 8001E784 20000334 */  ori        $v1, $zero, 0x20
    /* CF98 8001E788 22186C00 */  sub        $v1, $v1, $t4 /* handwritten instruction */
    /* CF9C 8001E78C 10100000 */  mfhi       $v0
    /* CFA0 8001E790 04106200 */  sllv       $v0, $v0, $v1
    /* CFA4 8001E794 12180000 */  mflo       $v1
    /* CFA8 8001E798 06188301 */  srlv       $v1, $v1, $t4
    /* CFAC 8001E79C 25104300 */  or         $v0, $v0, $v1
    /* CFB0 8001E7A0 2110C203 */  addu       $v0, $fp, $v0
    /* CFB4 8001E7A4 6400A2AF */  sw         $v0, 0x64($sp)
    /* CFB8 8001E7A8 23482801 */  subu       $t1, $t1, $t0
    /* CFBC 8001E7AC 2140C002 */  addu       $t0, $s6, $zero
  .L8001E7B0:
    /* CFC0 8001E7B0 02004106 */  bgez       $s2, .L8001E7BC
    /* CFC4 8001E7B4 21206001 */   addu      $a0, $t3, $zero
    /* CFC8 8001E7B8 23483201 */  subu       $t1, $t1, $s2
  .L8001E7BC:
    /* CFCC 8001E7BC 6000A527 */  addiu      $a1, $sp, 0x60
    /* CFD0 8001E7C0 21300002 */  addu       $a2, $s0, $zero
    /* CFD4 8001E7C4 7400AD8F */  lw         $t5, 0x74($sp)
    /* CFD8 8001E7C8 6400A727 */  addiu      $a3, $sp, 0x64
    /* CFDC 8001E7CC 1800A9AF */  sw         $t1, 0x18($sp)
    /* CFE0 8001E7D0 2C00A8AF */  sw         $t0, 0x2C($sp)
    /* CFE4 8001E7D4 3000A0AF */  sw         $zero, 0x30($sp)
    /* CFE8 8001E7D8 1000B1AF */  sw         $s1, 0x10($sp)
    /* CFEC 8001E7DC 7800AAAF */  sw         $t2, 0x78($sp)
    /* CFF0 8001E7E0 7C00ABAF */  sw         $t3, 0x7C($sp)
    /* CFF4 8001E7E4 BD7A000C */  jal        func_8001EAF4
    /* CFF8 8001E7E8 1400ADAF */   sw        $t5, 0x14($sp)
    /* CFFC 8001E7EC 7800AA8F */  lw         $t2, 0x78($sp)
    /* D000 8001E7F0 7C00AB8F */  lw         $t3, 0x7C($sp)
    /* D004 8001E7F4 877A0008 */  j          .L8001EA1C
    /* D008 8001E7F8 00000000 */   nop
  .L8001E7FC:
    /* D00C 8001E7FC 87004010 */  beqz       $v0, .L8001EA1C
    /* D010 8001E800 2A10D402 */   slt       $v0, $s6, $s4
    /* D014 8001E804 85004014 */  bnez       $v0, .L8001EA1C
    /* D018 8001E808 23109302 */   subu      $v0, $s4, $s3
    /* D01C 8001E80C 2318D503 */  subu       $v1, $fp, $s5
    /* D020 8001E810 80190300 */  sll        $v1, $v1, 6
    /* D024 8001E814 1A006200 */  div        $zero, $v1, $v0
    /* D028 8001E818 12180000 */  mflo       $v1
    /* D02C 8001E81C 23485302 */  subu       $t1, $s2, $s3
    /* D030 8001E820 6400B5AF */  sw         $s5, 0x64($sp)
    /* D034 8001E824 40002105 */  bgez       $t1, .L8001E928
    /* D038 8001E828 80890300 */   sll       $s1, $v1, 6
    /* D03C 8001E82C 2A10D202 */  slt        $v0, $s6, $s2
    /* D040 8001E830 3D004014 */  bnez       $v0, .L8001E928
    /* D044 8001E834 01F82229 */   slti      $v0, $t1, -0x7FF
    /* D048 8001E838 03004014 */  bnez       $v0, .L8001E848
    /* D04C 8001E83C 2310F502 */   subu      $v0, $s7, $s5
    /* D050 8001E840 177A0008 */  j          .L8001E85C
    /* D054 8001E844 21800000 */   addu      $s0, $zero, $zero
  .L8001E848:
    /* D058 8001E848 80110200 */  sll        $v0, $v0, 6
    /* D05C 8001E84C 1A004900 */  div        $zero, $v0, $t1
    /* D060 8001E850 12100000 */  mflo       $v0
    /* D064 8001E854 00000000 */  nop
    /* D068 8001E858 80810200 */  sll        $s0, $v0, 6
  .L8001E85C:
    /* D06C 8001E85C 21406002 */  addu       $t0, $s3, $zero
    /* D070 8001E860 2A10C802 */  slt        $v0, $s6, $t0
    /* D074 8001E864 1E004010 */  beqz       $v0, .L8001E8E0
    /* D078 8001E868 6000B5AF */   sw        $s5, 0x60($sp)
    /* D07C 8001E86C 00F82229 */  slti       $v0, $t1, -0x800
    /* D080 8001E870 19004010 */  beqz       $v0, .L8001E8D8
    /* D084 8001E874 2330C802 */   subu      $a2, $s6, $t0
    /* D088 8001E878 0C000C24 */  addiu      $t4, $zero, 0xC
    /* D08C 8001E87C 18000602 */  mult       $s0, $a2
    /* D090 8001E880 20000334 */  ori        $v1, $zero, 0x20
    /* D094 8001E884 22186C00 */  sub        $v1, $v1, $t4 /* handwritten instruction */
    /* D098 8001E888 10100000 */  mfhi       $v0
    /* D09C 8001E88C 04106200 */  sllv       $v0, $v0, $v1
    /* D0A0 8001E890 12180000 */  mflo       $v1
    /* D0A4 8001E894 06188301 */  srlv       $v1, $v1, $t4
    /* D0A8 8001E898 25104300 */  or         $v0, $v0, $v1
    /* D0AC 8001E89C 2110A202 */  addu       $v0, $s5, $v0
    /* D0B0 8001E8A0 0C000D24 */  addiu      $t5, $zero, 0xC
    /* D0B4 8001E8A4 6000A2AF */  sw         $v0, 0x60($sp)
    /* D0B8 8001E8A8 18002602 */  mult       $s1, $a2
    /* D0BC 8001E8AC 20000434 */  ori        $a0, $zero, 0x20
    /* D0C0 8001E8B0 22208D00 */  sub        $a0, $a0, $t5 /* handwritten instruction */
    /* D0C4 8001E8B4 10280000 */  mfhi       $a1
    /* D0C8 8001E8B8 04288500 */  sllv       $a1, $a1, $a0
    /* D0CC 8001E8BC 12200000 */  mflo       $a0
    /* D0D0 8001E8C0 0620A401 */  srlv       $a0, $a0, $t5
    /* D0D4 8001E8C4 2528A400 */  or         $a1, $a1, $a0
    /* D0D8 8001E8C8 6400A38F */  lw         $v1, 0x64($sp)
    /* D0DC 8001E8CC 00000000 */  nop
    /* D0E0 8001E8D0 21186500 */  addu       $v1, $v1, $a1
    /* D0E4 8001E8D4 6400A3AF */  sw         $v1, 0x64($sp)
  .L8001E8D8:
    /* D0E8 8001E8D8 23482601 */  subu       $t1, $t1, $a2
    /* D0EC 8001E8DC 2140C002 */  addu       $t0, $s6, $zero
  .L8001E8E0:
    /* D0F0 8001E8E0 02004106 */  bgez       $s2, .L8001E8EC
    /* D0F4 8001E8E4 21206001 */   addu      $a0, $t3, $zero
    /* D0F8 8001E8E8 23483201 */  subu       $t1, $t1, $s2
  .L8001E8EC:
    /* D0FC 8001E8EC 6000A527 */  addiu      $a1, $sp, 0x60
    /* D100 8001E8F0 21300002 */  addu       $a2, $s0, $zero
    /* D104 8001E8F4 6400A727 */  addiu      $a3, $sp, 0x64
    /* D108 8001E8F8 7400AD8F */  lw         $t5, 0x74($sp)
    /* D10C 8001E8FC 01000C24 */  addiu      $t4, $zero, 0x1
    /* D110 8001E900 1800A9AF */  sw         $t1, 0x18($sp)
    /* D114 8001E904 2C00A8AF */  sw         $t0, 0x2C($sp)
    /* D118 8001E908 3000ACAF */  sw         $t4, 0x30($sp)
    /* D11C 8001E90C 1000B1AF */  sw         $s1, 0x10($sp)
    /* D120 8001E910 7800AAAF */  sw         $t2, 0x78($sp)
    /* D124 8001E914 7C00ABAF */  sw         $t3, 0x7C($sp)
    /* D128 8001E918 BD7A000C */  jal        func_8001EAF4
    /* D12C 8001E91C 1400ADAF */   sw        $t5, 0x14($sp)
    /* D130 8001E920 7C00AB8F */  lw         $t3, 0x7C($sp)
    /* D134 8001E924 7800AA8F */  lw         $t2, 0x78($sp)
  .L8001E928:
    /* D138 8001E928 23489202 */  subu       $t1, $s4, $s2
    /* D13C 8001E92C 3B002105 */  bgez       $t1, .L8001EA1C
    /* D140 8001E930 01F82229 */   slti      $v0, $t1, -0x7FF
    /* D144 8001E934 03004014 */  bnez       $v0, .L8001E944
    /* D148 8001E938 2310D703 */   subu      $v0, $fp, $s7
    /* D14C 8001E93C 567A0008 */  j          .L8001E958
    /* D150 8001E940 21800000 */   addu      $s0, $zero, $zero
  .L8001E944:
    /* D154 8001E944 80110200 */  sll        $v0, $v0, 6
    /* D158 8001E948 1A004900 */  div        $zero, $v0, $t1
    /* D15C 8001E94C 12100000 */  mflo       $v0
    /* D160 8001E950 00000000 */  nop
    /* D164 8001E954 80810200 */  sll        $s0, $v0, 6
  .L8001E958:
    /* D168 8001E958 21404002 */  addu       $t0, $s2, $zero
    /* D16C 8001E95C 2A10C802 */  slt        $v0, $s6, $t0
    /* D170 8001E960 1D004010 */  beqz       $v0, .L8001E9D8
    /* D174 8001E964 6000B7AF */   sw        $s7, 0x60($sp)
    /* D178 8001E968 23401601 */  subu       $t0, $t0, $s6
    /* D17C 8001E96C 00F82229 */  slti       $v0, $t1, -0x800
    /* D180 8001E970 17004010 */  beqz       $v0, .L8001E9D0
    /* D184 8001E974 23187602 */   subu      $v1, $s3, $s6
    /* D188 8001E978 0C000C24 */  addiu      $t4, $zero, 0xC
    /* D18C 8001E97C 18000802 */  mult       $s0, $t0
    /* D190 8001E980 20000434 */  ori        $a0, $zero, 0x20
    /* D194 8001E984 22208C00 */  sub        $a0, $a0, $t4 /* handwritten instruction */
    /* D198 8001E988 10100000 */  mfhi       $v0
    /* D19C 8001E98C 04108200 */  sllv       $v0, $v0, $a0
    /* D1A0 8001E990 12200000 */  mflo       $a0
    /* D1A4 8001E994 06208401 */  srlv       $a0, $a0, $t4
    /* D1A8 8001E998 25104400 */  or         $v0, $v0, $a0
    /* D1AC 8001E99C 2310E202 */  subu       $v0, $s7, $v0
    /* D1B0 8001E9A0 6000A2AF */  sw         $v0, 0x60($sp)
    /* D1B4 8001E9A4 18002302 */  mult       $s1, $v1
    /* D1B8 8001E9A8 20000534 */  ori        $a1, $zero, 0x20
    /* D1BC 8001E9AC 2228AC00 */  sub        $a1, $a1, $t4 /* handwritten instruction */
    /* D1C0 8001E9B0 10680000 */  mfhi       $t5
    /* D1C4 8001E9B4 0468AD00 */  sllv       $t5, $t5, $a1
    /* D1C8 8001E9B8 12280000 */  mflo       $a1
    /* D1CC 8001E9BC 06288501 */  srlv       $a1, $a1, $t4
    /* D1D0 8001E9C0 2568A501 */  or         $t5, $t5, $a1
    /* D1D4 8001E9C4 2118A001 */  addu       $v1, $t5, $zero
    /* D1D8 8001E9C8 2318A302 */  subu       $v1, $s5, $v1
    /* D1DC 8001E9CC 6400A3AF */  sw         $v1, 0x64($sp)
  .L8001E9D0:
    /* D1E0 8001E9D0 23482801 */  subu       $t1, $t1, $t0
    /* D1E4 8001E9D4 2140C002 */  addu       $t0, $s6, $zero
  .L8001E9D8:
    /* D1E8 8001E9D8 02008106 */  bgez       $s4, .L8001E9E4
    /* D1EC 8001E9DC 21206001 */   addu      $a0, $t3, $zero
    /* D1F0 8001E9E0 23483401 */  subu       $t1, $t1, $s4
  .L8001E9E4:
    /* D1F4 8001E9E4 6000A527 */  addiu      $a1, $sp, 0x60
    /* D1F8 8001E9E8 21300002 */  addu       $a2, $s0, $zero
    /* D1FC 8001E9EC 7400AD8F */  lw         $t5, 0x74($sp)
    /* D200 8001E9F0 6400A727 */  addiu      $a3, $sp, 0x64
    /* D204 8001E9F4 1800A9AF */  sw         $t1, 0x18($sp)
    /* D208 8001E9F8 2C00A8AF */  sw         $t0, 0x2C($sp)
    /* D20C 8001E9FC 3000A0AF */  sw         $zero, 0x30($sp)
    /* D210 8001EA00 1000B1AF */  sw         $s1, 0x10($sp)
    /* D214 8001EA04 7800AAAF */  sw         $t2, 0x78($sp)
    /* D218 8001EA08 7C00ABAF */  sw         $t3, 0x7C($sp)
    /* D21C 8001EA0C BD7A000C */  jal        func_8001EAF4
    /* D220 8001EA10 1400ADAF */   sw        $t5, 0x14($sp)
    /* D224 8001EA14 7C00AB8F */  lw         $t3, 0x7C($sp)
    /* D228 8001EA18 7800AA8F */  lw         $t2, 0x78($sp)
  .L8001EA1C:
    /* D22C 8001EA1C 2800628D */  lw         $v0, 0x28($t3)
    /* D230 8001EA20 6800AC8F */  lw         $t4, 0x68($sp)
    /* D234 8001EA24 B800AD8F */  lw         $t5, 0xB8($sp)
    /* D238 8001EA28 23104C00 */  subu       $v0, $v0, $t4
    /* D23C 8001EA2C 0000A48D */  lw         $a0, 0x0($t5)
    /* D240 8001EA30 83100200 */  sra        $v0, $v0, 2
    /* D244 8001EA34 21208200 */  addu       $a0, $a0, $v0
    /* D248 8001EA38 0000A4AD */  sw         $a0, 0x0($t5)
    /* D24C 8001EA3C 2C00638D */  lw         $v1, 0x2C($t3)
    /* D250 8001EA40 6C00AC8F */  lw         $t4, 0x6C($sp)
    /* D254 8001EA44 BC00AD8F */  lw         $t5, 0xBC($sp)
    /* D258 8001EA48 23186C00 */  subu       $v1, $v1, $t4
    /* D25C 8001EA4C 0000A48D */  lw         $a0, 0x0($t5)
    /* D260 8001EA50 83180300 */  sra        $v1, $v1, 2
    /* D264 8001EA54 21208300 */  addu       $a0, $a0, $v1
    /* D268 8001EA58 0000A4AD */  sw         $a0, 0x0($t5)
    /* D26C 8001EA5C 3000628D */  lw         $v0, 0x30($t3)
    /* D270 8001EA60 7000AC8F */  lw         $t4, 0x70($sp)
    /* D274 8001EA64 C000AD8F */  lw         $t5, 0xC0($sp)
    /* D278 8001EA68 23104C00 */  subu       $v0, $v0, $t4
    /* D27C 8001EA6C 0000A48D */  lw         $a0, 0x0($t5)
    /* D280 8001EA70 83100200 */  sra        $v0, $v0, 2
    /* D284 8001EA74 21208200 */  addu       $a0, $a0, $v0
    /* D288 8001EA78 0000A4AD */  sw         $a0, 0x0($t5)
    /* D28C 8001EA7C B800AC8F */  lw         $t4, 0xB8($sp)
    /* D290 8001EA80 BC00AD8F */  lw         $t5, 0xBC($sp)
    /* D294 8001EA84 0000838D */  lw         $v1, 0x0($t4)
    /* D298 8001EA88 0000A28D */  lw         $v0, 0x0($t5)
    /* D29C 8001EA8C 00000000 */  nop
    /* D2A0 8001EA90 21186200 */  addu       $v1, $v1, $v0
    /* D2A4 8001EA94 5C00A28F */  lw         $v0, 0x5C($sp)
    /* D2A8 8001EA98 00000000 */  nop
    /* D2AC 8001EA9C 03004010 */  beqz       $v0, .L8001EAAC
    /* D2B0 8001EAA0 21186400 */   addu      $v1, $v1, $a0
    /* D2B4 8001EAA4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* D2B8 8001EAA8 5C00A2AF */  sw         $v0, 0x5C($sp)
  .L8001EAAC:
    /* D2BC 8001EAAC C800AC8F */  lw         $t4, 0xC8($sp)
    /* D2C0 8001EAB0 00000000 */  nop
    /* D2C4 8001EAB4 FFFF8C25 */  addiu      $t4, $t4, -0x1
    /* D2C8 8001EAB8 A5FE8015 */  bnez       $t4, .L8001E550
    /* D2CC 8001EABC C800ACAF */   sw        $t4, 0xC8($sp)
    /* D2D0 8001EAC0 A400BF8F */  lw         $ra, 0xA4($sp)
    /* D2D4 8001EAC4 A000BE8F */  lw         $fp, 0xA0($sp)
    /* D2D8 8001EAC8 9C00B78F */  lw         $s7, 0x9C($sp)
    /* D2DC 8001EACC 9800B68F */  lw         $s6, 0x98($sp)
    /* D2E0 8001EAD0 9400B58F */  lw         $s5, 0x94($sp)
    /* D2E4 8001EAD4 9000B48F */  lw         $s4, 0x90($sp)
    /* D2E8 8001EAD8 8C00B38F */  lw         $s3, 0x8C($sp)
    /* D2EC 8001EADC 8800B28F */  lw         $s2, 0x88($sp)
    /* D2F0 8001EAE0 8400B18F */  lw         $s1, 0x84($sp)
    /* D2F4 8001EAE4 8000B08F */  lw         $s0, 0x80($sp)
    /* D2F8 8001EAE8 21106000 */  addu       $v0, $v1, $zero
    /* D2FC 8001EAEC 0800E003 */  jr         $ra
    /* D300 8001EAF0 A800BD27 */   addiu     $sp, $sp, 0xA8
endlabel func_8001E458
