nonmatching func_8013F3F0, 0xF0

glabel func_8013F3F0
    /* C8BC 8013F3F0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* C8C0 8013F3F4 3000B4AF */  sw         $s4, 0x30($sp)
    /* C8C4 8013F3F8 21A0A000 */  addu       $s4, $a1, $zero
    /* C8C8 8013F3FC 3400B5AF */  sw         $s5, 0x34($sp)
    /* C8CC 8013F400 21A8C000 */  addu       $s5, $a2, $zero
    /* C8D0 8013F404 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* C8D4 8013F408 21980000 */  addu       $s3, $zero, $zero
    /* C8D8 8013F40C 0F008430 */  andi       $a0, $a0, 0xF
    /* C8DC 8013F410 1C80023C */  lui        $v0, %hi(D_801BFE40)
    /* C8E0 8013F414 40FE4224 */  addiu      $v0, $v0, %lo(D_801BFE40)
    /* C8E4 8013F418 40200400 */  sll        $a0, $a0, 1
    /* C8E8 8013F41C 21208200 */  addu       $a0, $a0, $v0
    /* C8EC 8013F420 2800B2AF */  sw         $s2, 0x28($sp)
    /* C8F0 8013F424 21908000 */  addu       $s2, $a0, $zero
    /* C8F4 8013F428 3800BFAF */  sw         $ra, 0x38($sp)
    /* C8F8 8013F42C 2400B1AF */  sw         $s1, 0x24($sp)
    /* C8FC 8013F430 2000B0AF */  sw         $s0, 0x20($sp)
    /* C900 8013F434 1800A0A7 */  sh         $zero, 0x18($sp)
    /* C904 8013F438 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* C908 8013F43C 00004296 */  lhu        $v0, 0x0($s2)
    /* C90C 8013F440 08009126 */  addiu      $s1, $s4, 0x8
    /* C910 8013F444 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* C914 8013F448 1C80023C */  lui        $v0, %hi(D_801BFDAC)
    /* C918 8013F44C 00004396 */  lhu        $v1, 0x0($s2)
    /* C91C 8013F450 ACFD5024 */  addiu      $s0, $v0, %lo(D_801BFDAC)
    /* C920 8013F454 1E00A3A7 */  sh         $v1, 0x1E($sp)
  .L8013F458:
    /* C924 8013F458 0000228E */  lw         $v0, 0x0($s1)
    /* C928 8013F45C 00000000 */  nop
    /* C92C 8013F460 11004010 */  beqz       $v0, .L8013F4A8
    /* C930 8013F464 00000000 */   nop
    /* C934 8013F468 00004296 */  lhu        $v0, 0x0($s2)
    /* C938 8013F46C 0000038E */  lw         $v1, 0x0($s0)
    /* C93C 8013F470 00000000 */  nop
    /* C940 8013F474 24104300 */  and        $v0, $v0, $v1
    /* C944 8013F478 0B004010 */  beqz       $v0, .L8013F4A8
    /* C948 8013F47C 1000A427 */   addiu     $a0, $sp, 0x10
    /* C94C 8013F480 1000A0AF */  sw         $zero, 0x10($sp)
    /* C950 8013F484 00000296 */  lhu        $v0, 0x0($s0)
    /* C954 8013F488 00004396 */  lhu        $v1, 0x0($s2)
    /* C958 8013F48C 27100200 */  nor        $v0, $zero, $v0
    /* C95C 8013F490 24186200 */  and        $v1, $v1, $v0
    /* C960 8013F494 000043A6 */  sh         $v1, 0x0($s2)
    /* C964 8013F498 0000228E */  lw         $v0, 0x0($s1)
    /* C968 8013F49C 0000868E */  lw         $a2, 0x0($s4)
    /* C96C 8013F4A0 09F84000 */  jalr       $v0
    /* C970 8013F4A4 2128A002 */   addu      $a1, $s5, $zero
  .L8013F4A8:
    /* C974 8013F4A8 04003126 */  addiu      $s1, $s1, 0x4
    /* C978 8013F4AC 01007326 */  addiu      $s3, $s3, 0x1
    /* C97C 8013F4B0 0F00622E */  sltiu      $v0, $s3, 0xF
    /* C980 8013F4B4 E8FF4014 */  bnez       $v0, .L8013F458
    /* C984 8013F4B8 04001026 */   addiu     $s0, $s0, 0x4
    /* C988 8013F4BC 3800BF8F */  lw         $ra, 0x38($sp)
    /* C98C 8013F4C0 3400B58F */  lw         $s5, 0x34($sp)
    /* C990 8013F4C4 3000B48F */  lw         $s4, 0x30($sp)
    /* C994 8013F4C8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* C998 8013F4CC 2800B28F */  lw         $s2, 0x28($sp)
    /* C99C 8013F4D0 2400B18F */  lw         $s1, 0x24($sp)
    /* C9A0 8013F4D4 2000B08F */  lw         $s0, 0x20($sp)
    /* C9A4 8013F4D8 0800E003 */  jr         $ra
    /* C9A8 8013F4DC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8013F3F0
