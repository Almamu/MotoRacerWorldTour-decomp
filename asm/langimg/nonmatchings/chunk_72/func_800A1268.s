nonmatching func_800A1268, 0x1C

glabel func_800A1268
    /* 8FA78 800A1268 04000224 */  addiu      $v0, $zero, 0x4
    /* 8FA7C 800A126C FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800A1270:
    /* 8FA80 800A1270 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8FA84 800A1274 FEFF4104 */  bgez       $v0, .L800A1270
    /* 8FA88 800A1278 EC1683AC */   sw        $v1, 0x16EC($a0)
    /* 8FA8C 800A127C 0800E003 */  jr         $ra
    /* 8FA90 800A1280 00000000 */   nop
endlabel func_800A1268
