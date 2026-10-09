nonmatching InterruptCallback, 0x30

glabel InterruptCallback
    /* 99520 800AAD10 0C80023C */  lui        $v0, %hi(D_800BE5D0)
    /* 99524 800AAD14 D0E5428C */  lw         $v0, %lo(D_800BE5D0)($v0)
    /* 99528 800AAD18 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9952C 800AAD1C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99530 800AAD20 0800428C */  lw         $v0, 0x8($v0)
    /* 99534 800AAD24 00000000 */  nop
    /* 99538 800AAD28 09F84000 */  jalr       $v0
    /* 9953C 800AAD2C 00000000 */   nop
    /* 99540 800AAD30 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99544 800AAD34 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99548 800AAD38 0800E003 */  jr         $ra
    /* 9954C 800AAD3C 00000000 */   nop
endlabel InterruptCallback
