nonmatching StopCARD2, 0x10

glabel StopCARD2
    /* 9D594 800AED84 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9D598 800AED88 08004001 */  jr         $t2
    /* 9D59C 800AED8C 4C000924 */   addiu     $t1, $zero, 0x4C
    /* 9D5A0 800AED90 00000000 */  nop
endlabel StopCARD2
