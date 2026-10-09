nonmatching func_8009CD24, 0x54

glabel func_8009CD24
    /* 8B534 8009CD24 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B538 8009CD28 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8B53C 8009CD2C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8B540 8009CD30 800A828C */  lw         $v0, 0xA80($a0)
    /* 8B544 8009CD34 00000000 */  nop
    /* 8B548 8009CD38 6000508C */  lw         $s0, 0x60($v0)
    /* 8B54C 8009CD3C EF75020C */  jal        func_8009D7BC
    /* 8B550 8009CD40 21200002 */   addu      $a0, $s0, $zero
    /* 8B554 8009CD44 21200002 */  addu       $a0, $s0, $zero
    /* 8B558 8009CD48 AC150224 */  addiu      $v0, $zero, 0x15AC
    /* 8B55C 8009CD4C 0D80053C */  lui        $a1, %hi(D_800C94C8)
    /* 8B560 8009CD50 C894A524 */  addiu      $a1, $a1, %lo(D_800C94C8)
    /* 8B564 8009CD54 0C80073C */  lui        $a3, %hi(D_800BC884)
    /* 8B568 8009CD58 84C8E78C */  lw         $a3, %lo(D_800BC884)($a3)
    /* 8B56C 8009CD5C 21300000 */  addu       $a2, $zero, $zero
    /* 8B570 8009CD60 0778020C */  jal        func_8009E01C
    /* 8B574 8009CD64 1000A2AF */   sw        $v0, 0x10($sp)
    /* 8B578 8009CD68 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8B57C 8009CD6C 1800B08F */  lw         $s0, 0x18($sp)
    /* 8B580 8009CD70 0800E003 */  jr         $ra
    /* 8B584 8009CD74 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8009CD24
