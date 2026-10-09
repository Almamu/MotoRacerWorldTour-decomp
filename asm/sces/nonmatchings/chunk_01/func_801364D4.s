nonmatching func_801364D4, 0x6C

glabel func_801364D4
    /* 39A0 801364D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39A4 801364D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 39A8 801364DC FF2A050C */  jal        func_8014ABFC
    /* 39AC 801364E0 00000000 */   nop
    /* 39B0 801364E4 CAEC040C */  jal        func_8013B328
    /* 39B4 801364E8 21200000 */   addu      $a0, $zero, $zero
    /* 39B8 801364EC 9BF0040C */  jal        func_8013C26C
    /* 39BC 801364F0 21200000 */   addu      $a0, $zero, $zero
    /* 39C0 801364F4 032B050C */  jal        func_8014AC0C
    /* 39C4 801364F8 00000000 */   nop
    /* 39C8 801364FC 1A80023C */  lui        $v0, %hi(D_8019DB64)
    /* 39CC 80136500 1A80033C */  lui        $v1, %hi(D_8019DA60)
    /* 39D0 80136504 64DB448C */  lw         $a0, %lo(D_8019DB64)($v0)
    /* 39D4 80136508 1A80023C */  lui        $v0, %hi(D_8019DA64)
    /* 39D8 8013650C 60DA60AC */  sw         $zero, %lo(D_8019DA60)($v1)
    /* 39DC 80136510 1A80033C */  lui        $v1, %hi(D_8019DA68)
    /* 39E0 80136514 64DA40AC */  sw         $zero, %lo(D_8019DA64)($v0)
    /* 39E4 80136518 9B29050C */  jal        func_8014A66C
    /* 39E8 8013651C 68DA60AC */   sw        $zero, %lo(D_8019DA68)($v1)
    /* 39EC 80136520 1A80053C */  lui        $a1, %hi(D_8019DB68)
    /* 39F0 80136524 68DBA48C */  lw         $a0, %lo(D_8019DB68)($a1)
    /* 39F4 80136528 9B29050C */  jal        func_8014A66C
    /* 39F8 8013652C 00000000 */   nop
    /* 39FC 80136530 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3A00 80136534 01000224 */  addiu      $v0, $zero, 0x1
    /* 3A04 80136538 0800E003 */  jr         $ra
    /* 3A08 8013653C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_801364D4
