nonmatching func_80026720, 0x3C

glabel func_80026720
    /* 14F30 80026720 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 14F34 80026724 1000B0AF */  sw         $s0, 0x10($sp)
    /* 14F38 80026728 21808000 */  addu       $s0, $a0, $zero
    /* 14F3C 8002672C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 14F40 80026730 BC020586 */  lh         $a1, 0x2BC($s0)
    /* 14F44 80026734 D799000C */  jal        func_8002675C
    /* 14F48 80026738 00000000 */   nop
    /* 14F4C 8002673C A005048E */  lw         $a0, 0x5A0($s0)
    /* 14F50 80026740 FA030686 */  lh         $a2, 0x3FA($s0)
    /* 14F54 80026744 5F8D000C */  jal        func_8002357C
    /* 14F58 80026748 21284000 */   addu      $a1, $v0, $zero
    /* 14F5C 8002674C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 14F60 80026750 1000B08F */  lw         $s0, 0x10($sp)
    /* 14F64 80026754 0800E003 */  jr         $ra
    /* 14F68 80026758 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80026720
