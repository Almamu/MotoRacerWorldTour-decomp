nonmatching SysEnqIntRP, 0x10

glabel SysEnqIntRP
    /* 180F8 8014AC2C C0000A24 */  addiu      $t2, $zero, 0xC0
    /* 180FC 8014AC30 08004001 */  jr         $t2
    /* 18100 8014AC34 02000924 */   addiu     $t1, $zero, 0x2
    /* 18104 8014AC38 00000000 */  nop
endlabel SysEnqIntRP
