nonmatching func_800B043C, 0x20

glabel func_800B043C
    /* 9EC4C 800B043C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9EC50 800B0440 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9EC54 800B0444 76C2020C */  jal        _padStartCom
    /* 9EC58 800B0448 00000000 */   nop
    /* 9EC5C 800B044C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9EC60 800B0450 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9EC64 800B0454 0800E003 */  jr         $ra
    /* 9EC68 800B0458 00000000 */   nop
endlabel func_800B043C
