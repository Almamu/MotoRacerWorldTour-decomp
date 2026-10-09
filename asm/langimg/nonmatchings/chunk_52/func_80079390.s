nonmatching func_80079390, 0x30

glabel func_80079390
    /* 67BA0 80079390 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67BA4 80079394 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67BA8 80079398 B4AA020C */  jal        func_800AAAD0
    /* 67BAC 8007939C 01000424 */   addiu     $a0, $zero, 0x1
    /* 67BB0 800793A0 0C80033C */  lui        $v1, %hi(D_800B8870)
    /* 67BB4 800793A4 0C80053C */  lui        $a1, %hi(D_800B886C)
    /* 67BB8 800793A8 7088648C */  lw         $a0, %lo(D_800B8870)($v1)
    /* 67BBC 800793AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 67BC0 800793B0 23104400 */  subu       $v0, $v0, $a0
    /* 67BC4 800793B4 6C88A2AC */  sw         $v0, %lo(D_800B886C)($a1)
    /* 67BC8 800793B8 0800E003 */  jr         $ra
    /* 67BCC 800793BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80079390
