nonmatching func_8008D0A4, 0x28

glabel func_8008D0A4
    /* 7B8B4 8008D0A4 1000A897 */  lhu        $t0, 0x10($sp)
    /* 7B8B8 8008D0A8 1800828C */  lw         $v0, 0x18($a0)
    /* 7B8BC 8008D0AC 0018033C */  lui        $v1, (0x18000000 >> 16)
    /* 7B8C0 8008D0B0 000085A4 */  sh         $a1, 0x0($a0)
    /* 7B8C4 8008D0B4 020086A4 */  sh         $a2, 0x2($a0)
    /* 7B8C8 8008D0B8 040087A4 */  sh         $a3, 0x4($a0)
    /* 7B8CC 8008D0BC 25104300 */  or         $v0, $v0, $v1
    /* 7B8D0 8008D0C0 060088A4 */  sh         $t0, 0x6($a0)
    /* 7B8D4 8008D0C4 0800E003 */  jr         $ra
    /* 7B8D8 8008D0C8 180082AC */   sw        $v0, 0x18($a0)
endlabel func_8008D0A4
