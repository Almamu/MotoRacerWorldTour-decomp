nonmatching func_800B3798, 0x84

glabel func_800B3798
    /* A1FA8 800B3798 0C80023C */  lui        $v0, %hi(D_800C3DCC)
    /* A1FAC 800B379C CC3D428C */  lw         $v0, %lo(D_800C3DCC)($v0)
    /* A1FB0 800B37A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A1FB4 800B37A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A1FB8 800B37A8 21888000 */  addu       $s1, $a0, $zero
    /* A1FBC 800B37AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1FC0 800B37B0 2180A000 */  addu       $s0, $a1, $zero
    /* A1FC4 800B37B4 10004014 */  bnez       $v0, .L800B37F8
    /* A1FC8 800B37B8 1800BFAF */   sw        $ra, 0x18($sp)
    /* A1FCC 800B37BC 0C80023C */  lui        $v0, %hi(D_800C3DC8)
    /* A1FD0 800B37C0 C83D4294 */  lhu        $v0, %lo(D_800C3DC8)($v0)
    /* A1FD4 800B37C4 0C80053C */  lui        $a1, %hi(D_800C3DD8)
    /* A1FD8 800B37C8 D83DA58C */  lw         $a1, %lo(D_800C3DD8)($a1)
    /* A1FDC 800B37CC 02000424 */  addiu      $a0, $zero, 0x2
    /* A1FE0 800B37D0 46CD020C */  jal        func_800B3518
    /* A1FE4 800B37D4 0428A200 */   sllv      $a1, $v0, $a1
    /* A1FE8 800B37D8 46CD020C */  jal        func_800B3518
    /* A1FEC 800B37DC 01000424 */   addiu     $a0, $zero, 0x1
    /* A1FF0 800B37E0 03000424 */  addiu      $a0, $zero, 0x3
    /* A1FF4 800B37E4 21282002 */  addu       $a1, $s1, $zero
    /* A1FF8 800B37E8 46CD020C */  jal        func_800B3518
    /* A1FFC 800B37EC 21300002 */   addu      $a2, $s0, $zero
    /* A2000 800B37F0 02CE0208 */  j          .L800B3808
    /* A2004 800B37F4 21100002 */   addu      $v0, $s0, $zero
  .L800B37F8:
    /* A2008 800B37F8 21202002 */  addu       $a0, $s1, $zero
    /* A200C 800B37FC A7CC020C */  jal        func_800B329C
    /* A2010 800B3800 21280002 */   addu      $a1, $s0, $zero
    /* A2014 800B3804 21100002 */  addu       $v0, $s0, $zero
  .L800B3808:
    /* A2018 800B3808 1800BF8F */  lw         $ra, 0x18($sp)
    /* A201C 800B380C 1400B18F */  lw         $s1, 0x14($sp)
    /* A2020 800B3810 1000B08F */  lw         $s0, 0x10($sp)
    /* A2024 800B3814 0800E003 */  jr         $ra
    /* A2028 800B3818 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B3798
