nonmatching _exit, 0x10

glabel _exit
    /* A42A0 800B5A90 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* A42A4 800B5A94 08004001 */  jr         $t2
    /* A42A8 800B5A98 3A000924 */   addiu     $t1, $zero, 0x3A
    /* A42AC 800B5A9C 00000000 */  nop
endlabel _exit
