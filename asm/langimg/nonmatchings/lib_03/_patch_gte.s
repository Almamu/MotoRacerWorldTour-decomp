nonmatching _patch_gte, 0xAC

glabel _patch_gte
    /* 9CEF8 800AE6E8 0E80013C */  lui        $at, %hi(D_800DE2E8)
    /* 9CEFC 800AE6EC E8E23FAC */  sw         $ra, %lo(D_800DE2E8)($at)
    /* 9CF00 800AE6F0 E0D6020C */  jal        EnterCriticalSection
    /* 9CF04 800AE6F4 00000000 */   nop
    /* 9CF08 800AE6F8 56000924 */  addiu      $t1, $zero, 0x56
    /* 9CF0C 800AE6FC B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9CF10 800AE700 09F84001 */  jalr       $t2
    /* 9CF14 800AE704 00000000 */   nop
    /* 9CF18 800AE708 1800428C */  lw         $v0, 0x18($v0)
    /* 9CF1C 800AE70C 00000000 */  nop
    /* 9CF20 800AE710 28004224 */  addiu      $v0, $v0, 0x28
    /* 9CF24 800AE714 21784000 */  addu       $t7, $v0, $zero
    /* 9CF28 800AE718 0B800A3C */  lui        $t2, %hi(func_800AE794)
    /* 9CF2C 800AE71C 94E74A25 */  addiu      $t2, $t2, %lo(func_800AE794)
    /* 9CF30 800AE720 0B80093C */  lui        $t1, %hi(D_800AE7AC)
    /* 9CF34 800AE724 ACE72925 */  addiu      $t1, $t1, %lo(D_800AE7AC)
  .L800AE728:
    /* 9CF38 800AE728 0000438D */  lw         $v1, 0x0($t2)
    /* 9CF3C 800AE72C 00004B8C */  lw         $t3, 0x0($v0)
    /* 9CF40 800AE730 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9CF44 800AE734 0E006B14 */  bne        $v1, $t3, .L800AE770
    /* 9CF48 800AE738 04004224 */   addiu     $v0, $v0, 0x4
    /* 9CF4C 800AE73C FAFF4915 */  bne        $t2, $t1, .L800AE728
    /* 9CF50 800AE740 00000000 */   nop
    /* 9CF54 800AE744 2110E001 */  addu       $v0, $t7, $zero
    /* 9CF58 800AE748 0B800A3C */  lui        $t2, %hi(D_800AE7AC)
    /* 9CF5C 800AE74C ACE74A25 */  addiu      $t2, $t2, %lo(D_800AE7AC)
    /* 9CF60 800AE750 0B80093C */  lui        $t1, %hi(D_800AE7C4)
    /* 9CF64 800AE754 C4E72925 */  addiu      $t1, $t1, %lo(D_800AE7C4)
  .L800AE758:
    /* 9CF68 800AE758 0000438D */  lw         $v1, 0x0($t2)
    /* 9CF6C 800AE75C 00000000 */  nop
    /* 9CF70 800AE760 000043AC */  sw         $v1, 0x0($v0)
    /* 9CF74 800AE764 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9CF78 800AE768 FBFF4915 */  bne        $t2, $t1, .L800AE758
    /* 9CF7C 800AE76C 04004224 */   addiu     $v0, $v0, 0x4
  .L800AE770:
    /* 9CF80 800AE770 A8D6020C */  jal        FlushCache
    /* 9CF84 800AE774 00000000 */   nop
    /* 9CF88 800AE778 E4D6020C */  jal        ExitCriticalSection
    /* 9CF8C 800AE77C 00000000 */   nop
    /* 9CF90 800AE780 0E801F3C */  lui        $ra, %hi(D_800DE2E8)
    /* 9CF94 800AE784 E8E2FF8F */  lw         $ra, %lo(D_800DE2E8)($ra)
    /* 9CF98 800AE788 00000000 */  nop
    /* 9CF9C 800AE78C 0800E003 */  jr         $ra
    /* 9CFA0 800AE790 00000000 */   nop
endlabel _patch_gte
