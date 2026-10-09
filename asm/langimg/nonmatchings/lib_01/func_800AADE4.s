nonmatching func_800AADE4, 0x18

glabel func_800AADE4
    /* 995F4 800AADE4 0C80033C */  lui        $v1, %hi(D_800BE5D8)
    /* 995F8 800AADE8 D8E5638C */  lw         $v1, %lo(D_800BE5D8)($v1)
    /* 995FC 800AADEC 00000000 */  nop
    /* 99600 800AADF0 00006294 */  lhu        $v0, 0x0($v1)
    /* 99604 800AADF4 0800E003 */  jr         $ra
    /* 99608 800AADF8 000064A4 */   sh        $a0, 0x0($v1)
endlabel func_800AADE4
