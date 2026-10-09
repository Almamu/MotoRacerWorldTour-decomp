nonmatching func_800A63E4, 0x18

glabel func_800A63E4
    /* 94BF4 800A63E4 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 94BF8 800A63E8 02120400 */  srl        $v0, $a0, 8
    /* 94BFC 800A63EC 00220400 */  sll        $a0, $a0, 8
    /* 94C00 800A63F0 25104400 */  or         $v0, $v0, $a0
    /* 94C04 800A63F4 0800E003 */  jr         $ra
    /* 94C08 800A63F8 FFFF4230 */   andi      $v0, $v0, 0xFFFF
endlabel func_800A63E4
