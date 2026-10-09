nonmatching func_800B1AFC, 0x98

glabel func_800B1AFC
    /* A030C 800B1AFC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A0310 800B1B00 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0314 800B1B04 21808000 */  addu       $s0, $a0, $zero
    /* A0318 800B1B08 1400B1AF */  sw         $s1, 0x14($sp)
    /* A031C 800B1B0C 2188A000 */  addu       $s1, $a1, $zero
    /* A0320 800B1B10 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0324 800B1B14 2190C000 */  addu       $s2, $a2, $zero
    /* A0328 800B1B18 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A032C 800B1B1C 0C80023C */  lui        $v0, %hi(D_800C3CA4)
    /* A0330 800B1B20 A43C428C */  lw         $v0, %lo(D_800C3CA4)($v0)
    /* A0334 800B1B24 2000BFAF */  sw         $ra, 0x20($sp)
    /* A0338 800B1B28 09F84000 */  jalr       $v0
    /* A033C 800B1B2C 21982002 */   addu      $s3, $s1, $zero
    /* A0340 800B1B30 11004014 */  bnez       $v0, .L800B1B78
    /* A0344 800B1B34 21100000 */   addu      $v0, $zero, $zero
    /* A0348 800B1B38 01000224 */  addiu      $v0, $zero, 0x1
    /* A034C 800B1B3C E4000492 */  lbu        $a0, 0xE4($s0)
    /* A0350 800B1B40 01000324 */  addiu      $v1, $zero, 0x1
    /* A0354 800B1B44 460003A2 */  sb         $v1, 0x46($s0)
    /* A0358 800B1B48 0B80033C */  lui        $v1, %hi(func_800B1B94)
    /* A035C 800B1B4C 941B6324 */  addiu      $v1, $v1, %lo(func_800B1B94)
    /* A0360 800B1B50 140003AE */  sw         $v1, 0x14($s0)
    /* A0364 800B1B54 0B80033C */  lui        $v1, %hi(func_800B1BE8)
    /* A0368 800B1B58 E81B6324 */  addiu      $v1, $v1, %lo(func_800B1BE8)
    /* A036C 800B1B5C 180003AE */  sw         $v1, 0x18($s0)
    /* A0370 800B1B60 FF006332 */  andi       $v1, $s3, 0xFF
    /* A0374 800B1B64 510011A2 */  sb         $s1, 0x51($s0)
    /* A0378 800B1B68 520012A2 */  sb         $s2, 0x52($s0)
    /* A037C 800B1B6C 26186400 */  xor        $v1, $v1, $a0
    /* A0380 800B1B70 0100632C */  sltiu      $v1, $v1, 0x1
    /* A0384 800B1B74 530003A2 */  sb         $v1, 0x53($s0)
  .L800B1B78:
    /* A0388 800B1B78 2000BF8F */  lw         $ra, 0x20($sp)
    /* A038C 800B1B7C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A0390 800B1B80 1800B28F */  lw         $s2, 0x18($sp)
    /* A0394 800B1B84 1400B18F */  lw         $s1, 0x14($sp)
    /* A0398 800B1B88 1000B08F */  lw         $s0, 0x10($sp)
    /* A039C 800B1B8C 0800E003 */  jr         $ra
    /* A03A0 800B1B90 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800B1AFC
