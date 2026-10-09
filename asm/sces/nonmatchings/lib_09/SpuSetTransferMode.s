nonmatching SpuSetTransferMode, 0x30

glabel SpuSetTransferMode
    /* 17784 8014A2B8 05008010 */  beqz       $a0, .L8014A2D0
    /* 17788 8014A2BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1778C 8014A2C0 04008214 */  bne        $a0, $v0, .L8014A2D4
    /* 17790 8014A2C4 21100000 */   addu      $v0, $zero, $zero
    /* 17794 8014A2C8 B5280508 */  j          .L8014A2D4
    /* 17798 8014A2CC 01000224 */   addiu     $v0, $zero, 0x1
  .L8014A2D0:
    /* 1779C 8014A2D0 21100000 */  addu       $v0, $zero, $zero
  .L8014A2D4:
    /* 177A0 8014A2D4 1C80013C */  lui        $at, %hi(D_801BFF84)
    /* 177A4 8014A2D8 84FF24AC */  sw         $a0, %lo(D_801BFF84)($at)
    /* 177A8 8014A2DC 1C80013C */  lui        $at, %hi(D_801BFF30)
    /* 177AC 8014A2E0 0800E003 */  jr         $ra
    /* 177B0 8014A2E4 30FF22AC */   sw        $v0, %lo(D_801BFF30)($at)
endlabel SpuSetTransferMode
