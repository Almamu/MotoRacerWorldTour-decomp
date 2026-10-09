nonmatching func_800242A4, 0xA8

glabel func_800242A4
    /* 12AB4 800242A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 12AB8 800242A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 12ABC 800242AC 21808000 */  addu       $s0, $a0, $zero
    /* 12AC0 800242B0 0C80023C */  lui        $v0, %hi(D_800C4D60)
    /* 12AC4 800242B4 604D4224 */  addiu      $v0, $v0, %lo(D_800C4D60)
    /* 12AC8 800242B8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 12ACC 800242BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 12AD0 800242C0 C805048E */  lw         $a0, 0x5C8($s0)
    /* 12AD4 800242C4 2188A000 */  addu       $s1, $a1, $zero
    /* 12AD8 800242C8 04008010 */  beqz       $a0, .L800242DC
    /* 12ADC 800242CC 500002AE */   sw        $v0, 0x50($s0)
    /* 12AE0 800242D0 679C020C */  jal        __builtin_delete
    /* 12AE4 800242D4 00000000 */   nop
    /* 12AE8 800242D8 C80500AE */  sw         $zero, 0x5C8($s0)
  .L800242DC:
    /* 12AEC 800242DC CC05048E */  lw         $a0, 0x5CC($s0)
    /* 12AF0 800242E0 00000000 */  nop
    /* 12AF4 800242E4 04008010 */  beqz       $a0, .L800242F8
    /* 12AF8 800242E8 00000000 */   nop
    /* 12AFC 800242EC 679C020C */  jal        __builtin_delete
    /* 12B00 800242F0 00000000 */   nop
    /* 12B04 800242F4 CC0500AE */  sw         $zero, 0x5CC($s0)
  .L800242F8:
    /* 12B08 800242F8 D005048E */  lw         $a0, 0x5D0($s0)
    /* 12B0C 800242FC 00000000 */  nop
    /* 12B10 80024300 04008010 */  beqz       $a0, .L80024314
    /* 12B14 80024304 00000000 */   nop
    /* 12B18 80024308 679C020C */  jal        __builtin_delete
    /* 12B1C 8002430C 00000000 */   nop
    /* 12B20 80024310 D00500AE */  sw         $zero, 0x5D0($s0)
  .L80024314:
    /* 12B24 80024314 80050426 */  addiu      $a0, $s0, 0x580
    /* 12B28 80024318 8F69000C */  jal        func_8001A63C
    /* 12B2C 8002431C 02000524 */   addiu     $a1, $zero, 0x2
    /* 12B30 80024320 60050426 */  addiu      $a0, $s0, 0x560
    /* 12B34 80024324 8F69000C */  jal        func_8001A63C
    /* 12B38 80024328 02000524 */   addiu     $a1, $zero, 0x2
    /* 12B3C 8002432C 21200002 */  addu       $a0, $s0, $zero
    /* 12B40 80024330 BB8B010C */  jal        func_80062EEC
    /* 12B44 80024334 21282002 */   addu      $a1, $s1, $zero
    /* 12B48 80024338 1800BF8F */  lw         $ra, 0x18($sp)
    /* 12B4C 8002433C 1400B18F */  lw         $s1, 0x14($sp)
    /* 12B50 80024340 1000B08F */  lw         $s0, 0x10($sp)
    /* 12B54 80024344 0800E003 */  jr         $ra
    /* 12B58 80024348 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800242A4
