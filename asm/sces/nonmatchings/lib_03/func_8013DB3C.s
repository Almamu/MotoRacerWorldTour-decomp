nonmatching func_8013DB3C, 0x24

glabel func_8013DB3C
    /* B008 8013DB3C 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* B00C 8013DB40 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* B010 8013DB44 00000000 */  nop
    /* B014 8013DB48 000044AC */  sw         $a0, 0x0($v0)
    /* B018 8013DB4C 02160400 */  srl        $v0, $a0, 24
    /* B01C 8013DB50 1D80013C */  lui        $at, %hi(D_801CCD60)
    /* B020 8013DB54 21082200 */  addu       $at, $at, $v0
    /* B024 8013DB58 0800E003 */  jr         $ra
    /* B028 8013DB5C 60CD24A0 */   sb        $a0, %lo(D_801CCD60)($at)
endlabel func_8013DB3C
