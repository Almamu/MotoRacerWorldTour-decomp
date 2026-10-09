nonmatching func_8009F6C0, 0x2C

glabel func_8009F6C0
    /* 8DED0 8009F6C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DED4 8009F6C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DED8 8009F6C8 980A848C */  lw         $a0, 0xA98($a0)
    /* 8DEDC 8009F6CC 2182020C */  jal        func_800A0884
    /* 8DEE0 8009F6D0 E0008424 */   addiu     $a0, $a0, 0xE0
    /* 8DEE4 8009F6D4 6A7D020C */  jal        func_8009F5A8
    /* 8DEE8 8009F6D8 00000000 */   nop
    /* 8DEEC 8009F6DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DEF0 8009F6E0 00000000 */  nop
    /* 8DEF4 8009F6E4 0800E003 */  jr         $ra
    /* 8DEF8 8009F6E8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F6C0
