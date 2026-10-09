nonmatching TestEvent, 0x10

glabel TestEvent
    /* A4330 800B5B20 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4334 800B5B24 08004001 */  jr         $t2
    /* A4338 800B5B28 0B000924 */   addiu     $t1, $zero, 0xB
    /* A433C 800B5B2C 00000000 */  nop
endlabel TestEvent
