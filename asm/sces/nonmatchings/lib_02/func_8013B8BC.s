nonmatching func_8013B8BC, 0x24

glabel func_8013B8BC
    /* 8D88 8013B8BC 0600A010 */  beqz       $a1, .L8013B8D8
    /* 8D8C 8013B8C0 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 8D90 8013B8C4 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8013B8C8:
    /* 8D94 8013B8C8 000080AC */  sw         $zero, 0x0($a0)
    /* 8D98 8013B8CC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8D9C 8013B8D0 FDFF4314 */  bne        $v0, $v1, .L8013B8C8
    /* 8DA0 8013B8D4 04008424 */   addiu     $a0, $a0, 0x4
  .L8013B8D8:
    /* 8DA4 8013B8D8 0800E003 */  jr         $ra
    /* 8DA8 8013B8DC 00000000 */   nop
endlabel func_8013B8BC
