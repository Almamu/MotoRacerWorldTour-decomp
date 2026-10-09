nonmatching read, 0x10

glabel read
    /* A43E0 800B5BD0 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A43E4 800B5BD4 08004001 */  jr         $t2
    /* A43E8 800B5BD8 34000924 */   addiu     $t1, $zero, 0x34
    /* A43EC 800B5BDC 00000000 */  nop
endlabel read
