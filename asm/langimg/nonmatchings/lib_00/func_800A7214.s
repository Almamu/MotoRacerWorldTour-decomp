nonmatching func_800A7214, 0x20

glabel func_800A7214
    /* 95A24 800A7214 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95A28 800A7218 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95A2C 800A721C A4D6020C */  jal        func_800B5A90
    /* 95A30 800A7220 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 95A34 800A7224 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95A38 800A7228 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95A3C 800A722C 0800E003 */  jr         $ra
    /* 95A40 800A7230 00000000 */   nop
endlabel func_800A7214
