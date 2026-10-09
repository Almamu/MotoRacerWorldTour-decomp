nonmatching func_8003FEC4, 0x20

glabel func_8003FEC4
    /* 2E6D4 8003FEC4 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 2E6D8 8003FEC8 0100A530 */  andi       $a1, $a1, 0x1
    /* 2E6DC 8003FECC 0000828C */  lw         $v0, 0x0($a0)
    /* 2E6E0 8003FED0 40280500 */  sll        $a1, $a1, 1
    /* 2E6E4 8003FED4 24104300 */  and        $v0, $v0, $v1
    /* 2E6E8 8003FED8 25104500 */  or         $v0, $v0, $a1
    /* 2E6EC 8003FEDC 0800E003 */  jr         $ra
    /* 2E6F0 8003FEE0 000082AC */   sw        $v0, 0x0($a0)
endlabel func_8003FEC4
