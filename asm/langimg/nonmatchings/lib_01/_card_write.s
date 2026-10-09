nonmatching _card_write, 0x10

glabel _card_write
    /* 992C0 800AAAB0 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 992C4 800AAAB4 08004001 */  jr         $t2
    /* 992C8 800AAAB8 4E000924 */   addiu     $t1, $zero, 0x4E
    /* 992CC 800AAABC 00000000 */  nop
endlabel _card_write
