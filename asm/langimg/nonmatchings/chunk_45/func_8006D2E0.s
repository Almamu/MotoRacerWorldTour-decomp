nonmatching func_8006D2E0, 0x34

glabel func_8006D2E0
    /* 5BAF0 8006D2E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5BAF4 8006D2E4 80100600 */  sll        $v0, $a2, 2
    /* 5BAF8 8006D2E8 21104600 */  addu       $v0, $v0, $a2
    /* 5BAFC 8006D2EC 80100200 */  sll        $v0, $v0, 2
    /* 5BB00 8006D2F0 23104600 */  subu       $v0, $v0, $a2
    /* 5BB04 8006D2F4 80110200 */  sll        $v0, $v0, 6
    /* 5BB08 8006D2F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5BB0C 8006D2FC 2FB4010C */  jal        func_8006D0BC
    /* 5BB10 8006D300 21208200 */   addu      $a0, $a0, $v0
    /* 5BB14 8006D304 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5BB18 8006D308 00000000 */  nop
    /* 5BB1C 8006D30C 0800E003 */  jr         $ra
    /* 5BB20 8006D310 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006D2E0
