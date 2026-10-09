nonmatching func_8013F204, 0x1EC

glabel func_8013F204
    /* C6D0 8013F204 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* C6D4 8013F208 2800B0AF */  sw         $s0, 0x28($sp)
    /* C6D8 8013F20C 21808000 */  addu       $s0, $a0, $zero
    /* C6DC 8013F210 4400B7AF */  sw         $s7, 0x44($sp)
    /* C6E0 8013F214 21B8A000 */  addu       $s7, $a1, $zero
    /* C6E4 8013F218 3400B3AF */  sw         $s3, 0x34($sp)
    /* C6E8 8013F21C 01000524 */  addiu      $a1, $zero, 0x1
    /* C6EC 8013F220 1C80023C */  lui        $v0, %hi(D_801BFE40)
    /* C6F0 8013F224 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* C6F4 8013F228 40FE5124 */  addiu      $s1, $v0, %lo(D_801BFE40)
    /* C6F8 8013F22C 0410B000 */  sllv       $v0, $s0, $a1
    /* C6FC 8013F230 21105100 */  addu       $v0, $v0, $s1
    /* C700 8013F234 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* C704 8013F238 4800BEAF */  sw         $fp, 0x48($sp)
    /* C708 8013F23C 4000B6AF */  sw         $s6, 0x40($sp)
    /* C70C 8013F240 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* C710 8013F244 3800B4AF */  sw         $s4, 0x38($sp)
    /* C714 8013F248 3000B2AF */  sw         $s2, 0x30($sp)
    /* C718 8013F24C 5800A6AF */  sw         $a2, 0x58($sp)
    /* C71C 8013F250 00005494 */  lhu        $s4, 0x0($v0)
    /* C720 8013F254 32FB040C */  jal        func_8013ECC8
    /* C724 8013F258 21980000 */   addu      $s3, $zero, $zero
    /* C728 8013F25C 0F001032 */  andi       $s0, $s0, 0xF
    /* C72C 8013F260 00005694 */  lhu        $s6, 0x0($v0)
    /* C730 8013F264 0800FE26 */  addiu      $fp, $s7, 0x8
    /* C734 8013F268 1400B0AF */  sw         $s0, 0x14($sp)
    /* C738 8013F26C 26189602 */  xor        $v1, $s4, $s6
    /* C73C 8013F270 2420C302 */  and        $a0, $s6, $v1
    /* C740 8013F274 24188302 */  and        $v1, $s4, $v1
    /* C744 8013F278 1800B6A7 */  sh         $s6, 0x18($sp)
    /* C748 8013F27C 1A00A4A7 */  sh         $a0, 0x1A($sp)
    /* C74C 8013F280 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* C750 8013F284 49004010 */  beqz       $v0, .L8013F3AC
    /* C754 8013F288 1E00B4A7 */   sh        $s4, 0x1E($sp)
    /* C758 8013F28C 4000E28E */  lw         $v0, 0x40($s7)
    /* C75C 8013F290 00000000 */  nop
    /* C760 8013F294 06004010 */  beqz       $v0, .L8013F2B0
    /* C764 8013F298 21A80000 */   addu      $s5, $zero, $zero
    /* C768 8013F29C 0000E68E */  lw         $a2, 0x0($s7)
    /* C76C 8013F2A0 5800A58F */  lw         $a1, 0x58($sp)
    /* C770 8013F2A4 09F84000 */  jalr       $v0
    /* C774 8013F2A8 1000A427 */   addiu     $a0, $sp, 0x10
    /* C778 8013F2AC 21A80000 */  addu       $s5, $zero, $zero
  .L8013F2B0:
    /* C77C 8013F2B0 FFFFC732 */  andi       $a3, $s6, 0xFFFF
    /* C780 8013F2B4 2000A7AF */  sw         $a3, 0x20($sp)
    /* C784 8013F2B8 40101000 */  sll        $v0, $s0, 1
    /* C788 8013F2BC 21905100 */  addu       $s2, $v0, $s1
    /* C78C 8013F2C0 1C80023C */  lui        $v0, %hi(D_801BFDAC)
    /* C790 8013F2C4 ACFD5124 */  addiu      $s1, $v0, %lo(D_801BFDAC)
    /* C794 8013F2C8 2180C003 */  addu       $s0, $fp, $zero
  .L8013F2CC:
    /* C798 8013F2CC 0000028E */  lw         $v0, 0x0($s0)
    /* C79C 8013F2D0 00000000 */  nop
    /* C7A0 8013F2D4 29004010 */  beqz       $v0, .L8013F37C
    /* C7A4 8013F2D8 00000000 */   nop
    /* C7A8 8013F2DC 0000238E */  lw         $v1, 0x0($s1)
    /* C7AC 8013F2E0 2000A78F */  lw         $a3, 0x20($sp)
    /* C7B0 8013F2E4 00000000 */  nop
    /* C7B4 8013F2E8 2410E300 */  and        $v0, $a3, $v1
    /* C7B8 8013F2EC 0E004010 */  beqz       $v0, .L8013F328
    /* C7BC 8013F2F0 FFFF8232 */   andi      $v0, $s4, 0xFFFF
    /* C7C0 8013F2F4 24104300 */  and        $v0, $v0, $v1
    /* C7C4 8013F2F8 03004010 */  beqz       $v0, .L8013F308
    /* C7C8 8013F2FC FE000224 */   addiu     $v0, $zero, 0xFE
    /* C7CC 8013F300 D3FC0408 */  j          .L8013F34C
    /* C7D0 8013F304 1000A2AF */   sw        $v0, 0x10($sp)
  .L8013F308:
    /* C7D4 8013F308 FF000224 */  addiu      $v0, $zero, 0xFF
    /* C7D8 8013F30C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C7DC 8013F310 00004296 */  lhu        $v0, 0x0($s2)
    /* C7E0 8013F314 00002396 */  lhu        $v1, 0x0($s1)
    /* C7E4 8013F318 00000000 */  nop
    /* C7E8 8013F31C 25104300 */  or         $v0, $v0, $v1
    /* C7EC 8013F320 D3FC0408 */  j          .L8013F34C
    /* C7F0 8013F324 000042A6 */   sh        $v0, 0x0($s2)
  .L8013F328:
    /* C7F4 8013F328 24104300 */  and        $v0, $v0, $v1
    /* C7F8 8013F32C 18004010 */  beqz       $v0, .L8013F390
    /* C7FC 8013F330 00000000 */   nop
    /* C800 8013F334 1000A0AF */  sw         $zero, 0x10($sp)
    /* C804 8013F338 00002296 */  lhu        $v0, 0x0($s1)
    /* C808 8013F33C 00004396 */  lhu        $v1, 0x0($s2)
    /* C80C 8013F340 27100200 */  nor        $v0, $zero, $v0
    /* C810 8013F344 24186200 */  and        $v1, $v1, $v0
    /* C814 8013F348 000043A6 */  sh         $v1, 0x0($s2)
  .L8013F34C:
    /* C818 8013F34C 0000E68E */  lw         $a2, 0x0($s7)
    /* C81C 8013F350 0000028E */  lw         $v0, 0x0($s0)
    /* C820 8013F354 5800A58F */  lw         $a1, 0x58($sp)
    /* C824 8013F358 09F84000 */  jalr       $v0
    /* C828 8013F35C 1000A427 */   addiu     $a0, $sp, 0x10
    /* C82C 8013F360 1C80073C */  lui        $a3, %hi(D_801BFDA0)
    /* C830 8013F364 A0FDE28C */  lw         $v0, %lo(D_801BFDA0)($a3)
    /* C834 8013F368 00000000 */  nop
    /* C838 8013F36C 13004014 */  bnez       $v0, .L8013F3BC
    /* C83C 8013F370 01001324 */   addiu     $s3, $zero, 0x1
    /* C840 8013F374 E5FC0408 */  j          .L8013F394
    /* C844 8013F378 04003126 */   addiu     $s1, $s1, 0x4
  .L8013F37C:
    /* C848 8013F37C 00002296 */  lhu        $v0, 0x0($s1)
    /* C84C 8013F380 00004396 */  lhu        $v1, 0x0($s2)
    /* C850 8013F384 2410C202 */  and        $v0, $s6, $v0
    /* C854 8013F388 25186200 */  or         $v1, $v1, $v0
    /* C858 8013F38C 000043A6 */  sh         $v1, 0x0($s2)
  .L8013F390:
    /* C85C 8013F390 04003126 */  addiu      $s1, $s1, 0x4
  .L8013F394:
    /* C860 8013F394 0100B526 */  addiu      $s5, $s5, 0x1
    /* C864 8013F398 0F00A22E */  sltiu      $v0, $s5, 0xF
    /* C868 8013F39C CBFF4014 */  bnez       $v0, .L8013F2CC
    /* C86C 8013F3A0 04001026 */   addiu     $s0, $s0, 0x4
    /* C870 8013F3A4 F0FC0408 */  j          .L8013F3C0
    /* C874 8013F3A8 21106002 */   addu      $v0, $s3, $zero
  .L8013F3AC:
    /* C878 8013F3AC FDFA040C */  jal        func_8013EBF4
    /* C87C 8013F3B0 21200002 */   addu      $a0, $s0, $zero
    /* C880 8013F3B4 1D80033C */  lui        $v1, %hi(D_801CE778)
    /* C884 8013F3B8 78E762AC */  sw         $v0, %lo(D_801CE778)($v1)
  .L8013F3BC:
    /* C888 8013F3BC 21106002 */  addu       $v0, $s3, $zero
  .L8013F3C0:
    /* C88C 8013F3C0 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* C890 8013F3C4 4800BE8F */  lw         $fp, 0x48($sp)
    /* C894 8013F3C8 4400B78F */  lw         $s7, 0x44($sp)
    /* C898 8013F3CC 4000B68F */  lw         $s6, 0x40($sp)
    /* C89C 8013F3D0 3C00B58F */  lw         $s5, 0x3C($sp)
    /* C8A0 8013F3D4 3800B48F */  lw         $s4, 0x38($sp)
    /* C8A4 8013F3D8 3400B38F */  lw         $s3, 0x34($sp)
    /* C8A8 8013F3DC 3000B28F */  lw         $s2, 0x30($sp)
    /* C8AC 8013F3E0 2C00B18F */  lw         $s1, 0x2C($sp)
    /* C8B0 8013F3E4 2800B08F */  lw         $s0, 0x28($sp)
    /* C8B4 8013F3E8 0800E003 */  jr         $ra
    /* C8B8 8013F3EC 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8013F204
