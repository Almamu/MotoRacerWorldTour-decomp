nonmatching _card_load, 0x10

glabel _card_load
    /* 99250 800AAA40 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 99254 800AAA44 08004001 */  jr         $t2
    /* 99258 800AAA48 AC000924 */   addiu     $t1, $zero, 0xAC
    /* 9925C 800AAA4C 00000000 */  nop
endlabel _card_load
