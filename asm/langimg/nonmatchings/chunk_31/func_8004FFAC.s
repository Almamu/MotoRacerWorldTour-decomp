nonmatching func_8004FFAC, 0x1C

glabel func_8004FFAC
    /* 3E7BC 8004FFAC F8FF0624 */  addiu      $a2, $zero, -0x8
    /* 3E7C0 8004FFB0 0000838C */  lw         $v1, 0x0($a0)
    /* 3E7C4 8004FFB4 0000A28C */  lw         $v0, 0x0($a1)
    /* 3E7C8 8004FFB8 24186600 */  and        $v1, $v1, $a2
    /* 3E7CC 8004FFBC 24104600 */  and        $v0, $v0, $a2
    /* 3E7D0 8004FFC0 0800E003 */  jr         $ra
    /* 3E7D4 8004FFC4 23104300 */   subu      $v0, $v0, $v1
endlabel func_8004FFAC
