/* Handwritten function */
nonmatching func_800B5B90, 0x10

glabel func_800B5B90
    /* A43A0 800B5B90 02000424 */  addiu      $a0, $zero, 0x2
    /* A43A4 800B5B94 0C000000 */  syscall    0 /* handwritten instruction */
    /* A43A8 800B5B98 0800E003 */  jr         $ra
    /* A43AC 800B5B9C 00000000 */   nop
endlabel func_800B5B90
