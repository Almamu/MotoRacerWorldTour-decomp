nonmatching func_800AD860, 0x24

glabel func_800AD860
    /* 9C070 800AD860 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9C074 800AD864 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9C078 800AD868 2138C000 */  addu       $a3, $a2, $zero
    /* 9C07C 800AD86C 21B6020C */  jal        func_800AD884
    /* 9C080 800AD870 21300000 */   addu      $a2, $zero, $zero
    /* 9C084 800AD874 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9C088 800AD878 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9C08C 800AD87C 0800E003 */  jr         $ra
    /* 9C090 800AD880 00000000 */   nop
endlabel func_800AD860
