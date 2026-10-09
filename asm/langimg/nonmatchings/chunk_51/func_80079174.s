nonmatching func_80079174, 0x168

glabel func_80079174
    /* 67984 80079174 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 67988 80079178 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6798C 8007917C 21808000 */  addu       $s0, $a0, $zero
    /* 67990 80079180 2000B2AF */  sw         $s2, 0x20($sp)
    /* 67994 80079184 2190C000 */  addu       $s2, $a2, $zero
    /* 67998 80079188 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6799C 8007918C 2188E000 */  addu       $s1, $a3, $zero
    /* 679A0 80079190 4000A38F */  lw         $v1, 0x40($sp)
    /* 679A4 80079194 2800BFAF */  sw         $ra, 0x28($sp)
    /* 679A8 80079198 2400B3AF */  sw         $s3, 0x24($sp)
    /* 679AC 8007919C A4E2010C */  jal        func_80078A90
    /* 679B0 800791A0 1000A3AF */   sw        $v1, 0x10($sp)
    /* 679B4 800791A4 03000424 */  addiu      $a0, $zero, 0x3
    /* 679B8 800791A8 F5AE020C */  jal        func_800ABBD4
    /* 679BC 800791AC 21984000 */   addu      $s3, $v0, $zero
    /* 679C0 800791B0 52AF020C */  jal        func_800ABD48
    /* 679C4 800791B4 21200000 */   addu      $a0, $zero, $zero
    /* 679C8 800791B8 F0E4010C */  jal        func_800793C0
    /* 679CC 800791BC 21200002 */   addu      $a0, $s0, $zero
    /* 679D0 800791C0 0101222A */  slti       $v0, $s1, 0x101
    /* 679D4 800791C4 1A004010 */  beqz       $v0, .L80079230
    /* 679D8 800791C8 21280000 */   addu      $a1, $zero, $zero
    /* 679DC 800791CC 6C000426 */  addiu      $a0, $s0, 0x6C
    /* 679E0 800791D0 21300000 */  addu       $a2, $zero, $zero
    /* 679E4 800791D4 21384002 */  addu       $a3, $s2, $zero
    /* 679E8 800791D8 C6AD020C */  jal        func_800AB718
    /* 679EC 800791DC 1000B1AF */   sw        $s1, 0x10($sp)
    /* 679F0 800791E0 C8000426 */  addiu      $a0, $s0, 0xC8
    /* 679F4 800791E4 21280000 */  addu       $a1, $zero, $zero
    /* 679F8 800791E8 00010624 */  addiu      $a2, $zero, 0x100
    /* 679FC 800791EC 21384002 */  addu       $a3, $s2, $zero
    /* 67A00 800791F0 C6AD020C */  jal        func_800AB718
    /* 67A04 800791F4 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A08 800791F8 24010426 */  addiu      $a0, $s0, 0x124
    /* 67A0C 800791FC 21280000 */  addu       $a1, $zero, $zero
    /* 67A10 80079200 00010624 */  addiu      $a2, $zero, 0x100
    /* 67A14 80079204 21384002 */  addu       $a3, $s2, $zero
    /* 67A18 80079208 F3AD020C */  jal        func_800AB7CC
    /* 67A1C 8007920C 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A20 80079210 38010426 */  addiu      $a0, $s0, 0x138
    /* 67A24 80079214 21280000 */  addu       $a1, $zero, $zero
    /* 67A28 80079218 21300000 */  addu       $a2, $zero, $zero
    /* 67A2C 8007921C 21384002 */  addu       $a3, $s2, $zero
    /* 67A30 80079220 F3AD020C */  jal        func_800AB7CC
    /* 67A34 80079224 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A38 80079228 A5E40108 */  j          .L80079294
    /* 67A3C 8007922C 5C0100AE */   sw        $zero, 0x15C($s0)
  .L80079230:
    /* 67A40 80079230 6C000426 */  addiu      $a0, $s0, 0x6C
    /* 67A44 80079234 21300000 */  addu       $a2, $zero, $zero
    /* 67A48 80079238 21384002 */  addu       $a3, $s2, $zero
    /* 67A4C 8007923C C6AD020C */  jal        func_800AB718
    /* 67A50 80079240 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A54 80079244 C8000426 */  addiu      $a0, $s0, 0xC8
    /* 67A58 80079248 21280000 */  addu       $a1, $zero, $zero
    /* 67A5C 8007924C 21300000 */  addu       $a2, $zero, $zero
    /* 67A60 80079250 21384002 */  addu       $a3, $s2, $zero
    /* 67A64 80079254 C6AD020C */  jal        func_800AB718
    /* 67A68 80079258 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A6C 8007925C 24010426 */  addiu      $a0, $s0, 0x124
    /* 67A70 80079260 21280000 */  addu       $a1, $zero, $zero
    /* 67A74 80079264 21300000 */  addu       $a2, $zero, $zero
    /* 67A78 80079268 21384002 */  addu       $a3, $s2, $zero
    /* 67A7C 8007926C F3AD020C */  jal        func_800AB7CC
    /* 67A80 80079270 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A84 80079274 38010426 */  addiu      $a0, $s0, 0x138
    /* 67A88 80079278 21280000 */  addu       $a1, $zero, $zero
    /* 67A8C 8007927C 21300000 */  addu       $a2, $zero, $zero
    /* 67A90 80079280 21384002 */  addu       $a3, $s2, $zero
    /* 67A94 80079284 F3AD020C */  jal        func_800AB7CC
    /* 67A98 80079288 1000B1AF */   sw        $s1, 0x10($sp)
    /* 67A9C 8007928C 01000324 */  addiu      $v1, $zero, 0x1
    /* 67AA0 80079290 5C0103AE */  sw         $v1, 0x15C($s0)
  .L80079294:
    /* 67AA4 80079294 BAAD020C */  jal        func_800AB6E8
    /* 67AA8 80079298 01000424 */   addiu     $a0, $zero, 0x1
    /* 67AAC 8007929C 21200002 */  addu       $a0, $s0, $zero
    /* 67AB0 800792A0 00010224 */  addiu      $v0, $zero, 0x100
    /* 67AB4 800792A4 440102A6 */  sh         $v0, 0x144($s0)
    /* 67AB8 800792A8 300102A6 */  sh         $v0, 0x130($s0)
    /* 67ABC 800792AC 460102A6 */  sh         $v0, 0x146($s0)
    /* 67AC0 800792B0 B7E4010C */  jal        func_800792DC
    /* 67AC4 800792B4 320102A6 */   sh        $v0, 0x132($s0)
    /* 67AC8 800792B8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 67ACC 800792BC 21106002 */  addu       $v0, $s3, $zero
    /* 67AD0 800792C0 1C0013AE */  sw         $s3, 0x1C($s0)
    /* 67AD4 800792C4 2400B38F */  lw         $s3, 0x24($sp)
    /* 67AD8 800792C8 2000B28F */  lw         $s2, 0x20($sp)
    /* 67ADC 800792CC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 67AE0 800792D0 1800B08F */  lw         $s0, 0x18($sp)
    /* 67AE4 800792D4 0800E003 */  jr         $ra
    /* 67AE8 800792D8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80079174
