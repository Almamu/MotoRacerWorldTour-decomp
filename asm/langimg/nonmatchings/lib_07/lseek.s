nonmatching lseek, 0x10

glabel lseek
    /* A43D0 800B5BC0 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A43D4 800B5BC4 08004001 */  jr         $t2
    /* A43D8 800B5BC8 33000924 */   addiu     $t1, $zero, 0x33
    /* A43DC 800B5BCC 00000000 */  nop
endlabel lseek
