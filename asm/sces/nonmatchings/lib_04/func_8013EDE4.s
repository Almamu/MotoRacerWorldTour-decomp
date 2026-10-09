nonmatching func_8013EDE4, 0x48

glabel func_8013EDE4
    /* C2B0 8013EDE4 1D80023C */  lui        $v0, %hi(D_801CE6E0)
    /* C2B4 8013EDE8 E0E6428C */  lw         $v0, %lo(D_801CE6E0)($v0)
    /* C2B8 8013EDEC 00000000 */  nop
    /* C2BC 8013EDF0 0C004018 */  blez       $v0, .L8013EE24
    /* C2C0 8013EDF4 21400000 */   addu      $t0, $zero, $zero
    /* C2C4 8013EDF8 21484000 */  addu       $t1, $v0, $zero
    /* C2C8 8013EDFC 1D80023C */  lui        $v0, %hi(D_801CE720)
    /* C2CC 8013EE00 20E74324 */  addiu      $v1, $v0, %lo(D_801CE720)
  .L8013EE04:
    /* C2D0 8013EE04 000064AC */  sw         $a0, 0x0($v1)
    /* C2D4 8013EE08 040065AC */  sw         $a1, 0x4($v1)
    /* C2D8 8013EE0C 080066AC */  sw         $a2, 0x8($v1)
    /* C2DC 8013EE10 0C0067AC */  sw         $a3, 0xC($v1)
    /* C2E0 8013EE14 01000825 */  addiu      $t0, $t0, 0x1
    /* C2E4 8013EE18 2A100901 */  slt        $v0, $t0, $t1
    /* C2E8 8013EE1C F9FF4014 */  bnez       $v0, .L8013EE04
    /* C2EC 8013EE20 10006324 */   addiu     $v1, $v1, 0x10
  .L8013EE24:
    /* C2F0 8013EE24 0800E003 */  jr         $ra
    /* C2F4 8013EE28 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8013EDE4
