nonmatching func_8003FD2C, 0x20

glabel func_8003FD2C
    /* 2E53C 8003FD2C 0000838C */  lw         $v1, 0x0($a0)
    /* 2E540 8003FD30 0D80023C */  lui        $v0, %hi(D_800CAE6C)
    /* 2E544 8003FD34 6CAE428C */  lw         $v0, %lo(D_800CAE6C)($v0)
    /* 2E548 8003FD38 80006334 */  ori        $v1, $v1, 0x80
    /* 2E54C 8003FD3C 080082AC */  sw         $v0, 0x8($a0)
    /* 2E550 8003FD40 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E554 8003FD44 0800E003 */  jr         $ra
    /* 2E558 8003FD48 000083AC */   sw        $v1, 0x0($a0)
endlabel func_8003FD2C
