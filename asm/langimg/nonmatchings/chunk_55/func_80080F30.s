nonmatching func_80080F30, 0x5C

glabel func_80080F30
    /* 6F740 80080F30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6F744 80080F34 E042838F */  lw         $v1, %gp_rel(D_800C89D0)($gp)
    /* 6F748 80080F38 00100224 */  addiu      $v0, $zero, 0x1000
    /* 6F74C 80080F3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6F750 80080F40 EC7580A7 */  sh         $zero, %gp_rel(D_800CBCDC)($gp)
    /* 6F754 80080F44 EE7580A7 */  sh         $zero, %gp_rel(D_800CBCDE)($gp)
    /* 6F758 80080F48 E87580A7 */  sh         $zero, %gp_rel(D_800CBCD8)($gp)
    /* 6F75C 80080F4C EA7580A7 */  sh         $zero, %gp_rel(D_800CBCDA)($gp)
    /* 6F760 80080F50 00F06330 */  andi       $v1, $v1, 0xF000
    /* 6F764 80080F54 09006210 */  beq        $v1, $v0, .L80080F7C
    /* 6F768 80080F58 21400000 */   addu      $t0, $zero, $zero
    /* 6F76C 80080F5C 0110622C */  sltiu      $v0, $v1, 0x1001
    /* 6F770 80080F60 06004010 */  beqz       $v0, .L80080F7C
    /* 6F774 80080F64 00000000 */   nop
    /* 6F778 80080F68 04006014 */  bnez       $v1, .L80080F7C
    /* 6F77C 80080F6C 00000000 */   nop
    /* 6F780 80080F70 52FE010C */  jal        func_8007F948
    /* 6F784 80080F74 00000000 */   nop
    /* 6F788 80080F78 21404000 */  addu       $t0, $v0, $zero
  .L80080F7C:
    /* 6F78C 80080F7C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6F790 80080F80 21100001 */  addu       $v0, $t0, $zero
    /* 6F794 80080F84 0800E003 */  jr         $ra
    /* 6F798 80080F88 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80080F30
