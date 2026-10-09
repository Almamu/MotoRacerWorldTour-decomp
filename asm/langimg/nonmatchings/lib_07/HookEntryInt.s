nonmatching HookEntryInt, 0x10

glabel HookEntryInt
    /* A4380 800B5B70 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4384 800B5B74 08004001 */  jr         $t2
    /* A4388 800B5B78 19000924 */   addiu     $t1, $zero, 0x19
    /* A438C 800B5B7C 00000000 */  nop
endlabel HookEntryInt
