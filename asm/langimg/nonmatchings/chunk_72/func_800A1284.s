nonmatching func_800A1284, 0x1C

glabel func_800A1284
    /* 8FA94 800A1284 F0FF0624 */  addiu      $a2, $zero, -0x10
    /* 8FA98 800A1288 0000838C */  lw         $v1, 0x0($a0)
    /* 8FA9C 800A128C 0000A28C */  lw         $v0, 0x0($a1)
    /* 8FAA0 800A1290 24186600 */  and        $v1, $v1, $a2
    /* 8FAA4 800A1294 24104600 */  and        $v0, $v0, $a2
    /* 8FAA8 800A1298 0800E003 */  jr         $ra
    /* 8FAAC 800A129C 23104300 */   subu      $v0, $v0, $v1
endlabel func_800A1284
