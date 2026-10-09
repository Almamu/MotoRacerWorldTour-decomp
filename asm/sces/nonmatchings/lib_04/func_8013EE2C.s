nonmatching func_8013EE2C, 0x48

glabel func_8013EE2C
    /* C2F8 8013EE2C 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* C2FC 8013EE30 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* C300 8013EE34 00000000 */  nop
    /* C304 8013EE38 0C004018 */  blez       $v0, .L8013EE6C
    /* C308 8013EE3C 21400000 */   addu      $t0, $zero, $zero
    /* C30C 8013EE40 21484000 */  addu       $t1, $v0, $zero
    /* C310 8013EE44 1D80023C */  lui        $v0, %hi(D_801CE758)
    /* C314 8013EE48 58E74324 */  addiu      $v1, $v0, %lo(D_801CE758)
  .L8013EE4C:
    /* C318 8013EE4C 000064AC */  sw         $a0, 0x0($v1)
    /* C31C 8013EE50 040065AC */  sw         $a1, 0x4($v1)
    /* C320 8013EE54 080066AC */  sw         $a2, 0x8($v1)
    /* C324 8013EE58 0C0067AC */  sw         $a3, 0xC($v1)
    /* C328 8013EE5C 01000825 */  addiu      $t0, $t0, 0x1
    /* C32C 8013EE60 2A100901 */  slt        $v0, $t0, $t1
    /* C330 8013EE64 F9FF4014 */  bnez       $v0, .L8013EE4C
    /* C334 8013EE68 10006324 */   addiu     $v1, $v1, 0x10
  .L8013EE6C:
    /* C338 8013EE6C 0800E003 */  jr         $ra
    /* C33C 8013EE70 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8013EE2C
