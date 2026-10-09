nonmatching func_800AD794, 0x14

glabel func_800AD794
    /* 9BFA4 800AD794 0E80023C */  lui        $v0, %hi(D_800DC9E0)
    /* 9BFA8 800AD798 21104400 */  addu       $v0, $v0, $a0
    /* 9BFAC 800AD79C E0C94290 */  lbu        $v0, %lo(D_800DC9E0)($v0)
    /* 9BFB0 800AD7A0 0800E003 */  jr         $ra
    /* 9BFB4 800AD7A4 00000000 */   nop
endlabel func_800AD794
