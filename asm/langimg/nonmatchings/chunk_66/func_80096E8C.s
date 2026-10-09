nonmatching func_80096E8C, 0x3C

glabel func_80096E8C
    /* 8569C 80096E8C 0000828C */  lw         $v0, 0x0($a0)
    /* 856A0 80096E90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 856A4 80096E94 1000BFAF */  sw         $ra, 0x10($sp)
    /* 856A8 80096E98 0000A38C */  lw         $v1, 0x0($a1)
    /* 856AC 80096E9C 0400A78C */  lw         $a3, 0x4($a1)
    /* 856B0 80096EA0 0800A88C */  lw         $t0, 0x8($a1)
    /* 856B4 80096EA4 2128C000 */  addu       $a1, $a2, $zero
    /* 856B8 80096EA8 000043AC */  sw         $v1, 0x0($v0)
    /* 856BC 80096EAC 040047AC */  sw         $a3, 0x4($v0)
    /* 856C0 80096EB0 B25B020C */  jal        func_80096EC8
    /* 856C4 80096EB4 080048AC */   sw        $t0, 0x8($v0)
    /* 856C8 80096EB8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 856CC 80096EBC 00000000 */  nop
    /* 856D0 80096EC0 0800E003 */  jr         $ra
    /* 856D4 80096EC4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80096E8C
