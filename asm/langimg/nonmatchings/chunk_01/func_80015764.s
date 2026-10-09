nonmatching func_80015764, 0x34

glabel func_80015764
    /* 3F74 80015764 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3F78 80015768 80000224 */  addiu      $v0, $zero, 0x80
    /* 3F7C 8001576C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3F80 80015770 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3F84 80015774 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 3F88 80015778 1100A0A3 */  sb         $zero, 0x11($sp)
    /* 3F8C 8001577C 1200A2A3 */  sb         $v0, 0x12($sp)
    /* 3F90 80015780 9E9E020C */  jal        func_800A7A78
    /* 3F94 80015784 1300A0A3 */   sb        $zero, 0x13($sp)
    /* 3F98 80015788 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3F9C 8001578C 00000000 */  nop
    /* 3FA0 80015790 0800E003 */  jr         $ra
    /* 3FA4 80015794 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80015764
