nonmatching func_800515A8, 0x70

glabel func_800515A8
    /* 3FDB8 800515A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FDBC 800515AC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3FDC0 800515B0 7803C68C */  lw         $a2, 0x378($a2)
    /* 3FDC4 800515B4 00000000 */  nop
    /* 3FDC8 800515B8 0000C28C */  lw         $v0, 0x0($a2)
    /* 3FDCC 800515BC 00000000 */  nop
    /* 3FDD0 800515C0 A8004230 */  andi       $v0, $v0, 0xA8
    /* 3FDD4 800515C4 10004014 */  bnez       $v0, .L80051608
    /* 3FDD8 800515C8 00000000 */   nop
    /* 3FDDC 800515CC 5C05848C */  lw         $a0, 0x55C($a0)
    /* 3FDE0 800515D0 00000000 */  nop
    /* 3FDE4 800515D4 0C008010 */  beqz       $a0, .L80051608
    /* 3FDE8 800515D8 40190500 */   sll       $v1, $a1, 5
    /* 3FDEC 800515DC 0400848C */  lw         $a0, 0x4($a0)
    /* 3FDF0 800515E0 0D80023C */  lui        $v0, %hi(D_800D5F30)
    /* 3FDF4 800515E4 305F428C */  lw         $v0, %lo(D_800D5F30)($v0)
    /* 3FDF8 800515E8 21186400 */  addu       $v1, $v1, $a0
    /* 3FDFC 800515EC 40100200 */  sll        $v0, $v0, 1
    /* 3FE00 800515F0 21186200 */  addu       $v1, $v1, $v0
    /* 3FE04 800515F4 14006594 */  lhu        $a1, 0x14($v1)
    /* 3FE08 800515F8 45000424 */  addiu      $a0, $zero, 0x45
    /* 3FE0C 800515FC F01DC5AC */  sw         $a1, 0x1DF0($a2)
    /* 3FE10 80051600 A1B2010C */  jal        func_8006CA84
    /* 3FE14 80051604 7F000524 */   addiu     $a1, $zero, 0x7F
  .L80051608:
    /* 3FE18 80051608 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3FE1C 8005160C 00000000 */  nop
    /* 3FE20 80051610 0800E003 */  jr         $ra
    /* 3FE24 80051614 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800515A8
