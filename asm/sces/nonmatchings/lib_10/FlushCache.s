nonmatching FlushCache, 0x10

glabel FlushCache
    /* 17FE8 8014AB1C A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 17FEC 8014AB20 08004001 */  jr         $t2
    /* 17FF0 8014AB24 44000924 */   addiu     $t1, $zero, 0x44
    /* 17FF4 8014AB28 00000000 */  nop
endlabel FlushCache
