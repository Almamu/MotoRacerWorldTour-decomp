nonmatching WaitEvent, 0x10

glabel WaitEvent
    /* 18058 8014AB8C B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 1805C 8014AB90 08004001 */  jr         $t2
    /* 18060 8014AB94 0A000924 */   addiu     $t1, $zero, 0xA
    /* 18064 8014AB98 00000000 */  nop
endlabel WaitEvent
