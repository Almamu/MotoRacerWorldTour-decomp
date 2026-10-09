nonmatching func_80089B28, 0x44

glabel func_80089B28
    /* 78338 80089B28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7833C 80089B2C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 78340 80089B30 21888000 */  addu       $s1, $a0, $zero
    /* 78344 80089B34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78348 80089B38 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7834C 80089B3C FE26020C */  jal        func_80089BF8
    /* 78350 80089B40 2180A000 */   addu      $s0, $a1, $zero
    /* 78354 80089B44 01001032 */  andi       $s0, $s0, 0x1
    /* 78358 80089B48 03000012 */  beqz       $s0, .L80089B58
    /* 7835C 80089B4C 00000000 */   nop
    /* 78360 80089B50 679C020C */  jal        __builtin_delete
    /* 78364 80089B54 21202002 */   addu      $a0, $s1, $zero
  .L80089B58:
    /* 78368 80089B58 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7836C 80089B5C 1400B18F */  lw         $s1, 0x14($sp)
    /* 78370 80089B60 1000B08F */  lw         $s0, 0x10($sp)
    /* 78374 80089B64 0800E003 */  jr         $ra
    /* 78378 80089B68 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80089B28
