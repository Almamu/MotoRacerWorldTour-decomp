nonmatching func_8003D9CC, 0x20

glabel func_8003D9CC
    /* 2C1DC 8003D9CC 0000C28C */  lw         $v0, 0x0($a2)
    /* 2C1E0 8003D9D0 0C80033C */  lui        $v1, %hi(D_800C4D98)
    /* 2C1E4 8003D9D4 984D6324 */  addiu      $v1, $v1, %lo(D_800C4D98)
    /* 2C1E8 8003D9D8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C1EC 8003D9DC 80100200 */  sll        $v0, $v0, 2
    /* 2C1F0 8003D9E0 21104300 */  addu       $v0, $v0, $v1
    /* 2C1F4 8003D9E4 0800E003 */  jr         $ra
    /* 2C1F8 8003D9E8 000040AC */   sw        $zero, 0x0($v0)
endlabel func_8003D9CC
