nonmatching func_800A5CD0, 0x5C

glabel func_800A5CD0
    /* 944E0 800A5CD0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 944E4 800A5CD4 03008214 */  bne        $a0, $v0, .L800A5CE4
    /* 944E8 800A5CD8 60EA0834 */   ori       $t0, $zero, 0xEA60
    /* 944EC 800A5CDC 0800E003 */  jr         $ra
    /* 944F0 800A5CE0 21100000 */   addu      $v0, $zero, $zero
  .L800A5CE4:
    /* 944F4 800A5CE4 1B008800 */  divu       $zero, $a0, $t0
    /* 944F8 800A5CE8 12400000 */  mflo       $t0
    /* 944FC 800A5CEC 0000A8AC */  sw         $t0, 0x0($a1)
    /* 94500 800A5CF0 10200000 */  mfhi       $a0
    /* 94504 800A5CF4 E8030824 */  addiu      $t0, $zero, 0x3E8
    /* 94508 800A5CF8 00000000 */  nop
    /* 9450C 800A5CFC 1B008800 */  divu       $zero, $a0, $t0
    /* 94510 800A5D00 12400000 */  mflo       $t0
    /* 94514 800A5D04 0000C8AC */  sw         $t0, 0x0($a2)
    /* 94518 800A5D08 10180000 */  mfhi       $v1
    /* 9451C 800A5D0C CCCC043C */  lui        $a0, (0xCCCCCCCD >> 16)
    /* 94520 800A5D10 CDCC8434 */  ori        $a0, $a0, (0xCCCCCCCD & 0xFFFF)
    /* 94524 800A5D14 19006400 */  multu      $v1, $a0
    /* 94528 800A5D18 01000224 */  addiu      $v0, $zero, 0x1
    /* 9452C 800A5D1C 10180000 */  mfhi       $v1
    /* 94530 800A5D20 C2180300 */  srl        $v1, $v1, 3
    /* 94534 800A5D24 0800E003 */  jr         $ra
    /* 94538 800A5D28 0000E3AC */   sw        $v1, 0x0($a3)
endlabel func_800A5CD0
