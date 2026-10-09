/* Handwritten function */
nonmatching EnterCriticalSection, 0x10

glabel EnterCriticalSection
    /* 180C8 8014ABFC 01000424 */  addiu      $a0, $zero, 0x1
    /* 180CC 8014AC00 0C000000 */  syscall    0 /* handwritten instruction */
    /* 180D0 8014AC04 0800E003 */  jr         $ra
    /* 180D4 8014AC08 00000000 */   nop
endlabel EnterCriticalSection
