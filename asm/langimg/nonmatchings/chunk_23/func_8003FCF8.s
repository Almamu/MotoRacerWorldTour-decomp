nonmatching func_8003FCF8, 0x34

glabel func_8003FCF8
    /* 2E508 8003FCF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E50C 8003FCFC 0C80023C */  lui        $v0, %hi(D_800C4EA8)
    /* 2E510 8003FD00 A84E4224 */  addiu      $v0, $v0, %lo(D_800C4EA8)
    /* 2E514 8003FD04 0100A530 */  andi       $a1, $a1, 0x1
    /* 2E518 8003FD08 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2E51C 8003FD0C 0300A010 */  beqz       $a1, .L8003FD1C
    /* 2E520 8003FD10 680082AC */   sw        $v0, 0x68($a0)
    /* 2E524 8003FD14 679C020C */  jal        __builtin_delete
    /* 2E528 8003FD18 00000000 */   nop
  .L8003FD1C:
    /* 2E52C 8003FD1C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2E530 8003FD20 00000000 */  nop
    /* 2E534 8003FD24 0800E003 */  jr         $ra
    /* 2E538 8003FD28 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003FCF8
