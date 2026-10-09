nonmatching func_80089930, 0x20

glabel func_80089930
    /* 78140 80089930 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 78144 80089934 1000BFAF */  sw         $ra, 0x10($sp)
    /* 78148 80089938 5425020C */  jal        func_80089550
    /* 7814C 8008993C 00000000 */   nop
    /* 78150 80089940 1000BF8F */  lw         $ra, 0x10($sp)
    /* 78154 80089944 00000000 */  nop
    /* 78158 80089948 0800E003 */  jr         $ra
    /* 7815C 8008994C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089930
