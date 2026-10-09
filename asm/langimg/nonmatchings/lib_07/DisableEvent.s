nonmatching DisableEvent, 0x10

glabel DisableEvent
    /* A4350 800B5B40 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4354 800B5B44 08004001 */  jr         $t2
    /* A4358 800B5B48 0D000924 */   addiu     $t1, $zero, 0xD
    /* A435C 800B5B4C 00000000 */  nop
endlabel DisableEvent
