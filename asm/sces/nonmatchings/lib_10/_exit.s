nonmatching _exit, 0x10

glabel _exit
    /* 17FD8 8014AB0C A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 17FDC 8014AB10 08004001 */  jr         $t2
    /* 17FE0 8014AB14 3A000924 */   addiu     $t1, $zero, 0x3A
    /* 17FE4 8014AB18 00000000 */  nop
endlabel _exit
