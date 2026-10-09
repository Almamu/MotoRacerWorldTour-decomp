nonmatching func_8013B9A4, 0x2C

glabel func_8013B9A4
    /* 8E70 8013B9A4 1C80023C */  lui        $v0, %hi(D_801BEFE8)
    /* 8E74 8013B9A8 E8EF4224 */  addiu      $v0, $v0, %lo(D_801BEFE8)
    /* 8E78 8013B9AC 80200400 */  sll        $a0, $a0, 2
    /* 8E7C 8013B9B0 21208200 */  addu       $a0, $a0, $v0
    /* 8E80 8013B9B4 0000828C */  lw         $v0, 0x0($a0)
    /* 8E84 8013B9B8 00000000 */  nop
    /* 8E88 8013B9BC 0200A210 */  beq        $a1, $v0, .L8013B9C8
    /* 8E8C 8013B9C0 00000000 */   nop
    /* 8E90 8013B9C4 000085AC */  sw         $a1, 0x0($a0)
  .L8013B9C8:
    /* 8E94 8013B9C8 0800E003 */  jr         $ra
    /* 8E98 8013B9CC 00000000 */   nop
endlabel func_8013B9A4
