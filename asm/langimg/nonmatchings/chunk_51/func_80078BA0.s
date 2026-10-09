nonmatching func_80078BA0, 0x88

glabel func_80078BA0
    /* 673B0 80078BA0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 673B4 80078BA4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 673B8 80078BA8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 673BC 80078BAC 21808000 */  addu       $s0, $a0, $zero
    /* 673C0 80078BB0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 673C4 80078BB4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 673C8 80078BB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 673CC 80078BBC 2C00028E */  lw         $v0, 0x2C($s0)
    /* 673D0 80078BC0 2190A000 */  addu       $s2, $a1, $zero
    /* 673D4 80078BC4 2A105200 */  slt        $v0, $v0, $s2
    /* 673D8 80078BC8 0F004010 */  beqz       $v0, .L80078C08
    /* 673DC 80078BCC 21980000 */   addu      $s3, $zero, $zero
    /* 673E0 80078BD0 D3D4020C */  jal        func_800B534C
    /* 673E4 80078BD4 21204002 */   addu      $a0, $s2, $zero
    /* 673E8 80078BD8 21884000 */  addu       $s1, $v0, $zero
    /* 673EC 80078BDC 0B002012 */  beqz       $s1, .L80078C0C
    /* 673F0 80078BE0 21106002 */   addu      $v0, $s3, $zero
    /* 673F4 80078BE4 2800048E */  lw         $a0, 0x28($s0)
    /* 673F8 80078BE8 00000000 */  nop
    /* 673FC 80078BEC 04008010 */  beqz       $a0, .L80078C00
    /* 67400 80078BF0 01001324 */   addiu     $s3, $zero, 0x1
    /* 67404 80078BF4 59D5020C */  jal        func_800B5564
    /* 67408 80078BF8 00000000 */   nop
    /* 6740C 80078BFC 280000AE */  sw         $zero, 0x28($s0)
  .L80078C00:
    /* 67410 80078C00 280011AE */  sw         $s1, 0x28($s0)
    /* 67414 80078C04 240012AE */  sw         $s2, 0x24($s0)
  .L80078C08:
    /* 67418 80078C08 21106002 */  addu       $v0, $s3, $zero
  .L80078C0C:
    /* 6741C 80078C0C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 67420 80078C10 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 67424 80078C14 1800B28F */  lw         $s2, 0x18($sp)
    /* 67428 80078C18 1400B18F */  lw         $s1, 0x14($sp)
    /* 6742C 80078C1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 67430 80078C20 0800E003 */  jr         $ra
    /* 67434 80078C24 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80078BA0
