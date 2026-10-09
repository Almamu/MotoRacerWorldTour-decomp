nonmatching func_8013EE74, 0x48

glabel func_8013EE74
    /* C340 8013EE74 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* C344 8013EE78 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* C348 8013EE7C 00000000 */  nop
    /* C34C 8013EE80 0C004018 */  blez       $v0, .L8013EEB4
    /* C350 8013EE84 21400000 */   addu      $t0, $zero, $zero
    /* C354 8013EE88 21484000 */  addu       $t1, $v0, $zero
    /* C358 8013EE8C 1D80023C */  lui        $v0, %hi(D_801CE700)
    /* C35C 8013EE90 00E74324 */  addiu      $v1, $v0, %lo(D_801CE700)
  .L8013EE94:
    /* C360 8013EE94 000064AC */  sw         $a0, 0x0($v1)
    /* C364 8013EE98 040065AC */  sw         $a1, 0x4($v1)
    /* C368 8013EE9C 080066AC */  sw         $a2, 0x8($v1)
    /* C36C 8013EEA0 0C0067AC */  sw         $a3, 0xC($v1)
    /* C370 8013EEA4 01000825 */  addiu      $t0, $t0, 0x1
    /* C374 8013EEA8 2A100901 */  slt        $v0, $t0, $t1
    /* C378 8013EEAC F9FF4014 */  bnez       $v0, .L8013EE94
    /* C37C 8013EEB0 10006324 */   addiu     $v1, $v1, 0x10
  .L8013EEB4:
    /* C380 8013EEB4 0800E003 */  jr         $ra
    /* C384 8013EEB8 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8013EE74
