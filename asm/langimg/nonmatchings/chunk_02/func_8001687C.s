nonmatching func_8001687C, 0x2C

glabel func_8001687C
    /* 508C 8001687C 09000324 */  addiu      $v1, $zero, 0x9
    /* 5090 80016880 0D80023C */  lui        $v0, %hi(D_800CA774)
    /* 5094 80016884 74A74224 */  addiu      $v0, $v0, %lo(D_800CA774)
  .L80016888:
    /* 5098 80016888 000040AC */  sw         $zero, 0x0($v0)
    /* 509C 8001688C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 50A0 80016890 FDFF6104 */  bgez       $v1, .L80016888
    /* 50A4 80016894 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 50A8 80016898 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 50AC 8001689C 4C0282AF */  sw         $v0, %gp_rel(D_800C493C)($gp)
    /* 50B0 800168A0 0800E003 */  jr         $ra
    /* 50B4 800168A4 00000000 */   nop
endlabel func_8001687C
