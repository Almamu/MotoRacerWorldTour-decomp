nonmatching SysDeqIntRP, 0x10

glabel SysDeqIntRP
    /* 18108 8014AC3C C0000A24 */  addiu      $t2, $zero, 0xC0
    /* 1810C 8014AC40 08004001 */  jr         $t2
    /* 18110 8014AC44 03000924 */   addiu     $t1, $zero, 0x3
    /* 18114 8014AC48 00000000 */  nop
endlabel SysDeqIntRP
