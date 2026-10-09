nonmatching func_80078AD0, 0x40

glabel func_80078AD0
    /* 672E0 80078AD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 672E4 80078AD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 672E8 80078AD8 21808000 */  addu       $s0, $a0, $zero
    /* 672EC 80078ADC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 672F0 80078AE0 2800048E */  lw         $a0, 0x28($s0)
    /* 672F4 80078AE4 00000000 */  nop
    /* 672F8 80078AE8 04008010 */  beqz       $a0, .L80078AFC
    /* 672FC 80078AEC 00000000 */   nop
    /* 67300 80078AF0 59D5020C */  jal        func_800B5564
    /* 67304 80078AF4 00000000 */   nop
    /* 67308 80078AF8 280000AE */  sw         $zero, 0x28($s0)
  .L80078AFC:
    /* 6730C 80078AFC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 67310 80078B00 1000B08F */  lw         $s0, 0x10($sp)
    /* 67314 80078B04 01000224 */  addiu      $v0, $zero, 0x1
    /* 67318 80078B08 0800E003 */  jr         $ra
    /* 6731C 80078B0C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078AD0
