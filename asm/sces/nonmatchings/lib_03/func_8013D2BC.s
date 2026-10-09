nonmatching func_8013D2BC, 0x1C

glabel func_8013D2BC
    /* A788 8013D2BC FF07A530 */  andi       $a1, $a1, 0x7FF
    /* A78C 8013D2C0 C02A0500 */  sll        $a1, $a1, 11
    /* A790 8013D2C4 FF078230 */  andi       $v0, $a0, 0x7FF
    /* A794 8013D2C8 00E5033C */  lui        $v1, (0xE5000000 >> 16)
    /* A798 8013D2CC 25104300 */  or         $v0, $v0, $v1
    /* A79C 8013D2D0 0800E003 */  jr         $ra
    /* A7A0 8013D2D4 2510A200 */   or        $v0, $a1, $v0
endlabel func_8013D2BC
