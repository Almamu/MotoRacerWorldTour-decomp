nonmatching close, 0x10

glabel close
    /* A4400 800B5BF0 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4404 800B5BF4 08004001 */  jr         $t2
    /* A4408 800B5BF8 36000924 */   addiu     $t1, $zero, 0x36
    /* A440C 800B5BFC 00000000 */  nop
endlabel close
