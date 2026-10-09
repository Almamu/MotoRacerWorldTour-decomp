nonmatching SpuSetCommonCDVolume, 0x20

glabel SpuSetCommonCDVolume
    /* A33A0 800B4B90 0C80023C */  lui        $v0, %hi(D_800C3DB0)
    /* A33A4 800B4B94 B03D428C */  lw         $v0, %lo(D_800C3DB0)($v0)
    /* A33A8 800B4B98 00000000 */  nop
    /* A33AC 800B4B9C B00144A4 */  sh         $a0, 0x1B0($v0)
    /* A33B0 800B4BA0 0800E003 */  jr         $ra
    /* A33B4 800B4BA4 B20145A4 */   sh        $a1, 0x1B2($v0)
    /* A33B8 800B4BA8 00000000 */  nop
    /* A33BC 800B4BAC 00000000 */  nop
endlabel SpuSetCommonCDVolume
