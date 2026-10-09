nonmatching func_8004B480, 0x30

glabel func_8004B480
    /* 39C90 8004B480 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39C94 8004B484 1000BFAF */  sw         $ra, 0x10($sp)
    /* 39C98 8004B488 EF2B010C */  jal        func_8004AFBC
    /* 39C9C 8004B48C 00000000 */   nop
    /* 39CA0 8004B490 03004010 */  beqz       $v0, .L8004B4A0
    /* 39CA4 8004B494 00000000 */   nop
    /* 39CA8 8004B498 2C2D010C */  jal        func_8004B4B0
    /* 39CAC 8004B49C 00000000 */   nop
  .L8004B4A0:
    /* 39CB0 8004B4A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39CB4 8004B4A4 00000000 */  nop
    /* 39CB8 8004B4A8 0800E003 */  jr         $ra
    /* 39CBC 8004B4AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004B480
