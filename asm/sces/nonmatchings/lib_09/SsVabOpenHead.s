nonmatching SsVabOpenHead, 0x34

glabel SsVabOpenHead
    /* 16EA4 801499D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 16EA8 801499DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 16EAC 801499E0 002C0500 */  sll        $a1, $a1, 16
    /* 16EB0 801499E4 032C0500 */  sra        $a1, $a1, 16
    /* 16EB4 801499E8 1580063C */  lui        $a2, %hi(func_80149A0C)
    /* 16EB8 801499EC 0C9AC624 */  addiu      $a2, $a2, %lo(func_80149A0C)
    /* 16EBC 801499F0 5227050C */  jal        _SsVabOpenHeadWithMode
    /* 16EC0 801499F4 21380000 */   addu      $a3, $zero, $zero
    /* 16EC4 801499F8 00140200 */  sll        $v0, $v0, 16
    /* 16EC8 801499FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 16ECC 80149A00 03140200 */  sra        $v0, $v0, 16
    /* 16ED0 80149A04 0800E003 */  jr         $ra
    /* 16ED4 80149A08 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel SsVabOpenHead
