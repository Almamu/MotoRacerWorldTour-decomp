nonmatching func_80015730, 0x34

glabel func_80015730
    /* 3F40 80015730 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3F44 80015734 80000224 */  addiu      $v0, $zero, 0x80
    /* 3F48 80015738 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3F4C 8001573C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3F50 80015740 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 3F54 80015744 1100A2A3 */  sb         $v0, 0x11($sp)
    /* 3F58 80015748 1200A2A3 */  sb         $v0, 0x12($sp)
    /* 3F5C 8001574C 9E9E020C */  jal        func_800A7A78
    /* 3F60 80015750 1300A2A3 */   sb        $v0, 0x13($sp)
    /* 3F64 80015754 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3F68 80015758 00000000 */  nop
    /* 3F6C 8001575C 0800E003 */  jr         $ra
    /* 3F70 80015760 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80015730
