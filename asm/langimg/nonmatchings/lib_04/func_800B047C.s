nonmatching func_800B047C, 0xC0

glabel func_800B047C
    /* 9EC8C 800B047C 0C80023C */  lui        $v0, %hi(D_800C3C9C)
    /* 9EC90 800B0480 9C3C428C */  lw         $v0, %lo(D_800C3C9C)($v0)
    /* 9EC94 800B0484 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9EC98 800B0488 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9EC9C 800B048C 09F84000 */  jalr       $v0
    /* 9ECA0 800B0490 00000000 */   nop
    /* 9ECA4 800B0494 21204000 */  addu       $a0, $v0, $zero
    /* 9ECA8 800B0498 3400828C */  lw         $v0, 0x34($a0)
    /* 9ECAC 800B049C FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
    /* 9ECB0 800B04A0 24104300 */  and        $v0, $v0, $v1
    /* 9ECB4 800B04A4 0F004014 */  bnez       $v0, .L800B04E4
    /* 9ECB8 800B04A8 00000000 */   nop
    /* 9ECBC 800B04AC 1000828C */  lw         $v0, 0x10($a0)
    /* 9ECC0 800B04B0 00000000 */  nop
    /* 9ECC4 800B04B4 05008210 */  beq        $a0, $v0, .L800B04CC
    /* 9ECC8 800B04B8 00000000 */   nop
    /* 9ECCC 800B04BC 38008290 */  lbu        $v0, 0x38($a0)
    /* 9ECD0 800B04C0 00000000 */  nop
    /* 9ECD4 800B04C4 07004014 */  bnez       $v0, .L800B04E4
    /* 9ECD8 800B04C8 00000000 */   nop
  .L800B04CC:
    /* 9ECDC 800B04CC 3000828C */  lw         $v0, 0x30($a0)
    /* 9ECE0 800B04D0 00000000 */  nop
    /* 9ECE4 800B04D4 00004290 */  lbu        $v0, 0x0($v0)
    /* 9ECE8 800B04D8 00000000 */  nop
    /* 9ECEC 800B04DC 12004010 */  beqz       $v0, .L800B0528
    /* 9ECF0 800B04E0 00000000 */   nop
  .L800B04E4:
    /* 9ECF4 800B04E4 49008390 */  lbu        $v1, 0x49($a0)
    /* 9ECF8 800B04E8 03000224 */  addiu      $v0, $zero, 0x3
    /* 9ECFC 800B04EC 0C006210 */  beq        $v1, $v0, .L800B0520
    /* 9ED00 800B04F0 04006228 */   slti      $v0, $v1, 0x4
    /* 9ED04 800B04F4 05004010 */  beqz       $v0, .L800B050C
    /* 9ED08 800B04F8 02000224 */   addiu     $v0, $zero, 0x2
    /* 9ED0C 800B04FC 0B006210 */  beq        $v1, $v0, .L800B052C
    /* 9ED10 800B0500 01000224 */   addiu     $v0, $zero, 0x1
    /* 9ED14 800B0504 4AC10208 */  j          .L800B0528
    /* 9ED18 800B0508 00000000 */   nop
  .L800B050C:
    /* 9ED1C 800B050C 06000224 */  addiu      $v0, $zero, 0x6
    /* 9ED20 800B0510 06006210 */  beq        $v1, $v0, .L800B052C
    /* 9ED24 800B0514 04000224 */   addiu     $v0, $zero, 0x4
    /* 9ED28 800B0518 4AC10208 */  j          .L800B0528
    /* 9ED2C 800B051C 00000000 */   nop
  .L800B0520:
    /* 9ED30 800B0520 4BC10208 */  j          .L800B052C
    /* 9ED34 800B0524 01000224 */   addiu     $v0, $zero, 0x1
  .L800B0528:
    /* 9ED38 800B0528 49008290 */  lbu        $v0, 0x49($a0)
  .L800B052C:
    /* 9ED3C 800B052C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9ED40 800B0530 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9ED44 800B0534 0800E003 */  jr         $ra
    /* 9ED48 800B0538 00000000 */   nop
endlabel func_800B047C
