nonmatching func_8006D18C, 0x60

glabel func_8006D18C
    /* 5B99C 8006D18C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B9A0 8006D190 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B9A4 8006D194 21908000 */  addu       $s2, $a0, $zero
    /* 5B9A8 8006D198 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B9AC 8006D19C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B9B0 8006D1A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B9B4 8006D1A4 8009448E */  lw         $a0, 0x980($s2)
    /* 5B9B8 8006D1A8 10B3010C */  jal        func_8006CC40
    /* 5B9BC 8006D1AC 21880000 */   addu      $s1, $zero, $zero
    /* 5B9C0 8006D1B0 21804002 */  addu       $s0, $s2, $zero
  .L8006D1B4:
    /* 5B9C4 8006D1B4 8009448E */  lw         $a0, 0x980($s2)
    /* 5B9C8 8006D1B8 21280002 */  addu       $a1, $s0, $zero
    /* 5B9CC 8006D1BC C0041026 */  addiu      $s0, $s0, 0x4C0
    /* 5B9D0 8006D1C0 40B3010C */  jal        func_8006CD00
    /* 5B9D4 8006D1C4 01003126 */   addiu     $s1, $s1, 0x1
    /* 5B9D8 8006D1C8 0200222E */  sltiu      $v0, $s1, 0x2
    /* 5B9DC 8006D1CC F9FF4014 */  bnez       $v0, .L8006D1B4
    /* 5B9E0 8006D1D0 00000000 */   nop
    /* 5B9E4 8006D1D4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B9E8 8006D1D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B9EC 8006D1DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B9F0 8006D1E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B9F4 8006D1E4 0800E003 */  jr         $ra
    /* 5B9F8 8006D1E8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D18C
