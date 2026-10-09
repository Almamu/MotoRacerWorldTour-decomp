nonmatching func_8009F558, 0x28

glabel func_8009F558
    /* 8DD68 8009F558 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DD6C 8009F55C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8DD70 8009F560 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DD74 8009F564 F95582A3 */  sb         $v0, %gp_rel(D_800C9CE9)($gp)
    /* 8DD78 8009F568 607D020C */  jal        func_8009F580
    /* 8DD7C 8009F56C 00000000 */   nop
    /* 8DD80 8009F570 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DD84 8009F574 00000000 */  nop
    /* 8DD88 8009F578 0800E003 */  jr         $ra
    /* 8DD8C 8009F57C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F558
