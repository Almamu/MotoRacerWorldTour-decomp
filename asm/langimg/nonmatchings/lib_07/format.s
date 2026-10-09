nonmatching format, 0x10

glabel format
    /* A4410 800B5C00 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4414 800B5C04 08004001 */  jr         $t2
    /* A4418 800B5C08 41000924 */   addiu     $t1, $zero, 0x41
    /* A441C 800B5C0C 00000000 */  nop
endlabel format
