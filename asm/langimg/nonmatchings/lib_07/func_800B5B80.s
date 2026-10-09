/* Handwritten function */
nonmatching func_800B5B80, 0x10

glabel func_800B5B80
    /* A4390 800B5B80 01000424 */  addiu      $a0, $zero, 0x1
    /* A4394 800B5B84 0C000000 */  syscall    0 /* handwritten instruction */
    /* A4398 800B5B88 0800E003 */  jr         $ra
    /* A439C 800B5B8C 00000000 */   nop
endlabel func_800B5B80
