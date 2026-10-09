nonmatching func_8006C094, 0x7C

glabel func_8006C094
    /* 5A8A4 8006C094 21388000 */  addu       $a3, $a0, $zero
    /* 5A8A8 8006C098 0000E28C */  lw         $v0, 0x0($a3)
    /* 5A8AC 8006C09C 00000000 */  nop
    /* 5A8B0 8006C0A0 401F422C */  sltiu      $v0, $v0, 0x1F40
    /* 5A8B4 8006C0A4 18004010 */  beqz       $v0, .L8006C108
    /* 5A8B8 8006C0A8 00000000 */   nop
    /* 5A8BC 8006C0AC 0800C290 */  lbu        $v0, 0x8($a2)
    /* 5A8C0 8006C0B0 00000000 */  nop
    /* 5A8C4 8006C0B4 1C04E2A0 */  sb         $v0, 0x41C($a3)
    /* 5A8C8 8006C0B8 0900C390 */  lbu        $v1, 0x9($a2)
    /* 5A8CC 8006C0BC 1404E5A4 */  sh         $a1, 0x414($a3)
    /* 5A8D0 8006C0C0 1D04E3A0 */  sb         $v1, 0x41D($a3)
    /* 5A8D4 8006C0C4 0400C290 */  lbu        $v0, 0x4($a2)
    /* 5A8D8 8006C0C8 00000000 */  nop
    /* 5A8DC 8006C0CC 1804E2A0 */  sb         $v0, 0x418($a3)
    /* 5A8E0 8006C0D0 0500C390 */  lbu        $v1, 0x5($a2)
    /* 5A8E4 8006C0D4 00000000 */  nop
    /* 5A8E8 8006C0D8 1904E3A0 */  sb         $v1, 0x419($a3)
    /* 5A8EC 8006C0DC 0D00C290 */  lbu        $v0, 0xD($a2)
    /* 5A8F0 8006C0E0 00000000 */  nop
    /* 5A8F4 8006C0E4 1704E2A0 */  sb         $v0, 0x417($a3)
    /* 5A8F8 8006C0E8 0700C490 */  lbu        $a0, 0x7($a2)
    /* 5A8FC 8006C0EC 01000324 */  addiu      $v1, $zero, 0x1
    /* 5A900 8006C0F0 1A04E4A0 */  sb         $a0, 0x41A($a3)
    /* 5A904 8006C0F4 0A00C590 */  lbu        $a1, 0xA($a2)
    /* 5A908 8006C0F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 5A90C 8006C0FC 0800E3AC */  sw         $v1, 0x8($a3)
    /* 5A910 8006C100 0800E003 */  jr         $ra
    /* 5A914 8006C104 1E04E5A0 */   sb        $a1, 0x41E($a3)
  .L8006C108:
    /* 5A918 8006C108 0800E003 */  jr         $ra
    /* 5A91C 8006C10C 21100000 */   addu      $v0, $zero, $zero
endlabel func_8006C094
