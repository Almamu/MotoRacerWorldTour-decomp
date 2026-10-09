nonmatching func_801416B8, 0xC8

glabel func_801416B8
    /* EB84 801416B8 E9008290 */  lbu        $v0, 0xE9($a0)
    /* EB88 801416BC 00000000 */  nop
    /* EB8C 801416C0 2B004010 */  beqz       $v0, .L80141770
    /* EB90 801416C4 21400000 */   addu      $t0, $zero, $zero
    /* EB94 801416C8 FF000B24 */  addiu      $t3, $zero, 0xFF
    /* EB98 801416CC 21500000 */  addu       $t2, $zero, $zero
  .L801416D0:
    /* EB9C 801416D0 2000858C */  lw         $a1, 0x20($a0)
    /* EBA0 801416D4 21380000 */  addu       $a3, $zero, $zero
    /* EBA4 801416D8 05000324 */  addiu      $v1, $zero, 0x5
  .L801416DC:
    /* EBA8 801416DC 0000A290 */  lbu        $v0, 0x0($a1)
    /* EBAC 801416E0 00000000 */  nop
    /* EBB0 801416E4 02004814 */  bne        $v0, $t0, .L801416F0
    /* EBB4 801416E8 0100A524 */   addiu     $a1, $a1, 0x1
    /* EBB8 801416EC 0100E724 */  addiu      $a3, $a3, 0x1
  .L801416F0:
    /* EBBC 801416F0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* EBC0 801416F4 F9FF6104 */  bgez       $v1, .L801416DC
    /* EBC4 801416F8 00000000 */   nop
    /* EBC8 801416FC 0400828C */  lw         $v0, 0x4($a0)
    /* EBCC 80141700 00000000 */  nop
    /* EBD0 80141704 21104201 */  addu       $v0, $t2, $v0
    /* EBD4 80141708 02004990 */  lbu        $t1, 0x2($v0)
    /* EBD8 8014170C 2000858C */  lw         $a1, 0x20($a0)
    /* EBDC 80141710 02002015 */  bnez       $t1, .L8014171C
    /* EBE0 80141714 21180000 */   addu      $v1, $zero, $zero
    /* EBE4 80141718 01000924 */  addiu      $t1, $zero, 0x1
  .L8014171C:
    /* EBE8 8014171C 21308000 */  addu       $a2, $a0, $zero
  .L80141720:
    /* EBEC 80141720 0000A290 */  lbu        $v0, 0x0($a1)
    /* EBF0 80141724 00000000 */  nop
    /* EBF4 80141728 08004814 */  bne        $v0, $t0, .L8014174C
    /* EBF8 8014172C 0100A524 */   addiu     $a1, $a1, 0x1
    /* EBFC 80141730 2A10E900 */  slt        $v0, $a3, $t1
    /* EC00 80141734 04004010 */  beqz       $v0, .L80141748
    /* EC04 80141738 00000000 */   nop
    /* EC08 8014173C 5D00CBA0 */  sb         $t3, 0x5D($a2)
    /* EC0C 80141740 D3050508 */  j          .L8014174C
    /* EC10 80141744 FFFFE724 */   addiu     $a3, $a3, -0x1
  .L80141748:
    /* EC14 80141748 5D00C8A0 */  sb         $t0, 0x5D($a2)
  .L8014174C:
    /* EC18 8014174C 01006324 */  addiu      $v1, $v1, 0x1
    /* EC1C 80141750 06006228 */  slti       $v0, $v1, 0x6
    /* EC20 80141754 F2FF4014 */  bnez       $v0, .L80141720
    /* EC24 80141758 0100C624 */   addiu     $a2, $a2, 0x1
    /* EC28 8014175C E9008290 */  lbu        $v0, 0xE9($a0)
    /* EC2C 80141760 01000825 */  addiu      $t0, $t0, 0x1
    /* EC30 80141764 2A100201 */  slt        $v0, $t0, $v0
    /* EC34 80141768 D9FF4014 */  bnez       $v0, .L801416D0
    /* EC38 8014176C 05004A25 */   addiu     $t2, $t2, 0x5
  .L80141770:
    /* EC3C 80141770 FE000224 */  addiu      $v0, $zero, 0xFE
    /* EC40 80141774 460082A0 */  sb         $v0, 0x46($a0)
    /* EC44 80141778 0800E003 */  jr         $ra
    /* EC48 8014177C 21100000 */   addu      $v0, $zero, $zero
endlabel func_801416B8
