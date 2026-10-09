nonmatching _card_read, 0x10

glabel _card_read
    /* 99260 800AAA50 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 99264 800AAA54 08004001 */  jr         $t2
    /* 99268 800AAA58 4F000924 */   addiu     $t1, $zero, 0x4F
    /* 9926C 800AAA5C 00000000 */  nop
endlabel _card_read
