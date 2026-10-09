nonmatching _padSioRW, 0x1D8

glabel _padSioRW
    /* 9F6F4 800B0EE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F6F8 800B0EE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F6FC 800B0EEC 21808000 */  addu       $s0, $a0, $zero
    /* 9F700 800B0EF0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F704 800B0EF4 2190A000 */  addu       $s2, $a1, $zero
    /* 9F708 800B0EF8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9F70C 800B0EFC 22004106 */  bgez       $s2, .L800B0F88
    /* 9F710 800B0F00 1400B1AF */   sw        $s1, 0x14($sp)
    /* 9F714 800B0F04 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9F718 800B0F08 EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9F71C 800B0F0C 4000038E */  lw         $v1, 0x40($s0)
    /* 9F720 800B0F10 00004490 */  lbu        $a0, 0x0($v0)
    /* 9F724 800B0F14 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 9F728 800B0F18 440002A2 */  sb         $v0, 0x44($s0)
    /* 9F72C 800B0F1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F730 800B0F20 450002A2 */  sb         $v0, 0x45($s0)
    /* 9F734 800B0F24 27101200 */  nor        $v0, $zero, $s2
    /* 9F738 800B0F28 000062A0 */  sb         $v0, 0x0($v1)
    /* 9F73C 800B0F2C 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F740 800B0F30 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F744 800B0F34 00000000 */  nop
    /* 9F748 800B0F38 04006294 */  lhu        $v0, 0x4($v1)
    /* 9F74C 800B0F3C 00000000 */  nop
    /* 9F750 800B0F40 01004230 */  andi       $v0, $v0, 0x1
    /* 9F754 800B0F44 06004014 */  bnez       $v0, .L800B0F60
    /* 9F758 800B0F48 FF009130 */   andi      $s1, $a0, 0xFF
  .L800B0F4C:
    /* 9F75C 800B0F4C 04006294 */  lhu        $v0, 0x4($v1)
    /* 9F760 800B0F50 00000000 */  nop
    /* 9F764 800B0F54 01004230 */  andi       $v0, $v0, 0x1
    /* 9F768 800B0F58 FCFF4010 */  beqz       $v0, .L800B0F4C
    /* 9F76C 800B0F5C 00000000 */   nop
  .L800B0F60:
    /* 9F770 800B0F60 7FCB020C */  jal        chkRC2wait
    /* 9F774 800B0F64 00000000 */   nop
    /* 9F778 800B0F68 FDFF4010 */  beqz       $v0, .L800B0F60
    /* 9F77C 800B0F6C 27101200 */   nor       $v0, $zero, $s2
    /* 9F780 800B0F70 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F784 800B0F74 EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F788 800B0F78 00000000 */  nop
    /* 9F78C 800B0F7C 000062A0 */  sb         $v0, 0x0($v1)
    /* 9F790 800B0F80 29C40208 */  j          .L800B10A4
    /* 9F794 800B0F84 21102002 */   addu      $v0, $s1, $zero
  .L800B0F88:
    /* 9F798 800B0F88 3C00028E */  lw         $v0, 0x3C($s0)
    /* 9F79C 800B0F8C 00000000 */  nop
    /* 9F7A0 800B0F90 00004290 */  lbu        $v0, 0x0($v0)
    /* 9F7A4 800B0F94 08000324 */  addiu      $v1, $zero, 0x8
    /* 9F7A8 800B0F98 03110200 */  sra        $v0, $v0, 4
    /* 9F7AC 800B0F9C 07004314 */  bne        $v0, $v1, .L800B0FBC
    /* 9F7B0 800B0FA0 88000624 */   addiu     $a2, $zero, 0x88
    /* 9F7B4 800B0FA4 44000292 */  lbu        $v0, 0x44($s0)
    /* 9F7B8 800B0FA8 00000000 */  nop
    /* 9F7BC 800B0FAC 0900422C */  sltiu      $v0, $v0, 0x9
    /* 9F7C0 800B0FB0 03004014 */  bnez       $v0, .L800B0FC0
    /* 9F7C4 800B0FB4 801F023C */   lui       $v0, (0x1F801120 >> 16)
    /* 9F7C8 800B0FB8 22000624 */  addiu      $a2, $zero, 0x22
  .L800B0FBC:
    /* 9F7CC 800B0FBC 801F023C */  lui        $v0, (0x1F801120 >> 16)
  .L800B0FC0:
    /* 9F7D0 800B0FC0 20114234 */  ori        $v0, $v0, (0x1F801120 & 0xFFFF)
    /* 9F7D4 800B0FC4 0C80053C */  lui        $a1, %hi(D_800C3CEC)
    /* 9F7D8 800B0FC8 EC3CA58C */  lw         $a1, %lo(D_800C3CEC)($a1)
    /* 9F7DC 800B0FCC 00004494 */  lhu        $a0, 0x0($v0)
    /* 9F7E0 800B0FD0 0400A394 */  lhu        $v1, 0x4($a1)
    /* 9F7E4 800B0FD4 AE010224 */  addiu      $v0, $zero, 0x1AE
    /* 9F7E8 800B0FD8 0E80013C */  lui        $at, %hi(D_800DE6C4)
    /* 9F7EC 800B0FDC C4E622AC */  sw         $v0, %lo(D_800DE6C4)($at)
    /* 9F7F0 800B0FE0 0E80013C */  lui        $at, %hi(D_800DE6C0)
    /* 9F7F4 800B0FE4 C0E624AC */  sw         $a0, %lo(D_800DE6C0)($at)
    /* 9F7F8 800B0FE8 02006330 */  andi       $v1, $v1, 0x2
    /* 9F7FC 800B0FEC 06006014 */  bnez       $v1, .L800B1008
    /* 9F800 800B0FF0 2118A000 */   addu      $v1, $a1, $zero
  .L800B0FF4:
    /* 9F804 800B0FF4 04006294 */  lhu        $v0, 0x4($v1)
    /* 9F808 800B0FF8 00000000 */  nop
    /* 9F80C 800B0FFC 02004230 */  andi       $v0, $v0, 0x2
    /* 9F810 800B1000 FCFF4010 */  beqz       $v0, .L800B0FF4
    /* 9F814 800B1004 00000000 */   nop
  .L800B1008:
    /* 9F818 800B1008 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9F81C 800B100C EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9F820 800B1010 0C80033C */  lui        $v1, %hi(D_800C3CE8)
    /* 9F824 800B1014 E83C638C */  lw         $v1, %lo(D_800C3CE8)($v1)
    /* 9F828 800B1018 00004490 */  lbu        $a0, 0x0($v0)
    /* 9F82C 800B101C 0E0046A4 */  sh         $a2, 0xE($v0)
    /* 9F830 800B1020 0000628C */  lw         $v0, 0x0($v1)
    /* 9F834 800B1024 00000000 */  nop
    /* 9F838 800B1028 80004230 */  andi       $v0, $v0, 0x80
    /* 9F83C 800B102C 0D004014 */  bnez       $v0, .L800B1064
    /* 9F840 800B1030 FF009130 */   andi      $s1, $a0, 0xFF
  .L800B1034:
    /* 9F844 800B1034 7FCB020C */  jal        chkRC2wait
    /* 9F848 800B1038 00000000 */   nop
    /* 9F84C 800B103C 19004014 */  bnez       $v0, .L800B10A4
    /* 9F850 800B1040 ECFF0224 */   addiu     $v0, $zero, -0x14
    /* 9F854 800B1044 0C80023C */  lui        $v0, %hi(D_800C3CE8)
    /* 9F858 800B1048 E83C428C */  lw         $v0, %lo(D_800C3CE8)($v0)
    /* 9F85C 800B104C 00000000 */  nop
    /* 9F860 800B1050 0000428C */  lw         $v0, 0x0($v0)
    /* 9F864 800B1054 00000000 */  nop
    /* 9F868 800B1058 80004230 */  andi       $v0, $v0, 0x80
    /* 9F86C 800B105C F5FF4010 */  beqz       $v0, .L800B1034
    /* 9F870 800B1060 00000000 */   nop
  .L800B1064:
    /* 9F874 800B1064 0C80023C */  lui        $v0, %hi(D_800C3CEC)
    /* 9F878 800B1068 EC3C428C */  lw         $v0, %lo(D_800C3CEC)($v0)
    /* 9F87C 800B106C 00000000 */  nop
    /* 9F880 800B1070 000052A0 */  sb         $s2, 0x0($v0)
    /* 9F884 800B1074 45000292 */  lbu        $v0, 0x45($s0)
    /* 9F888 800B1078 44000492 */  lbu        $a0, 0x44($s0)
    /* 9F88C 800B107C 3C00038E */  lw         $v1, 0x3C($s0)
    /* 9F890 800B1080 01004224 */  addiu      $v0, $v0, 0x1
    /* 9F894 800B1084 21186400 */  addu       $v1, $v1, $a0
    /* 9F898 800B1088 450002A2 */  sb         $v0, 0x45($s0)
    /* 9F89C 800B108C 000071A0 */  sb         $s1, 0x0($v1)
    /* 9F8A0 800B1090 44000292 */  lbu        $v0, 0x44($s0)
    /* 9F8A4 800B1094 00000000 */  nop
    /* 9F8A8 800B1098 01004224 */  addiu      $v0, $v0, 0x1
    /* 9F8AC 800B109C 440002A2 */  sb         $v0, 0x44($s0)
    /* 9F8B0 800B10A0 21102002 */  addu       $v0, $s1, $zero
  .L800B10A4:
    /* 9F8B4 800B10A4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9F8B8 800B10A8 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F8BC 800B10AC 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F8C0 800B10B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F8C4 800B10B4 0800E003 */  jr         $ra
    /* 9F8C8 800B10B8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _padSioRW
