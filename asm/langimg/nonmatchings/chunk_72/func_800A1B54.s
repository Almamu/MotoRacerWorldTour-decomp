nonmatching func_800A1B54, 0x7C

glabel func_800A1B54
    /* 90364 800A1B54 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 90368 800A1B58 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9036C 800A1B5C 21900000 */  addu       $s2, $zero, $zero
    /* 90370 800A1B60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 90374 800A1B64 4058908F */  lw         $s0, %gp_rel(D_800C9F30)($gp)
    /* 90378 800A1B68 0D80023C */  lui        $v0, %hi(D_800CC030)
    /* 9037C 800A1B6C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 90380 800A1B70 30C05124 */  addiu      $s1, $v0, %lo(D_800CC030)
    /* 90384 800A1B74 1C00BFAF */  sw         $ra, 0x1C($sp)
  .L800A1B78:
    /* 90388 800A1B78 0000048E */  lw         $a0, 0x0($s0)
    /* 9038C 800A1B7C 9058020C */  jal        func_80096240
    /* 90390 800A1B80 00000000 */   nop
    /* 90394 800A1B84 06004010 */  beqz       $v0, .L800A1BA0
    /* 90398 800A1B88 21180000 */   addu      $v1, $zero, $zero
    /* 9039C 800A1B8C 0D80033C */  lui        $v1, %hi(D_800CBE84)
    /* 903A0 800A1B90 84BE638C */  lw         $v1, %lo(D_800CBE84)($v1)
    /* 903A4 800A1B94 0000428C */  lw         $v0, 0x0($v0)
    /* 903A8 800A1B98 00000000 */  nop
    /* 903AC 800A1B9C 21186200 */  addu       $v1, $v1, $v0
  .L800A1BA0:
    /* 903B0 800A1BA0 000023AE */  sw         $v1, 0x0($s1)
    /* 903B4 800A1BA4 04003126 */  addiu      $s1, $s1, 0x4
    /* 903B8 800A1BA8 01005226 */  addiu      $s2, $s2, 0x1
    /* 903BC 800A1BAC A300422A */  slti       $v0, $s2, 0xA3
    /* 903C0 800A1BB0 F1FF4014 */  bnez       $v0, .L800A1B78
    /* 903C4 800A1BB4 04001026 */   addiu     $s0, $s0, 0x4
    /* 903C8 800A1BB8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 903CC 800A1BBC 1800B28F */  lw         $s2, 0x18($sp)
    /* 903D0 800A1BC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 903D4 800A1BC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 903D8 800A1BC8 0800E003 */  jr         $ra
    /* 903DC 800A1BCC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A1B54
