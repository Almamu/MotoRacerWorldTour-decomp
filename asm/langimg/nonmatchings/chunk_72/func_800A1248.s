nonmatching func_800A1248, 0x20

glabel func_800A1248
    /* 8FA58 800A1248 01000224 */  addiu      $v0, $zero, 0x1
    /* 8FA5C 800A124C 2C178424 */  addiu      $a0, $a0, 0x172C
  .L800A1250:
    /* 8FA60 800A1250 000080AC */  sw         $zero, 0x0($a0)
    /* 8FA64 800A1254 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8FA68 800A1258 FDFF4104 */  bgez       $v0, .L800A1250
    /* 8FA6C 800A125C FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 8FA70 800A1260 0800E003 */  jr         $ra
    /* 8FA74 800A1264 00000000 */   nop
endlabel func_800A1248
