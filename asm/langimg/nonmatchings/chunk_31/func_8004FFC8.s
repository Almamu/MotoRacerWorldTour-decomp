nonmatching func_8004FFC8, 0x1C

glabel func_8004FFC8
    /* 3E7D8 8004FFC8 F8FF0624 */  addiu      $a2, $zero, -0x8
    /* 3E7DC 8004FFCC 0000838C */  lw         $v1, 0x0($a0)
    /* 3E7E0 8004FFD0 0000A28C */  lw         $v0, 0x0($a1)
    /* 3E7E4 8004FFD4 24186600 */  and        $v1, $v1, $a2
    /* 3E7E8 8004FFD8 24104600 */  and        $v0, $v0, $a2
    /* 3E7EC 8004FFDC 0800E003 */  jr         $ra
    /* 3E7F0 8004FFE0 23106200 */   subu      $v0, $v1, $v0
endlabel func_8004FFC8
