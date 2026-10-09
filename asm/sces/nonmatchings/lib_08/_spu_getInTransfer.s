nonmatching _spu_getInTransfer, 0x18

glabel _spu_getInTransfer
    /* 15638 8014816C 1C80023C */  lui        $v0, %hi(_spu_inTransfer)
    /* 1563C 80148170 48FF428C */  lw         $v0, %lo(_spu_inTransfer)($v0)
    /* 15640 80148174 00000000 */  nop
    /* 15644 80148178 01004238 */  xori       $v0, $v0, 0x1
    /* 15648 8014817C 0800E003 */  jr         $ra
    /* 1564C 80148180 2B100200 */   sltu      $v0, $zero, $v0
endlabel _spu_getInTransfer
