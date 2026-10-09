nonmatching func_8008267C, 0x40

glabel func_8008267C
    /* 70E8C 8008267C 0D80013C */  lui        $at, %hi(D_800D49A8)
    /* 70E90 80082680 A84924AC */  sw         $a0, %lo(D_800D49A8)($at)
    /* 70E94 80082684 80200400 */  sll        $a0, $a0, 2
    /* 70E98 80082688 0843838F */  lw         $v1, %gp_rel(D_800C89F8)($gp)
    /* 70E9C 8008268C 0443868F */  lw         $a2, %gp_rel(D_800C89F4)($gp)
    /* 70EA0 80082690 21186400 */  addu       $v1, $v1, $a0
    /* 70EA4 80082694 0800658C */  lw         $a1, 0x8($v1)
    /* 70EA8 80082698 00000000 */  nop
    /* 70EAC 8008269C F800C5AC */  sw         $a1, 0xF8($a2)
    /* 70EB0 800826A0 0843828F */  lw         $v0, %gp_rel(D_800C89F8)($gp)
    /* 70EB4 800826A4 00000000 */  nop
    /* 70EB8 800826A8 21104400 */  addu       $v0, $v0, $a0
    /* 70EBC 800826AC 0800438C */  lw         $v1, 0x8($v0)
    /* 70EC0 800826B0 2128C000 */  addu       $a1, $a2, $zero
    /* 70EC4 800826B4 0800E003 */  jr         $ra
    /* 70EC8 800826B8 FC00A3AC */   sw        $v1, 0xFC($a1)
endlabel func_8008267C
