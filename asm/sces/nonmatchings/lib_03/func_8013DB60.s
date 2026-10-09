nonmatching func_8013DB60, 0x14

glabel func_8013DB60
    /* B02C 8013DB60 1D80023C */  lui        $v0, %hi(D_801CCD60)
    /* B030 8013DB64 21104400 */  addu       $v0, $v0, $a0
    /* B034 8013DB68 60CD4290 */  lbu        $v0, %lo(D_801CCD60)($v0)
    /* B038 8013DB6C 0800E003 */  jr         $ra
    /* B03C 8013DB70 00000000 */   nop
endlabel func_8013DB60
