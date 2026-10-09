nonmatching _bu_init, 0x10

glabel _bu_init
    /* 9D494 800AEC84 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 9D498 800AEC88 08004001 */  jr         $t2
    /* 9D49C 800AEC8C 70000924 */   addiu     $t1, $zero, 0x70
    /* 9D4A0 800AEC90 00000000 */  nop
endlabel _bu_init
