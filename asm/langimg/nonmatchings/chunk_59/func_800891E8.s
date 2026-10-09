nonmatching func_800891E8, 0x18

glabel func_800891E8
    /* 779F8 800891E8 1800838C */  lw         $v1, 0x18($a0)
    /* 779FC 800891EC 80280500 */  sll        $a1, $a1, 2
    /* 77A00 800891F0 2128A300 */  addu       $a1, $a1, $v1
    /* 77A04 800891F4 0000A28C */  lw         $v0, 0x0($a1)
    /* 77A08 800891F8 0800E003 */  jr         $ra
    /* 77A0C 800891FC 00000000 */   nop
endlabel func_800891E8
