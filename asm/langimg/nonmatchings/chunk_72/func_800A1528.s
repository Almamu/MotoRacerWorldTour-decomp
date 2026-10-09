nonmatching func_800A1528, 0x30

glabel func_800A1528
    /* 8FD38 800A1528 0000A28C */  lw         $v0, 0x0($a1)
    /* 8FD3C 800A152C 0000868C */  lw         $a2, 0x0($a0)
    /* 8FD40 800A1530 40180200 */  sll        $v1, $v0, 1
    /* 8FD44 800A1534 21186200 */  addu       $v1, $v1, $v0
    /* 8FD48 800A1538 C0180300 */  sll        $v1, $v1, 3
    /* 8FD4C 800A153C 21186600 */  addu       $v1, $v1, $a2
    /* 8FD50 800A1540 1000648C */  lw         $a0, 0x10($v1)
    /* 8FD54 800A1544 0400A28C */  lw         $v0, 0x4($a1)
    /* 8FD58 800A1548 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 8FD5C 800A154C 2A104400 */  slt        $v0, $v0, $a0
    /* 8FD60 800A1550 0800E003 */  jr         $ra
    /* 8FD64 800A1554 01004238 */   xori      $v0, $v0, 0x1
endlabel func_800A1528
