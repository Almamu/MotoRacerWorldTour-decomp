nonmatching func_800AE020, 0x34

glabel func_800AE020
    /* 9C830 800AE020 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9C834 800AE024 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9C838 800AE028 B4AA020C */  jal        func_800AAAD0
    /* 9C83C 800AE02C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 9C840 800AE030 F0004224 */  addiu      $v0, $v0, 0xF0
    /* 9C844 800AE034 0C80013C */  lui        $at, %hi(D_800BF37C)
    /* 9C848 800AE038 7CF322AC */  sw         $v0, %lo(D_800BF37C)($at)
    /* 9C84C 800AE03C 0C80013C */  lui        $at, %hi(D_800BF380)
    /* 9C850 800AE040 80F320AC */  sw         $zero, %lo(D_800BF380)($at)
    /* 9C854 800AE044 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9C858 800AE048 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9C85C 800AE04C 0800E003 */  jr         $ra
    /* 9C860 800AE050 00000000 */   nop
endlabel func_800AE020
