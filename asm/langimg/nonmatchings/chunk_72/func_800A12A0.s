nonmatching func_800A12A0, 0x24

glabel func_800A12A0
    /* 8FAB0 800A12A0 04000224 */  addiu      $v0, $zero, 0x4
    /* 8FAB4 800A12A4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8FAB8 800A12A8 10178424 */  addiu      $a0, $a0, 0x1710
  .L800A12AC:
    /* 8FABC 800A12AC 000083AC */  sw         $v1, 0x0($a0)
    /* 8FAC0 800A12B0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8FAC4 800A12B4 FDFF4104 */  bgez       $v0, .L800A12AC
    /* 8FAC8 800A12B8 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 8FACC 800A12BC 0800E003 */  jr         $ra
    /* 8FAD0 800A12C0 00000000 */   nop
endlabel func_800A12A0
