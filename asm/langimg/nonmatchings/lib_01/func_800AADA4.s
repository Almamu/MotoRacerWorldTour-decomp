nonmatching func_800AADA4, 0x30

glabel func_800AADA4
    /* 995B4 800AADA4 0C80023C */  lui        $v0, %hi(D_800BE5D0)
    /* 995B8 800AADA8 D0E5428C */  lw         $v0, %lo(D_800BE5D0)($v0)
    /* 995BC 800AADAC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 995C0 800AADB0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 995C4 800AADB4 1000428C */  lw         $v0, 0x10($v0)
    /* 995C8 800AADB8 00000000 */  nop
    /* 995CC 800AADBC 09F84000 */  jalr       $v0
    /* 995D0 800AADC0 00000000 */   nop
    /* 995D4 800AADC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 995D8 800AADC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 995DC 800AADCC 0800E003 */  jr         $ra
    /* 995E0 800AADD0 00000000 */   nop
endlabel func_800AADA4
