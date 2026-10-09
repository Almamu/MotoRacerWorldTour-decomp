nonmatching func_800B4B70, 0x1C

glabel func_800B4B70
    /* A3380 800B4B70 FF7F8430 */  andi       $a0, $a0, 0x7FFF
    /* A3384 800B4B74 0C80023C */  lui        $v0, %hi(D_800C3DB0)
    /* A3388 800B4B78 B03D428C */  lw         $v0, %lo(D_800C3DB0)($v0)
    /* A338C 800B4B7C FF7FA530 */  andi       $a1, $a1, 0x7FFF
    /* A3390 800B4B80 800144A4 */  sh         $a0, 0x180($v0)
    /* A3394 800B4B84 0800E003 */  jr         $ra
    /* A3398 800B4B88 820145A4 */   sh        $a1, 0x182($v0)
endlabel func_800B4B70
    /* A339C 800B4B8C 00000000 */  nop
