nonmatching func_800B0740, 0x48

glabel func_800B0740
    /* 9EF50 800B0740 0C80023C */  lui        $v0, %hi(D_800C3C9C)
    /* 9EF54 800B0744 9C3C428C */  lw         $v0, %lo(D_800C3C9C)($v0)
    /* 9EF58 800B0748 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EF5C 800B074C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EF60 800B0750 2180A000 */  addu       $s0, $a1, $zero
    /* 9EF64 800B0754 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EF68 800B0758 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9EF6C 800B075C 09F84000 */  jalr       $v0
    /* 9EF70 800B0760 2188C000 */   addu      $s1, $a2, $zero
    /* 9EF74 800B0764 21204000 */  addu       $a0, $v0, $zero
    /* 9EF78 800B0768 FF000532 */  andi       $a1, $s0, 0xFF
    /* 9EF7C 800B076C BFC6020C */  jal        func_800B1AFC
    /* 9EF80 800B0770 FF002632 */   andi      $a2, $s1, 0xFF
    /* 9EF84 800B0774 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9EF88 800B0778 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EF8C 800B077C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EF90 800B0780 0800E003 */  jr         $ra
    /* 9EF94 800B0784 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0740
