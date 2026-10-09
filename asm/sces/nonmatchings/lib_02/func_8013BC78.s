nonmatching func_8013BC78, 0x24

glabel func_8013BC78
    /* 9144 8013BC78 0600A010 */  beqz       $a1, .L8013BC94
    /* 9148 8013BC7C FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 914C 8013BC80 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8013BC84:
    /* 9150 8013BC84 000080AC */  sw         $zero, 0x0($a0)
    /* 9154 8013BC88 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9158 8013BC8C FDFF4314 */  bne        $v0, $v1, .L8013BC84
    /* 915C 8013BC90 04008424 */   addiu     $a0, $a0, 0x4
  .L8013BC94:
    /* 9160 8013BC94 0800E003 */  jr         $ra
    /* 9164 8013BC98 00000000 */   nop
endlabel func_8013BC78
    /* 9168 8013BC9C 00000000 */  nop
