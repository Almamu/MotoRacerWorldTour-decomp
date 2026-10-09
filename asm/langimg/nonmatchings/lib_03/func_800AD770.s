nonmatching func_800AD770, 0x24

glabel func_800AD770
    /* 9BF80 800AD770 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BF84 800AD774 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BF88 800AD778 00000000 */  nop
    /* 9BF8C 800AD77C 000044AC */  sw         $a0, 0x0($v0)
    /* 9BF90 800AD780 02160400 */  srl        $v0, $a0, 24
    /* 9BF94 800AD784 0E80013C */  lui        $at, %hi(D_800DC9E0)
    /* 9BF98 800AD788 21082200 */  addu       $at, $at, $v0
    /* 9BF9C 800AD78C 0800E003 */  jr         $ra
    /* 9BFA0 800AD790 E0C924A0 */   sb        $a0, %lo(D_800DC9E0)($at)
endlabel func_800AD770
