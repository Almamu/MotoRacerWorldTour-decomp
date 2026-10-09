nonmatching SpuSetTransferStartAddr, 0x5C

glabel SpuSetTransferStartAddr
    /* 17724 8014A258 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 17728 8014A25C 21288000 */  addu       $a1, $a0, $zero
    /* 1772C 8014A260 0700023C */  lui        $v0, (0x7EFE8 >> 16)
    /* 17730 8014A264 E8EF4234 */  ori        $v0, $v0, (0x7EFE8 & 0xFFFF)
    /* 17734 8014A268 F0EFA324 */  addiu      $v1, $a1, -0x1010
    /* 17738 8014A26C 2B104300 */  sltu       $v0, $v0, $v1
    /* 1773C 8014A270 0B004014 */  bnez       $v0, .L8014A2A0
    /* 17740 8014A274 1000BFAF */   sw        $ra, 0x10($sp)
    /* 17744 8014A278 5B0D050C */  jal        func_8014356C
    /* 17748 8014A27C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1774C 8014A280 1C80013C */  lui        $at, %hi(D_801BFF2C)
    /* 17750 8014A284 2CFF22A4 */  sh         $v0, %lo(D_801BFF2C)($at)
    /* 17754 8014A288 1C80033C */  lui        $v1, %hi(D_801BFF2C)
    /* 17758 8014A28C 2CFF6394 */  lhu        $v1, %lo(D_801BFF2C)($v1)
    /* 1775C 8014A290 1C80023C */  lui        $v0, %hi(D_801BFF3C)
    /* 17760 8014A294 3CFF428C */  lw         $v0, %lo(D_801BFF3C)($v0)
    /* 17764 8014A298 A9280508 */  j          .L8014A2A4
    /* 17768 8014A29C 04104300 */   sllv      $v0, $v1, $v0
  .L8014A2A0:
    /* 1776C 8014A2A0 21100000 */  addu       $v0, $zero, $zero
  .L8014A2A4:
    /* 17770 8014A2A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 17774 8014A2A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 17778 8014A2AC 0800E003 */  jr         $ra
    /* 1777C 8014A2B0 00000000 */   nop
endlabel SpuSetTransferStartAddr
    /* 17780 8014A2B4 00000000 */  nop
