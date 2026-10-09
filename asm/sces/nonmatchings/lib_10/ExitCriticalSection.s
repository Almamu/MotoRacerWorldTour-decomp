/* Handwritten function */
nonmatching ExitCriticalSection, 0x10

glabel ExitCriticalSection
    /* 180D8 8014AC0C 02000424 */  addiu      $a0, $zero, 0x2
    /* 180DC 8014AC10 0C000000 */  syscall    0 /* handwritten instruction */
    /* 180E0 8014AC14 0800E003 */  jr         $ra
    /* 180E4 8014AC18 00000000 */   nop
endlabel ExitCriticalSection
