nonmatching DisableEvent, 0x10

glabel DisableEvent
    /* 18088 8014ABBC B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 1808C 8014ABC0 08004001 */  jr         $t2
    /* 18090 8014ABC4 0D000924 */   addiu     $t1, $zero, 0xD
    /* 18094 8014ABC8 00000000 */  nop
endlabel DisableEvent
