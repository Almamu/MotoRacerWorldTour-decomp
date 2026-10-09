nonmatching func_8006C750, 0x2C

glabel func_8006C750
    /* 5AF60 8006C750 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5AF64 8006C754 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5AF68 8006C758 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5AF6C 8006C75C BB51000C */  jal        func_800146EC
    /* 5AF70 8006C760 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5AF74 8006C764 0E55000C */  jal        func_80015438
    /* 5AF78 8006C768 05000424 */   addiu     $a0, $zero, 0x5
    /* 5AF7C 8006C76C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5AF80 8006C770 00000000 */  nop
    /* 5AF84 8006C774 0800E003 */  jr         $ra
    /* 5AF88 8006C778 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006C750
