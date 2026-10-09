nonmatching ResetEntryInt, 0x10

glabel ResetEntryInt
    /* A4370 800B5B60 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4374 800B5B64 08004001 */  jr         $t2
    /* A4378 800B5B68 18000924 */   addiu     $t1, $zero, 0x18
    /* A437C 800B5B6C 00000000 */  nop
endlabel ResetEntryInt
