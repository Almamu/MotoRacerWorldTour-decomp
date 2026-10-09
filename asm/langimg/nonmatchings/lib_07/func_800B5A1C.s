nonmatching func_800B5A1C, 0x74

glabel func_800B5A1C
    /* A422C 800B5A1C 21380000 */  addu       $a3, $zero, $zero
    /* A4230 800B5A20 FCFF0824 */  addiu      $t0, $zero, -0x4
    /* A4234 800B5A24 0E80023C */  lui        $v0, %hi(D_800DE6F0)
    /* A4238 800B5A28 F0E6468C */  lw         $a2, %lo(D_800DE6F0)($v0)
    /* A423C 800B5A2C 0D80023C */  lui        $v0, %hi(D_800C8DC4)
    /* A4240 800B5A30 C48D438C */  lw         $v1, %lo(D_800C8DC4)($v0)
    /* A4244 800B5A34 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* A4248 800B5A38 21186200 */  addu       $v1, $v1, $v0
  .L800B5A3C:
    /* A424C 800B5A3C 0400C58C */  lw         $a1, 0x4($a2)
    /* A4250 800B5A40 00000000 */  nop
    /* A4254 800B5A44 0100A230 */  andi       $v0, $a1, 0x1
    /* A4258 800B5A48 05004014 */  bnez       $v0, .L800B5A60
    /* A425C 800B5A4C 2420A800 */   and       $a0, $a1, $t0
    /* A4260 800B5A50 2B10E400 */  sltu       $v0, $a3, $a0
    /* A4264 800B5A54 03004010 */  beqz       $v0, .L800B5A64
    /* A4268 800B5A58 0200A230 */   andi      $v0, $a1, 0x2
    /* A426C 800B5A5C F8FF8724 */  addiu      $a3, $a0, -0x8
  .L800B5A60:
    /* A4270 800B5A60 0200A230 */  andi       $v0, $a1, 0x2
  .L800B5A64:
    /* A4274 800B5A64 04004014 */  bnez       $v0, .L800B5A78
    /* A4278 800B5A68 2130C400 */   addu      $a2, $a2, $a0
    /* A427C 800B5A6C 2B10C300 */  sltu       $v0, $a2, $v1
    /* A4280 800B5A70 F2FF4014 */  bnez       $v0, .L800B5A3C
    /* A4284 800B5A74 00000000 */   nop
  .L800B5A78:
    /* A4288 800B5A78 2B106600 */  sltu       $v0, $v1, $a2
    /* A428C 800B5A7C 02004010 */  beqz       $v0, .L800B5A88
    /* A4290 800B5A80 00000000 */   nop
    /* A4294 800B5A84 21380000 */  addu       $a3, $zero, $zero
  .L800B5A88:
    /* A4298 800B5A88 0800E003 */  jr         $ra
    /* A429C 800B5A8C 2110E000 */   addu      $v0, $a3, $zero
endlabel func_800B5A1C
