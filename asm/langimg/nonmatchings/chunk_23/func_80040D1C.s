nonmatching func_80040D1C, 0x9C

glabel func_80040D1C
    /* 2F52C 80040D1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F530 80040D20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F534 80040D24 21808000 */  addu       $s0, $a0, $zero
    /* 2F538 80040D28 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F53C 80040D2C 9C00048E */  lw         $a0, 0x9C($s0)
    /* 2F540 80040D30 00000000 */  nop
    /* 2F544 80040D34 04008010 */  beqz       $a0, .L80040D48
    /* 2F548 80040D38 00000000 */   nop
    /* 2F54C 80040D3C 679C020C */  jal        __builtin_delete
    /* 2F550 80040D40 00000000 */   nop
    /* 2F554 80040D44 9C0000AE */  sw         $zero, 0x9C($s0)
  .L80040D48:
    /* 2F558 80040D48 A000048E */  lw         $a0, 0xA0($s0)
    /* 2F55C 80040D4C 00000000 */  nop
    /* 2F560 80040D50 15008010 */  beqz       $a0, .L80040DA8
    /* 2F564 80040D54 00000000 */   nop
    /* 2F568 80040D58 5C01828C */  lw         $v0, 0x15C($a0)
    /* 2F56C 80040D5C 00000000 */  nop
    /* 2F570 80040D60 07004010 */  beqz       $v0, .L80040D80
    /* 2F574 80040D64 00000000 */   nop
    /* 2F578 80040D68 8D9C020C */  jal        __builtin_vec_delete
    /* 2F57C 80040D6C 21204000 */   addu      $a0, $v0, $zero
    /* 2F580 80040D70 A000028E */  lw         $v0, 0xA0($s0)
    /* 2F584 80040D74 00000000 */  nop
    /* 2F588 80040D78 5C0140AC */  sw         $zero, 0x15C($v0)
    /* 2F58C 80040D7C A000048E */  lw         $a0, 0xA0($s0)
  .L80040D80:
    /* 2F590 80040D80 00000000 */  nop
    /* 2F594 80040D84 6001848C */  lw         $a0, 0x160($a0)
    /* 2F598 80040D88 00000000 */  nop
    /* 2F59C 80040D8C 06008010 */  beqz       $a0, .L80040DA8
    /* 2F5A0 80040D90 00000000 */   nop
    /* 2F5A4 80040D94 8D9C020C */  jal        __builtin_vec_delete
    /* 2F5A8 80040D98 00000000 */   nop
    /* 2F5AC 80040D9C A000028E */  lw         $v0, 0xA0($s0)
    /* 2F5B0 80040DA0 00000000 */  nop
    /* 2F5B4 80040DA4 600140AC */  sw         $zero, 0x160($v0)
  .L80040DA8:
    /* 2F5B8 80040DA8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F5BC 80040DAC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F5C0 80040DB0 0800E003 */  jr         $ra
    /* 2F5C4 80040DB4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80040D1C
