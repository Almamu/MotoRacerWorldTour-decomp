nonmatching write, 0x10

glabel write
    /* 18D54 8014B888 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 18D58 8014B88C 08004001 */  jr         $t2
    /* 18D5C 8014B890 35000924 */   addiu     $t1, $zero, 0x35
    /* 18D60 8014B894 00000000 */  nop
endlabel write
