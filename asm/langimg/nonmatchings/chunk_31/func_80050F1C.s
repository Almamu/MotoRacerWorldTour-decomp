nonmatching func_80050F1C, 0x1C

glabel func_80050F1C
    /* 3F72C 80050F1C F0FF0624 */  addiu      $a2, $zero, -0x10
    /* 3F730 80050F20 0000838C */  lw         $v1, 0x0($a0)
    /* 3F734 80050F24 0000A28C */  lw         $v0, 0x0($a1)
    /* 3F738 80050F28 24186600 */  and        $v1, $v1, $a2
    /* 3F73C 80050F2C 24104600 */  and        $v0, $v0, $a2
    /* 3F740 80050F30 0800E003 */  jr         $ra
    /* 3F744 80050F34 23104300 */   subu      $v0, $v0, $v1
endlabel func_80050F1C
