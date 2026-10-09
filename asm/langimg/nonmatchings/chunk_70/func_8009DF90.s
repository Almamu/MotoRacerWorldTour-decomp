nonmatching func_8009DF90, 0x8C

glabel func_8009DF90
    /* 8C7A0 8009DF90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8C7A4 8009DF94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C7A8 8009DF98 21888000 */  addu       $s1, $a0, $zero
    /* 8C7AC 8009DF9C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8C7B0 8009DFA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C7B4 8009DFA4 800A238E */  lw         $v1, 0xA80($s1)
    /* 8C7B8 8009DFA8 00000000 */  nop
    /* 8C7BC 8009DFAC 6000708C */  lw         $s0, 0x60($v1)
    /* 8C7C0 8009DFB0 00000000 */  nop
    /* 8C7C4 8009DFB4 14000012 */  beqz       $s0, .L8009E008
    /* 8C7C8 8009DFB8 00000000 */   nop
    /* 8C7CC 8009DFBC 5800028E */  lw         $v0, 0x58($s0)
    /* 8C7D0 8009DFC0 00000000 */  nop
    /* 8C7D4 8009DFC4 10006210 */  beq        $v1, $v0, .L8009E008
    /* 8C7D8 8009DFC8 00000000 */   nop
    /* 8C7DC 8009DFCC 0C76020C */  jal        func_8009D830
    /* 8C7E0 8009DFD0 21200002 */   addu      $a0, $s0, $zero
    /* 8C7E4 8009DFD4 5400038E */  lw         $v1, 0x54($s0)
    /* 8C7E8 8009DFD8 00000000 */  nop
    /* 8C7EC 8009DFDC 0A006014 */  bnez       $v1, .L8009E008
    /* 8C7F0 8009DFE0 00000000 */   nop
    /* 8C7F4 8009DFE4 1455828F */  lw         $v0, %gp_rel(D_800C9C04)($gp)
    /* 8C7F8 8009DFE8 00000000 */  nop
    /* 8C7FC 8009DFEC 06004014 */  bnez       $v0, .L8009E008
    /* 8C800 8009DFF0 21202002 */   addu      $a0, $s1, $zero
    /* 8C804 8009DFF4 5800058E */  lw         $a1, 0x58($s0)
    /* 8C808 8009DFF8 1EF3000C */  jal        func_8003CC78
    /* 8C80C 8009DFFC 21300000 */   addu      $a2, $zero, $zero
    /* 8C810 8009E000 01000324 */  addiu      $v1, $zero, 0x1
    /* 8C814 8009E004 145583AF */  sw         $v1, %gp_rel(D_800C9C04)($gp)
  .L8009E008:
    /* 8C818 8009E008 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8C81C 8009E00C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C820 8009E010 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C824 8009E014 0800E003 */  jr         $ra
    /* 8C828 8009E018 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8009DF90
