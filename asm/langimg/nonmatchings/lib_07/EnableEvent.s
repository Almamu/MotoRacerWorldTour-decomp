nonmatching EnableEvent, 0x10

glabel EnableEvent
    /* A4340 800B5B30 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4344 800B5B34 08004001 */  jr         $t2
    /* A4348 800B5B38 0C000924 */   addiu     $t1, $zero, 0xC
    /* A434C 800B5B3C 00000000 */  nop
endlabel EnableEvent
