nonmatching func_80141FA8, 0x160

glabel func_80141FA8
    /* F474 80141FA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F478 80141FAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* F47C 80141FB0 21888000 */  addu       $s1, $a0, $zero
    /* F480 80141FB4 1800B2AF */  sw         $s2, 0x18($sp)
    /* F484 80141FB8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* F488 80141FBC 1000B0AF */  sw         $s0, 0x10($sp)
    /* F48C 80141FC0 1C80013C */  lui        $at, %hi(D_801BFE94)
    /* F490 80141FC4 94FE20AC */  sw         $zero, %lo(D_801BFE94)($at)
    /* F494 80141FC8 1C80013C */  lui        $at, %hi(D_801BFEA8)
    /* F498 80141FCC A8FE20AC */  sw         $zero, %lo(D_801BFEA8)($at)
    /* F49C 80141FD0 8209050C */  jal        func_80142608
    /* F4A0 80141FD4 2190A000 */   addu      $s2, $a1, $zero
    /* F4A4 80141FD8 1D80103C */  lui        $s0, %hi(D_801CE840)
    /* F4A8 80141FDC 40E81026 */  addiu      $s0, $s0, %lo(D_801CE840)
    /* F4AC 80141FE0 1480023C */  lui        $v0, %hi(func_80142170)
    /* F4B0 80141FE4 70214224 */  addiu      $v0, $v0, %lo(func_80142170)
    /* F4B4 80141FE8 1C80013C */  lui        $at, %hi(D_801BFE5C)
    /* F4B8 80141FEC 5CFE22AC */  sw         $v0, %lo(D_801BFE5C)($at)
    /* F4BC 80141FF0 1480023C */  lui        $v0, %hi(func_80142108)
    /* F4C0 80141FF4 08214224 */  addiu      $v0, $v0, %lo(func_80142108)
    /* F4C4 80141FF8 1C80013C */  lui        $at, %hi(D_801BFE60)
    /* F4C8 80141FFC 60FE22AC */  sw         $v0, %lo(D_801BFE60)($at)
    /* F4CC 80142000 1480023C */  lui        $v0, %hi(func_80142274)
    /* F4D0 80142004 74224224 */  addiu      $v0, $v0, %lo(func_80142274)
    /* F4D4 80142008 1C80013C */  lui        $at, %hi(D_801BFE64)
    /* F4D8 8014200C 64FE22AC */  sw         $v0, %lo(D_801BFE64)($at)
    /* F4DC 80142010 1480023C */  lui        $v0, %hi(func_80142330)
    /* F4E0 80142014 30234224 */  addiu      $v0, $v0, %lo(func_80142330)
    /* F4E4 80142018 1C80013C */  lui        $at, %hi(D_801BFE68)
    /* F4E8 8014201C 68FE22AC */  sw         $v0, %lo(D_801BFE68)($at)
    /* F4EC 80142020 1480023C */  lui        $v0, %hi(func_801425AC)
    /* F4F0 80142024 AC254224 */  addiu      $v0, $v0, %lo(func_801425AC)
    /* F4F4 80142028 1C80013C */  lui        $at, %hi(D_801BFE6C)
    /* F4F8 8014202C 6CFE22AC */  sw         $v0, %lo(D_801BFE6C)($at)
    /* F4FC 80142030 1480023C */  lui        $v0, %hi(func_801425E4)
    /* F500 80142034 E4254224 */  addiu      $v0, $v0, %lo(func_801425E4)
    /* F504 80142038 1C80013C */  lui        $at, %hi(D_801BFE70)
    /* F508 8014203C 70FE22AC */  sw         $v0, %lo(D_801BFE70)($at)
    /* F50C 80142040 1480023C */  lui        $v0, %hi(func_80142264)
    /* F510 80142044 64224224 */  addiu      $v0, $v0, %lo(func_80142264)
    /* F514 80142048 21200002 */  addu       $a0, $s0, $zero
    /* F518 8014204C 1C80013C */  lui        $at, %hi(D_801BFE90)
    /* F51C 80142050 90FE30AC */  sw         $s0, %lo(D_801BFE90)($at)
    /* F520 80142054 1C80013C */  lui        $at, %hi(D_801BFE80)
    /* F524 80142058 80FE22AC */  sw         $v0, %lo(D_801BFE80)($at)
    /* F528 8014205C 4C2B050C */  jal        func_8014AD30
    /* F52C 80142060 E0010524 */   addiu     $a1, $zero, 0x1E0
    /* F530 80142064 21400000 */  addu       $t0, $zero, $zero
    /* F534 80142068 FF000924 */  addiu      $t1, $zero, 0xFF
    /* F538 8014206C 40000426 */  addiu      $a0, $s0, 0x40
    /* F53C 80142070 1D80073C */  lui        $a3, %hi(D_801CE7F8)
    /* F540 80142074 F8E7E724 */  addiu      $a3, $a3, %lo(D_801CE7F8)
    /* F544 80142078 1D80063C */  lui        $a2, %hi(D_801CE7B0)
    /* F548 8014207C B0E7C624 */  addiu      $a2, $a2, %lo(D_801CE7B0)
    /* F54C 80142080 300011AE */  sw         $s1, 0x30($s0)
    /* F550 80142084 200112AE */  sw         $s2, 0x120($s0)
  .L80142088:
    /* F554 80142088 F0FF828C */  lw         $v0, -0x10($a0)
    /* F558 8014208C 5D000526 */  addiu      $a1, $s0, 0x5D
    /* F55C 80142090 CCFF80AC */  sw         $zero, -0x34($a0)
    /* F560 80142094 D0FF90AC */  sw         $s0, -0x30($a0)
    /* F564 80142098 000049A0 */  sb         $t1, 0x0($v0)
    /* F568 8014209C F0FF828C */  lw         $v0, -0x10($a0)
    /* F56C 801420A0 05000324 */  addiu      $v1, $zero, 0x5
    /* F570 801420A4 010040A0 */  sb         $zero, 0x1($v0)
    /* F574 801420A8 FCFF86AC */  sw         $a2, -0x4($a0)
    /* F578 801420AC 000087AC */  sw         $a3, 0x0($a0)
  .L801420B0:
    /* F57C 801420B0 0000A9A0 */  sb         $t1, 0x0($a1)
    /* F580 801420B4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* F584 801420B8 FDFF6104 */  bgez       $v1, .L801420B0
    /* F588 801420BC 0100A524 */   addiu     $a1, $a1, 0x1
    /* F58C 801420C0 2300E724 */  addiu      $a3, $a3, 0x23
    /* F590 801420C4 2300C624 */  addiu      $a2, $a2, 0x23
    /* F594 801420C8 01000825 */  addiu      $t0, $t0, 0x1
    /* F598 801420CC F0008424 */  addiu      $a0, $a0, 0xF0
    /* F59C 801420D0 02000229 */  slti       $v0, $t0, 0x2
    /* F5A0 801420D4 ECFF4014 */  bnez       $v0, .L80142088
    /* F5A4 801420D8 F0001026 */   addiu     $s0, $s0, 0xF0
    /* F5A8 801420DC 3900050C */  jal        func_801400E4
    /* F5AC 801420E0 00000000 */   nop
    /* F5B0 801420E4 01000224 */  addiu      $v0, $zero, 0x1
    /* F5B4 801420E8 1C80013C */  lui        $at, %hi(D_801BFE94)
    /* F5B8 801420EC 94FE22AC */  sw         $v0, %lo(D_801BFE94)($at)
    /* F5BC 801420F0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F5C0 801420F4 1800B28F */  lw         $s2, 0x18($sp)
    /* F5C4 801420F8 1400B18F */  lw         $s1, 0x14($sp)
    /* F5C8 801420FC 1000B08F */  lw         $s0, 0x10($sp)
    /* F5CC 80142100 0800E003 */  jr         $ra
    /* F5D0 80142104 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80141FA8
