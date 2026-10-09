nonmatching func_800AB6C0, 0x24

glabel func_800AB6C0
    /* 99ED0 800AB6C0 0600A010 */  beqz       $a1, .L800AB6DC
    /* 99ED4 800AB6C4 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 99ED8 800AB6C8 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800AB6CC:
    /* 99EDC 800AB6CC 000080AC */  sw         $zero, 0x0($a0)
    /* 99EE0 800AB6D0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 99EE4 800AB6D4 FDFF4314 */  bne        $v0, $v1, .L800AB6CC
    /* 99EE8 800AB6D8 04008424 */   addiu     $a0, $a0, 0x4
  .L800AB6DC:
    /* 99EEC 800AB6DC 0800E003 */  jr         $ra
    /* 99EF0 800AB6E0 00000000 */   nop
endlabel func_800AB6C0
    /* 99EF4 800AB6E4 00000000 */  nop
