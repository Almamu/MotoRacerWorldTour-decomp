nonmatching VSyncCallback, 0x34

glabel VSyncCallback
    /* 99580 800AAD70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99584 800AAD74 0C80023C */  lui        $v0, %hi(D_800BE5D0)
    /* 99588 800AAD78 D0E5428C */  lw         $v0, %lo(D_800BE5D0)($v0)
    /* 9958C 800AAD7C 21288000 */  addu       $a1, $a0, $zero
    /* 99590 800AAD80 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99594 800AAD84 1400428C */  lw         $v0, 0x14($v0)
    /* 99598 800AAD88 00000000 */  nop
    /* 9959C 800AAD8C 09F84000 */  jalr       $v0
    /* 995A0 800AAD90 04000424 */   addiu     $a0, $zero, 0x4
    /* 995A4 800AAD94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 995A8 800AAD98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 995AC 800AAD9C 0800E003 */  jr         $ra
    /* 995B0 800AADA0 00000000 */   nop
endlabel VSyncCallback
