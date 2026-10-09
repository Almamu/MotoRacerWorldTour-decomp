nonmatching func_800B0788, 0x48

glabel func_800B0788
    /* 9EF98 800B0788 0C80023C */  lui        $v0, %hi(D_800C3C9C)
    /* 9EF9C 800B078C 9C3C428C */  lw         $v0, %lo(D_800C3C9C)($v0)
    /* 9EFA0 800B0790 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EFA4 800B0794 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EFA8 800B0798 2180A000 */  addu       $s0, $a1, $zero
    /* 9EFAC 800B079C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EFB0 800B07A0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9EFB4 800B07A4 09F84000 */  jalr       $v0
    /* 9EFB8 800B07A8 2188C000 */   addu      $s1, $a2, $zero
    /* 9EFBC 800B07AC 21204000 */  addu       $a0, $v0, $zero
    /* 9EFC0 800B07B0 21280002 */  addu       $a1, $s0, $zero
    /* 9EFC4 800B07B4 EBC4020C */  jal        func_800B13AC
    /* 9EFC8 800B07B8 21302002 */   addu      $a2, $s1, $zero
    /* 9EFCC 800B07BC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9EFD0 800B07C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EFD4 800B07C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EFD8 800B07C8 0800E003 */  jr         $ra
    /* 9EFDC 800B07CC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0788
    /* 9EFE0 800B07D0 00000000 */  nop
    /* 9EFE4 800B07D4 00000000 */  nop
