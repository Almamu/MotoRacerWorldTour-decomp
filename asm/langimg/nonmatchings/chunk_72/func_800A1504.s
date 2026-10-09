nonmatching func_800A1504, 0x24

glabel func_800A1504
    /* 8FD14 800A1504 0D80023C */  lui        $v0, %hi(D_800D4898)
    /* 8FD18 800A1508 98484224 */  addiu      $v0, $v0, %lo(D_800D4898)
    /* 8FD1C 800A150C 7C00448C */  lw         $a0, 0x7C($v0)
    /* 8FD20 800A1510 40004224 */  addiu      $v0, $v0, 0x40
    /* 8FD24 800A1514 80180400 */  sll        $v1, $a0, 2
    /* 8FD28 800A1518 21186400 */  addu       $v1, $v1, $a0
    /* 8FD2C 800A151C 80180300 */  sll        $v1, $v1, 2
    /* 8FD30 800A1520 0800E003 */  jr         $ra
    /* 8FD34 800A1524 21106200 */   addu      $v0, $v1, $v0
endlabel func_800A1504
