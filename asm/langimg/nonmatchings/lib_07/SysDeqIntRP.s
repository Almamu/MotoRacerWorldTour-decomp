nonmatching SysDeqIntRP, 0x10

glabel SysDeqIntRP
    /* A4460 800B5C50 C0000A24 */  addiu      $t2, $zero, 0xC0
    /* A4464 800B5C54 08004001 */  jr         $t2
    /* A4468 800B5C58 03000924 */   addiu     $t1, $zero, 0x3
    /* A446C 800B5C5C 00000000 */  nop
endlabel SysDeqIntRP
