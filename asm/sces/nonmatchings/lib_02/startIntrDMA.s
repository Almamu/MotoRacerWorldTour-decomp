nonmatching startIntrDMA, 0x4C

glabel startIntrDMA
    /* 8ECC 8013BA00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8ED0 8013BA04 1C80043C */  lui        $a0, %hi(D_801BF01C)
    /* 8ED4 8013BA08 1CF08424 */  addiu      $a0, $a0, %lo(D_801BF01C)
    /* 8ED8 8013BA0C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8EDC 8013BA10 1EEF040C */  jal        func_8013BC78
    /* 8EE0 8013BA14 08000524 */   addiu     $a1, $zero, 0x8
    /* 8EE4 8013BA18 03000424 */  addiu      $a0, $zero, 0x3
    /* 8EE8 8013BA1C 1C80023C */  lui        $v0, %hi(D_801BF018)
    /* 8EEC 8013BA20 18F0428C */  lw         $v0, %lo(D_801BF018)($v0)
    /* 8EF0 8013BA24 1480053C */  lui        $a1, %hi(func_8013BA4C)
    /* 8EF4 8013BA28 4CBAA524 */  addiu      $a1, $a1, %lo(func_8013BA4C)
    /* 8EF8 8013BA2C B2EC040C */  jal        InterruptCallback
    /* 8EFC 8013BA30 000040AC */   sw        $zero, 0x0($v0)
    /* 8F00 8013BA34 1480023C */  lui        $v0, %hi(func_8013BBCC)
    /* 8F04 8013BA38 CCBB4224 */  addiu      $v0, $v0, %lo(func_8013BBCC)
    /* 8F08 8013BA3C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8F0C 8013BA40 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8F10 8013BA44 0800E003 */  jr         $ra
    /* 8F14 8013BA48 00000000 */   nop
endlabel startIntrDMA
