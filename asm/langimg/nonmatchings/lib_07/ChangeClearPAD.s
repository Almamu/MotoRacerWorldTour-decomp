nonmatching ChangeClearPAD, 0x10

glabel ChangeClearPAD
    /* A4440 800B5C30 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4444 800B5C34 08004001 */  jr         $t2
    /* A4448 800B5C38 5B000924 */   addiu     $t1, $zero, 0x5B
    /* A444C 800B5C3C 00000000 */  nop
endlabel ChangeClearPAD
