nonmatching func_800A0C58, 0x64

glabel func_800A0C58
    /* 8F468 800A0C58 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8F46C 800A0C5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8F470 800A0C60 21908000 */  addu       $s2, $a0, $zero
    /* 8F474 800A0C64 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F478 800A0C68 3C005126 */  addiu      $s1, $s2, 0x3C
    /* 8F47C 800A0C6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F480 800A0C70 02001024 */  addiu      $s0, $zero, 0x2
    /* 8F484 800A0C74 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8F488 800A0C78 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 8F48C 800A0C7C 2000BFAF */  sw         $ra, 0x20($sp)
  .L800A0C80:
    /* 8F490 800A0C80 0382020C */  jal        func_800A080C
    /* 8F494 800A0C84 21202002 */   addu      $a0, $s1, $zero
    /* 8F498 800A0C88 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 8F49C 800A0C8C FCFF1316 */  bne        $s0, $s3, .L800A0C80
    /* 8F4A0 800A0C90 14003126 */   addiu     $s1, $s1, 0x14
    /* 8F4A4 800A0C94 BA82020C */  jal        func_800A0AE8
    /* 8F4A8 800A0C98 21204002 */   addu      $a0, $s2, $zero
    /* 8F4AC 800A0C9C 21104002 */  addu       $v0, $s2, $zero
    /* 8F4B0 800A0CA0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8F4B4 800A0CA4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8F4B8 800A0CA8 1800B28F */  lw         $s2, 0x18($sp)
    /* 8F4BC 800A0CAC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F4C0 800A0CB0 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F4C4 800A0CB4 0800E003 */  jr         $ra
    /* 8F4C8 800A0CB8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A0C58
