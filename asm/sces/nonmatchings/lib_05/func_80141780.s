nonmatching func_80141780, 0x98

glabel func_80141780
    /* EC4C 80141780 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* EC50 80141784 1000B0AF */  sw         $s0, 0x10($sp)
    /* EC54 80141788 21808000 */  addu       $s0, $a0, $zero
    /* EC58 8014178C 1400B1AF */  sw         $s1, 0x14($sp)
    /* EC5C 80141790 2188A000 */  addu       $s1, $a1, $zero
    /* EC60 80141794 1800B2AF */  sw         $s2, 0x18($sp)
    /* EC64 80141798 2190C000 */  addu       $s2, $a2, $zero
    /* EC68 8014179C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* EC6C 801417A0 1C80023C */  lui        $v0, %hi(D_801BFE78)
    /* EC70 801417A4 78FE428C */  lw         $v0, %lo(D_801BFE78)($v0)
    /* EC74 801417A8 2000BFAF */  sw         $ra, 0x20($sp)
    /* EC78 801417AC 09F84000 */  jalr       $v0
    /* EC7C 801417B0 21982002 */   addu      $s3, $s1, $zero
    /* EC80 801417B4 11004014 */  bnez       $v0, .L801417FC
    /* EC84 801417B8 21100000 */   addu      $v0, $zero, $zero
    /* EC88 801417BC 01000224 */  addiu      $v0, $zero, 0x1
    /* EC8C 801417C0 E4000492 */  lbu        $a0, 0xE4($s0)
    /* EC90 801417C4 01000324 */  addiu      $v1, $zero, 0x1
    /* EC94 801417C8 460003A2 */  sb         $v1, 0x46($s0)
    /* EC98 801417CC 1480033C */  lui        $v1, %hi(func_80141818)
    /* EC9C 801417D0 18186324 */  addiu      $v1, $v1, %lo(func_80141818)
    /* ECA0 801417D4 140003AE */  sw         $v1, 0x14($s0)
    /* ECA4 801417D8 1480033C */  lui        $v1, %hi(func_8014186C)
    /* ECA8 801417DC 6C186324 */  addiu      $v1, $v1, %lo(func_8014186C)
    /* ECAC 801417E0 180003AE */  sw         $v1, 0x18($s0)
    /* ECB0 801417E4 FF006332 */  andi       $v1, $s3, 0xFF
    /* ECB4 801417E8 510011A2 */  sb         $s1, 0x51($s0)
    /* ECB8 801417EC 520012A2 */  sb         $s2, 0x52($s0)
    /* ECBC 801417F0 26186400 */  xor        $v1, $v1, $a0
    /* ECC0 801417F4 0100632C */  sltiu      $v1, $v1, 0x1
    /* ECC4 801417F8 530003A2 */  sb         $v1, 0x53($s0)
  .L801417FC:
    /* ECC8 801417FC 2000BF8F */  lw         $ra, 0x20($sp)
    /* ECCC 80141800 1C00B38F */  lw         $s3, 0x1C($sp)
    /* ECD0 80141804 1800B28F */  lw         $s2, 0x18($sp)
    /* ECD4 80141808 1400B18F */  lw         $s1, 0x14($sp)
    /* ECD8 8014180C 1000B08F */  lw         $s0, 0x10($sp)
    /* ECDC 80141810 0800E003 */  jr         $ra
    /* ECE0 80141814 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80141780
