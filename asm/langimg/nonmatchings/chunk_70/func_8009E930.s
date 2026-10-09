nonmatching func_8009E930, 0x24

glabel func_8009E930
    /* 8D140 8009E930 800A858C */  lw         $a1, 0xA80($a0)
    /* 8D144 8009E934 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8D148 8009E938 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8D14C 8009E93C CB79020C */  jal        func_8009E72C
    /* 8D150 8009E940 00000000 */   nop
    /* 8D154 8009E944 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8D158 8009E948 00000000 */  nop
    /* 8D15C 8009E94C 0800E003 */  jr         $ra
    /* 8D160 8009E950 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E930
