nonmatching func_8006BF4C, 0x74

glabel func_8006BF4C
    /* 5A75C 8006BF4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A760 8006BF50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A764 8006BF54 21808000 */  addu       $s0, $a0, $zero
    /* 5A768 8006BF58 14040426 */  addiu      $a0, $s0, 0x414
    /* 5A76C 8006BF5C 21280000 */  addu       $a1, $zero, $zero
    /* 5A770 8006BF60 0C000624 */  addiu      $a2, $zero, 0xC
    /* 5A774 8006BF64 0D80023C */  lui        $v0, %hi(D_800D5FD8)
    /* 5A778 8006BF68 D85F428C */  lw         $v0, %lo(D_800D5FD8)($v0)
    /* 5A77C 8006BF6C FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 5A780 8006BF70 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5A784 8006BF74 743080AF */  sw         $zero, %gp_rel(D_800C7764)($gp)
    /* 5A788 8006BF78 24104300 */  and        $v0, $v0, $v1
    /* 5A78C 8006BF7C 0D80013C */  lui        $at, %hi(D_800D5FD8)
    /* 5A790 8006BF80 D85F22AC */  sw         $v0, %lo(D_800D5FD8)($at)
    /* 5A794 8006BF84 040000AE */  sw         $zero, 0x4($s0)
    /* 5A798 8006BF88 0C0400AE */  sw         $zero, 0x40C($s0)
    /* 5A79C 8006BF8C 56D8020C */  jal        func_800B6158
    /* 5A7A0 8006BF90 080000AE */   sw        $zero, 0x8($s0)
    /* 5A7A4 8006BF94 20040426 */  addiu      $a0, $s0, 0x420
    /* 5A7A8 8006BF98 21280000 */  addu       $a1, $zero, $zero
    /* 5A7AC 8006BF9C 56D8020C */  jal        func_800B6158
    /* 5A7B0 8006BFA0 0C000624 */   addiu     $a2, $zero, 0xC
    /* 5A7B4 8006BFA4 2C040426 */  addiu      $a0, $s0, 0x42C
    /* 5A7B8 8006BFA8 465A020C */  jal        func_80096918
    /* 5A7BC 8006BFAC 01000524 */   addiu     $a1, $zero, 0x1
    /* 5A7C0 8006BFB0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5A7C4 8006BFB4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A7C8 8006BFB8 0800E003 */  jr         $ra
    /* 5A7CC 8006BFBC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006BF4C
