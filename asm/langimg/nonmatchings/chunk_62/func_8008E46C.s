nonmatching func_8008E46C, 0x1EC

glabel func_8008E46C
    /* 7CC7C 8008E46C A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 7CC80 8008E470 5000BEAF */  sw         $fp, 0x50($sp)
    /* 7CC84 8008E474 21F0E000 */  addu       $fp, $a3, $zero
    /* 7CC88 8008E478 21188000 */  addu       $v1, $a0, $zero
    /* 7CC8C 8008E47C 2110A000 */  addu       $v0, $a1, $zero
    /* 7CC90 8008E480 5400BFAF */  sw         $ra, 0x54($sp)
    /* 7CC94 8008E484 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 7CC98 8008E488 4800B6AF */  sw         $s6, 0x48($sp)
    /* 7CC9C 8008E48C 4400B5AF */  sw         $s5, 0x44($sp)
    /* 7CCA0 8008E490 4000B4AF */  sw         $s4, 0x40($sp)
    /* 7CCA4 8008E494 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 7CCA8 8008E498 3800B2AF */  sw         $s2, 0x38($sp)
    /* 7CCAC 8008E49C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 7CCB0 8008E4A0 6100C010 */  beqz       $a2, .L8008E628
    /* 7CCB4 8008E4A4 3000B0AF */   sw        $s0, 0x30($sp)
    /* 7CCB8 8008E4A8 F0FF053C */  lui        $a1, (0xFFF003FF >> 16)
    /* 7CCBC 8008E4AC FF03A534 */  ori        $a1, $a1, (0xFFF003FF & 0xFFFF)
    /* 7CCC0 8008E4B0 0FC0043C */  lui        $a0, (0xC00FFFFF >> 16)
    /* 7CCC4 8008E4B4 FFFF8434 */  ori        $a0, $a0, (0xC00FFFFF & 0xFFFF)
    /* 7CCC8 8008E4B8 21900000 */  addu       $s2, $zero, $zero
    /* 7CCCC 8008E4BC 0000C68F */  lw         $a2, 0x0($fp)
    /* 7CCD0 8008E4C0 0400DE27 */  addiu      $fp, $fp, 0x4
    /* 7CCD4 8008E4C4 0400568C */  lw         $s6, 0x4($v0)
    /* 7CCD8 8008E4C8 1000558C */  lw         $s5, 0x10($v0)
    /* 7CCDC 8008E4CC 14004A8C */  lw         $t2, 0x14($v0)
    /* 7CCE0 8008E4D0 0800548C */  lw         $s4, 0x8($v0)
    /* 7CCE4 8008E4D4 0C00538C */  lw         $s3, 0xC($v0)
    /* 7CCE8 8008E4D8 03004B80 */  lb         $t3, 0x3($v0)
    /* 7CCEC 8008E4DC 1000A227 */  addiu      $v0, $sp, 0x10
    /* 7CCF0 8008E4E0 0800778C */  lw         $s7, 0x8($v1)
    /* 7CCF4 8008E4E4 00006980 */  lb         $t1, 0x0($v1)
    /* 7CCF8 8008E4E8 00FC0324 */  addiu      $v1, $zero, -0x400
    /* 7CCFC 8008E4EC 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 7CD00 8008E4F0 020040A4 */  sh         $zero, 0x2($v0)
    /* 7CD04 8008E4F4 040040A4 */  sh         $zero, 0x4($v0)
    /* 7CD08 8008E4F8 1800A28F */  lw         $v0, 0x18($sp)
    /* 7CD0C 8008E4FC 1800E826 */  addiu      $t0, $s7, 0x18
    /* 7CD10 8008E500 1600F126 */  addiu      $s1, $s7, 0x16
    /* 7CD14 8008E504 24104300 */  and        $v0, $v0, $v1
    /* 7CD18 8008E508 24104500 */  and        $v0, $v0, $a1
    /* 7CD1C 8008E50C 24104400 */  and        $v0, $v0, $a0
    /* 7CD20 8008E510 1800A2AF */  sw         $v0, 0x18($sp)
  .L8008E514:
    /* 7CD24 8008E514 03006011 */  beqz       $t3, .L8008E524
    /* 7CD28 8008E518 2180C002 */   addu      $s0, $s6, $zero
    /* 7CD2C 8008E51C 52390208 */  j          .L8008E548
    /* 7CD30 8008E520 04001626 */   addiu     $s6, $s0, 0x4
  .L8008E524:
    /* 7CD34 8008E524 08008012 */  beqz       $s4, .L8008E548
    /* 7CD38 8008E528 1800B027 */   addiu     $s0, $sp, 0x18
    /* 7CD3C 8008E52C 00008282 */  lb         $v0, 0x0($s4)
    /* 7CD40 8008E530 00000000 */  nop
    /* 7CD44 8008E534 04005214 */  bne        $v0, $s2, .L8008E548
    /* 7CD48 8008E538 00000000 */   nop
    /* 7CD4C 8008E53C 2180C002 */  addu       $s0, $s6, $zero
    /* 7CD50 8008E540 04001626 */  addiu      $s6, $s0, 0x4
    /* 7CD54 8008E544 01009426 */  addiu      $s4, $s4, 0x1
  .L8008E548:
    /* 7CD58 8008E548 03006011 */  beqz       $t3, .L8008E558
    /* 7CD5C 8008E54C 2118A002 */   addu      $v1, $s5, $zero
    /* 7CD60 8008E550 5F390208 */  j          .L8008E57C
    /* 7CD64 8008E554 08007524 */   addiu     $s5, $v1, 0x8
  .L8008E558:
    /* 7CD68 8008E558 08006012 */  beqz       $s3, .L8008E57C
    /* 7CD6C 8008E55C 1000A327 */   addiu     $v1, $sp, 0x10
    /* 7CD70 8008E560 00006282 */  lb         $v0, 0x0($s3)
    /* 7CD74 8008E564 00000000 */  nop
    /* 7CD78 8008E568 04005214 */  bne        $v0, $s2, .L8008E57C
    /* 7CD7C 8008E56C 00000000 */   nop
    /* 7CD80 8008E570 2118A002 */  addu       $v1, $s5, $zero
    /* 7CD84 8008E574 08007524 */  addiu      $s5, $v1, 0x8
    /* 7CD88 8008E578 01007326 */  addiu      $s3, $s3, 0x1
  .L8008E57C:
    /* 7CD8C 8008E57C 2300D214 */  bne        $a2, $s2, .L8008E60C
    /* 7CD90 8008E580 00000000 */   nop
    /* 7CD94 8008E584 20002296 */  lhu        $v0, 0x20($s1)
    /* 7CD98 8008E588 00004481 */  lb         $a0, 0x0($t2)
    /* 7CD9C 8008E58C 40004230 */  andi       $v0, $v0, 0x40
    /* 7CDA0 8008E590 0F004010 */  beqz       $v0, .L8008E5D0
    /* 7CDA4 8008E594 04008230 */   andi      $v0, $a0, 0x4
    /* 7CDA8 8008E598 0D004010 */  beqz       $v0, .L8008E5D0
    /* 7CDAC 8008E59C 2120E002 */   addu      $a0, $s7, $zero
    /* 7CDB0 8008E5A0 00006584 */  lh         $a1, 0x0($v1)
    /* 7CDB4 8008E5A4 02006684 */  lh         $a2, 0x2($v1)
    /* 7CDB8 8008E5A8 04006784 */  lh         $a3, 0x4($v1)
    /* 7CDBC 8008E5AC 2000A8AF */  sw         $t0, 0x20($sp)
    /* 7CDC0 8008E5B0 2400A9AF */  sw         $t1, 0x24($sp)
    /* 7CDC4 8008E5B4 2800AAAF */  sw         $t2, 0x28($sp)
    /* 7CDC8 8008E5B8 1538020C */  jal        func_8008E054
    /* 7CDCC 8008E5BC 2C00ABAF */   sw        $t3, 0x2C($sp)
    /* 7CDD0 8008E5C0 2C00AB8F */  lw         $t3, 0x2C($sp)
    /* 7CDD4 8008E5C4 2800AA8F */  lw         $t2, 0x28($sp)
    /* 7CDD8 8008E5C8 2400A98F */  lw         $t1, 0x24($sp)
    /* 7CDDC 8008E5CC 2000A88F */  lw         $t0, 0x20($sp)
  .L8008E5D0:
    /* 7CDE0 8008E5D0 0000028E */  lw         $v0, 0x0($s0)
    /* 7CDE4 8008E5D4 00000000 */  nop
    /* 7CDE8 8008E5D8 001B0200 */  sll        $v1, $v0, 12
    /* 7CDEC 8008E5DC 831D0300 */  sra        $v1, $v1, 22
    /* 7CDF0 8008E5E0 80200200 */  sll        $a0, $v0, 2
    /* 7CDF4 8008E5E4 83250400 */  sra        $a0, $a0, 22
    /* 7CDF8 8008E5E8 80150200 */  sll        $v0, $v0, 22
    /* 7CDFC 8008E5EC 03150200 */  sra        $v0, $v0, 20
    /* 7CE00 8008E5F0 80180300 */  sll        $v1, $v1, 2
    /* 7CE04 8008E5F4 80200400 */  sll        $a0, $a0, 2
    /* 7CE08 8008E5F8 FEFF22A6 */  sh         $v0, -0x2($s1)
    /* 7CE0C 8008E5FC 000023A6 */  sh         $v1, 0x0($s1)
    /* 7CE10 8008E600 000004A5 */  sh         $a0, 0x0($t0)
    /* 7CE14 8008E604 0000C68F */  lw         $a2, 0x0($fp)
    /* 7CE18 8008E608 0400DE27 */  addiu      $fp, $fp, 0x4
  .L8008E60C:
    /* 7CE1C 8008E60C 01004A25 */  addiu      $t2, $t2, 0x1
    /* 7CE20 8008E610 80003126 */  addiu      $s1, $s1, 0x80
    /* 7CE24 8008E614 80000825 */  addiu      $t0, $t0, 0x80
    /* 7CE28 8008E618 8000F726 */  addiu      $s7, $s7, 0x80
    /* 7CE2C 8008E61C FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 7CE30 8008E620 BCFF2015 */  bnez       $t1, .L8008E514
    /* 7CE34 8008E624 01005226 */   addiu     $s2, $s2, 0x1
  .L8008E628:
    /* 7CE38 8008E628 5400BF8F */  lw         $ra, 0x54($sp)
    /* 7CE3C 8008E62C 5000BE8F */  lw         $fp, 0x50($sp)
    /* 7CE40 8008E630 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 7CE44 8008E634 4800B68F */  lw         $s6, 0x48($sp)
    /* 7CE48 8008E638 4400B58F */  lw         $s5, 0x44($sp)
    /* 7CE4C 8008E63C 4000B48F */  lw         $s4, 0x40($sp)
    /* 7CE50 8008E640 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 7CE54 8008E644 3800B28F */  lw         $s2, 0x38($sp)
    /* 7CE58 8008E648 3400B18F */  lw         $s1, 0x34($sp)
    /* 7CE5C 8008E64C 3000B08F */  lw         $s0, 0x30($sp)
    /* 7CE60 8008E650 0800E003 */  jr         $ra
    /* 7CE64 8008E654 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_8008E46C
