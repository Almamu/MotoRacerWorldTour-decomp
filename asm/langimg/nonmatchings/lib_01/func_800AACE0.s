nonmatching func_800AACE0, 0x30

glabel func_800AACE0
    /* 994F0 800AACE0 0C80023C */  lui        $v0, %hi(D_800BE5D0)
    /* 994F4 800AACE4 D0E5428C */  lw         $v0, %lo(D_800BE5D0)($v0)
    /* 994F8 800AACE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 994FC 800AACEC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99500 800AACF0 0C00428C */  lw         $v0, 0xC($v0)
    /* 99504 800AACF4 00000000 */  nop
    /* 99508 800AACF8 09F84000 */  jalr       $v0
    /* 9950C 800AACFC 00000000 */   nop
    /* 99510 800AAD00 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99514 800AAD04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99518 800AAD08 0800E003 */  jr         $ra
    /* 9951C 800AAD0C 00000000 */   nop
endlabel func_800AACE0
