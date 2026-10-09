nonmatching SysEnqIntRP, 0x10

glabel SysEnqIntRP
    /* A4450 800B5C40 C0000A24 */  addiu      $t2, $zero, 0xC0
    /* A4454 800B5C44 08004001 */  jr         $t2
    /* A4458 800B5C48 02000924 */   addiu     $t1, $zero, 0x2
    /* A445C 800B5C4C 00000000 */  nop
endlabel SysEnqIntRP
