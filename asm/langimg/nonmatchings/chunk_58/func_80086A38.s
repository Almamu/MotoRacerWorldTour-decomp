nonmatching func_80086A38, 0x18

glabel func_80086A38
    /* 75248 80086A38 0800838C */  lw         $v1, 0x8($a0)
    /* 7524C 80086A3C 80280500 */  sll        $a1, $a1, 2
    /* 75250 80086A40 2128A300 */  addu       $a1, $a1, $v1
    /* 75254 80086A44 0000A28C */  lw         $v0, 0x0($a1)
    /* 75258 80086A48 0800E003 */  jr         $ra
    /* 7525C 80086A4C 00000000 */   nop
endlabel func_80086A38
