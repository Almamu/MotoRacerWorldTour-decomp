nonmatching firstfile2, 0x10

glabel firstfile2
    /* A4720 800B5F10 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* A4724 800B5F14 08004001 */  jr         $t2
    /* A4728 800B5F18 42000924 */   addiu     $t1, $zero, 0x42
    /* A472C 800B5F1C 00000000 */  nop
endlabel firstfile2
