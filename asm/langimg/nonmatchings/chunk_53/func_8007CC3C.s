/* Handwritten function */
nonmatching func_8007CC3C, 0x278

glabel func_8007CC3C
    /* 6B44C 8007CC3C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6B450 8007CC40 801F183C */  lui        $t8, (0x1F800008 >> 16)
    /* 6B454 8007CC44 08001837 */  ori        $t8, $t8, (0x1F800008 & 0xFFFF)
    /* 6B458 8007CC48 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6B45C 8007CC4C C77F143C */  lui        $s4, (0x7FC7E000 >> 16)
    /* 6B460 8007CC50 00E09436 */  ori        $s4, $s4, (0x7FC7E000 & 0xFFFF)
    /* 6B464 8007CC54 21708000 */  addu       $t6, $a0, $zero
    /* 6B468 8007CC58 FEFFE724 */  addiu      $a3, $a3, -0x2
    /* 6B46C 8007CC5C 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6B470 8007CC60 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6B474 8007CC64 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6B478 8007CC68 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6B47C 8007CC6C 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6B480 8007CC70 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6B484 8007CC74 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6B488 8007CC78 0000B0AF */  sw         $s0, 0x0($sp)
    /* 6B48C 8007CC7C 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B490 8007CC80 0D800C3C */  lui        $t4, %hi(D_800C8C70)
    /* 6B494 8007CC84 708C8C8D */  lw         $t4, %lo(D_800C8C70)($t4)
    /* 6B498 8007CC88 21105800 */  addu       $v0, $v0, $t8
    /* 6B49C 8007CC8C 00004380 */  lb         $v1, 0x0($v0)
    /* 6B4A0 8007CC90 801F153C */  lui        $s5, (0x1F800004 >> 16)
    /* 6B4A4 8007CC94 0400B58E */  lw         $s5, (0x1F800004 & 0xFFFF)($s5)
    /* 6B4A8 8007CC98 0D006014 */  bnez       $v1, .L8007CCD0
    /* 6B4AC 8007CC9C 2198A000 */   addu      $s3, $a1, $zero
  .L8007CCA0:
    /* 6B4B0 8007CCA0 1C00CE25 */  addiu      $t6, $t6, 0x1C
  .L8007CCA4:
    /* 6B4B4 8007CCA4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6B4B8 8007CCA8 0900C010 */  beqz       $a2, .L8007CCD0
    /* 6B4BC 8007CCAC 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6B4C0 8007CCB0 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B4C4 8007CCB4 00000000 */  nop
    /* 6B4C8 8007CCB8 21100203 */  addu       $v0, $t8, $v0
    /* 6B4CC 8007CCBC 00004380 */  lb         $v1, 0x0($v0)
    /* 6B4D0 8007CCC0 00000000 */  nop
    /* 6B4D4 8007CCC4 F7FF6010 */  beqz       $v1, .L8007CCA4
    /* 6B4D8 8007CCC8 1C00CE25 */   addiu     $t6, $t6, 0x1C
    /* 6B4DC 8007CCCC E4FFCE25 */  addiu      $t6, $t6, -0x1C
  .L8007CCD0:
    /* 6B4E0 8007CCD0 0000C28D */  lw         $v0, 0x0($t6)
    /* 6B4E4 8007CCD4 00000000 */  nop
    /* 6B4E8 8007CCD8 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 6B4EC 8007CCDC C0180300 */  sll        $v1, $v1, 3
    /* 6B4F0 8007CCE0 21886302 */  addu       $s1, $s3, $v1
    /* 6B4F4 8007CCE4 02140200 */  srl        $v0, $v0, 16
    /* 6B4F8 8007CCE8 C0100200 */  sll        $v0, $v0, 3
    /* 6B4FC 8007CCEC 0400C395 */  lhu        $v1, 0x4($t6)
    /* 6B500 8007CCF0 21806202 */  addu       $s0, $s3, $v0
    /* 6B504 8007CCF4 C0180300 */  sll        $v1, $v1, 3
    /* 6B508 8007CCF8 6100C010 */  beqz       $a2, .L8007CE80
    /* 6B50C 8007CCFC 21C86302 */   addu      $t9, $s3, $v1
    /* 6B510 8007CD00 00071E3C */  lui        $fp, (0x7000000 >> 16)
    /* 6B514 8007CD04 F0F01734 */  ori        $s7, $zero, 0xF0F0
    /* 6B518 8007CD08 00C0163C */  lui        $s6, (0xC0000000 >> 16)
    /* 6B51C 8007CD0C 1C009225 */  addiu      $s2, $t4, 0x1C
    /* 6B520 8007CD10 14008D25 */  addiu      $t5, $t4, 0x14
  .L8007CD14:
    /* 6B524 8007CD14 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B528 8007CD18 00000000 */  nop
    /* 6B52C 8007CD1C 21100203 */  addu       $v0, $t8, $v0
    /* 6B530 8007CD20 00004380 */  lb         $v1, 0x0($v0)
    /* 6B534 8007CD24 00000000 */  nop
    /* 6B538 8007CD28 DDFF6010 */  beqz       $v1, .L8007CCA0
    /* 6B53C 8007CD2C 00000000 */   nop
    /* 6B540 8007CD30 000020CA */  lwc2       $0, 0x0($s1)
    /* 6B544 8007CD34 040021CA */  lwc2       $1, 0x4($s1)
    /* 6B548 8007CD38 000002CA */  lwc2       $2, 0x0($s0)
    /* 6B54C 8007CD3C 040003CA */  lwc2       $3, 0x4($s0)
    /* 6B550 8007CD40 000024CB */  lwc2       $4, 0x0($t9)
    /* 6B554 8007CD44 040025CB */  lwc2       $5, 0x4($t9)
    /* 6B558 8007CD48 2128C001 */  addu       $a1, $t6, $zero
    /* 6B55C 8007CD4C 1C00AE24 */  addiu      $t6, $a1, 0x1C
    /* 6B560 8007CD50 0200E724 */  addiu      $a3, $a3, 0x2
    /* 6B564 8007CD54 3000284A */  rtpt
    /* 6B568 8007CD58 1C00A38C */  lw         $v1, 0x1C($a1)
    /* 6B56C 8007CD5C 0400C495 */  lhu        $a0, 0x4($t6)
    /* 6B570 8007CD60 1800AF8C */  lw         $t7, 0x18($a1)
    /* 6B574 8007CD64 00009EAD */  sw         $fp, 0x0($t4)
    /* 6B578 8007CD68 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6B57C 8007CD6C C0100200 */  sll        $v0, $v0, 3
    /* 6B580 8007CD70 21886202 */  addu       $s1, $s3, $v0
    /* 6B584 8007CD74 021C0300 */  srl        $v1, $v1, 16
    /* 6B588 8007CD78 C0180300 */  sll        $v1, $v1, 3
    /* 6B58C 8007CD7C 21806302 */  addu       $s0, $s3, $v1
    /* 6B590 8007CD80 C0200400 */  sll        $a0, $a0, 3
    /* 6B594 8007CD84 21C86402 */  addu       $t9, $s3, $a0
    /* 6B598 8007CD88 21188001 */  addu       $v1, $t4, $zero
    /* 6B59C 8007CD8C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6B5A0 8007CD90 00000000 */  nop
    /* 6B5A4 8007CD94 24105400 */  and        $v0, $v0, $s4
    /* 6B5A8 8007CD98 36004014 */  bnez       $v0, .L8007CE74
    /* 6B5AC 8007CD9C 00000000 */   nop
    /* 6B5B0 8007CDA0 0C00A98C */  lw         $t1, 0xC($a1)
    /* 6B5B4 8007CDA4 1000AA8C */  lw         $t2, 0x10($a1)
    /* 6B5B8 8007CDA8 1400AB8C */  lw         $t3, 0x14($a1)
    /* 6B5BC 8007CDAC 08006CE8 */  swc2       $12, 0x8($v1)
    /* 6B5C0 8007CDB0 10006DE8 */  swc2       $13, 0x10($v1)
    /* 6B5C4 8007CDB4 18006EE8 */  swc2       $14, 0x18($v1)
    /* 6B5C8 8007CDB8 2D00584B */  avsz3
    /* 6B5CC 8007CDBC 21400000 */  addu       $t0, $zero, $zero
    /* 6B5D0 8007CDC0 0800A38C */  lw         $v1, 0x8($a1)
    /* 6B5D4 8007CDC4 0002E231 */  andi       $v0, $t7, 0x200
    /* 6B5D8 8007CDC8 02004010 */  beqz       $v0, .L8007CDD4
    /* 6B5DC 8007CDCC F0FFA3AD */   sw        $v1, -0x10($t5)
    /* 6B5E0 8007CDD0 00380848 */  mfc2       $t0, $7 /* handwritten instruction */
  .L8007CDD4:
    /* 6B5E4 8007CDD4 00000000 */  nop
    /* 6B5E8 8007CDD8 43420800 */  sra        $t0, $t0, 9
    /* 6B5EC 8007CDDC 04000229 */  slti       $v0, $t0, 0x4
    /* 6B5F0 8007CDE0 02004014 */  bnez       $v0, .L8007CDEC
    /* 6B5F4 8007CDE4 032C0900 */   sra       $a1, $t1, 16
    /* 6B5F8 8007CDE8 03000824 */  addiu      $t0, $zero, 0x3
  .L8007CDEC:
    /* 6B5FC 8007CDEC 07480901 */  srav       $t1, $t1, $t0
    /* 6B600 8007CDF0 03240A00 */  sra        $a0, $t2, 16
    /* 6B604 8007CDF4 07500A01 */  srav       $t2, $t2, $t0
    /* 6B608 8007CDF8 07580B01 */  srav       $t3, $t3, $t0
    /* 6B60C 8007CDFC 07181701 */  srav       $v1, $s7, $t0
    /* 6B610 8007CE00 0F0F6334 */  ori        $v1, $v1, 0xF0F
    /* 6B614 8007CE04 24482301 */  and        $t1, $t1, $v1
    /* 6B618 8007CE08 24504301 */  and        $t2, $t2, $v1
    /* 6B61C 8007CE0C 24586301 */  and        $t3, $t3, $v1
    /* 6B620 8007CE10 C0140F00 */  sll        $v0, $t7, 19
    /* 6B624 8007CE14 24105600 */  and        $v0, $v0, $s6
    /* 6B628 8007CE18 83170200 */  sra        $v0, $v0, 30
    /* 6B62C 8007CE1C 0200A4A5 */  sh         $a0, 0x2($t5)
    /* 6B630 8007CE20 02004424 */  addiu      $a0, $v0, 0x2
    /* 6B634 8007CE24 FAFFA5A5 */  sh         $a1, -0x6($t5)
    /* 6B638 8007CE28 F8FFA9A5 */  sh         $t1, -0x8($t5)
    /* 6B63C 8007CE2C 0000AAA5 */  sh         $t2, 0x0($t5)
    /* 6B640 8007CE30 00004BA6 */  sh         $t3, 0x0($s2)
    /* 6B644 8007CE34 801F023C */  lui        $v0, (0x1F800000 >> 16)
    /* 6B648 8007CE38 0000428C */  lw         $v0, (0x1F800000 & 0xFFFF)($v0)
    /* 6B64C 8007CE3C 0000E380 */  lb         $v1, 0x0($a3)
    /* 6B650 8007CE40 04204400 */  sllv       $a0, $a0, $v0
    /* 6B654 8007CE44 80180300 */  sll        $v1, $v1, 2
    /* 6B658 8007CE48 21208300 */  addu       $a0, $a0, $v1
    /* 6B65C 8007CE4C 21108800 */  addu       $v0, $a0, $t0
    /* 6B660 8007CE50 80100200 */  sll        $v0, $v0, 2
    /* 6B664 8007CE54 2110A202 */  addu       $v0, $s5, $v0
    /* 6B668 8007CE58 02004488 */  lwl        $a0, 0x2($v0)
    /* 6B66C 8007CE5C 001A0C00 */  sll        $v1, $t4, 8
    /* 6B670 8007CE60 020084A9 */  swl        $a0, 0x2($t4)
    /* 6B674 8007CE64 020043A8 */  swl        $v1, 0x2($v0)
    /* 6B678 8007CE68 2000AD25 */  addiu      $t5, $t5, 0x20
    /* 6B67C 8007CE6C 20005226 */  addiu      $s2, $s2, 0x20
    /* 6B680 8007CE70 20008C25 */  addiu      $t4, $t4, 0x20
  .L8007CE74:
    /* 6B684 8007CE74 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6B688 8007CE78 A6FFC014 */  bnez       $a2, .L8007CD14
    /* 6B68C 8007CE7C 00000000 */   nop
  .L8007CE80:
    /* 6B690 8007CE80 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6B694 8007CE84 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6B698 8007CE88 1800B68F */  lw         $s6, 0x18($sp)
    /* 6B69C 8007CE8C 1400B58F */  lw         $s5, 0x14($sp)
    /* 6B6A0 8007CE90 1000B48F */  lw         $s4, 0x10($sp)
    /* 6B6A4 8007CE94 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6B6A8 8007CE98 0800B28F */  lw         $s2, 0x8($sp)
    /* 6B6AC 8007CE9C 0400B18F */  lw         $s1, 0x4($sp)
    /* 6B6B0 8007CEA0 0000B08F */  lw         $s0, 0x0($sp)
    /* 6B6B4 8007CEA4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6B6B8 8007CEA8 708C2CAC */  sw         $t4, %lo(D_800C8C70)($at)
    /* 6B6BC 8007CEAC 0800E003 */  jr         $ra
    /* 6B6C0 8007CEB0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007CC3C
