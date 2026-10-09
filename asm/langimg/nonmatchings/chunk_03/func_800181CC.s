nonmatching func_800181CC, 0x58

glabel func_800181CC
    /* 69DC 800181CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 69E0 800181D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 69E4 800181D4 21808000 */  addu       $s0, $a0, $zero
    /* 69E8 800181D8 0C80023C */  lui        $v0, %hi(D_800C4948)
    /* 69EC 800181DC 48494224 */  addiu      $v0, $v0, %lo(D_800C4948)
    /* 69F0 800181E0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 69F4 800181E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 69F8 800181E8 4000048E */  lw         $a0, 0x40($s0)
    /* 69FC 800181EC 2188A000 */  addu       $s1, $a1, $zero
    /* 6A00 800181F0 04008010 */  beqz       $a0, .L80018204
    /* 6A04 800181F4 500002AE */   sw        $v0, 0x50($s0)
    /* 6A08 800181F8 679C020C */  jal        __builtin_delete
    /* 6A0C 800181FC 00000000 */   nop
    /* 6A10 80018200 400000AE */  sw         $zero, 0x40($s0)
  .L80018204:
    /* 6A14 80018204 21200002 */  addu       $a0, $s0, $zero
    /* 6A18 80018208 0F58000C */  jal        _._6Cobjet
    /* 6A1C 8001820C 21282002 */   addu      $a1, $s1, $zero
    /* 6A20 80018210 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6A24 80018214 1400B18F */  lw         $s1, 0x14($sp)
    /* 6A28 80018218 1000B08F */  lw         $s0, 0x10($sp)
    /* 6A2C 8001821C 0800E003 */  jr         $ra
    /* 6A30 80018220 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800181CC
