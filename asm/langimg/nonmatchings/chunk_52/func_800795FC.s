nonmatching func_800795FC, 0x4C

glabel func_800795FC
    /* 67E0C 800795FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67E10 80079600 1000B0AF */  sw         $s0, 0x10($sp)
    /* 67E14 80079604 21808000 */  addu       $s0, $a0, $zero
    /* 67E18 80079608 1400BFAF */  sw         $ra, 0x14($sp)
    /* 67E1C 8007960C A7AF020C */  jal        DrawSync
    /* 67E20 80079610 21200000 */   addu      $a0, $zero, $zero
    /* 67E24 80079614 2800048E */  lw         $a0, 0x28($s0)
    /* 67E28 80079618 00000000 */  nop
    /* 67E2C 8007961C 04008010 */  beqz       $a0, .L80079630
    /* 67E30 80079620 00000000 */   nop
    /* 67E34 80079624 59D5020C */  jal        func_800B5564
    /* 67E38 80079628 00000000 */   nop
    /* 67E3C 8007962C 280000AE */  sw         $zero, 0x28($s0)
  .L80079630:
    /* 67E40 80079630 1400BF8F */  lw         $ra, 0x14($sp)
    /* 67E44 80079634 240000AE */  sw         $zero, 0x24($s0)
    /* 67E48 80079638 1000B08F */  lw         $s0, 0x10($sp)
    /* 67E4C 8007963C 01000224 */  addiu      $v0, $zero, 0x1
    /* 67E50 80079640 0800E003 */  jr         $ra
    /* 67E54 80079644 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800795FC
