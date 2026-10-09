nonmatching func_800A14E8, 0x1C

glabel func_800A14E8
    /* 8FCF8 800A14E8 80180400 */  sll        $v1, $a0, 2
    /* 8FCFC 800A14EC 21186400 */  addu       $v1, $v1, $a0
    /* 8FD00 800A14F0 80180300 */  sll        $v1, $v1, 2
    /* 8FD04 800A14F4 0D80023C */  lui        $v0, %hi(D_800D48D8)
    /* 8FD08 800A14F8 D8484224 */  addiu      $v0, $v0, %lo(D_800D48D8)
    /* 8FD0C 800A14FC 0800E003 */  jr         $ra
    /* 8FD10 800A1500 21106200 */   addu      $v0, $v1, $v0
endlabel func_800A14E8
