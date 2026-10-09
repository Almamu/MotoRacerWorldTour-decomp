nonmatching func_800AFD38, 0x32C

glabel func_800AFD38
    /* 9E548 800AFD38 0C80023C */  lui        $v0, %hi(D_800C3C64)
    /* 9E54C 800AFD3C 643C438C */  lw         $v1, %lo(D_800C3C64)($v0)
    /* 9E550 800AFD40 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 9E554 800AFD44 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 9E558 800AFD48 21888000 */  addu       $s1, $a0, $zero
    /* 9E55C 800AFD4C 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 9E560 800AFD50 4800BEAF */  sw         $fp, 0x48($sp)
    /* 9E564 800AFD54 4400B7AF */  sw         $s7, 0x44($sp)
    /* 9E568 800AFD58 4000B6AF */  sw         $s6, 0x40($sp)
    /* 9E56C 800AFD5C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 9E570 800AFD60 3800B4AF */  sw         $s4, 0x38($sp)
    /* 9E574 800AFD64 3400B3AF */  sw         $s3, 0x34($sp)
    /* 9E578 800AFD68 3000B2AF */  sw         $s2, 0x30($sp)
    /* 9E57C 800AFD6C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 9E580 800AFD70 2000A0AF */  sw         $zero, 0x20($sp)
    /* 9E584 800AFD74 03006014 */  bnez       $v1, .L800AFD84
    /* 9E588 800AFD78 5400A5AF */   sw        $a1, 0x54($sp)
    /* 9E58C 800AFD7C 0DC00208 */  j          .L800B0034
    /* 9E590 800AFD80 21100000 */   addu      $v0, $zero, $zero
  .L800AFD84:
    /* 9E594 800AFD84 0C80123C */  lui        $s2, %hi(D_800C3C78)
    /* 9E598 800AFD88 783C448E */  lw         $a0, %lo(D_800C3C78)($s2)
    /* 9E59C 800AFD8C 00000000 */  nop
    /* 9E5A0 800AFD90 0A008010 */  beqz       $a0, .L800AFDBC
    /* 9E5A4 800AFD94 0E80083C */   lui       $t0, %hi(D_800DE360)
    /* 9E5A8 800AFD98 08009110 */  beq        $a0, $s1, .L800AFDBC
    /* 9E5AC 800AFD9C 0E80103C */   lui       $s0, %hi(D_800DE414)
    /* 9E5B0 800AFDA0 14E4058E */  lw         $a1, %lo(D_800DE414)($s0)
    /* 9E5B4 800AFDA4 03BF020C */  jal        func_800AFC0C
    /* 9E5B8 800AFDA8 00000000 */   nop
    /* 9E5BC 800AFDAC 5400A88F */  lw         $t0, 0x54($sp)
    /* 9E5C0 800AFDB0 783C51AE */  sw         $s1, %lo(D_800C3C78)($s2)
    /* 9E5C4 800AFDB4 14E408AE */  sw         $t0, %lo(D_800DE414)($s0)
    /* 9E5C8 800AFDB8 0E80083C */  lui        $t0, %hi(D_800DE360)
  .L800AFDBC:
    /* 9E5CC 800AFDBC 60E3028D */  lw         $v0, %lo(D_800DE360)($t0)
    /* 9E5D0 800AFDC0 00000000 */  nop
    /* 9E5D4 800AFDC4 9A004018 */  blez       $v0, .L800B0030
    /* 9E5D8 800AFDC8 21980000 */   addu      $s3, $zero, $zero
    /* 9E5DC 800AFDCC 21B02002 */  addu       $s6, $s1, $zero
    /* 9E5E0 800AFDD0 21A80000 */  addu       $s5, $zero, $zero
    /* 9E5E4 800AFDD4 0E80023C */  lui        $v0, %hi(D_800DE344)
    /* 9E5E8 800AFDD8 44E35224 */  addiu      $s2, $v0, %lo(D_800DE344)
    /* 9E5EC 800AFDDC 0E80033C */  lui        $v1, %hi(D_800DE36C)
    /* 9E5F0 800AFDE0 6CE36324 */  addiu      $v1, $v1, %lo(D_800DE36C)
    /* 9E5F4 800AFDE4 2400A3AF */  sw         $v1, 0x24($sp)
    /* 9E5F8 800AFDE8 0400DE26 */  addiu      $fp, $s6, 0x4
    /* 9E5FC 800AFDEC 04005726 */  addiu      $s7, $s2, 0x4
  .L800AFDF0:
    /* 9E600 800AFDF0 0C80033C */  lui        $v1, %hi(D_800C3C70)
    /* 9E604 800AFDF4 703C6290 */  lbu        $v0, %lo(D_800C3C70)($v1)
    /* 9E608 800AFDF8 00000000 */  nop
    /* 9E60C 800AFDFC 07106202 */  srav       $v0, $v0, $s3
    /* 9E610 800AFE00 01004230 */  andi       $v0, $v0, 0x1
    /* 9E614 800AFE04 7C004010 */  beqz       $v0, .L800AFFF8
    /* 9E618 800AFE08 00000000 */   nop
    /* 9E61C 800AFE0C 2400A88F */  lw         $t0, 0x24($sp)
    /* 9E620 800AFE10 00004382 */  lb         $v1, 0x0($s2)
    /* 9E624 800AFE14 00000281 */  lb         $v0, 0x0($t0)
    /* 9E628 800AFE18 00000000 */  nop
    /* 9E62C 800AFE1C 23006210 */  beq        $v1, $v0, .L800AFEAC
    /* 9E630 800AFE20 00000000 */   nop
    /* 9E634 800AFE24 0000C28F */  lw         $v0, 0x0($fp)
    /* 9E638 800AFE28 00000000 */  nop
    /* 9E63C 800AFE2C 1B004010 */  beqz       $v0, .L800AFE9C
    /* 9E640 800AFE30 0C80043C */   lui       $a0, %hi(D_800C3C74)
    /* 9E644 800AFE34 743C828C */  lw         $v0, %lo(D_800C3C74)($a0)
    /* 9E648 800AFE38 00000000 */  nop
    /* 9E64C 800AFE3C 04004230 */  andi       $v0, $v0, 0x4
    /* 9E650 800AFE40 04004014 */  bnez       $v0, .L800AFE54
    /* 9E654 800AFE44 04000224 */   addiu     $v0, $zero, 0x4
    /* 9E658 800AFE48 02006214 */  bne        $v1, $v0, .L800AFE54
    /* 9E65C 800AFE4C 00000000 */   nop
    /* 9E660 800AFE50 000040A2 */  sb         $zero, 0x0($s2)
  .L800AFE54:
    /* 9E664 800AFE54 743C828C */  lw         $v0, %lo(D_800C3C74)($a0)
    /* 9E668 800AFE58 00000000 */  nop
    /* 9E66C 800AFE5C 10004230 */  andi       $v0, $v0, 0x10
    /* 9E670 800AFE60 06004014 */  bnez       $v0, .L800AFE7C
    /* 9E674 800AFE64 07000224 */   addiu     $v0, $zero, 0x7
    /* 9E678 800AFE68 00004382 */  lb         $v1, 0x0($s2)
    /* 9E67C 800AFE6C 00000000 */  nop
    /* 9E680 800AFE70 02006214 */  bne        $v1, $v0, .L800AFE7C
    /* 9E684 800AFE74 00000000 */   nop
    /* 9E688 800AFE78 000040A2 */  sb         $zero, 0x0($s2)
  .L800AFE7C:
    /* 9E68C 800AFE7C 0000E0AE */  sw         $zero, 0x0($s7)
    /* 9E690 800AFE80 0000C68E */  lw         $a2, 0x0($s6)
    /* 9E694 800AFE84 00004282 */  lb         $v0, 0x0($s2)
    /* 9E698 800AFE88 0000C38F */  lw         $v1, 0x0($fp)
    /* 9E69C 800AFE8C 5400A58F */  lw         $a1, 0x54($sp)
    /* 9E6A0 800AFE90 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E6A4 800AFE94 09F86000 */  jalr       $v1
    /* 9E6A8 800AFE98 1000A2AF */   sw        $v0, 0x10($sp)
  .L800AFE9C:
    /* 9E6AC 800AFE9C 00004292 */  lbu        $v0, 0x0($s2)
    /* 9E6B0 800AFEA0 2400A88F */  lw         $t0, 0x24($sp)
    /* 9E6B4 800AFEA4 00000000 */  nop
    /* 9E6B8 800AFEA8 000002A1 */  sb         $v0, 0x0($t0)
  .L800AFEAC:
    /* 9E6BC 800AFEAC 0E80083C */  lui        $t0, %hi(D_800DE348)
    /* 9E6C0 800AFEB0 48E30825 */  addiu      $t0, $t0, %lo(D_800DE348)
    /* 9E6C4 800AFEB4 2188A802 */  addu       $s1, $s5, $t0
    /* 9E6C8 800AFEB8 0000228E */  lw         $v0, 0x0($s1)
    /* 9E6CC 800AFEBC 00000000 */  nop
    /* 9E6D0 800AFEC0 28004014 */  bnez       $v0, .L800AFF64
    /* 9E6D4 800AFEC4 0E80023C */   lui       $v0, %hi(D_800DE358)
    /* 9E6D8 800AFEC8 58E34224 */  addiu      $v0, $v0, %lo(D_800DE358)
    /* 9E6DC 800AFECC 2180A202 */  addu       $s0, $s5, $v0
    /* 9E6E0 800AFED0 0000048E */  lw         $a0, 0x0($s0)
    /* 9E6E4 800AFED4 1FC1020C */  jal        func_800B047C
    /* 9E6E8 800AFED8 00000000 */   nop
    /* 9E6EC 800AFEDC 21204000 */  addu       $a0, $v0, $zero
    /* 9E6F0 800AFEE0 02000324 */  addiu      $v1, $zero, 0x2
    /* 9E6F4 800AFEE4 04008314 */  bne        $a0, $v1, .L800AFEF8
    /* 9E6F8 800AFEE8 06000224 */   addiu     $v0, $zero, 0x6
    /* 9E6FC 800AFEEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E700 800AFEF0 D9BF0208 */  j          .L800AFF64
    /* 9E704 800AFEF4 000022AE */   sw        $v0, 0x0($s1)
  .L800AFEF8:
    /* 9E708 800AFEF8 1A008214 */  bne        $a0, $v0, .L800AFF64
    /* 9E70C 800AFEFC 0C80053C */   lui       $a1, %hi(D_800C3BBC)
    /* 9E710 800AFF00 0000048E */  lw         $a0, 0x0($s0)
    /* 9E714 800AFF04 C2C1020C */  jal        func_800B0708
    /* 9E718 800AFF08 BC3BA524 */   addiu     $a1, $a1, %lo(D_800C3BBC)
    /* 9E71C 800AFF0C 21206002 */  addu       $a0, $s3, $zero
    /* 9E720 800AFF10 F2B9020C */  jal        func_800AE7C8
    /* 9E724 800AFF14 2BA00200 */   sltu      $s4, $zero, $v0
    /* 9E728 800AFF18 0C80033C */  lui        $v1, %hi(D_800C3C44)
    /* 9E72C 800AFF1C 443C6324 */  addiu      $v1, $v1, %lo(D_800C3C44)
    /* 9E730 800AFF20 2118A302 */  addu       $v1, $s5, $v1
    /* 9E734 800AFF24 0C80043C */  lui        $a0, %hi(D_800C3C4C)
    /* 9E738 800AFF28 4C3C8424 */  addiu      $a0, $a0, %lo(D_800C3C4C)
    /* 9E73C 800AFF2C 2188A402 */  addu       $s1, $s5, $a0
    /* 9E740 800AFF30 000062AC */  sw         $v0, 0x0($v1)
    /* 9E744 800AFF34 0000258E */  lw         $a1, 0x0($s1)
    /* 9E748 800AFF38 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 9E74C 800AFF3C 0600B010 */  beq        $a1, $s0, .L800AFF58
    /* 9E750 800AFF40 00000000 */   nop
    /* 9E754 800AFF44 00BA020C */  jal        func_800AE800
    /* 9E758 800AFF48 21206002 */   addu      $a0, $s3, $zero
    /* 9E75C 800AFF4C 02005010 */  beq        $v0, $s0, .L800AFF58
    /* 9E760 800AFF50 00000000 */   nop
    /* 9E764 800AFF54 000030AE */  sw         $s0, 0x0($s1)
  .L800AFF58:
    /* 9E768 800AFF58 02008012 */  beqz       $s4, .L800AFF64
    /* 9E76C 800AFF5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 9E770 800AFF60 0000E2AE */  sw         $v0, 0x0($s7)
  .L800AFF64:
    /* 9E774 800AFF64 00004382 */  lb         $v1, 0x0($s2)
    /* 9E778 800AFF68 04000224 */  addiu      $v0, $zero, 0x4
    /* 9E77C 800AFF6C 05006210 */  beq        $v1, $v0, .L800AFF84
    /* 9E780 800AFF70 07000224 */   addiu     $v0, $zero, 0x7
    /* 9E784 800AFF74 0F006210 */  beq        $v1, $v0, .L800AFFB4
    /* 9E788 800AFF78 0E80103C */   lui       $s0, %hi(D_800DE410)
    /* 9E78C 800AFF7C FBBF0208 */  j          .L800AFFEC
    /* 9E790 800AFF80 00000000 */   nop
  .L800AFF84:
    /* 9E794 800AFF84 0C80033C */  lui        $v1, %hi(D_800C3C74)
    /* 9E798 800AFF88 743C628C */  lw         $v0, %lo(D_800C3C74)($v1)
    /* 9E79C 800AFF8C 00000000 */  nop
    /* 9E7A0 800AFF90 04004230 */  andi       $v0, $v0, 0x4
    /* 9E7A4 800AFF94 18004010 */  beqz       $v0, .L800AFFF8
    /* 9E7A8 800AFF98 2128C002 */   addu      $a1, $s6, $zero
    /* 9E7AC 800AFF9C 21206002 */  addu       $a0, $s3, $zero
    /* 9E7B0 800AFFA0 5400A68F */  lw         $a2, 0x54($sp)
    /* 9E7B4 800AFFA4 EABC020C */  jal        func_800AF3A8
    /* 9E7B8 800AFFA8 21380000 */   addu      $a3, $zero, $zero
    /* 9E7BC 800AFFAC F7BF0208 */  j          .L800AFFDC
    /* 9E7C0 800AFFB0 00000000 */   nop
  .L800AFFB4:
    /* 9E7C4 800AFFB4 0C80033C */  lui        $v1, %hi(D_800C3C74)
    /* 9E7C8 800AFFB8 743C628C */  lw         $v0, %lo(D_800C3C74)($v1)
    /* 9E7CC 800AFFBC 00000000 */  nop
    /* 9E7D0 800AFFC0 10004230 */  andi       $v0, $v0, 0x10
    /* 9E7D4 800AFFC4 0C004010 */  beqz       $v0, .L800AFFF8
    /* 9E7D8 800AFFC8 2128C002 */   addu      $a1, $s6, $zero
    /* 9E7DC 800AFFCC 21206002 */  addu       $a0, $s3, $zero
    /* 9E7E0 800AFFD0 5400A68F */  lw         $a2, 0x54($sp)
    /* 9E7E4 800AFFD4 C0BD020C */  jal        func_800AF700
    /* 9E7E8 800AFFD8 21380000 */   addu      $a3, $zero, $zero
  .L800AFFDC:
    /* 9E7EC 800AFFDC 06004010 */  beqz       $v0, .L800AFFF8
    /* 9E7F0 800AFFE0 01000824 */   addiu     $t0, $zero, 0x1
    /* 9E7F4 800AFFE4 FEBF0208 */  j          .L800AFFF8
    /* 9E7F8 800AFFE8 2000A8AF */   sw        $t0, 0x20($sp)
  .L800AFFEC:
    /* 9E7FC 800AFFEC 59BA020C */  jal        func_800AE964
    /* 9E800 800AFFF0 21206002 */   addu      $a0, $s3, $zero
    /* 9E804 800AFFF4 10E402AE */  sw         $v0, %lo(D_800DE410)($s0)
  .L800AFFF8:
    /* 9E808 800AFFF8 9800D626 */  addiu      $s6, $s6, 0x98
    /* 9E80C 800AFFFC 0400F726 */  addiu      $s7, $s7, 0x4
    /* 9E810 800B0000 0400B526 */  addiu      $s5, $s5, 0x4
    /* 9E814 800B0004 01005226 */  addiu      $s2, $s2, 0x1
    /* 9E818 800B0008 2400A88F */  lw         $t0, 0x24($sp)
    /* 9E81C 800B000C 00000000 */  nop
    /* 9E820 800B0010 01000825 */  addiu      $t0, $t0, 0x1
    /* 9E824 800B0014 2400A8AF */  sw         $t0, 0x24($sp)
    /* 9E828 800B0018 0E80083C */  lui        $t0, %hi(D_800DE360)
    /* 9E82C 800B001C 60E3028D */  lw         $v0, %lo(D_800DE360)($t0)
    /* 9E830 800B0020 01007326 */  addiu      $s3, $s3, 0x1
    /* 9E834 800B0024 2A106202 */  slt        $v0, $s3, $v0
    /* 9E838 800B0028 71FF4014 */  bnez       $v0, .L800AFDF0
    /* 9E83C 800B002C 9800DE27 */   addiu     $fp, $fp, 0x98
  .L800B0030:
    /* 9E840 800B0030 2000A28F */  lw         $v0, 0x20($sp)
  .L800B0034:
    /* 9E844 800B0034 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 9E848 800B0038 4800BE8F */  lw         $fp, 0x48($sp)
    /* 9E84C 800B003C 4400B78F */  lw         $s7, 0x44($sp)
    /* 9E850 800B0040 4000B68F */  lw         $s6, 0x40($sp)
    /* 9E854 800B0044 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 9E858 800B0048 3800B48F */  lw         $s4, 0x38($sp)
    /* 9E85C 800B004C 3400B38F */  lw         $s3, 0x34($sp)
    /* 9E860 800B0050 3000B28F */  lw         $s2, 0x30($sp)
    /* 9E864 800B0054 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 9E868 800B0058 2800B08F */  lw         $s0, 0x28($sp)
    /* 9E86C 800B005C 0800E003 */  jr         $ra
    /* 9E870 800B0060 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_800AFD38
