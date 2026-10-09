nonmatching CdControlF, 0x134

glabel CdControlF
    /* 96008 800A77F8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9600C 800A77FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 96010 800A7800 2188A000 */  addu       $s1, $a1, $zero
    /* 96014 800A7804 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 96018 800A7808 21988000 */  addu       $s3, $a0, $zero
    /* 9601C 800A780C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 96020 800A7810 03001024 */  addiu      $s0, $zero, 0x3
    /* 96024 800A7814 3000BEAF */  sw         $fp, 0x30($sp)
    /* 96028 800A7818 01001E24 */  addiu      $fp, $zero, 0x1
    /* 9602C 800A781C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 96030 800A7820 FF007232 */  andi       $s2, $s3, 0xFF
    /* 96034 800A7824 0C80033C */  lui        $v1, %hi(D_800BCF90)
    /* 96038 800A7828 90CF6324 */  addiu      $v1, $v1, %lo(D_800BCF90)
    /* 9603C 800A782C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 96040 800A7830 0C80143C */  lui        $s4, %hi(D_800BD018)
    /* 96044 800A7834 18D0948E */  lw         $s4, %lo(D_800BD018)($s4)
    /* 96048 800A7838 80101200 */  sll        $v0, $s2, 2
    /* 9604C 800A783C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 96050 800A7840 21A84300 */  addu       $s5, $v0, $v1
    /* 96054 800A7844 2800B6AF */  sw         $s6, 0x28($sp)
    /* 96058 800A7848 21B00000 */  addu       $s6, $zero, $zero
    /* 9605C 800A784C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 96060 800A7850 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* 96064 800A7854 3400BFAF */  sw         $ra, 0x34($sp)
  .L800A7858:
    /* 96068 800A7858 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 9606C 800A785C 0B005E12 */  beq        $s2, $fp, .L800A788C
    /* 96070 800A7860 18D020AC */   sw        $zero, %lo(D_800BD018)($at)
    /* 96074 800A7864 0C80023C */  lui        $v0, %hi(D_800BD024)
    /* 96078 800A7868 24D04290 */  lbu        $v0, %lo(D_800BD024)($v0)
    /* 9607C 800A786C 00000000 */  nop
    /* 96080 800A7870 10004230 */  andi       $v0, $v0, 0x10
    /* 96084 800A7874 05004010 */  beqz       $v0, .L800A788C
    /* 96088 800A7878 01000424 */   addiu     $a0, $zero, 0x1
    /* 9608C 800A787C 21280000 */  addu       $a1, $zero, $zero
    /* 96090 800A7880 21300000 */  addu       $a2, $zero, $zero
    /* 96094 800A7884 D1A1020C */  jal        CD_cw
    /* 96098 800A7888 21380000 */   addu      $a3, $zero, $zero
  .L800A788C:
    /* 9609C 800A788C 0B002012 */  beqz       $s1, .L800A78BC
    /* 960A0 800A7890 00000000 */   nop
    /* 960A4 800A7894 0000A28E */  lw         $v0, 0x0($s5)
    /* 960A8 800A7898 00000000 */  nop
    /* 960AC 800A789C 07004010 */  beqz       $v0, .L800A78BC
    /* 960B0 800A78A0 02000424 */   addiu     $a0, $zero, 0x2
    /* 960B4 800A78A4 21282002 */  addu       $a1, $s1, $zero
    /* 960B8 800A78A8 21300000 */  addu       $a2, $zero, $zero
    /* 960BC 800A78AC D1A1020C */  jal        CD_cw
    /* 960C0 800A78B0 21380000 */   addu      $a3, $zero, $zero
    /* 960C4 800A78B4 0A004014 */  bnez       $v0, .L800A78E0
    /* 960C8 800A78B8 00000000 */   nop
  .L800A78BC:
    /* 960CC 800A78BC 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 960D0 800A78C0 18D034AC */  sw         $s4, %lo(D_800BD018)($at)
    /* 960D4 800A78C4 FF006432 */  andi       $a0, $s3, 0xFF
    /* 960D8 800A78C8 21282002 */  addu       $a1, $s1, $zero
    /* 960DC 800A78CC 21300000 */  addu       $a2, $zero, $zero
    /* 960E0 800A78D0 D1A1020C */  jal        CD_cw
    /* 960E4 800A78D4 01000724 */   addiu     $a3, $zero, 0x1
    /* 960E8 800A78D8 08004010 */  beqz       $v0, .L800A78FC
    /* 960EC 800A78DC 0100C226 */   addiu     $v0, $s6, 0x1
  .L800A78E0:
    /* 960F0 800A78E0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 960F4 800A78E4 DCFF1716 */  bne        $s0, $s7, .L800A7858
    /* 960F8 800A78E8 00000000 */   nop
    /* 960FC 800A78EC 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 96100 800A78F0 18D034AC */  sw         $s4, %lo(D_800BD018)($at)
    /* 96104 800A78F4 FFFF1624 */  addiu      $s6, $zero, -0x1
    /* 96108 800A78F8 0100C226 */  addiu      $v0, $s6, 0x1
  .L800A78FC:
    /* 9610C 800A78FC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 96110 800A7900 3000BE8F */  lw         $fp, 0x30($sp)
    /* 96114 800A7904 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 96118 800A7908 2800B68F */  lw         $s6, 0x28($sp)
    /* 9611C 800A790C 2400B58F */  lw         $s5, 0x24($sp)
    /* 96120 800A7910 2000B48F */  lw         $s4, 0x20($sp)
    /* 96124 800A7914 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 96128 800A7918 1800B28F */  lw         $s2, 0x18($sp)
    /* 9612C 800A791C 1400B18F */  lw         $s1, 0x14($sp)
    /* 96130 800A7920 1000B08F */  lw         $s0, 0x10($sp)
    /* 96134 800A7924 0800E003 */  jr         $ra
    /* 96138 800A7928 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel CdControlF
