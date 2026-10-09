nonmatching _padSendAtLoadInfo, 0x84

glabel _padSendAtLoadInfo
    /* 9FBC8 800B13B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9FBCC 800B13BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9FBD0 800B13C0 46008390 */  lbu        $v1, 0x46($a0)
    /* 9FBD4 800B13C4 03000224 */  addiu      $v0, $zero, 0x3
    /* 9FBD8 800B13C8 10006210 */  beq        $v1, $v0, .L800B140C
    /* 9FBDC 800B13CC 04006228 */   slti      $v0, $v1, 0x4
    /* 9FBE0 800B13D0 05004010 */  beqz       $v0, .L800B13E8
    /* 9FBE4 800B13D4 02000224 */   addiu     $v0, $zero, 0x2
    /* 9FBE8 800B13D8 08006210 */  beq        $v1, $v0, .L800B13FC
    /* 9FBEC 800B13DC 00000000 */   nop
    /* 9FBF0 800B13E0 0BC50208 */  j          .L800B142C
    /* 9FBF4 800B13E4 00000000 */   nop
  .L800B13E8:
    /* 9FBF8 800B13E8 04000224 */  addiu      $v0, $zero, 0x4
    /* 9FBFC 800B13EC 0C006210 */  beq        $v1, $v0, .L800B1420
    /* 9FC00 800B13F0 00000000 */   nop
    /* 9FC04 800B13F4 0BC50208 */  j          .L800B142C
    /* 9FC08 800B13F8 00000000 */   nop
  .L800B13FC:
    /* 9FC0C 800B13FC 1AC7020C */  jal        func_800B1C68
    /* 9FC10 800B1400 00000000 */   nop
    /* 9FC14 800B1404 0BC50208 */  j          .L800B142C
    /* 9FC18 800B1408 00000000 */   nop
  .L800B140C:
    /* 9FC1C 800B140C E4008590 */  lbu        $a1, 0xE4($a0)
    /* 9FC20 800B1410 1FC7020C */  jal        func_800B1C7C
    /* 9FC24 800B1414 00000000 */   nop
    /* 9FC28 800B1418 0BC50208 */  j          .L800B142C
    /* 9FC2C 800B141C 00000000 */   nop
  .L800B1420:
    /* 9FC30 800B1420 47008590 */  lbu        $a1, 0x47($a0)
    /* 9FC34 800B1424 2FC7020C */  jal        func_800B1CBC
    /* 9FC38 800B1428 00000000 */   nop
  .L800B142C:
    /* 9FC3C 800B142C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9FC40 800B1430 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9FC44 800B1434 0800E003 */  jr         $ra
    /* 9FC48 800B1438 00000000 */   nop
endlabel _padSendAtLoadInfo
