nonmatching func_80051AB0, 0x30

glabel func_80051AB0
    /* 402C0 80051AB0 80180500 */  sll        $v1, $a1, 2
    /* 402C4 80051AB4 21186500 */  addu       $v1, $v1, $a1
    /* 402C8 80051AB8 80180300 */  sll        $v1, $v1, 2
    /* 402CC 80051ABC 1000A88F */  lw         $t0, 0x10($sp)
    /* 402D0 80051AC0 0000828C */  lw         $v0, 0x0($a0)
    /* 402D4 80051AC4 1400A58F */  lw         $a1, 0x14($sp)
    /* 402D8 80051AC8 21104300 */  addu       $v0, $v0, $v1
    /* 402DC 80051ACC 000046AC */  sw         $a2, 0x0($v0)
    /* 402E0 80051AD0 080047AC */  sw         $a3, 0x8($v0)
    /* 402E4 80051AD4 0C0048AC */  sw         $t0, 0xC($v0)
    /* 402E8 80051AD8 0800E003 */  jr         $ra
    /* 402EC 80051ADC 100045AC */   sw        $a1, 0x10($v0)
endlabel func_80051AB0
