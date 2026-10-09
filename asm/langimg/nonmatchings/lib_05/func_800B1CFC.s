nonmatching func_800B1CFC, 0x48

glabel func_800B1CFC
    /* A050C 800B1CFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0510 800B1D00 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0514 800B1D04 0C80023C */  lui        $v0, %hi(D_800C3CA0)
    /* A0518 800B1D08 A03C428C */  lw         $v0, %lo(D_800C3CA0)($v0)
    /* A051C 800B1D0C 1400BFAF */  sw         $ra, 0x14($sp)
    /* A0520 800B1D10 09F84000 */  jalr       $v0
    /* A0524 800B1D14 21808000 */   addu      $s0, $a0, $zero
    /* A0528 800B1D18 21200002 */  addu       $a0, $s0, $zero
    /* A052C 800B1D1C 3C00038E */  lw         $v1, 0x3C($s0)
    /* A0530 800B1D20 FEFF0524 */  addiu      $a1, $zero, -0x2
    /* A0534 800B1D24 0C80013C */  lui        $at, %hi(D_800C3D08)
    /* A0538 800B1D28 083D22AC */  sw         $v0, %lo(D_800C3D08)($at)
    /* A053C 800B1D2C B9C3020C */  jal        func_800B0EE4
    /* A0540 800B1D30 000060A0 */   sb        $zero, 0x0($v1)
    /* A0544 800B1D34 1400BF8F */  lw         $ra, 0x14($sp)
    /* A0548 800B1D38 1000B08F */  lw         $s0, 0x10($sp)
    /* A054C 800B1D3C 0800E003 */  jr         $ra
    /* A0550 800B1D40 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B1CFC
