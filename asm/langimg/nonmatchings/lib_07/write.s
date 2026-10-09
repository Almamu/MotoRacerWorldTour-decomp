nonmatching write, 0x10

glabel write
    /* A43F0 800B5BE0 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A43F4 800B5BE4 08004001 */  jr         $t2
    /* A43F8 800B5BE8 35000924 */   addiu     $t1, $zero, 0x35
    /* A43FC 800B5BEC 00000000 */  nop
endlabel write
