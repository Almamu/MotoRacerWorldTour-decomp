nonmatching func_8006FB3C, 0x38

glabel func_8006FB3C
    /* 5E34C 8006FB3C E86E828F */  lw         $v0, %gp_rel(D_800CB5D8)($gp)
    /* 5E350 8006FB40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E354 8006FB44 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5E358 8006FB48 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5E35C 8006FB4C E86E82AF */  sw         $v0, %gp_rel(D_800CB5D8)($gp)
    /* 5E360 8006FB50 04004014 */  bnez       $v0, .L8006FB64
    /* 5E364 8006FB54 00000000 */   nop
    /* 5E368 8006FB58 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5E36C 8006FB5C 0352000C */  jal        func_8001480C
    /* 5E370 8006FB60 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
  .L8006FB64:
    /* 5E374 8006FB64 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5E378 8006FB68 00000000 */  nop
    /* 5E37C 8006FB6C 0800E003 */  jr         $ra
    /* 5E380 8006FB70 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006FB3C
