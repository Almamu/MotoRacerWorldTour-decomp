nonmatching func_8009D7A0, 0x1C

glabel func_8009D7A0
    /* 8BFB0 8009D7A0 80280500 */  sll        $a1, $a1, 2
    /* 8BFB4 8009D7A4 5000838C */  lw         $v1, 0x50($a0)
    /* 8BFB8 8009D7A8 5C00868C */  lw         $a2, 0x5C($a0)
    /* 8BFBC 8009D7AC 2128A300 */  addu       $a1, $a1, $v1
    /* 8BFC0 8009D7B0 0000A294 */  lhu        $v0, 0x0($a1)
    /* 8BFC4 8009D7B4 0800E003 */  jr         $ra
    /* 8BFC8 8009D7B8 0800C2A4 */   sh        $v0, 0x8($a2)
endlabel func_8009D7A0
