nonmatching func_80139490, 0x34

glabel func_80139490
    /* 695C 80139490 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6960 80139494 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6964 80139498 1C80103C */  lui        $s0, %hi(D_801BDCA0)
    /* 6968 8013949C A0DC1026 */  addiu      $s0, $s0, %lo(D_801BDCA0)
    /* 696C 801394A0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6970 801394A4 0000048E */  lw         $a0, 0x0($s0)
    /* 6974 801394A8 AADB040C */  jal        CdSyncCallback
    /* 6978 801394AC D8FF1026 */   addiu     $s0, $s0, -0x28
    /* 697C 801394B0 240000AE */  sw         $zero, 0x24($s0)
    /* 6980 801394B4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6984 801394B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 6988 801394BC 0800E003 */  jr         $ra
    /* 698C 801394C0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80139490
