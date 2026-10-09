nonmatching func_8001C4A0, 0x420

glabel func_8001C4A0
    /* ACB0 8001C4A0 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* ACB4 8001C4A4 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* ACB8 8001C4A8 6800B78F */  lw         $s7, 0x68($sp)
    /* ACBC 8001C4AC 3400B1AF */  sw         $s1, 0x34($sp)
    /* ACC0 8001C4B0 21888000 */  addu       $s1, $a0, $zero
    /* ACC4 8001C4B4 4400B5AF */  sw         $s5, 0x44($sp)
    /* ACC8 8001C4B8 6C00B58F */  lw         $s5, 0x6C($sp)
    /* ACCC 8001C4BC 2168C000 */  addu       $t5, $a2, $zero
    /* ACD0 8001C4C0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* ACD4 8001C4C4 7000B38F */  lw         $s3, 0x70($sp)
    /* ACD8 8001C4C8 2170E000 */  addu       $t6, $a3, $zero
    /* ACDC 8001C4CC 4800B6AF */  sw         $s6, 0x48($sp)
    /* ACE0 8001C4D0 7400B68F */  lw         $s6, 0x74($sp)
    /* ACE4 8001C4D4 2328A501 */  subu       $a1, $t5, $a1
    /* ACE8 8001C4D8 5000BFAF */  sw         $ra, 0x50($sp)
    /* ACEC 8001C4DC 4000B4AF */  sw         $s4, 0x40($sp)
    /* ACF0 8001C4E0 3800B2AF */  sw         $s2, 0x38($sp)
    /* ACF4 8001C4E4 5900A018 */  blez       $a1, .L8001C64C
    /* ACF8 8001C4E8 3000B0AF */   sw        $s0, 0x30($sp)
    /* ACFC 8001C4EC 0000A68E */  lw         $a2, 0x0($s5)
    /* AD00 8001C4F0 55710008 */  j          .L8001C554
    /* AD04 8001C4F4 00000000 */   nop
  .L8001C4F8:
    /* AD08 8001C4F8 01006225 */  addiu      $v0, $t3, 0x1
    /* AD0C 8001C4FC 000062AE */  sw         $v0, 0x0($s3)
    /* AD10 8001C500 0000A68E */  lw         $a2, 0x0($s5)
    /* AD14 8001C504 2800298E */  lw         $t1, 0x28($s1)
    /* AD18 8001C508 80180600 */  sll        $v1, $a2, 2
    /* AD1C 8001C50C 21186600 */  addu       $v1, $v1, $a2
    /* AD20 8001C510 80180300 */  sll        $v1, $v1, 2
    /* AD24 8001C514 21186900 */  addu       $v1, $v1, $t1
    /* AD28 8001C518 0000648C */  lw         $a0, 0x0($v1)
    /* AD2C 8001C51C 00000000 */  nop
    /* AD30 8001C520 2A104400 */  slt        $v0, $v0, $a0
    /* AD34 8001C524 0D004014 */  bnez       $v0, .L8001C55C
    /* AD38 8001C528 2140C000 */   addu      $t0, $a2, $zero
    /* AD3C 8001C52C 0500C014 */  bnez       $a2, .L8001C544
    /* AD40 8001C530 21300000 */   addu      $a2, $zero, $zero
    /* AD44 8001C534 000060AE */  sw         $zero, 0x0($s3)
    /* AD48 8001C538 0000A68E */  lw         $a2, 0x0($s5)
    /* AD4C 8001C53C 55710008 */  j          .L8001C554
    /* AD50 8001C540 00000000 */   nop
  .L8001C544:
    /* AD54 8001C544 1000628C */  lw         $v0, 0x10($v1)
    /* AD58 8001C548 00000000 */  nop
    /* AD5C 8001C54C 000062AE */  sw         $v0, 0x0($s3)
    /* AD60 8001C550 0000A0AE */  sw         $zero, 0x0($s5)
  .L8001C554:
    /* AD64 8001C554 2800298E */  lw         $t1, 0x28($s1)
    /* AD68 8001C558 2140C000 */  addu       $t0, $a2, $zero
  .L8001C55C:
    /* AD6C 8001C55C 80180600 */  sll        $v1, $a2, 2
    /* AD70 8001C560 21186600 */  addu       $v1, $v1, $a2
    /* AD74 8001C564 80180300 */  sll        $v1, $v1, 2
    /* AD78 8001C568 21286900 */  addu       $a1, $v1, $t1
    /* AD7C 8001C56C 0000678E */  lw         $a3, 0x0($s3)
    /* AD80 8001C570 0400A38C */  lw         $v1, 0x4($a1)
    /* AD84 8001C574 80100700 */  sll        $v0, $a3, 2
    /* AD88 8001C578 21104700 */  addu       $v0, $v0, $a3
    /* AD8C 8001C57C 80100200 */  sll        $v0, $v0, 2
    /* AD90 8001C580 21104300 */  addu       $v0, $v0, $v1
    /* AD94 8001C584 0C004A8C */  lw         $t2, 0xC($v0)
    /* AD98 8001C588 00000000 */  nop
    /* AD9C 8001C58C 2A18AA01 */  slt        $v1, $t5, $t2
    /* ADA0 8001C590 1D006014 */  bnez       $v1, .L8001C608
    /* ADA4 8001C594 2158E000 */   addu      $t3, $a3, $zero
    /* ADA8 8001C598 0000A28C */  lw         $v0, 0x0($a1)
    /* ADAC 8001C59C 0100E424 */  addiu      $a0, $a3, 0x1
    /* ADB0 8001C5A0 2A108200 */  slt        $v0, $a0, $v0
    /* ADB4 8001C5A4 06004014 */  bnez       $v0, .L8001C5C0
    /* ADB8 8001C5A8 80180800 */   sll       $v1, $t0, 2
    /* ADBC 8001C5AC 0400C010 */  beqz       $a2, .L8001C5C0
    /* ADC0 8001C5B0 21200000 */   addu      $a0, $zero, $zero
    /* ADC4 8001C5B4 1000A48C */  lw         $a0, 0x10($a1)
    /* ADC8 8001C5B8 21400000 */  addu       $t0, $zero, $zero
    /* ADCC 8001C5BC 80180800 */  sll        $v1, $t0, 2
  .L8001C5C0:
    /* ADD0 8001C5C0 21186800 */  addu       $v1, $v1, $t0
    /* ADD4 8001C5C4 80180300 */  sll        $v1, $v1, 2
    /* ADD8 8001C5C8 21186900 */  addu       $v1, $v1, $t1
    /* ADDC 8001C5CC 80100400 */  sll        $v0, $a0, 2
    /* ADE0 8001C5D0 21104400 */  addu       $v0, $v0, $a0
    /* ADE4 8001C5D4 0400648C */  lw         $a0, 0x4($v1)
    /* ADE8 8001C5D8 80100200 */  sll        $v0, $v0, 2
    /* ADEC 8001C5DC 21104400 */  addu       $v0, $v0, $a0
    /* ADF0 8001C5E0 0C00448C */  lw         $a0, 0xC($v0)
    /* ADF4 8001C5E4 00000000 */  nop
    /* ADF8 8001C5E8 2A188A00 */  slt        $v1, $a0, $t2
    /* ADFC 8001C5EC 07006010 */  beqz       $v1, .L8001C60C
    /* AE00 8001C5F0 2A18A401 */   slt       $v1, $t5, $a0
    /* AE04 8001C5F4 2C00228E */  lw         $v0, 0x2C($s1)
    /* AE08 8001C5F8 00000000 */  nop
    /* AE0C 8001C5FC 21208200 */  addu       $a0, $a0, $v0
    /* AE10 8001C600 83710008 */  j          .L8001C60C
    /* AE14 8001C604 2A18A401 */   slt       $v1, $t5, $a0
  .L8001C608:
    /* AE18 8001C608 21180000 */  addu       $v1, $zero, $zero
  .L8001C60C:
    /* AE1C 8001C60C BAFF6010 */  beqz       $v1, .L8001C4F8
    /* AE20 8001C610 2180C000 */   addu      $s0, $a2, $zero
    /* AE24 8001C614 C7710008 */  j          .L8001C71C
    /* AE28 8001C618 80101000 */   sll       $v0, $s0, 2
  .L8001C61C:
    /* AE2C 8001C61C 0B004104 */  bgez       $v0, .L8001C64C
    /* AE30 8001C620 000062AE */   sw        $v0, 0x0($s3)
    /* AE34 8001C624 0000A28E */  lw         $v0, 0x0($s5)
    /* AE38 8001C628 00000000 */  nop
    /* AE3C 8001C62C 07004014 */  bnez       $v0, .L8001C64C
    /* AE40 8001C630 00000000 */   nop
    /* AE44 8001C634 2800238E */  lw         $v1, 0x28($s1)
    /* AE48 8001C638 00000000 */  nop
    /* AE4C 8001C63C 0000628C */  lw         $v0, 0x0($v1)
    /* AE50 8001C640 00000000 */  nop
    /* AE54 8001C644 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AE58 8001C648 000062AE */  sw         $v0, 0x0($s3)
  .L8001C64C:
    /* AE5C 8001C64C 0000A68E */  lw         $a2, 0x0($s5)
    /* AE60 8001C650 0000678E */  lw         $a3, 0x0($s3)
    /* AE64 8001C654 2800298E */  lw         $t1, 0x28($s1)
    /* AE68 8001C658 2140C000 */  addu       $t0, $a2, $zero
    /* AE6C 8001C65C 2160E000 */  addu       $t4, $a3, $zero
    /* AE70 8001C660 80180600 */  sll        $v1, $a2, 2
    /* AE74 8001C664 21186600 */  addu       $v1, $v1, $a2
    /* AE78 8001C668 80180300 */  sll        $v1, $v1, 2
    /* AE7C 8001C66C 21286900 */  addu       $a1, $v1, $t1
    /* AE80 8001C670 80100700 */  sll        $v0, $a3, 2
    /* AE84 8001C674 21104700 */  addu       $v0, $v0, $a3
    /* AE88 8001C678 0400A38C */  lw         $v1, 0x4($a1)
    /* AE8C 8001C67C 80100200 */  sll        $v0, $v0, 2
    /* AE90 8001C680 21104300 */  addu       $v0, $v0, $v1
    /* AE94 8001C684 0C004B8C */  lw         $t3, 0xC($v0)
    /* AE98 8001C688 00000000 */  nop
    /* AE9C 8001C68C 2A18AB01 */  slt        $v1, $t5, $t3
    /* AEA0 8001C690 1D006014 */  bnez       $v1, .L8001C708
    /* AEA4 8001C694 21502001 */   addu      $t2, $t1, $zero
    /* AEA8 8001C698 0000A28C */  lw         $v0, 0x0($a1)
    /* AEAC 8001C69C 0100E424 */  addiu      $a0, $a3, 0x1
    /* AEB0 8001C6A0 2A108200 */  slt        $v0, $a0, $v0
    /* AEB4 8001C6A4 06004014 */  bnez       $v0, .L8001C6C0
    /* AEB8 8001C6A8 80180800 */   sll       $v1, $t0, 2
    /* AEBC 8001C6AC 0400C010 */  beqz       $a2, .L8001C6C0
    /* AEC0 8001C6B0 21200000 */   addu      $a0, $zero, $zero
    /* AEC4 8001C6B4 1000A48C */  lw         $a0, 0x10($a1)
    /* AEC8 8001C6B8 21400000 */  addu       $t0, $zero, $zero
    /* AECC 8001C6BC 80180800 */  sll        $v1, $t0, 2
  .L8001C6C0:
    /* AED0 8001C6C0 21186800 */  addu       $v1, $v1, $t0
    /* AED4 8001C6C4 80180300 */  sll        $v1, $v1, 2
    /* AED8 8001C6C8 21186A00 */  addu       $v1, $v1, $t2
    /* AEDC 8001C6CC 80100400 */  sll        $v0, $a0, 2
    /* AEE0 8001C6D0 21104400 */  addu       $v0, $v0, $a0
    /* AEE4 8001C6D4 0400648C */  lw         $a0, 0x4($v1)
    /* AEE8 8001C6D8 80100200 */  sll        $v0, $v0, 2
    /* AEEC 8001C6DC 21104400 */  addu       $v0, $v0, $a0
    /* AEF0 8001C6E0 0C00448C */  lw         $a0, 0xC($v0)
    /* AEF4 8001C6E4 00000000 */  nop
    /* AEF8 8001C6E8 2A188B00 */  slt        $v1, $a0, $t3
    /* AEFC 8001C6EC 07006010 */  beqz       $v1, .L8001C70C
    /* AF00 8001C6F0 2A18A401 */   slt       $v1, $t5, $a0
    /* AF04 8001C6F4 2C00228E */  lw         $v0, 0x2C($s1)
    /* AF08 8001C6F8 00000000 */  nop
    /* AF0C 8001C6FC 21208200 */  addu       $a0, $a0, $v0
    /* AF10 8001C700 C3710008 */  j          .L8001C70C
    /* AF14 8001C704 2A18A401 */   slt       $v1, $t5, $a0
  .L8001C708:
    /* AF18 8001C708 21180000 */  addu       $v1, $zero, $zero
  .L8001C70C:
    /* AF1C 8001C70C C3FF6010 */  beqz       $v1, .L8001C61C
    /* AF20 8001C710 FFFF8225 */   addiu     $v0, $t4, -0x1
    /* AF24 8001C714 2180C000 */  addu       $s0, $a2, $zero
    /* AF28 8001C718 80101000 */  sll        $v0, $s0, 2
  .L8001C71C:
    /* AF2C 8001C71C 21105000 */  addu       $v0, $v0, $s0
    /* AF30 8001C720 80100200 */  sll        $v0, $v0, 2
    /* AF34 8001C724 21104900 */  addu       $v0, $v0, $t1
    /* AF38 8001C728 0000438C */  lw         $v1, 0x0($v0)
    /* AF3C 8001C72C 0100F224 */  addiu      $s2, $a3, 0x1
    /* AF40 8001C730 2A184302 */  slt        $v1, $s2, $v1
    /* AF44 8001C734 06006014 */  bnez       $v1, .L8001C750
    /* AF48 8001C738 80181000 */   sll       $v1, $s0, 2
    /* AF4C 8001C73C 04000012 */  beqz       $s0, .L8001C750
    /* AF50 8001C740 21900000 */   addu      $s2, $zero, $zero
    /* AF54 8001C744 1000528C */  lw         $s2, 0x10($v0)
    /* AF58 8001C748 21800000 */  addu       $s0, $zero, $zero
    /* AF5C 8001C74C 80181000 */  sll        $v1, $s0, 2
  .L8001C750:
    /* AF60 8001C750 21187000 */  addu       $v1, $v1, $s0
    /* AF64 8001C754 80180300 */  sll        $v1, $v1, 2
    /* AF68 8001C758 21186900 */  addu       $v1, $v1, $t1
    /* AF6C 8001C75C 80101200 */  sll        $v0, $s2, 2
    /* AF70 8001C760 21105200 */  addu       $v0, $v0, $s2
    /* AF74 8001C764 80100200 */  sll        $v0, $v0, 2
    /* AF78 8001C768 0400648C */  lw         $a0, 0x4($v1)
    /* AF7C 8001C76C 80180600 */  sll        $v1, $a2, 2
    /* AF80 8001C770 21186600 */  addu       $v1, $v1, $a2
    /* AF84 8001C774 80180300 */  sll        $v1, $v1, 2
    /* AF88 8001C778 21186900 */  addu       $v1, $v1, $t1
    /* AF8C 8001C77C 21104400 */  addu       $v0, $v0, $a0
    /* AF90 8001C780 0C00458C */  lw         $a1, 0xC($v0)
    /* AF94 8001C784 80100700 */  sll        $v0, $a3, 2
    /* AF98 8001C788 21104700 */  addu       $v0, $v0, $a3
    /* AF9C 8001C78C 0400648C */  lw         $a0, 0x4($v1)
    /* AFA0 8001C790 80100200 */  sll        $v0, $v0, 2
    /* AFA4 8001C794 21104400 */  addu       $v0, $v0, $a0
    /* AFA8 8001C798 0C00448C */  lw         $a0, 0xC($v0)
    /* AFAC 8001C79C 00000000 */  nop
    /* AFB0 8001C7A0 2A18A400 */  slt        $v1, $a1, $a0
    /* AFB4 8001C7A4 05006010 */  beqz       $v1, .L8001C7BC
    /* AFB8 8001C7A8 2318A400 */   subu      $v1, $a1, $a0
    /* AFBC 8001C7AC 2C00228E */  lw         $v0, 0x2C($s1)
    /* AFC0 8001C7B0 00000000 */  nop
    /* AFC4 8001C7B4 2128A200 */  addu       $a1, $a1, $v0
    /* AFC8 8001C7B8 2318A400 */  subu       $v1, $a1, $a0
  .L8001C7BC:
    /* AFCC 8001C7BC 2310A401 */  subu       $v0, $t5, $a0
    /* AFD0 8001C7C0 00130200 */  sll        $v0, $v0, 12
    /* AFD4 8001C7C4 1A004300 */  div        $zero, $v0, $v1
    /* AFD8 8001C7C8 12A00000 */  mflo       $s4
    /* AFDC 8001C7CC 21202002 */  addu       $a0, $s1, $zero
    /* AFE0 8001C7D0 2128C001 */  addu       $a1, $t6, $zero
    /* AFE4 8001C7D4 1000B6AF */  sw         $s6, 0x10($sp)
    /* AFE8 8001C7D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* AFEC 8001C7DC 3072000C */  jal        func_8001C8C0
    /* AFF0 8001C7E0 1400B4AF */   sw        $s4, 0x14($sp)
    /* AFF4 8001C7E4 0000678E */  lw         $a3, 0x0($s3)
    /* AFF8 8001C7E8 0000A68E */  lw         $a2, 0x0($s5)
    /* AFFC 8001C7EC FFFFE724 */  addiu      $a3, $a3, -0x1
    /* B000 8001C7F0 0900E104 */  bgez       $a3, .L8001C818
    /* B004 8001C7F4 21202002 */   addu      $a0, $s1, $zero
    /* B008 8001C7F8 0800C014 */  bnez       $a2, .L8001C81C
    /* B00C 8001C7FC 2000A527 */   addiu     $a1, $sp, 0x20
    /* B010 8001C800 2800228E */  lw         $v0, 0x28($s1)
    /* B014 8001C804 00000000 */  nop
    /* B018 8001C808 0000438C */  lw         $v1, 0x0($v0)
    /* B01C 8001C80C 00000000 */  nop
    /* B020 8001C810 FFFF6724 */  addiu      $a3, $v1, -0x1
    /* B024 8001C814 21202002 */  addu       $a0, $s1, $zero
  .L8001C818:
    /* B028 8001C818 2000A527 */  addiu      $a1, $sp, 0x20
  .L8001C81C:
    /* B02C 8001C81C 1000B6AF */  sw         $s6, 0x10($sp)
    /* B030 8001C820 1400B4AF */  sw         $s4, 0x14($sp)
    /* B034 8001C824 3072000C */  jal        func_8001C8C0
    /* B038 8001C828 1800A0AF */   sw        $zero, 0x18($sp)
    /* B03C 8001C82C 21300002 */  addu       $a2, $s0, $zero
    /* B040 8001C830 80100600 */  sll        $v0, $a2, 2
    /* B044 8001C834 21104600 */  addu       $v0, $v0, $a2
    /* B048 8001C838 2800248E */  lw         $a0, 0x28($s1)
    /* B04C 8001C83C 80100200 */  sll        $v0, $v0, 2
    /* B050 8001C840 21104400 */  addu       $v0, $v0, $a0
    /* B054 8001C844 0000438C */  lw         $v1, 0x0($v0)
    /* B058 8001C848 01004726 */  addiu      $a3, $s2, 0x1
    /* B05C 8001C84C 2A18E300 */  slt        $v1, $a3, $v1
    /* B060 8001C850 05006014 */  bnez       $v1, .L8001C868
    /* B064 8001C854 00000000 */   nop
    /* B068 8001C858 0300C010 */  beqz       $a2, .L8001C868
    /* B06C 8001C85C 21380000 */   addu      $a3, $zero, $zero
    /* B070 8001C860 1000478C */  lw         $a3, 0x10($v0)
    /* B074 8001C864 21300000 */  addu       $a2, $zero, $zero
  .L8001C868:
    /* B078 8001C868 21202002 */  addu       $a0, $s1, $zero
    /* B07C 8001C86C 2128E002 */  addu       $a1, $s7, $zero
    /* B080 8001C870 1000B6AF */  sw         $s6, 0x10($sp)
    /* B084 8001C874 1400B4AF */  sw         $s4, 0x14($sp)
    /* B088 8001C878 3072000C */  jal        func_8001C8C0
    /* B08C 8001C87C 1800A0AF */   sw        $zero, 0x18($sp)
    /* B090 8001C880 2120E002 */  addu       $a0, $s7, $zero
    /* B094 8001C884 0D66020C */  jal        func_80099834
    /* B098 8001C888 2000A527 */   addiu     $a1, $sp, 0x20
    /* B09C 8001C88C A763020C */  jal        func_80098E9C
    /* B0A0 8001C890 2120E002 */   addu      $a0, $s7, $zero
    /* B0A4 8001C894 5000BF8F */  lw         $ra, 0x50($sp)
    /* B0A8 8001C898 4C00B78F */  lw         $s7, 0x4C($sp)
    /* B0AC 8001C89C 4800B68F */  lw         $s6, 0x48($sp)
    /* B0B0 8001C8A0 4400B58F */  lw         $s5, 0x44($sp)
    /* B0B4 8001C8A4 4000B48F */  lw         $s4, 0x40($sp)
    /* B0B8 8001C8A8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* B0BC 8001C8AC 3800B28F */  lw         $s2, 0x38($sp)
    /* B0C0 8001C8B0 3400B18F */  lw         $s1, 0x34($sp)
    /* B0C4 8001C8B4 3000B08F */  lw         $s0, 0x30($sp)
    /* B0C8 8001C8B8 0800E003 */  jr         $ra
    /* B0CC 8001C8BC 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_8001C4A0
