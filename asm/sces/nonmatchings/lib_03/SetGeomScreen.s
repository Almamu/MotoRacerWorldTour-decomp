/* Handwritten function */
nonmatching SetGeomScreen, 0x10

glabel SetGeomScreen
    /* BCB0 8013E7E4 00D0C448 */  ctc2       $a0, $26 /* handwritten instruction */
    /* BCB4 8013E7E8 0800E003 */  jr         $ra
    /* BCB8 8013E7EC 00000000 */   nop
    /* BCBC 8013E7F0 00000000 */  nop
endlabel SetGeomScreen
