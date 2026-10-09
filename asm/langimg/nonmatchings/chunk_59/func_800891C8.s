nonmatching func_800891C8, 0x20

glabel func_800891C8
    /* 779D8 800891C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 779DC 800891CC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 779E0 800891D0 7A24020C */  jal        func_800891E8
    /* 779E4 800891D4 00000000 */   nop
    /* 779E8 800891D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 779EC 800891DC 00000000 */  nop
    /* 779F0 800891E0 0800E003 */  jr         $ra
    /* 779F4 800891E4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800891C8
