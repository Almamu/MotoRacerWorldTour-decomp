nonmatching func_8013E3EC, 0x34

glabel func_8013E3EC
    /* B8B8 8013E3EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8BC 8013E3F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* B8C0 8013E3F4 22EC040C */  jal        VSync
    /* B8C4 8013E3F8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* B8C8 8013E3FC F0004224 */  addiu      $v0, $v0, 0xF0
    /* B8CC 8013E400 1C80013C */  lui        $at, %hi(D_801BFD74)
    /* B8D0 8013E404 74FD22AC */  sw         $v0, %lo(D_801BFD74)($at)
    /* B8D4 8013E408 1C80013C */  lui        $at, %hi(D_801BFD78)
    /* B8D8 8013E40C 78FD20AC */  sw         $zero, %lo(D_801BFD78)($at)
    /* B8DC 8013E410 1000BF8F */  lw         $ra, 0x10($sp)
    /* B8E0 8013E414 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8E4 8013E418 0800E003 */  jr         $ra
    /* B8E8 8013E41C 00000000 */   nop
endlabel func_8013E3EC
