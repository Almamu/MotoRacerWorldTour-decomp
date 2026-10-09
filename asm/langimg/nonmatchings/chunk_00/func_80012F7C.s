nonmatching func_80012F7C, 0x70

glabel func_80012F7C
    /* 178C 80012F7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1790 80012F80 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1794 80012F84 5846000C */  jal        func_80011960
    /* 1798 80012F88 00000000 */   nop
    /* 179C 80012F8C 21380000 */  addu       $a3, $zero, $zero
    /* 17A0 80012F90 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 17A4 80012F94 FEFF0824 */  addiu      $t0, $zero, -0x2
    /* 17A8 80012F98 0D80043C */  lui        $a0, %hi(D_800CA0FE)
    /* 17AC 80012F9C FEA08424 */  addiu      $a0, $a0, %lo(D_800CA0FE)
    /* 17B0 80012FA0 0D80063C */  lui        $a2, %hi(D_800CA0F8)
    /* 17B4 80012FA4 F8A0C624 */  addiu      $a2, $a2, %lo(D_800CA0F8)
    /* 17B8 80012FA8 0D80053C */  lui        $a1, %hi(D_800CA0FC)
    /* 17BC 80012FAC FCA0A524 */  addiu      $a1, $a1, %lo(D_800CA0FC)
  .L80012FB0:
    /* 17C0 80012FB0 0000A0A4 */  sh         $zero, 0x0($a1)
    /* 17C4 80012FB4 0000C9A4 */  sh         $t1, 0x0($a2)
    /* 17C8 80012FB8 1400C624 */  addiu      $a2, $a2, 0x14
    /* 17CC 80012FBC 1400A524 */  addiu      $a1, $a1, 0x14
    /* 17D0 80012FC0 0100E724 */  addiu      $a3, $a3, 0x1
    /* 17D4 80012FC4 00008294 */  lhu        $v0, 0x0($a0)
    /* 17D8 80012FC8 1E00E328 */  slti       $v1, $a3, 0x1E
    /* 17DC 80012FCC 24104800 */  and        $v0, $v0, $t0
    /* 17E0 80012FD0 000082A4 */  sh         $v0, 0x0($a0)
    /* 17E4 80012FD4 F6FF6014 */  bnez       $v1, .L80012FB0
    /* 17E8 80012FD8 14008424 */   addiu     $a0, $a0, 0x14
    /* 17EC 80012FDC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 17F0 80012FE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 17F4 80012FE4 0800E003 */  jr         $ra
    /* 17F8 80012FE8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80012F7C
