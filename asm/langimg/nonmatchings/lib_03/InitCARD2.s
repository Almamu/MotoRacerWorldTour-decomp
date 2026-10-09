nonmatching InitCARD2, 0x10

glabel InitCARD2
    /* 9D574 800AED64 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9D578 800AED68 08004001 */  jr         $t2
    /* 9D57C 800AED6C 4A000924 */   addiu     $t1, $zero, 0x4A
    /* 9D580 800AED70 00000000 */  nop
endlabel InitCARD2
