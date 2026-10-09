nonmatching func_80140D94, 0x84

glabel func_80140D94
    /* E260 80140D94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E264 80140D98 1000BFAF */  sw         $ra, 0x10($sp)
    /* E268 80140D9C 46008390 */  lbu        $v1, 0x46($a0)
    /* E26C 80140DA0 03000224 */  addiu      $v0, $zero, 0x3
    /* E270 80140DA4 10006210 */  beq        $v1, $v0, .L80140DE8
    /* E274 80140DA8 04006228 */   slti      $v0, $v1, 0x4
    /* E278 80140DAC 05004010 */  beqz       $v0, .L80140DC4
    /* E27C 80140DB0 02000224 */   addiu     $v0, $zero, 0x2
    /* E280 80140DB4 08006210 */  beq        $v1, $v0, .L80140DD8
    /* E284 80140DB8 00000000 */   nop
    /* E288 80140DBC 82030508 */  j          .L80140E08
    /* E28C 80140DC0 00000000 */   nop
  .L80140DC4:
    /* E290 80140DC4 04000224 */  addiu      $v0, $zero, 0x4
    /* E294 80140DC8 0C006210 */  beq        $v1, $v0, .L80140DFC
    /* E298 80140DCC 00000000 */   nop
    /* E29C 80140DD0 82030508 */  j          .L80140E08
    /* E2A0 80140DD4 00000000 */   nop
  .L80140DD8:
    /* E2A4 80140DD8 3B06050C */  jal        func_801418EC
    /* E2A8 80140DDC 00000000 */   nop
    /* E2AC 80140DE0 82030508 */  j          .L80140E08
    /* E2B0 80140DE4 00000000 */   nop
  .L80140DE8:
    /* E2B4 80140DE8 E4008590 */  lbu        $a1, 0xE4($a0)
    /* E2B8 80140DEC 4006050C */  jal        func_80141900
    /* E2BC 80140DF0 00000000 */   nop
    /* E2C0 80140DF4 82030508 */  j          .L80140E08
    /* E2C4 80140DF8 00000000 */   nop
  .L80140DFC:
    /* E2C8 80140DFC 47008590 */  lbu        $a1, 0x47($a0)
    /* E2CC 80140E00 5006050C */  jal        func_80141940
    /* E2D0 80140E04 00000000 */   nop
  .L80140E08:
    /* E2D4 80140E08 1000BF8F */  lw         $ra, 0x10($sp)
    /* E2D8 80140E0C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E2DC 80140E10 0800E003 */  jr         $ra
    /* E2E0 80140E14 00000000 */   nop
endlabel func_80140D94
