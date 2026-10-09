nonmatching startIntrVSync, 0x120

glabel startIntrVSync
    /* 8DAC 8013B8E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DB0 8013B8E4 1C80043C */  lui        $a0, %hi(D_801BEFE8)
    /* 8DB4 8013B8E8 E8EF8424 */  addiu      $a0, $a0, %lo(D_801BEFE8)
    /* 8DB8 8013B8EC 1C80033C */  lui        $v1, %hi(D_801BF00C)
    /* 8DBC 8013B8F0 0CF0638C */  lw         $v1, %lo(D_801BF00C)($v1)
    /* 8DC0 8013B8F4 00010224 */  addiu      $v0, $zero, 0x100
    /* 8DC4 8013B8F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DC8 8013B8FC 000062AC */  sw         $v0, 0x0($v1)
    /* 8DCC 8013B900 1C80013C */  lui        $at, %hi(D_801BF008)
    /* 8DD0 8013B904 08F020AC */  sw         $zero, %lo(D_801BF008)($at)
    /* 8DD4 8013B908 74EE040C */  jal        func_8013B9D0
    /* 8DD8 8013B90C 08000524 */   addiu     $a1, $zero, 0x8
    /* 8DDC 8013B910 1480053C */  lui        $a1, %hi(startIntrVSync + 0x58)
    /* 8DE0 8013B914 38B9A524 */  addiu      $a1, $a1, %lo(startIntrVSync + 0x58)
    /* 8DE4 8013B918 B2EC040C */  jal        InterruptCallback
    /* 8DE8 8013B91C 21200000 */   addu      $a0, $zero, $zero
    /* 8DEC 8013B920 1480023C */  lui        $v0, %hi(D_8013B9A4)
    /* 8DF0 8013B924 A4B94224 */  addiu      $v0, $v0, %lo(D_8013B9A4)
    /* 8DF4 8013B928 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DF8 8013B92C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8DFC 8013B930 0800E003 */  jr         $ra
    /* 8E00 8013B934 00000000 */   nop
    /* 8E04 8013B938 1C80023C */  lui        $v0, %hi(D_801BF008)
    /* 8E08 8013B93C 08F0428C */  lw         $v0, %lo(D_801BF008)($v0)
    /* 8E0C 8013B940 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8E10 8013B944 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E14 8013B948 21880000 */  addu       $s1, $zero, $zero
    /* 8E18 8013B94C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E1C 8013B950 1C80103C */  lui        $s0, %hi(D_801BEFE8)
    /* 8E20 8013B954 E8EF1026 */  addiu      $s0, $s0, %lo(D_801BEFE8)
    /* 8E24 8013B958 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8E28 8013B95C 01004224 */  addiu      $v0, $v0, 0x1
    /* 8E2C 8013B960 1C80013C */  lui        $at, %hi(D_801BF008)
    /* 8E30 8013B964 08F022AC */  sw         $v0, %lo(D_801BF008)($at)
  .L8013B968:
    /* 8E34 8013B968 0000028E */  lw         $v0, 0x0($s0)
    /* 8E38 8013B96C 00000000 */  nop
    /* 8E3C 8013B970 03004010 */  beqz       $v0, .L8013B980
    /* 8E40 8013B974 00000000 */   nop
    /* 8E44 8013B978 09F84000 */  jalr       $v0
    /* 8E48 8013B97C 00000000 */   nop
  .L8013B980:
    /* 8E4C 8013B980 01003126 */  addiu      $s1, $s1, 0x1
    /* 8E50 8013B984 0800222A */  slti       $v0, $s1, 0x8
    /* 8E54 8013B988 F7FF4014 */  bnez       $v0, .L8013B968
    /* 8E58 8013B98C 04001026 */   addiu     $s0, $s0, 0x4
    /* 8E5C 8013B990 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8E60 8013B994 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E64 8013B998 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E68 8013B99C 0800E003 */  jr         $ra
    /* 8E6C 8013B9A0 2000BD27 */   addiu     $sp, $sp, 0x20
  alabel D_8013B9A4
    /* 8E70 8013B9A4 1C80023C */  lui        $v0, %hi(D_801BEFE8)
    /* 8E74 8013B9A8 E8EF4224 */  addiu      $v0, $v0, %lo(D_801BEFE8)
    /* 8E78 8013B9AC 80200400 */  sll        $a0, $a0, 2
    /* 8E7C 8013B9B0 21208200 */  addu       $a0, $a0, $v0
    /* 8E80 8013B9B4 0000828C */  lw         $v0, 0x0($a0)
    /* 8E84 8013B9B8 00000000 */  nop
    /* 8E88 8013B9BC 0200A210 */  beq        $a1, $v0, .L8013B9C8
    /* 8E8C 8013B9C0 00000000 */   nop
    /* 8E90 8013B9C4 000085AC */  sw         $a1, 0x0($a0)
  .L8013B9C8:
    /* 8E94 8013B9C8 0800E003 */  jr         $ra
    /* 8E98 8013B9CC 00000000 */   nop
  alabel func_8013B9D0
    /* 8E9C 8013B9D0 0600A010 */  beqz       $a1, .L8013B9EC
    /* 8EA0 8013B9D4 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 8EA4 8013B9D8 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8013B9DC:
    /* 8EA8 8013B9DC 000080AC */  sw         $zero, 0x0($a0)
    /* 8EAC 8013B9E0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8EB0 8013B9E4 FDFF4314 */  bne        $v0, $v1, .L8013B9DC
    /* 8EB4 8013B9E8 04008424 */   addiu     $a0, $a0, 0x4
  .L8013B9EC:
    /* 8EB8 8013B9EC 0800E003 */  jr         $ra
    /* 8EBC 8013B9F0 00000000 */   nop
    /* 8EC0 8013B9F4 00000000 */  nop
    /* 8EC4 8013B9F8 00000000 */  nop
    /* 8EC8 8013B9FC 00000000 */  nop
endlabel startIntrVSync
