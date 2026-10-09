nonmatching func_8009D0E4, 0x114

glabel func_8009D0E4
    /* 8B8F4 8009D0E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B8F8 8009D0E8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8B8FC 8009D0EC 21908000 */  addu       $s2, $a0, $zero
    /* 8B900 8009D0F0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8B904 8009D0F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8B908 8009D0F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8B90C 8009D0FC 800A508E */  lw         $s0, 0xA80($s2)
    /* 8B910 8009D100 0D80053C */  lui        $a1, %hi(D_800C94D0)
    /* 8B914 8009D104 0000048E */  lw         $a0, 0x0($s0)
    /* 8B918 8009D108 2B98020C */  jal        func_800A60AC
    /* 8B91C 8009D10C D094A524 */   addiu     $a1, $a1, %lo(D_800C94D0)
    /* 8B920 8009D110 33004014 */  bnez       $v0, .L8009D1E0
    /* 8B924 8009D114 21200002 */   addu      $a0, $s0, $zero
    /* 8B928 8009D118 0D80053C */  lui        $a1, %hi(D_800C94D8)
    /* 8B92C 8009D11C 1BEA000C */  jal        func_8003A86C
    /* 8B930 8009D120 D894A524 */   addiu     $a1, $a1, %lo(D_800C94D8)
    /* 8B934 8009D124 21200002 */  addu       $a0, $s0, $zero
    /* 8B938 8009D128 01000524 */  addiu      $a1, $zero, 0x1
    /* 8B93C 8009D12C 21804000 */  addu       $s0, $v0, $zero
    /* 8B940 8009D130 0EEC000C */  jal        func_8003B038
    /* 8B944 8009D134 21300000 */   addu      $a2, $zero, $zero
    /* 8B948 8009D138 73BA020C */  jal        func_800AE9CC
    /* 8B94C 8009D13C 21884000 */   addu      $s1, $v0, $zero
    /* 8B950 8009D140 21304000 */  addu       $a2, $v0, $zero
    /* 8B954 8009D144 02000724 */  addiu      $a3, $zero, 0x2
    /* 8B958 8009D148 1400C710 */  beq        $a2, $a3, .L8009D19C
    /* 8B95C 8009D14C F0FF053C */   lui       $a1, (0xFFF0FFFF >> 16)
    /* 8B960 8009D150 FFFFA534 */  ori        $a1, $a1, (0xFFF0FFFF & 0xFFFF)
    /* 8B964 8009D154 CFFF033C */  lui        $v1, (0xFFCFFFFF >> 16)
    /* 8B968 8009D158 FFFF6334 */  ori        $v1, $v1, (0xFFCFFFFF & 0xFFFF)
    /* 8B96C 8009D15C 0000028E */  lw         $v0, 0x0($s0)
    /* 8B970 8009D160 1000043C */  lui        $a0, (0x100000 >> 16)
    /* 8B974 8009D164 24104500 */  and        $v0, $v0, $a1
    /* 8B978 8009D168 24104300 */  and        $v0, $v0, $v1
    /* 8B97C 8009D16C 25104400 */  or         $v0, $v0, $a0
    /* 8B980 8009D170 000002AE */  sw         $v0, 0x0($s0)
    /* 8B984 8009D174 0A002386 */  lh         $v1, 0xA($s1)
    /* 8B988 8009D178 00000000 */  nop
    /* 8B98C 8009D17C 03006714 */  bne        $v1, $a3, .L8009D18C
    /* 8B990 8009D180 21202002 */   addu      $a0, $s1, $zero
    /* 8B994 8009D184 36E5000C */  jal        func_800394D8
    /* 8B998 8009D188 21284002 */   addu      $a1, $s2, $zero
  .L8009D18C:
    /* 8B99C 8009D18C 2800038E */  lw         $v1, 0x28($s0)
    /* 8B9A0 8009D190 3800028E */  lw         $v0, 0x38($s0)
    /* 8B9A4 8009D194 78740208 */  j          .L8009D1E0
    /* 8B9A8 8009D198 540062AC */   sw        $v0, 0x54($v1)
  .L8009D19C:
    /* 8B9AC 8009D19C F0FF043C */  lui        $a0, (0xFFF0FFFF >> 16)
    /* 8B9B0 8009D1A0 FFFF8434 */  ori        $a0, $a0, (0xFFF0FFFF & 0xFFFF)
    /* 8B9B4 8009D1A4 CFFF053C */  lui        $a1, (0xFFCFFFFF >> 16)
    /* 8B9B8 8009D1A8 FFFFA534 */  ori        $a1, $a1, (0xFFCFFFFF & 0xFFFF)
    /* 8B9BC 8009D1AC 0000028E */  lw         $v0, 0x0($s0)
    /* 8B9C0 8009D1B0 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 8B9C4 8009D1B4 24104400 */  and        $v0, $v0, $a0
    /* 8B9C8 8009D1B8 25104300 */  or         $v0, $v0, $v1
    /* 8B9CC 8009D1BC 24104500 */  and        $v0, $v0, $a1
    /* 8B9D0 8009D1C0 000002AE */  sw         $v0, 0x0($s0)
    /* 8B9D4 8009D1C4 0A002386 */  lh         $v1, 0xA($s1)
    /* 8B9D8 8009D1C8 00000000 */  nop
    /* 8B9DC 8009D1CC 04006610 */  beq        $v1, $a2, .L8009D1E0
    /* 8B9E0 8009D1D0 7F00023C */   lui       $v0, (0x7F7F7F >> 16)
    /* 8B9E4 8009D1D4 2800038E */  lw         $v1, 0x28($s0)
    /* 8B9E8 8009D1D8 7F7F4234 */  ori        $v0, $v0, (0x7F7F7F & 0xFFFF)
    /* 8B9EC 8009D1DC 540062AC */  sw         $v0, 0x54($v1)
  .L8009D1E0:
    /* 8B9F0 8009D1E0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8B9F4 8009D1E4 1800B28F */  lw         $s2, 0x18($sp)
    /* 8B9F8 8009D1E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 8B9FC 8009D1EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 8BA00 8009D1F0 0800E003 */  jr         $ra
    /* 8BA04 8009D1F4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8009D0E4
