nonmatching SsVabTransBody, 0xC0

glabel SsVabTransBody
    /* 17604 8014A138 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 17608 8014A13C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1760C 8014A140 21988000 */  addu       $s3, $a0, $zero
    /* 17610 8014A144 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 17614 8014A148 1100422C */  sltiu      $v0, $v0, 0x11
    /* 17618 8014A14C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1761C 8014A150 1800B2AF */  sw         $s2, 0x18($sp)
    /* 17620 8014A154 1400B1AF */  sw         $s1, 0x14($sp)
    /* 17624 8014A158 1D004010 */  beqz       $v0, .L8014A1D0
    /* 17628 8014A15C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1762C 8014A160 00140500 */  sll        $v0, $a1, 16
    /* 17630 8014A164 038C0200 */  sra        $s1, $v0, 16
    /* 17634 8014A168 1D80033C */  lui        $v1, %hi(_svm_vab_used)
    /* 17638 8014A16C 21187100 */  addu       $v1, $v1, $s1
    /* 1763C 8014A170 D0FB6390 */  lbu        $v1, %lo(_svm_vab_used)($v1)
    /* 17640 8014A174 02000224 */  addiu      $v0, $zero, 0x2
    /* 17644 8014A178 15006214 */  bne        $v1, $v0, .L8014A1D0
    /* 17648 8014A17C 80901100 */   sll       $s2, $s1, 2
    /* 1764C 8014A180 1D80103C */  lui        $s0, %hi(_svm_vab_start)
    /* 17650 8014A184 21801202 */  addu       $s0, $s0, $s2
    /* 17654 8014A188 30FC108E */  lw         $s0, %lo(_svm_vab_start)($s0)
    /* 17658 8014A18C AE28050C */  jal        SpuSetTransferMode
    /* 1765C 8014A190 21200000 */   addu      $a0, $zero, $zero
    /* 17660 8014A194 9628050C */  jal        SpuSetTransferStartAddr
    /* 17664 8014A198 21200002 */   addu      $a0, $s0, $zero
    /* 17668 8014A19C 0C004010 */  beqz       $v0, .L8014A1D0
    /* 1766C 8014A1A0 00000000 */   nop
    /* 17670 8014A1A4 1D80053C */  lui        $a1, %hi(_svm_vab_total)
    /* 17674 8014A1A8 2128B200 */  addu       $a1, $a1, $s2
    /* 17678 8014A1AC E8FBA58C */  lw         $a1, %lo(_svm_vab_total)($a1)
    /* 1767C 8014A1B0 7E28050C */  jal        SpuRead
    /* 17680 8014A1B4 21206002 */   addu      $a0, $s3, $zero
    /* 17684 8014A1B8 21102002 */  addu       $v0, $s1, $zero
    /* 17688 8014A1BC 01000324 */  addiu      $v1, $zero, 0x1
    /* 1768C 8014A1C0 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 17690 8014A1C4 21082200 */  addu       $at, $at, $v0
    /* 17694 8014A1C8 77280508 */  j          .L8014A1DC
    /* 17698 8014A1CC D0FB23A0 */   sb        $v1, %lo(_svm_vab_used)($at)
  .L8014A1D0:
    /* 1769C 8014A1D0 5120050C */  jal        _spu_setInTransfer
    /* 176A0 8014A1D4 21200000 */   addu      $a0, $zero, $zero
    /* 176A4 8014A1D8 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8014A1DC:
    /* 176A8 8014A1DC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 176AC 8014A1E0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 176B0 8014A1E4 1800B28F */  lw         $s2, 0x18($sp)
    /* 176B4 8014A1E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 176B8 8014A1EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 176BC 8014A1F0 0800E003 */  jr         $ra
    /* 176C0 8014A1F4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel SsVabTransBody
