nonmatching func_8006FDAC, 0xB0

glabel func_8006FDAC
    /* 5E5BC 8006FDAC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5E5C0 8006FDB0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5E5C4 8006FDB4 21988000 */  addu       $s3, $a0, $zero
    /* 5E5C8 8006FDB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5E5CC 8006FDBC 08007226 */  addiu      $s2, $s3, 0x8
    /* 5E5D0 8006FDC0 21204002 */  addu       $a0, $s2, $zero
    /* 5E5D4 8006FDC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E5D8 8006FDC8 2188A000 */  addu       $s1, $a1, $zero
    /* 5E5DC 8006FDCC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5E5E0 8006FDD0 215A020C */  jal        func_80096884
    /* 5E5E4 8006FDD4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5E5E8 8006FDD8 18004010 */  beqz       $v0, .L8006FE3C
    /* 5E5EC 8006FDDC 08003026 */   addiu     $s0, $s1, 0x8
    /* 5E5F0 8006FDE0 215A020C */  jal        func_80096884
    /* 5E5F4 8006FDE4 21200002 */   addu      $a0, $s0, $zero
    /* 5E5F8 8006FDE8 15004010 */  beqz       $v0, .L8006FE40
    /* 5E5FC 8006FDEC 21106002 */   addu      $v0, $s3, $zero
    /* 5E600 8006FDF0 21204002 */  addu       $a0, $s2, $zero
    /* 5E604 8006FDF4 055B020C */  jal        func_80096C14
    /* 5E608 8006FDF8 21280002 */   addu      $a1, $s0, $zero
    /* 5E60C 8006FDFC 21300000 */  addu       $a2, $zero, $zero
    /* 5E610 8006FE00 0000228E */  lw         $v0, 0x0($s1)
    /* 5E614 8006FE04 F4006426 */  addiu      $a0, $s3, 0xF4
    /* 5E618 8006FE08 000062AE */  sw         $v0, 0x0($s3)
    /* 5E61C 8006FE0C F000238E */  lw         $v1, 0xF0($s1)
    /* 5E620 8006FE10 F4002526 */  addiu      $a1, $s1, 0xF4
    /* 5E624 8006FE14 F00063AE */  sw         $v1, 0xF0($s3)
  .L8006FE18:
    /* 5E628 8006FE18 0000A38C */  lw         $v1, 0x0($a1)
    /* 5E62C 8006FE1C 0400A524 */  addiu      $a1, $a1, 0x4
    /* 5E630 8006FE20 0100C624 */  addiu      $a2, $a2, 0x1
    /* 5E634 8006FE24 0800C228 */  slti       $v0, $a2, 0x8
    /* 5E638 8006FE28 000083AC */  sw         $v1, 0x0($a0)
    /* 5E63C 8006FE2C FAFF4014 */  bnez       $v0, .L8006FE18
    /* 5E640 8006FE30 04008424 */   addiu     $a0, $a0, 0x4
    /* 5E644 8006FE34 D1BF010C */  jal        func_8006FF44
    /* 5E648 8006FE38 21206002 */   addu      $a0, $s3, $zero
  .L8006FE3C:
    /* 5E64C 8006FE3C 21106002 */  addu       $v0, $s3, $zero
  .L8006FE40:
    /* 5E650 8006FE40 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5E654 8006FE44 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5E658 8006FE48 1800B28F */  lw         $s2, 0x18($sp)
    /* 5E65C 8006FE4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E660 8006FE50 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E664 8006FE54 0800E003 */  jr         $ra
    /* 5E668 8006FE58 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006FDAC
