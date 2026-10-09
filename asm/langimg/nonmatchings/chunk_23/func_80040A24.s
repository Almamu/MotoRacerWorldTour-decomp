nonmatching func_80040A24, 0xE0

glabel func_80040A24
    /* 2F234 80040A24 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2F238 80040A28 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2F23C 80040A2C 21808000 */  addu       $s0, $a0, $zero
    /* 2F240 80040A30 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2F244 80040A34 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2F248 80040A38 0000A58C */  lw         $a1, 0x0($a1)
    /* 2F24C 80040A3C 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 2F250 80040A40 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 2F254 80040A44 F1E3010C */  jal        func_80078FC4
    /* 2F258 80040A48 4C011126 */   addiu     $s1, $s0, 0x14C
    /* 2F25C 80040A4C A000038E */  lw         $v1, 0xA0($s0)
    /* 2F260 80040A50 09000224 */  addiu      $v0, $zero, 0x9
    /* 2F264 80040A54 D474020C */  jal        func_8009D350
    /* 2F268 80040A58 080062AC */   sw        $v0, 0x8($v1)
    /* 2F26C 80040A5C 21382002 */  addu       $a3, $s1, $zero
    /* 2F270 80040A60 A000048E */  lw         $a0, 0xA0($s0)
    /* 2F274 80040A64 6000058E */  lw         $a1, 0x60($s0)
    /* 2F278 80040A68 0D80033C */  lui        $v1, %hi(D_800D489C)
    /* 2F27C 80040A6C 9C48638C */  lw         $v1, %lo(D_800D489C)($v1)
    /* 2F280 80040A70 04000224 */  addiu      $v0, $zero, 0x4
    /* 2F284 80040A74 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2F288 80040A78 4C0103AE */  sw         $v1, 0x14C($s0)
    /* 2F28C 80040A7C 0D80063C */  lui        $a2, %hi(D_800C9360)
    /* 2F290 80040A80 6093C68C */  lw         $a2, %lo(D_800C9360)($a2)
    /* 2F294 80040A84 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F298 80040A88 21ED000C */  jal        func_8003B484
    /* 2F29C 80040A8C 1400A2AF */   sw        $v0, 0x14($sp)
    /* 2F2A0 80040A90 21282002 */  addu       $a1, $s1, $zero
    /* 2F2A4 80040A94 04000624 */  addiu      $a2, $zero, 0x4
    /* 2F2A8 80040A98 A000048E */  lw         $a0, 0xA0($s0)
    /* 2F2AC 80040A9C 47ED000C */  jal        func_8003B51C
    /* 2F2B0 80040AA0 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F2B4 80040AA4 A000048E */  lw         $a0, 0xA0($s0)
    /* 2F2B8 80040AA8 D0FD000C */  jal        func_8003F740
    /* 2F2BC 80040AAC 00000000 */   nop
    /* 2F2C0 80040AB0 7000028E */  lw         $v0, 0x70($s0)
    /* 2F2C4 80040AB4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2F2C8 80040AB8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2F2CC 80040ABC 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 2F2D0 80040AC0 3C8722AC */  sw         $v0, %lo(D_800C873C)($at)
    /* 2F2D4 80040AC4 7400038E */  lw         $v1, 0x74($s0)
    /* 2F2D8 80040AC8 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 2F2DC 80040ACC 384923AC */  sw         $v1, %lo(D_800C4938)($at)
    /* 2F2E0 80040AD0 7800028E */  lw         $v0, 0x78($s0)
    /* 2F2E4 80040AD4 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 2F2E8 80040AD8 688C22AC */  sw         $v0, %lo(D_800C8C68)($at)
    /* 2F2EC 80040ADC 7C00038E */  lw         $v1, 0x7C($s0)
    /* 2F2F0 80040AE0 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 2F2F4 80040AE4 90BE23AC */  sw         $v1, %lo(D_800CBE90)($at)
    /* 2F2F8 80040AE8 8000048E */  lw         $a0, 0x80($s0)
    /* 2F2FC 80040AEC 1800B08F */  lw         $s0, 0x18($sp)
    /* 2F300 80040AF0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F304 80040AF4 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 2F308 80040AF8 94BE24AC */  sw         $a0, %lo(D_800CBE94)($at)
    /* 2F30C 80040AFC 0800E003 */  jr         $ra
    /* 2F310 80040B00 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80040A24
