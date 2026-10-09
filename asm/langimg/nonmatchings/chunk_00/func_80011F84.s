nonmatching func_80011F84, 0x48

glabel func_80011F84
    /* 794 80011F84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 798 80011F88 1000BFAF */  sw         $ra, 0x10($sp)
    /* 79C 80011F8C DF4B000C */  jal        func_80012F7C
    /* 7A0 80011F90 00000000 */   nop
    /* 7A4 80011F94 F9FF0324 */  addiu      $v1, $zero, -0x7
    /* 7A8 80011F98 0C00828F */  lw         $v0, %gp_rel(D_800C46FC)($gp)
    /* 7AC 80011F9C 0000848F */  lw         $a0, %gp_rel(D_800C46F0)($gp)
    /* 7B0 80011FA0 24104300 */  and        $v0, $v0, $v1
    /* 7B4 80011FA4 0C0082AF */  sw         $v0, %gp_rel(D_800C46FC)($gp)
    /* 7B8 80011FA8 04008010 */  beqz       $a0, .L80011FBC
    /* 7BC 80011FAC 00000000 */   nop
    /* 7C0 80011FB0 59D5020C */  jal        free
    /* 7C4 80011FB4 00000000 */   nop
    /* 7C8 80011FB8 000080AF */  sw         $zero, %gp_rel(D_800C46F0)($gp)
  .L80011FBC:
    /* 7CC 80011FBC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7D0 80011FC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 7D4 80011FC4 0800E003 */  jr         $ra
    /* 7D8 80011FC8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80011F84
