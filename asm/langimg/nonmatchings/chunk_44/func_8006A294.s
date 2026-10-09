nonmatching func_8006A294, 0x40

glabel func_8006A294
    /* 58AA4 8006A294 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58AA8 8006A298 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58AAC 8006A29C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58AB0 8006A2A0 E1A7010C */  jal        func_80069F84
    /* 58AB4 8006A2A4 21808000 */   addu      $s0, $a0, $zero
    /* 58AB8 8006A2A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 58ABC 8006A2AC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 58AC0 8006A2B0 12000324 */  addiu      $v1, $zero, 0x12
    /* 58AC4 8006A2B4 000002A2 */  sb         $v0, 0x0($s0)
    /* 58AC8 8006A2B8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 58ACC 8006A2BC 4A0003A6 */  sh         $v1, 0x4A($s0)
    /* 58AD0 8006A2C0 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 58AD4 8006A2C4 480002A6 */  sh         $v0, 0x48($s0)
    /* 58AD8 8006A2C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 58ADC 8006A2CC 0800E003 */  jr         $ra
    /* 58AE0 8006A2D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A294
