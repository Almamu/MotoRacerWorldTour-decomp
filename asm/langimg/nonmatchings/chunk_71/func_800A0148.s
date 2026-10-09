nonmatching func_800A0148, 0x74

glabel func_800A0148
    /* 8E958 800A0148 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E95C 800A014C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8E960 800A0150 21908000 */  addu       $s2, $a0, $zero
    /* 8E964 800A0154 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E968 800A0158 04005126 */  addiu      $s1, $s2, 0x4
    /* 8E96C 800A015C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E970 800A0160 04001024 */  addiu      $s0, $zero, 0x4
    /* 8E974 800A0164 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8E978 800A0168 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 8E97C 800A016C 2000BFAF */  sw         $ra, 0x20($sp)
  .L800A0170:
    /* 8E980 800A0170 3C80020C */  jal        func_800A00F0
    /* 8E984 800A0174 21202002 */   addu      $a0, $s1, $zero
    /* 8E988 800A0178 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 8E98C 800A017C FCFF1316 */  bne        $s0, $s3, .L800A0170
    /* 8E990 800A0180 0C003126 */   addiu     $s1, $s1, 0xC
    /* 8E994 800A0184 3C80020C */  jal        func_800A00F0
    /* 8E998 800A0188 40004426 */   addiu     $a0, $s2, 0x40
    /* 8E99C 800A018C 01000324 */  addiu      $v1, $zero, 0x1
    /* 8E9A0 800A0190 21204002 */  addu       $a0, $s2, $zero
    /* 8E9A4 800A0194 8780020C */  jal        func_800A021C
    /* 8E9A8 800A0198 000043AE */   sw        $v1, 0x0($s2)
    /* 8E9AC 800A019C 21104002 */  addu       $v0, $s2, $zero
    /* 8E9B0 800A01A0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E9B4 800A01A4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8E9B8 800A01A8 1800B28F */  lw         $s2, 0x18($sp)
    /* 8E9BC 800A01AC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E9C0 800A01B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E9C4 800A01B4 0800E003 */  jr         $ra
    /* 8E9C8 800A01B8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A0148
