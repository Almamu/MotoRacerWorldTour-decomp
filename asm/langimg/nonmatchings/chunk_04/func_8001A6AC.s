nonmatching func_8001A6AC, 0x148

glabel func_8001A6AC
    /* 8EBC 8001A6AC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8EC0 8001A6B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8EC4 8001A6B4 2190A000 */  addu       $s2, $a1, $zero
    /* 8EC8 8001A6B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8ECC 8001A6BC 21888000 */  addu       $s1, $a0, $zero
    /* 8ED0 8001A6C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8ED4 8001A6C4 2198C000 */  addu       $s3, $a2, $zero
    /* 8ED8 8001A6C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8EDC 8001A6CC 2180E000 */  addu       $s0, $a3, $zero
    /* 8EE0 8001A6D0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8EE4 8001A6D4 0400248E */  lw         $a0, 0x4($s1)
    /* 8EE8 8001A6D8 00002686 */  lh         $a2, 0x0($s1)
    /* 8EEC 8001A6DC 1B6A000C */  jal        func_8001A86C
    /* 8EF0 8001A6E0 21386002 */   addu      $a3, $s3, $zero
    /* 8EF4 8001A6E4 21184000 */  addu       $v1, $v0, $zero
    /* 8EF8 8001A6E8 3B006104 */  bgez       $v1, .L8001A7D8
    /* 8EFC 8001A6EC 00000000 */   nop
    /* 8F00 8001A6F0 39000016 */  bnez       $s0, .L8001A7D8
    /* 8F04 8001A6F4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8F08 8001A6F8 0000448E */  lw         $a0, 0x0($s2)
    /* 8F0C 8001A6FC 2000238E */  lw         $v1, 0x20($s1)
    /* 8F10 8001A700 03230400 */  sra        $a0, $a0, 12
    /* 8F14 8001A704 1A008300 */  div        $zero, $a0, $v1
    /* 8F18 8001A708 12200000 */  mflo       $a0
    /* 8F1C 8001A70C 0800428E */  lw         $v0, 0x8($s2)
    /* 8F20 8001A710 00000000 */  nop
    /* 8F24 8001A714 03130200 */  sra        $v0, $v0, 12
    /* 8F28 8001A718 1A004300 */  div        $zero, $v0, $v1
    /* 8F2C 8001A71C 12100000 */  mflo       $v0
    /* 8F30 8001A720 1800258E */  lw         $a1, 0x18($s1)
    /* 8F34 8001A724 00000000 */  nop
    /* 8F38 8001A728 18004500 */  mult       $v0, $a1
    /* 8F3C 8001A72C 2400268E */  lw         $a2, 0x24($s1)
    /* 8F40 8001A730 12100000 */  mflo       $v0
    /* 8F44 8001A734 2100C010 */  beqz       $a2, .L8001A7BC
    /* 8F48 8001A738 21184400 */   addu      $v1, $v0, $a0
    /* 8F4C 8001A73C 1F006004 */  bltz       $v1, .L8001A7BC
    /* 8F50 8001A740 00000000 */   nop
    /* 8F54 8001A744 1C00228E */  lw         $v0, 0x1C($s1)
    /* 8F58 8001A748 00000000 */  nop
    /* 8F5C 8001A74C 1800A200 */  mult       $a1, $v0
    /* 8F60 8001A750 12100000 */  mflo       $v0
    /* 8F64 8001A754 2A106200 */  slt        $v0, $v1, $v0
    /* 8F68 8001A758 18004010 */  beqz       $v0, .L8001A7BC
    /* 8F6C 8001A75C 80180300 */   sll       $v1, $v1, 2
    /* 8F70 8001A760 2180C300 */  addu       $s0, $a2, $v1
    /* 8F74 8001A764 02000286 */  lh         $v0, 0x2($s0)
    /* 8F78 8001A768 00000386 */  lh         $v1, 0x0($s0)
    /* 8F7C 8001A76C 00000000 */  nop
    /* 8F80 8001A770 23104300 */  subu       $v0, $v0, $v1
    /* 8F84 8001A774 01004624 */  addiu      $a2, $v0, 0x1
    /* 8F88 8001A778 0300C01C */  bgtz       $a2, .L8001A788
    /* 8F8C 8001A77C 21284002 */   addu      $a1, $s2, $zero
    /* 8F90 8001A780 F6690008 */  j          .L8001A7D8
    /* 8F94 8001A784 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8001A788:
    /* 8F98 8001A788 21386002 */  addu       $a3, $s3, $zero
    /* 8F9C 8001A78C C0200300 */  sll        $a0, $v1, 3
    /* 8FA0 8001A790 23208300 */  subu       $a0, $a0, $v1
    /* 8FA4 8001A794 0400238E */  lw         $v1, 0x4($s1)
    /* 8FA8 8001A798 C0200400 */  sll        $a0, $a0, 3
    /* 8FAC 8001A79C FD69000C */  jal        func_8001A7F4
    /* 8FB0 8001A7A0 21206400 */   addu      $a0, $v1, $a0
    /* 8FB4 8001A7A4 21184000 */  addu       $v1, $v0, $zero
    /* 8FB8 8001A7A8 0B006004 */  bltz       $v1, .L8001A7D8
    /* 8FBC 8001A7AC 21106000 */   addu      $v0, $v1, $zero
    /* 8FC0 8001A7B0 00000286 */  lh         $v0, 0x0($s0)
    /* 8FC4 8001A7B4 F5690008 */  j          .L8001A7D4
    /* 8FC8 8001A7B8 21186200 */   addu      $v1, $v1, $v0
  .L8001A7BC:
    /* 8FCC 8001A7BC 21284002 */  addu       $a1, $s2, $zero
    /* 8FD0 8001A7C0 0400248E */  lw         $a0, 0x4($s1)
    /* 8FD4 8001A7C4 00002686 */  lh         $a2, 0x0($s1)
    /* 8FD8 8001A7C8 FD69000C */  jal        func_8001A7F4
    /* 8FDC 8001A7CC 21386002 */   addu      $a3, $s3, $zero
    /* 8FE0 8001A7D0 21184000 */  addu       $v1, $v0, $zero
  .L8001A7D4:
    /* 8FE4 8001A7D4 21106000 */  addu       $v0, $v1, $zero
  .L8001A7D8:
    /* 8FE8 8001A7D8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8FEC 8001A7DC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8FF0 8001A7E0 1800B28F */  lw         $s2, 0x18($sp)
    /* 8FF4 8001A7E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FF8 8001A7E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FFC 8001A7EC 0800E003 */  jr         $ra
    /* 9000 8001A7F0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8001A6AC
