nonmatching func_80134298, 0x8C

glabel func_80134298
    /* 1764 80134298 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1768 8013429C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 176C 801342A0 21908000 */  addu       $s2, $a0, $zero
    /* 1770 801342A4 21200000 */  addu       $a0, $zero, $zero
    /* 1774 801342A8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1778 801342AC 2180C000 */  addu       $s0, $a2, $zero
    /* 177C 801342B0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1780 801342B4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1784 801342B8 DFEA040C */  jal        func_8013AB7C
    /* 1788 801342BC 2188E000 */   addu      $s1, $a3, $zero
    /* 178C 801342C0 7ED9040C */  jal        func_801365F8
    /* 1790 801342C4 00000000 */   nop
    /* 1794 801342C8 21200002 */  addu       $a0, $s0, $zero
    /* 1798 801342CC 1580033C */  lui        $v1, %hi(D_8014D340)
    /* 179C 801342D0 25EB040C */  jal        func_8013AC94
    /* 17A0 801342D4 40D360AC */   sw        $zero, %lo(D_8014D340)($v1)
    /* 17A4 801342D8 1580063C */  lui        $a2, %hi(D_8014D228)
    /* 17A8 801342DC 28D2C48C */  lw         $a0, %lo(D_8014D228)($a2)
    /* 17AC 801342E0 2ADB040C */  jal        func_80136CA8
    /* 17B0 801342E4 20000524 */   addiu     $a1, $zero, 0x20
    /* 17B4 801342E8 01000424 */  addiu      $a0, $zero, 0x1
    /* 17B8 801342EC 01000524 */  addiu      $a1, $zero, 0x1
    /* 17BC 801342F0 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 17C0 801342F4 21380000 */  addu       $a3, $zero, $zero
    /* 17C4 801342F8 8BE7040C */  jal        func_80139E2C
    /* 17C8 801342FC 1000A0AF */   sw        $zero, 0x10($sp)
    /* 17CC 80134300 21204002 */  addu       $a0, $s2, $zero
    /* 17D0 80134304 2DD0040C */  jal        func_801340B4
    /* 17D4 80134308 21282002 */   addu      $a1, $s1, $zero
    /* 17D8 8013430C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 17DC 80134310 2000B28F */  lw         $s2, 0x20($sp)
    /* 17E0 80134314 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 17E4 80134318 1800B08F */  lw         $s0, 0x18($sp)
    /* 17E8 8013431C 0800E003 */  jr         $ra
    /* 17EC 80134320 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80134298
