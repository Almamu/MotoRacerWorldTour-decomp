nonmatching func_800793C0, 0x40

glabel func_800793C0
    /* 67BD0 800793C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67BD4 800793C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67BD8 800793C8 E0D6020C */  jal        EnterCriticalSection
    /* 67BDC 800793CC 00000000 */   nop
    /* 67BE0 800793D0 0880043C */  lui        $a0, %hi(func_80079350)
    /* 67BE4 800793D4 5CAB020C */  jal        VSyncCallback
    /* 67BE8 800793D8 50938424 */   addiu     $a0, $a0, %lo(func_80079350)
    /* 67BEC 800793DC 0880043C */  lui        $a0, %hi(func_80079390)
    /* 67BF0 800793E0 69AF020C */  jal        DrawSyncCallback
    /* 67BF4 800793E4 90938424 */   addiu     $a0, $a0, %lo(func_80079390)
    /* 67BF8 800793E8 E4D6020C */  jal        ExitCriticalSection
    /* 67BFC 800793EC 00000000 */   nop
    /* 67C00 800793F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 67C04 800793F4 00000000 */  nop
    /* 67C08 800793F8 0800E003 */  jr         $ra
    /* 67C0C 800793FC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800793C0
