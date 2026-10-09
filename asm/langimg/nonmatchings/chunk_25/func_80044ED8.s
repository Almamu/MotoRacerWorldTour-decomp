nonmatching func_80044ED8, 0x5C

glabel func_80044ED8
    /* 336E8 80044ED8 7000828C */  lw         $v0, 0x70($a0)
    /* 336EC 80044EDC 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 336F0 80044EE0 3C8722AC */  sw         $v0, %lo(D_800C873C)($at)
    /* 336F4 80044EE4 7400838C */  lw         $v1, 0x74($a0)
    /* 336F8 80044EE8 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 336FC 80044EEC 384923AC */  sw         $v1, %lo(D_800C4938)($at)
    /* 33700 80044EF0 7800828C */  lw         $v0, 0x78($a0)
    /* 33704 80044EF4 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 33708 80044EF8 688C22AC */  sw         $v0, %lo(D_800C8C68)($at)
    /* 3370C 80044EFC 7C00838C */  lw         $v1, 0x7C($a0)
    /* 33710 80044F00 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 33714 80044F04 90BE23AC */  sw         $v1, %lo(D_800CBE90)($at)
    /* 33718 80044F08 8000828C */  lw         $v0, 0x80($a0)
    /* 3371C 80044F0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33720 80044F10 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33724 80044F14 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 33728 80044F18 94BE22AC */  sw         $v0, %lo(D_800CBE94)($at)
    /* 3372C 80044F1C 55FF000C */  jal        func_8003FD54
    /* 33730 80044F20 00000000 */   nop
    /* 33734 80044F24 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33738 80044F28 00000000 */  nop
    /* 3373C 80044F2C 0800E003 */  jr         $ra
    /* 33740 80044F30 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80044ED8
