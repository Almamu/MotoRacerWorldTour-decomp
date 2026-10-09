nonmatching func_80090AB8, 0xC8

glabel func_80090AB8
    /* 7F2C8 80090AB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7F2CC 80090ABC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7F2D0 80090AC0 21888000 */  addu       $s1, $a0, $zero
    /* 7F2D4 80090AC4 08000424 */  addiu      $a0, $zero, 0x8
    /* 7F2D8 80090AC8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7F2DC 80090ACC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7F2E0 80090AD0 709C020C */  jal        __builtin_new
    /* 7F2E4 80090AD4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 7F2E8 80090AD8 00003082 */  lb         $s0, 0x0($s1)
    /* 7F2EC 80090ADC 21904000 */  addu       $s2, $v0, $zero
    /* 7F2F0 80090AE0 959C020C */  jal        __builtin_vec_new
    /* 7F2F4 80090AE4 40211000 */   sll       $a0, $s0, 5
    /* 7F2F8 80090AE8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 7F2FC 80090AEC 04000006 */  bltz       $s0, .L80090B00
    /* 7F300 80090AF0 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 7F304 80090AF4 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L80090AF8:
    /* 7F308 80090AF8 FFFF0316 */  bne        $s0, $v1, .L80090AF8
    /* 7F30C 80090AFC FFFF1026 */   addiu     $s0, $s0, -0x1
  .L80090B00:
    /* 7F310 80090B00 00002482 */  lb         $a0, 0x0($s1)
    /* 7F314 80090B04 21804000 */  addu       $s0, $v0, $zero
    /* 7F318 80090B08 959C020C */  jal        __builtin_vec_new
    /* 7F31C 80090B0C 80200400 */   sll       $a0, $a0, 2
    /* 7F320 80090B10 21304000 */  addu       $a2, $v0, $zero
    /* 7F324 80090B14 00002382 */  lb         $v1, 0x0($s1)
    /* 7F328 80090B18 21280000 */  addu       $a1, $zero, $zero
    /* 7F32C 80090B1C 000046AE */  sw         $a2, 0x0($s2)
    /* 7F330 80090B20 0E006018 */  blez       $v1, .L80090B5C
    /* 7F334 80090B24 040050AE */   sw        $s0, 0x4($s2)
  .L80090B28:
    /* 7F338 80090B28 0800228E */  lw         $v0, 0x8($s1)
    /* 7F33C 80090B2C C0190500 */  sll        $v1, $a1, 7
    /* 7F340 80090B30 21186200 */  addu       $v1, $v1, $v0
    /* 7F344 80090B34 1000648C */  lw         $a0, 0x10($v1)
    /* 7F348 80090B38 0100A524 */  addiu      $a1, $a1, 0x1
    /* 7F34C 80090B3C 0000C4AC */  sw         $a0, 0x0($a2)
    /* 7F350 80090B40 0400C624 */  addiu      $a2, $a2, 0x4
    /* 7F354 80090B44 100070AC */  sw         $s0, 0x10($v1)
    /* 7F358 80090B48 00002282 */  lb         $v0, 0x0($s1)
    /* 7F35C 80090B4C 00000000 */  nop
    /* 7F360 80090B50 2A10A200 */  slt        $v0, $a1, $v0
    /* 7F364 80090B54 F4FF4014 */  bnez       $v0, .L80090B28
    /* 7F368 80090B58 20001026 */   addiu     $s0, $s0, 0x20
  .L80090B5C:
    /* 7F36C 80090B5C F044020C */  jal        func_800913C0
    /* 7F370 80090B60 21202002 */   addu      $a0, $s1, $zero
    /* 7F374 80090B64 21104002 */  addu       $v0, $s2, $zero
    /* 7F378 80090B68 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7F37C 80090B6C 1800B28F */  lw         $s2, 0x18($sp)
    /* 7F380 80090B70 1400B18F */  lw         $s1, 0x14($sp)
    /* 7F384 80090B74 1000B08F */  lw         $s0, 0x10($sp)
    /* 7F388 80090B78 0800E003 */  jr         $ra
    /* 7F38C 80090B7C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80090AB8
