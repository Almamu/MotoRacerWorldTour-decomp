nonmatching func_80011C5C, 0xB4

glabel func_80011C5C
    /* 46C 80011C5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 470 80011C60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 474 80011C64 21808000 */  addu       $s0, $a0, $zero
    /* 478 80011C68 1400B1AF */  sw         $s1, 0x14($sp)
    /* 47C 80011C6C 2188A000 */  addu       $s1, $a1, $zero
    /* 480 80011C70 1800B2AF */  sw         $s2, 0x18($sp)
    /* 484 80011C74 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 488 80011C78 A7CB020C */  jal        SpuInit
    /* 48C 80011C7C 2190C000 */   addu      $s2, $a2, $zero
    /* 490 80011C80 B1CE020C */  jal        SpuSetReverb
    /* 494 80011C84 21200000 */   addu      $a0, $zero, $zero
    /* 498 80011C88 C5CF020C */  jal        SpuClearReverbWorkArea
    /* 49C 80011C8C 07000424 */   addiu     $a0, $zero, 0x7
    /* 4A0 80011C90 FF3F0424 */  addiu      $a0, $zero, 0x3FFF
    /* 4A4 80011C94 DCD2020C */  jal        SpuSetCommonMasterVolume
    /* 4A8 80011C98 FF3F0524 */   addiu     $a1, $zero, 0x3FFF
    /* 4AC 80011C9C ECD2020C */  jal        SpuSetCommonCDMix
    /* 4B0 80011CA0 01000424 */   addiu     $a0, $zero, 0x1
    /* 4B4 80011CA4 FF7F0424 */  addiu      $a0, $zero, 0x7FFF
    /* 4B8 80011CA8 E4D2020C */  jal        SpuSetCommonCDVolume
    /* 4BC 80011CAC FF7F0524 */   addiu     $a1, $zero, 0x7FFF
    /* 4C0 80011CB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C4 80011CB4 4D0080A3 */  sb         $zero, %gp_rel(D_800C473D)($gp)
    /* 4C8 80011CB8 4E0080A3 */  sb         $zero, %gp_rel(D_800C473E)($gp)
    /* 4CC 80011CBC 500080AF */  sw         $zero, %gp_rel(D_800C4740)($gp)
    /* 4D0 80011CC0 605892AF */  sw         $s2, %gp_rel(D_800C9F50)($gp)
    /* 4D4 80011CC4 0C0082AF */  sw         $v0, %gp_rel(D_800C46FC)($gp)
    /* 4D8 80011CC8 7048000C */  jal        func_800121C0
    /* 4DC 80011CCC 01000424 */   addiu     $a0, $zero, 0x1
    /* 4E0 80011CD0 40000224 */  addiu      $v0, $zero, 0x40
    /* 4E4 80011CD4 1C0090AF */  sw         $s0, %gp_rel(D_800C470C)($gp)
    /* 4E8 80011CD8 200091AF */  sw         $s1, %gp_rel(D_800C4710)($gp)
    /* 4EC 80011CDC 240090AF */  sw         $s0, %gp_rel(D_800C4714)($gp)
    /* 4F0 80011CE0 280091AF */  sw         $s1, %gp_rel(D_800C4718)($gp)
    /* 4F4 80011CE4 2C0080AF */  sw         $zero, %gp_rel(D_800C471C)($gp)
    /* 4F8 80011CE8 300082AF */  sw         $v0, %gp_rel(D_800C4720)($gp)
    /* 4FC 80011CEC 4447000C */  jal        func_80011D10
    /* 500 80011CF0 00000000 */   nop
    /* 504 80011CF4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 508 80011CF8 1800B28F */  lw         $s2, 0x18($sp)
    /* 50C 80011CFC 1400B18F */  lw         $s1, 0x14($sp)
    /* 510 80011D00 1000B08F */  lw         $s0, 0x10($sp)
    /* 514 80011D04 01000224 */  addiu      $v0, $zero, 0x1
    /* 518 80011D08 0800E003 */  jr         $ra
    /* 51C 80011D0C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80011C5C
