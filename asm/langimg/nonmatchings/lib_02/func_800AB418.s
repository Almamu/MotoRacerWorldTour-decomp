nonmatching func_800AB418, 0x24

glabel func_800AB418
    /* 99C28 800AB418 0600A010 */  beqz       $a1, .L800AB434
    /* 99C2C 800AB41C FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 99C30 800AB420 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800AB424:
    /* 99C34 800AB424 000080AC */  sw         $zero, 0x0($a0)
    /* 99C38 800AB428 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 99C3C 800AB42C FDFF4314 */  bne        $v0, $v1, .L800AB424
    /* 99C40 800AB430 04008424 */   addiu     $a0, $a0, 0x4
  .L800AB434:
    /* 99C44 800AB434 0800E003 */  jr         $ra
    /* 99C48 800AB438 00000000 */   nop
endlabel func_800AB418
    /* 99C4C 800AB43C 00000000 */  nop
    /* 99C50 800AB440 00000000 */  nop
    /* 99C54 800AB444 00000000 */  nop
