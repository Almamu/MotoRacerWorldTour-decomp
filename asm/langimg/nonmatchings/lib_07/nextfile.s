nonmatching nextfile, 0x10

glabel nextfile
    /* A4420 800B5C10 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4424 800B5C14 08004001 */  jr         $t2
    /* A4428 800B5C18 43000924 */   addiu     $t1, $zero, 0x43
    /* A442C 800B5C1C 00000000 */  nop
endlabel nextfile
