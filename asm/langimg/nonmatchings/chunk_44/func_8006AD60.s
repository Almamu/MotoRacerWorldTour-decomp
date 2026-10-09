nonmatching func_8006AD60, 0xF4

glabel func_8006AD60
    /* 59570 8006AD60 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 59574 8006AD64 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 59578 8006AD68 21988000 */  addu       $s3, $a0, $zero
    /* 5957C 8006AD6C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 59580 8006AD70 2400B5AF */  sw         $s5, 0x24($sp)
    /* 59584 8006AD74 2000B4AF */  sw         $s4, 0x20($sp)
    /* 59588 8006AD78 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5958C 8006AD7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 59590 8006AD80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 59594 8006AD84 0000648E */  lw         $a0, 0x0($s3)
    /* 59598 8006AD88 00000000 */  nop
    /* 5959C 8006AD8C 28008010 */  beqz       $a0, .L8006AE30
    /* 595A0 8006AD90 21A8A000 */   addu      $s5, $a1, $zero
    /* 595A4 8006AD94 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 595A8 8006AD98 0400638E */  lw         $v1, 0x4($s3)
    /* 595AC 8006AD9C 0D80123C */  lui        $s2, %hi(D_800D60EC)
    /* 595B0 8006ADA0 EC60528E */  lw         $s2, %lo(D_800D60EC)($s2)
    /* 595B4 8006ADA4 FFFF7024 */  addiu      $s0, $v1, -0x1
    /* 595B8 8006ADA8 80101000 */  sll        $v0, $s0, 2
    /* 595BC 8006ADAC 21888200 */  addu       $s1, $a0, $v0
  .L8006ADB0:
    /* 595C0 8006ADB0 0000268E */  lw         $a2, 0x0($s1)
    /* 595C4 8006ADB4 00000000 */  nop
    /* 595C8 8006ADB8 1900C010 */  beqz       $a2, .L8006AE20
    /* 595CC 8006ADBC 00000000 */   nop
    /* 595D0 8006ADC0 0400C38C */  lw         $v1, 0x4($a2)
    /* 595D4 8006ADC4 0B00A016 */  bnez       $s5, .L8006ADF4
    /* 595D8 8006ADC8 21206002 */   addu      $a0, $s3, $zero
    /* 595DC 8006ADCC 0D006010 */  beqz       $v1, .L8006AE04
    /* 595E0 8006ADD0 00000000 */   nop
    /* 595E4 8006ADD4 07007410 */  beq        $v1, $s4, .L8006ADF4
    /* 595E8 8006ADD8 00000000 */   nop
    /* 595EC 8006ADDC 0800C28C */  lw         $v0, 0x8($a2)
    /* 595F0 8006ADE0 00000000 */  nop
    /* 595F4 8006ADE4 21104300 */  addu       $v0, $v0, $v1
    /* 595F8 8006ADE8 2A105200 */  slt        $v0, $v0, $s2
    /* 595FC 8006ADEC 05004010 */  beqz       $v0, .L8006AE04
    /* 59600 8006ADF0 00000000 */   nop
  .L8006ADF4:
    /* 59604 8006ADF4 CFAA010C */  jal        func_8006AB3C
    /* 59608 8006ADF8 21280002 */   addu      $a1, $s0, $zero
    /* 5960C 8006ADFC 89AB0108 */  j          .L8006AE24
    /* 59610 8006AE00 FCFF3126 */   addiu     $s1, $s1, -0x4
  .L8006AE04:
    /* 59614 8006AE04 0C00C28C */  lw         $v0, 0xC($a2)
    /* 59618 8006AE08 21284002 */  addu       $a1, $s2, $zero
    /* 5961C 8006AE0C 10004484 */  lh         $a0, 0x10($v0)
    /* 59620 8006AE10 1400438C */  lw         $v1, 0x14($v0)
    /* 59624 8006AE14 00000000 */  nop
    /* 59628 8006AE18 09F86000 */  jalr       $v1
    /* 5962C 8006AE1C 2120C400 */   addu      $a0, $a2, $a0
  .L8006AE20:
    /* 59630 8006AE20 FCFF3126 */  addiu      $s1, $s1, -0x4
  .L8006AE24:
    /* 59634 8006AE24 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 59638 8006AE28 E1FF0106 */  bgez       $s0, .L8006ADB0
    /* 5963C 8006AE2C 00000000 */   nop
  .L8006AE30:
    /* 59640 8006AE30 2800BF8F */  lw         $ra, 0x28($sp)
    /* 59644 8006AE34 2400B58F */  lw         $s5, 0x24($sp)
    /* 59648 8006AE38 2000B48F */  lw         $s4, 0x20($sp)
    /* 5964C 8006AE3C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 59650 8006AE40 1800B28F */  lw         $s2, 0x18($sp)
    /* 59654 8006AE44 1400B18F */  lw         $s1, 0x14($sp)
    /* 59658 8006AE48 1000B08F */  lw         $s0, 0x10($sp)
    /* 5965C 8006AE4C 0800E003 */  jr         $ra
    /* 59660 8006AE50 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8006AD60
