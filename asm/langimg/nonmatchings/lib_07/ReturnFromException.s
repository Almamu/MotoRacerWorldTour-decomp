nonmatching ReturnFromException, 0x10

glabel ReturnFromException
    /* A4360 800B5B50 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4364 800B5B54 08004001 */  jr         $t2
    /* A4368 800B5B58 17000924 */   addiu     $t1, $zero, 0x17
    /* A436C 800B5B5C 00000000 */  nop
endlabel ReturnFromException
