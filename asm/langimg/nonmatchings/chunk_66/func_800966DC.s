nonmatching func_800966DC, 0x48

glabel func_800966DC
    /* 84EEC 800966DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 84EF0 800966E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 84EF4 800966E4 000080AC */  sw         $zero, 0x0($a0)
    /* 84EF8 800966E8 040080AC */  sw         $zero, 0x4($a0)
    /* 84EFC 800966EC 080080AC */  sw         $zero, 0x8($a0)
    /* 84F00 800966F0 0C0080AC */  sw         $zero, 0xC($a0)
    /* 84F04 800966F4 100080AC */  sw         $zero, 0x10($a0)
    /* 84F08 800966F8 140080AC */  sw         $zero, 0x14($a0)
    /* 84F0C 800966FC 180080AC */  sw         $zero, 0x18($a0)
    /* 84F10 80096700 1C0080AC */  sw         $zero, 0x1C($a0)
    /* 84F14 80096704 260080A0 */  sb         $zero, 0x26($a0)
    /* 84F18 80096708 200080AC */  sw         $zero, 0x20($a0)
    /* 84F1C 8009670C C959020C */  jal        func_80096724
    /* 84F20 80096710 240080A4 */   sh        $zero, 0x24($a0)
    /* 84F24 80096714 1000BF8F */  lw         $ra, 0x10($sp)
    /* 84F28 80096718 00000000 */  nop
    /* 84F2C 8009671C 0800E003 */  jr         $ra
    /* 84F30 80096720 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800966DC
