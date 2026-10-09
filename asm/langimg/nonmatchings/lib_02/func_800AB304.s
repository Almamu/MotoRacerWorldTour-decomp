nonmatching func_800AB304, 0x24

glabel func_800AB304
    /* 99B14 800AB304 0600A010 */  beqz       $a1, .L800AB320
    /* 99B18 800AB308 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 99B1C 800AB30C FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800AB310:
    /* 99B20 800AB310 000080AC */  sw         $zero, 0x0($a0)
    /* 99B24 800AB314 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 99B28 800AB318 FDFF4314 */  bne        $v0, $v1, .L800AB310
    /* 99B2C 800AB31C 04008424 */   addiu     $a0, $a0, 0x4
  .L800AB320:
    /* 99B30 800AB320 0800E003 */  jr         $ra
    /* 99B34 800AB324 00000000 */   nop
endlabel func_800AB304
