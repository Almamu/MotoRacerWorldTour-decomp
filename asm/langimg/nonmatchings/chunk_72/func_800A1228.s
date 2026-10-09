nonmatching func_800A1228, 0x20

glabel func_800A1228
    /* 8FA38 800A1228 04000224 */  addiu      $v0, $zero, 0x4
    /* 8FA3C 800A122C 24178424 */  addiu      $a0, $a0, 0x1724
  .L800A1230:
    /* 8FA40 800A1230 000080AC */  sw         $zero, 0x0($a0)
    /* 8FA44 800A1234 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8FA48 800A1238 FDFF4104 */  bgez       $v0, .L800A1230
    /* 8FA4C 800A123C FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 8FA50 800A1240 0800E003 */  jr         $ra
    /* 8FA54 800A1244 00000000 */   nop
endlabel func_800A1228
