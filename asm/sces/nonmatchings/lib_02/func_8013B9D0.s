nonmatching func_8013B9D0, 0x24

glabel func_8013B9D0
    /* 8E9C 8013B9D0 0600A010 */  beqz       $a1, .L8013B9EC
    /* 8EA0 8013B9D4 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 8EA4 8013B9D8 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8013B9DC:
    /* 8EA8 8013B9DC 000080AC */  sw         $zero, 0x0($a0)
    /* 8EAC 8013B9E0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8EB0 8013B9E4 FDFF4314 */  bne        $v0, $v1, .L8013B9DC
    /* 8EB4 8013B9E8 04008424 */   addiu     $a0, $a0, 0x4
  .L8013B9EC:
    /* 8EB8 8013B9EC 0800E003 */  jr         $ra
    /* 8EBC 8013B9F0 00000000 */   nop
endlabel func_8013B9D0
    /* 8EC0 8013B9F4 00000000 */  nop
    /* 8EC4 8013B9F8 00000000 */  nop
    /* 8EC8 8013B9FC 00000000 */  nop
