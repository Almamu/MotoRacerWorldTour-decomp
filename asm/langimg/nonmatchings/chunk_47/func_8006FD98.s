nonmatching func_8006FD98, 0x14

glabel func_8006FD98
    /* 5E5A8 8006FD98 0000828C */  lw         $v0, 0x0($a0)
    /* 5E5AC 8006FD9C 0400838C */  lw         $v1, 0x4($a0)
    /* 5E5B0 8006FDA0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5E5B4 8006FDA4 0800E003 */  jr         $ra
    /* 5E5B8 8006FDA8 2A106200 */   slt       $v0, $v1, $v0
endlabel func_8006FD98
