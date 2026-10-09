nonmatching func_800B2DFC, 0xA0

glabel func_800B2DFC
    /* A160C 800B2DFC 801F023C */  lui        $v0, (0x1F801120 >> 16)
    /* A1610 800B2E00 20114234 */  ori        $v0, $v0, (0x1F801120 & 0xFFFF)
    /* A1614 800B2E04 00004394 */  lhu        $v1, 0x0($v0)
    /* A1618 800B2E08 0E80023C */  lui        $v0, %hi(D_800DE6C0)
    /* A161C 800B2E0C C0E6428C */  lw         $v0, %lo(D_800DE6C0)($v0)
    /* A1620 800B2E10 FFFF6430 */  andi       $a0, $v1, 0xFFFF
    /* A1624 800B2E14 2B108200 */  sltu       $v0, $a0, $v0
    /* A1628 800B2E18 0A004010 */  beqz       $v0, .L800B2E44
    /* A162C 800B2E1C 801F033C */   lui       $v1, (0x1F801128 >> 16)
    /* A1630 800B2E20 28116334 */  ori        $v1, $v1, (0x1F801128 & 0xFFFF)
    /* A1634 800B2E24 00006294 */  lhu        $v0, 0x0($v1)
    /* A1638 800B2E28 00000000 */  nop
    /* A163C 800B2E2C 04004010 */  beqz       $v0, .L800B2E40
    /* A1640 800B2E30 0100023C */   lui       $v0, (0x10000 >> 16)
    /* A1644 800B2E34 00006294 */  lhu        $v0, 0x0($v1)
    /* A1648 800B2E38 91CB0208 */  j          .L800B2E44
    /* A164C 800B2E3C 21208200 */   addu      $a0, $a0, $v0
  .L800B2E40:
    /* A1650 800B2E40 21208200 */  addu       $a0, $a0, $v0
  .L800B2E44:
    /* A1654 800B2E44 801F023C */  lui        $v0, (0x1F801124 >> 16)
    /* A1658 800B2E48 24114234 */  ori        $v0, $v0, (0x1F801124 & 0xFFFF)
    /* A165C 800B2E4C 00004294 */  lhu        $v0, 0x0($v0)
    /* A1660 800B2E50 00000000 */  nop
    /* A1664 800B2E54 00024230 */  andi       $v0, $v0, 0x200
    /* A1668 800B2E58 08004014 */  bnez       $v0, .L800B2E7C
    /* A166C 800B2E5C 00000000 */   nop
    /* A1670 800B2E60 0E80023C */  lui        $v0, %hi(D_800DE6C0)
    /* A1674 800B2E64 C0E6428C */  lw         $v0, %lo(D_800DE6C0)($v0)
    /* A1678 800B2E68 0E80033C */  lui        $v1, %hi(D_800DE6C4)
    /* A167C 800B2E6C C4E6638C */  lw         $v1, %lo(D_800DE6C4)($v1)
    /* A1680 800B2E70 23108200 */  subu       $v0, $a0, $v0
    /* A1684 800B2E74 A4CB0208 */  j          .L800B2E90
    /* A1688 800B2E78 C2100200 */   srl       $v0, $v0, 3
  .L800B2E7C:
    /* A168C 800B2E7C 0E80023C */  lui        $v0, %hi(D_800DE6C0)
    /* A1690 800B2E80 C0E6428C */  lw         $v0, %lo(D_800DE6C0)($v0)
    /* A1694 800B2E84 0E80033C */  lui        $v1, %hi(D_800DE6C4)
    /* A1698 800B2E88 C4E6638C */  lw         $v1, %lo(D_800DE6C4)($v1)
    /* A169C 800B2E8C 23108200 */  subu       $v0, $a0, $v0
  .L800B2E90:
    /* A16A0 800B2E90 2B104300 */  sltu       $v0, $v0, $v1
    /* A16A4 800B2E94 0800E003 */  jr         $ra
    /* A16A8 800B2E98 01004238 */   xori      $v0, $v0, 0x1
endlabel func_800B2DFC
