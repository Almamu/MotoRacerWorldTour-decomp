nonmatching GPU_cw, 0x10

glabel GPU_cw
    /* 17FF8 8014AB2C A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 17FFC 8014AB30 08004001 */  jr         $t2
    /* 18000 8014AB34 49000924 */   addiu     $t1, $zero, 0x49
    /* 18004 8014AB38 00000000 */  nop
endlabel GPU_cw
