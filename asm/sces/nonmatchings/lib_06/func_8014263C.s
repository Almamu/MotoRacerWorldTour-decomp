nonmatching func_8014263C, 0x110

glabel func_8014263C
    /* FB08 8014263C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FB0C 80142640 1000B0AF */  sw         $s0, 0x10($sp)
    /* FB10 80142644 21808000 */  addu       $s0, $a0, $zero
    /* FB14 80142648 1400BFAF */  sw         $ra, 0x14($sp)
    /* FB18 8014264C 3C00028E */  lw         $v0, 0x3C($s0)
    /* FB1C 80142650 00000000 */  nop
    /* FB20 80142654 00004390 */  lbu        $v1, 0x0($v0)
    /* FB24 80142658 F3000224 */  addiu      $v0, $zero, 0xF3
    /* FB28 8014265C 12006214 */  bne        $v1, $v0, .L801426A8
    /* FB2C 80142660 00000000 */   nop
    /* FB30 80142664 E8000292 */  lbu        $v0, 0xE8($s0)
    /* FB34 80142668 00000000 */  nop
    /* FB38 8014266C 24004010 */  beqz       $v0, .L80142700
    /* FB3C 80142670 FF000224 */   addiu     $v0, $zero, 0xFF
    /* FB40 80142674 46000392 */  lbu        $v1, 0x46($s0)
    /* FB44 80142678 00000000 */  nop
    /* FB48 8014267C 1F006210 */  beq        $v1, $v0, .L801426FC
    /* FB4C 80142680 02000224 */   addiu     $v0, $zero, 0x2
    /* FB50 80142684 49000392 */  lbu        $v1, 0x49($s0)
    /* FB54 80142688 00000000 */  nop
    /* FB58 8014268C 06006214 */  bne        $v1, $v0, .L801426A8
    /* FB5C 80142690 00000000 */   nop
    /* FB60 80142694 1C80023C */  lui        $v0, %hi(D_801BFE60)
    /* FB64 80142698 60FE428C */  lw         $v0, %lo(D_801BFE60)($v0)
    /* FB68 8014269C 00000000 */  nop
    /* FB6C 801426A0 09F84000 */  jalr       $v0
    /* FB70 801426A4 21200002 */   addu      $a0, $s0, $zero
  .L801426A8:
    /* FB74 801426A8 46000392 */  lbu        $v1, 0x46($s0)
    /* FB78 801426AC 01000224 */  addiu      $v0, $zero, 0x1
    /* FB7C 801426B0 0D006210 */  beq        $v1, $v0, .L801426E8
    /* FB80 801426B4 02006228 */   slti      $v0, $v1, 0x2
    /* FB84 801426B8 05004010 */  beqz       $v0, .L801426D0
    /* FB88 801426BC FE000224 */   addiu     $v0, $zero, 0xFE
    /* FB8C 801426C0 1E006010 */  beqz       $v1, .L8014273C
    /* FB90 801426C4 21100000 */   addu      $v0, $zero, $zero
    /* FB94 801426C8 C4090508 */  j          .L80142710
    /* FB98 801426CC 00000000 */   nop
  .L801426D0:
    /* FB9C 801426D0 0A006210 */  beq        $v1, $v0, .L801426FC
    /* FBA0 801426D4 FF000224 */   addiu     $v0, $zero, 0xFF
    /* FBA4 801426D8 18006210 */  beq        $v1, $v0, .L8014273C
    /* FBA8 801426DC 21100000 */   addu      $v0, $zero, $zero
    /* FBAC 801426E0 C4090508 */  j          .L80142710
    /* FBB0 801426E4 00000000 */   nop
  .L801426E8:
    /* FBB4 801426E8 21200002 */  addu       $a0, $s0, $zero
    /* FBB8 801426EC 3306050C */  jal        _padCmdParaMode
    /* FBBC 801426F0 01000524 */   addiu     $a1, $zero, 0x1
    /* FBC0 801426F4 CF090508 */  j          .L8014273C
    /* FBC4 801426F8 21100000 */   addu      $v0, $zero, $zero
  .L801426FC:
    /* FBC8 801426FC 21200002 */  addu       $a0, $s0, $zero
  .L80142700:
    /* FBCC 80142700 3306050C */  jal        _padCmdParaMode
    /* FBD0 80142704 21280000 */   addu      $a1, $zero, $zero
    /* FBD4 80142708 CF090508 */  j          .L8014273C
    /* FBD8 8014270C 21100000 */   addu      $v0, $zero, $zero
  .L80142710:
    /* FBDC 80142710 1400028E */  lw         $v0, 0x14($s0)
    /* FBE0 80142714 00000000 */  nop
    /* FBE4 80142718 05004010 */  beqz       $v0, .L80142730
    /* FBE8 8014271C 00000000 */   nop
    /* FBEC 80142720 09F84000 */  jalr       $v0
    /* FBF0 80142724 21200002 */   addu      $a0, $s0, $zero
    /* FBF4 80142728 CF090508 */  j          .L8014273C
    /* FBF8 8014272C 21100000 */   addu      $v0, $zero, $zero
  .L80142730:
    /* FBFC 80142730 6503050C */  jal        _padSendAtLoadInfo
    /* FC00 80142734 21200002 */   addu      $a0, $s0, $zero
    /* FC04 80142738 21100000 */  addu       $v0, $zero, $zero
  .L8014273C:
    /* FC08 8014273C 1400BF8F */  lw         $ra, 0x14($sp)
    /* FC0C 80142740 1000B08F */  lw         $s0, 0x10($sp)
    /* FC10 80142744 0800E003 */  jr         $ra
    /* FC14 80142748 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8014263C
