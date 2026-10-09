nonmatching func_80087A14, 0x44

glabel func_80087A14
    /* 76224 80087A14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 76228 80087A18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7622C 80087A1C 21888000 */  addu       $s1, $a0, $zero
    /* 76230 80087A20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 76234 80087A24 1800BFAF */  sw         $ra, 0x18($sp)
    /* 76238 80087A28 AA22020C */  jal        func_80088AA8
    /* 7623C 80087A2C 2180A000 */   addu      $s0, $a1, $zero
    /* 76240 80087A30 01001032 */  andi       $s0, $s0, 0x1
    /* 76244 80087A34 03000012 */  beqz       $s0, .L80087A44
    /* 76248 80087A38 00000000 */   nop
    /* 7624C 80087A3C 679C020C */  jal        __builtin_delete
    /* 76250 80087A40 21202002 */   addu      $a0, $s1, $zero
  .L80087A44:
    /* 76254 80087A44 1800BF8F */  lw         $ra, 0x18($sp)
    /* 76258 80087A48 1400B18F */  lw         $s1, 0x14($sp)
    /* 7625C 80087A4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 76260 80087A50 0800E003 */  jr         $ra
    /* 76264 80087A54 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80087A14
