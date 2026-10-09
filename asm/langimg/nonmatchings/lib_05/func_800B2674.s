nonmatching func_800B2674, 0x27C

glabel func_800B2674
    /* A0E84 800B2674 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0E88 800B2678 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0E8C 800B267C 21808000 */  addu       $s0, $a0, $zero
    /* A0E90 800B2680 57000426 */  addiu      $a0, $s0, 0x57
    /* A0E94 800B2684 1400BFAF */  sw         $ra, 0x14($sp)
    /* A0E98 800B2688 17D8020C */  jal        bzero
    /* A0E9C 800B268C 06000524 */   addiu     $a1, $zero, 0x6
    /* A0EA0 800B2690 E6000296 */  lhu        $v0, 0xE6($s0)
    /* A0EA4 800B2694 00000000 */  nop
    /* A0EA8 800B2698 54004010 */  beqz       $v0, .L800B27EC
    /* A0EAC 800B269C 00000000 */   nop
    /* A0EB0 800B26A0 2800028E */  lw         $v0, 0x28($s0)
    /* A0EB4 800B26A4 00000000 */  nop
    /* A0EB8 800B26A8 50004010 */  beqz       $v0, .L800B27EC
    /* A0EBC 800B26AC 00000000 */   nop
    /* A0EC0 800B26B0 34000292 */  lbu        $v0, 0x34($s0)
    /* A0EC4 800B26B4 00000000 */  nop
    /* A0EC8 800B26B8 0700422C */  sltiu      $v0, $v0, 0x7
    /* A0ECC 800B26BC 02004010 */  beqz       $v0, .L800B26C8
    /* A0ED0 800B26C0 06000924 */   addiu     $t1, $zero, 0x6
    /* A0ED4 800B26C4 34000992 */  lbu        $t1, 0x34($s0)
  .L800B26C8:
    /* A0ED8 800B26C8 E9000292 */  lbu        $v0, 0xE9($s0)
    /* A0EDC 800B26CC 00000000 */  nop
    /* A0EE0 800B26D0 83004010 */  beqz       $v0, .L800B28E0
    /* A0EE4 800B26D4 21400000 */   addu      $t0, $zero, $zero
    /* A0EE8 800B26D8 01000B24 */  addiu      $t3, $zero, 0x1
    /* A0EEC 800B26DC 21500000 */  addu       $t2, $zero, $zero
  .L800B26E0:
    /* A0EF0 800B26E0 0400028E */  lw         $v0, 0x4($s0)
    /* A0EF4 800B26E4 21300000 */  addu       $a2, $zero, $zero
    /* A0EF8 800B26E8 21104201 */  addu       $v0, $t2, $v0
    /* A0EFC 800B26EC 02004290 */  lbu        $v0, 0x2($v0)
    /* A0F00 800B26F0 00000000 */  nop
    /* A0F04 800B26F4 02004010 */  beqz       $v0, .L800B2700
    /* A0F08 800B26F8 01000724 */   addiu     $a3, $zero, 0x1
    /* A0F0C 800B26FC FF000724 */  addiu      $a3, $zero, 0xFF
  .L800B2700:
    /* A0F10 800B2700 5D000526 */  addiu      $a1, $s0, 0x5D
    /* A0F14 800B2704 2800048E */  lw         $a0, 0x28($s0)
    /* A0F18 800B2708 0F002011 */  beqz       $t1, .L800B2748
    /* A0F1C 800B270C 21180000 */   addu      $v1, $zero, $zero
  .L800B2710:
    /* A0F20 800B2710 0000A290 */  lbu        $v0, 0x0($a1)
    /* A0F24 800B2714 00000000 */  nop
    /* A0F28 800B2718 06004814 */  bne        $v0, $t0, .L800B2734
    /* A0F2C 800B271C 00000000 */   nop
    /* A0F30 800B2720 00008290 */  lbu        $v0, 0x0($a0)
    /* A0F34 800B2724 00000000 */  nop
    /* A0F38 800B2728 24104700 */  and        $v0, $v0, $a3
    /* A0F3C 800B272C 16004014 */  bnez       $v0, .L800B2788
    /* A0F40 800B2730 00000000 */   nop
  .L800B2734:
    /* A0F44 800B2734 0100A524 */  addiu      $a1, $a1, 0x1
    /* A0F48 800B2738 01006324 */  addiu      $v1, $v1, 0x1
    /* A0F4C 800B273C 2A106900 */  slt        $v0, $v1, $t1
    /* A0F50 800B2740 F3FF4014 */  bnez       $v0, .L800B2710
    /* A0F54 800B2744 01008424 */   addiu     $a0, $a0, 0x1
  .L800B2748:
    /* A0F58 800B2748 2100C010 */  beqz       $a2, .L800B27D0
    /* A0F5C 800B274C 00000000 */   nop
    /* A0F60 800B2750 0400028E */  lw         $v0, 0x4($s0)
    /* A0F64 800B2754 00000000 */  nop
    /* A0F68 800B2758 21104201 */  addu       $v0, $t2, $v0
    /* A0F6C 800B275C 03004390 */  lbu        $v1, 0x3($v0)
    /* A0F70 800B2760 0C80023C */  lui        $v0, %hi(D_800C3CD0)
    /* A0F74 800B2764 D03C428C */  lw         $v0, %lo(D_800C3CD0)($v0)
    /* A0F78 800B2768 00000000 */  nop
    /* A0F7C 800B276C 21184300 */  addu       $v1, $v0, $v1
    /* A0F80 800B2770 3D006228 */  slti       $v0, $v1, 0x3D
    /* A0F84 800B2774 06004010 */  beqz       $v0, .L800B2790
    /* A0F88 800B2778 00000000 */   nop
    /* A0F8C 800B277C 0C80013C */  lui        $at, %hi(D_800C3CD0)
    /* A0F90 800B2780 E5C90208 */  j          .L800B2794
    /* A0F94 800B2784 D03C23AC */   sw        $v1, %lo(D_800C3CD0)($at)
  .L800B2788:
    /* A0F98 800B2788 D2C90208 */  j          .L800B2748
    /* A0F9C 800B278C 01000624 */   addiu     $a2, $zero, 0x1
  .L800B2790:
    /* A0FA0 800B2790 21300000 */  addu       $a2, $zero, $zero
  .L800B2794:
    /* A0FA4 800B2794 0E00C010 */  beqz       $a2, .L800B27D0
    /* A0FA8 800B2798 00000000 */   nop
    /* A0FAC 800B279C 5D000526 */  addiu      $a1, $s0, 0x5D
    /* A0FB0 800B27A0 57000426 */  addiu      $a0, $s0, 0x57
    /* A0FB4 800B27A4 0A002011 */  beqz       $t1, .L800B27D0
    /* A0FB8 800B27A8 21180000 */   addu      $v1, $zero, $zero
  .L800B27AC:
    /* A0FBC 800B27AC 0000A290 */  lbu        $v0, 0x0($a1)
    /* A0FC0 800B27B0 00000000 */  nop
    /* A0FC4 800B27B4 02004814 */  bne        $v0, $t0, .L800B27C0
    /* A0FC8 800B27B8 0100A524 */   addiu     $a1, $a1, 0x1
    /* A0FCC 800B27BC 00008BA0 */  sb         $t3, 0x0($a0)
  .L800B27C0:
    /* A0FD0 800B27C0 01006324 */  addiu      $v1, $v1, 0x1
    /* A0FD4 800B27C4 2A106900 */  slt        $v0, $v1, $t1
    /* A0FD8 800B27C8 F8FF4014 */  bnez       $v0, .L800B27AC
    /* A0FDC 800B27CC 01008424 */   addiu     $a0, $a0, 0x1
  .L800B27D0:
    /* A0FE0 800B27D0 E9000292 */  lbu        $v0, 0xE9($s0)
    /* A0FE4 800B27D4 01000825 */  addiu      $t0, $t0, 0x1
    /* A0FE8 800B27D8 2A100201 */  slt        $v0, $t0, $v0
    /* A0FEC 800B27DC C0FF4014 */  bnez       $v0, .L800B26E0
    /* A0FF0 800B27E0 05004A25 */   addiu     $t2, $t2, 0x5
    /* A0FF4 800B27E4 38CA0208 */  j          .L800B28E0
    /* A0FF8 800B27E8 00000000 */   nop
  .L800B27EC:
    /* A0FFC 800B27EC E8000392 */  lbu        $v1, 0xE8($s0)
    /* A1000 800B27F0 00000000 */  nop
    /* A1004 800B27F4 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* A1008 800B27F8 0200422C */  sltiu      $v0, $v0, 0x2
    /* A100C 800B27FC 03004014 */  bnez       $v0, .L800B280C
    /* A1010 800B2800 07000224 */   addiu     $v0, $zero, 0x7
    /* A1014 800B2804 26006214 */  bne        $v1, $v0, .L800B28A0
    /* A1018 800B2808 00000000 */   nop
  .L800B280C:
    /* A101C 800B280C E6000296 */  lhu        $v0, 0xE6($s0)
    /* A1020 800B2810 00000000 */  nop
    /* A1024 800B2814 22004014 */  bnez       $v0, .L800B28A0
    /* A1028 800B2818 00000000 */   nop
    /* A102C 800B281C 34000292 */  lbu        $v0, 0x34($s0)
    /* A1030 800B2820 00000000 */  nop
    /* A1034 800B2824 0200422C */  sltiu      $v0, $v0, 0x2
    /* A1038 800B2828 1D004014 */  bnez       $v0, .L800B28A0
    /* A103C 800B282C 40000324 */   addiu     $v1, $zero, 0x40
    /* A1040 800B2830 2800048E */  lw         $a0, 0x28($s0)
    /* A1044 800B2834 00000000 */  nop
    /* A1048 800B2838 00008290 */  lbu        $v0, 0x0($a0)
    /* A104C 800B283C 00000000 */  nop
    /* A1050 800B2840 C0004230 */  andi       $v0, $v0, 0xC0
    /* A1054 800B2844 26004314 */  bne        $v0, $v1, .L800B28E0
    /* A1058 800B2848 00000000 */   nop
    /* A105C 800B284C 01008290 */  lbu        $v0, 0x1($a0)
    /* A1060 800B2850 00000000 */  nop
    /* A1064 800B2854 01004230 */  andi       $v0, $v0, 0x1
    /* A1068 800B2858 21004010 */  beqz       $v0, .L800B28E0
    /* A106C 800B285C 00000000 */   nop
    /* A1070 800B2860 0C80023C */  lui        $v0, %hi(D_800C3CD0)
    /* A1074 800B2864 D03C428C */  lw         $v0, %lo(D_800C3CD0)($v0)
    /* A1078 800B2868 00000000 */  nop
    /* A107C 800B286C 0A004224 */  addiu      $v0, $v0, 0xA
    /* A1080 800B2870 3D004228 */  slti       $v0, $v0, 0x3D
    /* A1084 800B2874 1A004010 */  beqz       $v0, .L800B28E0
    /* A1088 800B2878 01000224 */   addiu     $v0, $zero, 0x1
    /* A108C 800B287C 580002A2 */  sb         $v0, 0x58($s0)
    /* A1090 800B2880 570002A2 */  sb         $v0, 0x57($s0)
    /* A1094 800B2884 0C80023C */  lui        $v0, %hi(D_800C3CD0)
    /* A1098 800B2888 D03C428C */  lw         $v0, %lo(D_800C3CD0)($v0)
    /* A109C 800B288C 00000000 */  nop
    /* A10A0 800B2890 0A004224 */  addiu      $v0, $v0, 0xA
    /* A10A4 800B2894 0C80013C */  lui        $at, %hi(D_800C3CD0)
    /* A10A8 800B2898 38CA0208 */  j          .L800B28E0
    /* A10AC 800B289C D03C22AC */   sw        $v0, %lo(D_800C3CD0)($at)
  .L800B28A0:
    /* A10B0 800B28A0 E8000392 */  lbu        $v1, 0xE8($s0)
    /* A10B4 800B28A4 03000224 */  addiu      $v0, $zero, 0x3
    /* A10B8 800B28A8 03006214 */  bne        $v1, $v0, .L800B28B8
    /* A10BC 800B28AC 01000224 */   addiu     $v0, $zero, 0x1
    /* A10C0 800B28B0 38CA0208 */  j          .L800B28E0
    /* A10C4 800B28B4 570002A2 */   sb        $v0, 0x57($s0)
  .L800B28B8:
    /* A10C8 800B28B8 E6000296 */  lhu        $v0, 0xE6($s0)
    /* A10CC 800B28BC 00000000 */  nop
    /* A10D0 800B28C0 07004014 */  bnez       $v0, .L800B28E0
    /* A10D4 800B28C4 01000224 */   addiu     $v0, $zero, 0x1
    /* A10D8 800B28C8 05000324 */  addiu      $v1, $zero, 0x5
    /* A10DC 800B28CC 05000426 */  addiu      $a0, $s0, 0x5
  .L800B28D0:
    /* A10E0 800B28D0 570082A0 */  sb         $v0, 0x57($a0)
    /* A10E4 800B28D4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A10E8 800B28D8 FDFF6104 */  bgez       $v1, .L800B28D0
    /* A10EC 800B28DC FFFF8424 */   addiu     $a0, $a0, -0x1
  .L800B28E0:
    /* A10F0 800B28E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* A10F4 800B28E4 1000B08F */  lw         $s0, 0x10($sp)
    /* A10F8 800B28E8 0800E003 */  jr         $ra
    /* A10FC 800B28EC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B2674
