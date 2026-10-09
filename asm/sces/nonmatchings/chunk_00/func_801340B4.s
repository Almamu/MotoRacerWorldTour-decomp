nonmatching func_801340B4, 0x8C

glabel func_801340B4
    /* 1580 801340B4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1584 801340B8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1588 801340BC 21808000 */  addu       $s0, $a0, $zero
    /* 158C 801340C0 0D000424 */  addiu      $a0, $zero, 0xD
    /* 1590 801340C4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1594 801340C8 2188A000 */  addu       $s1, $a1, $zero
    /* 1598 801340CC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 159C 801340D0 1800A627 */  addiu      $a2, $sp, 0x18
    /* 15A0 801340D4 01000324 */  addiu      $v1, $zero, 0x1
    /* 15A4 801340D8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 15A8 801340DC 1000A3A3 */  sb         $v1, 0x10($sp)
    /* 15AC 801340E0 50DC040C */  jal        CdControlB
    /* 15B0 801340E4 1100A3A3 */   sb        $v1, 0x11($sp)
    /* 15B4 801340E8 15000424 */  addiu      $a0, $zero, 0x15
    /* 15B8 801340EC 21280002 */  addu       $a1, $s0, $zero
    /* 15BC 801340F0 50DC040C */  jal        CdControlB
    /* 15C0 801340F4 21300000 */   addu      $a2, $zero, $zero
    /* 15C4 801340F8 01000324 */  addiu      $v1, $zero, 0x1
    /* 15C8 801340FC 07002316 */  bne        $s1, $v1, .L8013411C
    /* 15CC 80134100 00000000 */   nop
  .L80134104:
    /* 15D0 80134104 24E7040C */  jal        CdRead2
    /* 15D4 80134108 68010424 */   addiu     $a0, $zero, 0x168
    /* 15D8 8013410C FDFF4010 */  beqz       $v0, .L80134104
    /* 15DC 80134110 00000000 */   nop
    /* 15E0 80134114 4BD00408 */  j          .L8013412C
    /* 15E4 80134118 00000000 */   nop
  .L8013411C:
    /* 15E8 8013411C 24E7040C */  jal        CdRead2
    /* 15EC 80134120 E8010424 */   addiu     $a0, $zero, 0x1E8
    /* 15F0 80134124 FDFF4010 */  beqz       $v0, .L8013411C
    /* 15F4 80134128 00000000 */   nop
  .L8013412C:
    /* 15F8 8013412C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 15FC 80134130 2400B18F */  lw         $s1, 0x24($sp)
    /* 1600 80134134 2000B08F */  lw         $s0, 0x20($sp)
    /* 1604 80134138 0800E003 */  jr         $ra
    /* 1608 8013413C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_801340B4
