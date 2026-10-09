nonmatching func_80081318, 0x18

glabel func_80081318
    /* 6FB28 80081318 0000838C */  lw         $v1, 0x0($a0)
    /* 6FB2C 8008131C 80280500 */  sll        $a1, $a1, 2
    /* 6FB30 80081320 2128A300 */  addu       $a1, $a1, $v1
    /* 6FB34 80081324 0000A28C */  lw         $v0, 0x0($a1)
    /* 6FB38 80081328 0800E003 */  jr         $ra
    /* 6FB3C 8008132C 00000000 */   nop
endlabel func_80081318
