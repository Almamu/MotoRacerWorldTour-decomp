nonmatching DMACallback, 0x30

glabel DMACallback
    /* 99550 800AAD40 0C80023C */  lui        $v0, %hi(D_800BE5D0)
    /* 99554 800AAD44 D0E5428C */  lw         $v0, %lo(D_800BE5D0)($v0)
    /* 99558 800AAD48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9955C 800AAD4C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99560 800AAD50 0400428C */  lw         $v0, 0x4($v0)
    /* 99564 800AAD54 00000000 */  nop
    /* 99568 800AAD58 09F84000 */  jalr       $v0
    /* 9956C 800AAD5C 00000000 */   nop
    /* 99570 800AAD60 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99574 800AAD64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99578 800AAD68 0800E003 */  jr         $ra
    /* 9957C 800AAD6C 00000000 */   nop
endlabel DMACallback
