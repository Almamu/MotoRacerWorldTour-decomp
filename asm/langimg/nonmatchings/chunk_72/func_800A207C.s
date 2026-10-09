nonmatching func_800A207C, 0xCC

glabel func_800A207C
    /* 9088C 800A207C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 90890 800A2080 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 90894 800A2084 21880000 */  addu       $s1, $zero, $zero
    /* 90898 800A2088 21188000 */  addu       $v1, $a0, $zero
    /* 9089C 800A208C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 908A0 800A2090 2800B0AF */  sw         $s0, 0x28($sp)
    /* 908A4 800A2094 2180A000 */  addu       $s0, $a1, $zero
    /* 908A8 800A2098 21286000 */  addu       $a1, $v1, $zero
    /* 908AC 800A209C 3800BFAF */  sw         $ra, 0x38($sp)
    /* 908B0 800A20A0 3400B3AF */  sw         $s3, 0x34($sp)
    /* 908B4 800A20A4 1D87020C */  jal        func_800A1C74
    /* 908B8 800A20A8 3000B2AF */   sw        $s2, 0x30($sp)
    /* 908BC 800A20AC 1C004010 */  beqz       $v0, .L800A2120
    /* 908C0 800A20B0 1000A527 */   addiu     $a1, $sp, 0x10
    /* 908C4 800A20B4 02000424 */  addiu      $a0, $zero, 0x2
    /* 908C8 800A20B8 00080624 */  addiu      $a2, $zero, 0x800
    /* 908CC 800A20BC 3E87020C */  jal        func_800A1CF8
    /* 908D0 800A20C0 21380002 */   addu      $a3, $s0, $zero
    /* 908D4 800A20C4 21884000 */  addu       $s1, $v0, $zero
    /* 908D8 800A20C8 FB86020C */  jal        func_800A1BEC
    /* 908DC 800A20CC 21202002 */   addu      $a0, $s1, $zero
    /* 908E0 800A20D0 21900000 */  addu       $s2, $zero, $zero
    /* 908E4 800A20D4 0000238E */  lw         $v1, 0x0($s1)
    /* 908E8 800A20D8 00000000 */  nop
    /* 908EC 800A20DC 10006010 */  beqz       $v1, .L800A2120
    /* 908F0 800A20E0 21984000 */   addu      $s3, $v0, $zero
    /* 908F4 800A20E4 18003026 */  addiu      $s0, $s1, 0x18
  .L800A20E8:
    /* 908F8 800A20E8 089F020C */  jal        func_800A7C20
    /* 908FC 800A20EC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 90900 800A20F0 21280002 */  addu       $a1, $s0, $zero
    /* 90904 800A20F4 0000048E */  lw         $a0, 0x0($s0)
    /* 90908 800A20F8 21801302 */  addu       $s0, $s0, $s3
    /* 9090C 800A20FC FF078424 */  addiu      $a0, $a0, 0x7FF
    /* 90910 800A2100 C2220400 */  srl        $a0, $a0, 11
    /* 90914 800A2104 C79E020C */  jal        func_800A7B1C
    /* 90918 800A2108 21204400 */   addu      $a0, $v0, $a0
    /* 9091C 800A210C 0000238E */  lw         $v1, 0x0($s1)
    /* 90920 800A2110 01005226 */  addiu      $s2, $s2, 0x1
    /* 90924 800A2114 2B184302 */  sltu       $v1, $s2, $v1
    /* 90928 800A2118 F3FF6014 */  bnez       $v1, .L800A20E8
    /* 9092C 800A211C 00000000 */   nop
  .L800A2120:
    /* 90930 800A2120 02002012 */  beqz       $s1, .L800A212C
    /* 90934 800A2124 21102002 */   addu      $v0, $s1, $zero
    /* 90938 800A2128 080020AE */  sw         $zero, 0x8($s1)
  .L800A212C:
    /* 9093C 800A212C 3800BF8F */  lw         $ra, 0x38($sp)
    /* 90940 800A2130 3400B38F */  lw         $s3, 0x34($sp)
    /* 90944 800A2134 3000B28F */  lw         $s2, 0x30($sp)
    /* 90948 800A2138 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 9094C 800A213C 2800B08F */  lw         $s0, 0x28($sp)
    /* 90950 800A2140 0800E003 */  jr         $ra
    /* 90954 800A2144 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800A207C
