nonmatching _card_info, 0x10

glabel _card_info
    /* 99240 800AAA30 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 99244 800AAA34 08004001 */  jr         $t2
    /* 99248 800AAA38 AB000924 */   addiu     $t1, $zero, 0xAB
    /* 9924C 800AAA3C 00000000 */  nop
endlabel _card_info
