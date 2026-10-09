nonmatching func_80090C2C, 0x148

glabel func_80090C2C
    /* 7F43C 80090C2C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 7F440 80090C30 0C000324 */  addiu      $v1, $zero, 0xC
    /* 7F444 80090C34 3000B4AF */  sw         $s4, 0x30($sp)
    /* 7F448 80090C38 21A0C000 */  addu       $s4, $a2, $zero
    /* 7F44C 80090C3C 4400BFAF */  sw         $ra, 0x44($sp)
    /* 7F450 80090C40 4000BEAF */  sw         $fp, 0x40($sp)
    /* 7F454 80090C44 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 7F458 80090C48 3800B6AF */  sw         $s6, 0x38($sp)
    /* 7F45C 80090C4C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 7F460 80090C50 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 7F464 80090C54 2800B2AF */  sw         $s2, 0x28($sp)
    /* 7F468 80090C58 2400B1AF */  sw         $s1, 0x24($sp)
    /* 7F46C 80090C5C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 7F470 80090C60 0400878C */  lw         $a3, 0x4($a0)
    /* 7F474 80090C64 3C00A48C */  lw         $a0, 0x3C($a1)
    /* 7F478 80090C68 1C00F384 */  lh         $s3, 0x1C($a3)
    /* 7F47C 80090C6C 1C008284 */  lh         $v0, 0x1C($a0)
    /* 7F480 80090C70 16009E90 */  lbu        $fp, 0x16($a0)
    /* 7F484 80090C74 23987300 */  subu       $s3, $v1, $s3
    /* 7F488 80090C78 1400E38C */  lw         $v1, 0x14($a3)
    /* 7F48C 80090C7C C0100200 */  sll        $v0, $v0, 3
    /* 7F490 80090C80 2900C013 */  beqz       $fp, .L80090D28
    /* 7F494 80090C84 21206200 */   addu      $a0, $v1, $v0
    /* 7F498 80090C88 FF7F033C */  lui        $v1, (0x7FFFFFFF >> 16)
    /* 7F49C 80090C8C FFFF6334 */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
    /* 7F4A0 80090C90 21A80000 */  addu       $s5, $zero, $zero
    /* 7F4A4 80090C94 0C009726 */  addiu      $s7, $s4, 0xC
    /* 7F4A8 80090C98 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 7F4AC 80090C9C 080083AE */  sw         $v1, 0x8($s4)
    /* 7F4B0 80090CA0 040083AE */  sw         $v1, 0x4($s4)
    /* 7F4B4 80090CA4 000083AE */  sw         $v1, 0x0($s4)
    /* 7F4B8 80090CA8 0800E2AE */  sw         $v0, 0x8($s7)
    /* 7F4BC 80090CAC 0400E2AE */  sw         $v0, 0x4($s7)
    /* 7F4C0 80090CB0 2400C013 */  beqz       $fp, .L80090D44
    /* 7F4C4 80090CB4 0C0082AE */   sw        $v0, 0xC($s4)
    /* 7F4C8 80090CB8 1000B627 */  addiu      $s6, $sp, 0x10
    /* 7F4CC 80090CBC 04009224 */  addiu      $s2, $a0, 0x4
    /* 7F4D0 80090CC0 02009124 */  addiu      $s1, $a0, 0x2
    /* 7F4D4 80090CC4 21808000 */  addu       $s0, $a0, $zero
    /* 7F4D8 80090CC8 21208002 */  addu       $a0, $s4, $zero
  .L80090CCC:
    /* 7F4DC 80090CCC 2128C002 */  addu       $a1, $s6, $zero
    /* 7F4E0 80090CD0 00000386 */  lh         $v1, 0x0($s0)
    /* 7F4E4 80090CD4 08001026 */  addiu      $s0, $s0, 0x8
    /* 7F4E8 80090CD8 0100B526 */  addiu      $s5, $s5, 0x1
    /* 7F4EC 80090CDC 04186302 */  sllv       $v1, $v1, $s3
    /* 7F4F0 80090CE0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 7F4F4 80090CE4 00002286 */  lh         $v0, 0x0($s1)
    /* 7F4F8 80090CE8 08003126 */  addiu      $s1, $s1, 0x8
    /* 7F4FC 80090CEC 04106202 */  sllv       $v0, $v0, $s3
    /* 7F500 80090CF0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 7F504 80090CF4 00004386 */  lh         $v1, 0x0($s2)
    /* 7F508 80090CF8 08005226 */  addiu      $s2, $s2, 0x8
    /* 7F50C 80090CFC 04186302 */  sllv       $v1, $v1, $s3
    /* 7F510 80090D00 7563020C */  jal        func_80098DD4
    /* 7F514 80090D04 1800A3AF */   sw        $v1, 0x18($sp)
    /* 7F518 80090D08 2120E002 */  addu       $a0, $s7, $zero
    /* 7F51C 80090D0C 8E63020C */  jal        func_80098E38
    /* 7F520 80090D10 2128C002 */   addu      $a1, $s6, $zero
    /* 7F524 80090D14 2A10BE02 */  slt        $v0, $s5, $fp
    /* 7F528 80090D18 ECFF4014 */  bnez       $v0, .L80090CCC
    /* 7F52C 80090D1C 21208002 */   addu      $a0, $s4, $zero
    /* 7F530 80090D20 51430208 */  j          .L80090D44
    /* 7F534 80090D24 00000000 */   nop
  .L80090D28:
    /* 7F538 80090D28 0C008226 */  addiu      $v0, $s4, 0xC
    /* 7F53C 80090D2C 000080AE */  sw         $zero, 0x0($s4)
    /* 7F540 80090D30 040080AE */  sw         $zero, 0x4($s4)
    /* 7F544 80090D34 080080AE */  sw         $zero, 0x8($s4)
    /* 7F548 80090D38 0C0080AE */  sw         $zero, 0xC($s4)
    /* 7F54C 80090D3C 040040AC */  sw         $zero, 0x4($v0)
    /* 7F550 80090D40 080040AC */  sw         $zero, 0x8($v0)
  .L80090D44:
    /* 7F554 80090D44 4400BF8F */  lw         $ra, 0x44($sp)
    /* 7F558 80090D48 4000BE8F */  lw         $fp, 0x40($sp)
    /* 7F55C 80090D4C 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 7F560 80090D50 3800B68F */  lw         $s6, 0x38($sp)
    /* 7F564 80090D54 3400B58F */  lw         $s5, 0x34($sp)
    /* 7F568 80090D58 3000B48F */  lw         $s4, 0x30($sp)
    /* 7F56C 80090D5C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 7F570 80090D60 2800B28F */  lw         $s2, 0x28($sp)
    /* 7F574 80090D64 2400B18F */  lw         $s1, 0x24($sp)
    /* 7F578 80090D68 2000B08F */  lw         $s0, 0x20($sp)
    /* 7F57C 80090D6C 0800E003 */  jr         $ra
    /* 7F580 80090D70 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_80090C2C
