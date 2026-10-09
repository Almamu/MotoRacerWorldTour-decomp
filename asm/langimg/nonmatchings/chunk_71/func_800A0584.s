nonmatching func_800A0584, 0xFC

glabel func_800A0584
    /* 8ED94 800A0584 21500000 */  addu       $t2, $zero, $zero
    /* 8ED98 800A0588 21480000 */  addu       $t1, $zero, $zero
    /* 8ED9C 800A058C 04000B24 */  addiu      $t3, $zero, 0x4
  .L800A0590:
    /* 8EDA0 800A0590 04004015 */  bnez       $t2, .L800A05A4
    /* 8EDA4 800A0594 43480900 */   sra       $t1, $t1, 1
    /* 8EDA8 800A0598 08000A24 */  addiu      $t2, $zero, 0x8
    /* 8EDAC 800A059C 00008990 */  lbu        $t1, 0x0($a0)
    /* 8EDB0 800A05A0 01008424 */  addiu      $a0, $a0, 0x1
  .L800A05A4:
    /* 8EDB4 800A05A4 01002231 */  andi       $v0, $t1, 0x1
    /* 8EDB8 800A05A8 07004010 */  beqz       $v0, .L800A05C8
    /* 8EDBC 800A05AC FFFF4A25 */   addiu     $t2, $t2, -0x1
    /* 8EDC0 800A05B0 00008290 */  lbu        $v0, 0x0($a0)
    /* 8EDC4 800A05B4 01008424 */  addiu      $a0, $a0, 0x1
    /* 8EDC8 800A05B8 01000824 */  addiu      $t0, $zero, 0x1
    /* 8EDCC 800A05BC 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 8EDD0 800A05C0 9C810208 */  j          .L800A0670
    /* 8EDD4 800A05C4 0100A524 */   addiu     $a1, $a1, 0x1
  .L800A05C8:
    /* 8EDD8 800A05C8 00008390 */  lbu        $v1, 0x0($a0)
    /* 8EDDC 800A05CC 01008290 */  lbu        $v0, 0x1($a0)
    /* 8EDE0 800A05D0 00000000 */  nop
    /* 8EDE4 800A05D4 00120200 */  sll        $v0, $v0, 8
    /* 8EDE8 800A05D8 25186200 */  or         $v1, $v1, $v0
    /* 8EDEC 800A05DC FF0F6830 */  andi       $t0, $v1, 0xFFF
    /* 8EDF0 800A05E0 25000011 */  beqz       $t0, .L800A0678
    /* 8EDF4 800A05E4 02008424 */   addiu     $a0, $a0, 0x2
    /* 8EDF8 800A05E8 03130300 */  sra        $v0, $v1, 12
    /* 8EDFC 800A05EC 2338A800 */  subu       $a3, $a1, $t0
    /* 8EE00 800A05F0 0300E630 */  andi       $a2, $a3, 0x3
    /* 8EE04 800A05F4 0900C010 */  beqz       $a2, .L800A061C
    /* 8EE08 800A05F8 03004324 */   addiu     $v1, $v0, 0x3
    /* 8EE0C 800A05FC 23306601 */  subu       $a2, $t3, $a2
    /* 8EE10 800A0600 23186600 */  subu       $v1, $v1, $a2
  .L800A0604:
    /* 8EE14 800A0604 0000E290 */  lbu        $v0, 0x0($a3)
    /* 8EE18 800A0608 0100E724 */  addiu      $a3, $a3, 0x1
    /* 8EE1C 800A060C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 8EE20 800A0610 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 8EE24 800A0614 FBFFC014 */  bnez       $a2, .L800A0604
    /* 8EE28 800A0618 0100A524 */   addiu     $a1, $a1, 0x1
  .L800A061C:
    /* 8EE2C 800A061C 05000229 */  slti       $v0, $t0, 0x5
    /* 8EE30 800A0620 0B004014 */  bnez       $v0, .L800A0650
    /* 8EE34 800A0624 21306000 */   addu      $a2, $v1, $zero
    /* 8EE38 800A0628 83180300 */  sra        $v1, $v1, 2
    /* 8EE3C 800A062C 08006010 */  beqz       $v1, .L800A0650
    /* 8EE40 800A0630 0300C630 */   andi      $a2, $a2, 0x3
  .L800A0634:
    /* 8EE44 800A0634 0000E28C */  lw         $v0, 0x0($a3)
    /* 8EE48 800A0638 0400E724 */  addiu      $a3, $a3, 0x4
    /* 8EE4C 800A063C 0300A2A8 */  swl        $v0, 0x3($a1)
    /* 8EE50 800A0640 0000A2B8 */  swr        $v0, 0x0($a1)
    /* 8EE54 800A0644 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 8EE58 800A0648 FAFF6014 */  bnez       $v1, .L800A0634
    /* 8EE5C 800A064C 0400A524 */   addiu     $a1, $a1, 0x4
  .L800A0650:
    /* 8EE60 800A0650 0700C010 */  beqz       $a2, .L800A0670
    /* 8EE64 800A0654 00000000 */   nop
  .L800A0658:
    /* 8EE68 800A0658 0000E290 */  lbu        $v0, 0x0($a3)
    /* 8EE6C 800A065C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 8EE70 800A0660 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 8EE74 800A0664 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 8EE78 800A0668 FBFFC014 */  bnez       $a2, .L800A0658
    /* 8EE7C 800A066C 0100A524 */   addiu     $a1, $a1, 0x1
  .L800A0670:
    /* 8EE80 800A0670 C7FF0015 */  bnez       $t0, .L800A0590
    /* 8EE84 800A0674 00000000 */   nop
  .L800A0678:
    /* 8EE88 800A0678 0800E003 */  jr         $ra
    /* 8EE8C 800A067C 00000000 */   nop
endlabel func_800A0584
