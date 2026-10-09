nonmatching startIntrVSync, 0x58

glabel startIntrVSync
    /* 8DAC 8013B8E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DB0 8013B8E4 1C80043C */  lui        $a0, %hi(D_801BEFE8)
    /* 8DB4 8013B8E8 E8EF8424 */  addiu      $a0, $a0, %lo(D_801BEFE8)
    /* 8DB8 8013B8EC 1C80033C */  lui        $v1, %hi(D_801BF00C)
    /* 8DBC 8013B8F0 0CF0638C */  lw         $v1, %lo(D_801BF00C)($v1)
    /* 8DC0 8013B8F4 00010224 */  addiu      $v0, $zero, 0x100
    /* 8DC4 8013B8F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DC8 8013B8FC 000062AC */  sw         $v0, 0x0($v1)
    /* 8DCC 8013B900 1C80013C */  lui        $at, %hi(D_801BF008)
    /* 8DD0 8013B904 08F020AC */  sw         $zero, %lo(D_801BF008)($at)
    /* 8DD4 8013B908 74EE040C */  jal        func_8013B9D0
    /* 8DD8 8013B90C 08000524 */   addiu     $a1, $zero, 0x8
    /* 8DDC 8013B910 1480053C */  lui        $a1, %hi(func_8013B938)
    /* 8DE0 8013B914 38B9A524 */  addiu      $a1, $a1, %lo(func_8013B938)
    /* 8DE4 8013B918 B2EC040C */  jal        InterruptCallback
    /* 8DE8 8013B91C 21200000 */   addu      $a0, $zero, $zero
    /* 8DEC 8013B920 1480023C */  lui        $v0, %hi(func_8013B9A4)
    /* 8DF0 8013B924 A4B94224 */  addiu      $v0, $v0, %lo(func_8013B9A4)
    /* 8DF4 8013B928 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DF8 8013B92C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8DFC 8013B930 0800E003 */  jr         $ra
    /* 8E00 8013B934 00000000 */   nop
endlabel startIntrVSync
