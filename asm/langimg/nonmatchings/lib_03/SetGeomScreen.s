/* Handwritten function */
nonmatching SetGeomScreen, 0x10

glabel SetGeomScreen
    /* 9CD68 800AE558 00D0C448 */  ctc2       $a0, $26 /* handwritten instruction */
    /* 9CD6C 800AE55C 0800E003 */  jr         $ra
    /* 9CD70 800AE560 00000000 */   nop
    /* 9CD74 800AE564 00000000 */  nop
endlabel SetGeomScreen
