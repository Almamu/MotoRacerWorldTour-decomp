nonmatching func_800B1A34, 0xC8

glabel func_800B1A34
    /* A0244 800B1A34 E9008290 */  lbu        $v0, 0xE9($a0)
    /* A0248 800B1A38 00000000 */  nop
    /* A024C 800B1A3C 2B004010 */  beqz       $v0, .L800B1AEC
    /* A0250 800B1A40 21400000 */   addu      $t0, $zero, $zero
    /* A0254 800B1A44 FF000B24 */  addiu      $t3, $zero, 0xFF
    /* A0258 800B1A48 21500000 */  addu       $t2, $zero, $zero
  .L800B1A4C:
    /* A025C 800B1A4C 2000858C */  lw         $a1, 0x20($a0)
    /* A0260 800B1A50 21380000 */  addu       $a3, $zero, $zero
    /* A0264 800B1A54 05000324 */  addiu      $v1, $zero, 0x5
  .L800B1A58:
    /* A0268 800B1A58 0000A290 */  lbu        $v0, 0x0($a1)
    /* A026C 800B1A5C 00000000 */  nop
    /* A0270 800B1A60 02004814 */  bne        $v0, $t0, .L800B1A6C
    /* A0274 800B1A64 0100A524 */   addiu     $a1, $a1, 0x1
    /* A0278 800B1A68 0100E724 */  addiu      $a3, $a3, 0x1
  .L800B1A6C:
    /* A027C 800B1A6C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A0280 800B1A70 F9FF6104 */  bgez       $v1, .L800B1A58
    /* A0284 800B1A74 00000000 */   nop
    /* A0288 800B1A78 0400828C */  lw         $v0, 0x4($a0)
    /* A028C 800B1A7C 00000000 */  nop
    /* A0290 800B1A80 21104201 */  addu       $v0, $t2, $v0
    /* A0294 800B1A84 02004990 */  lbu        $t1, 0x2($v0)
    /* A0298 800B1A88 2000858C */  lw         $a1, 0x20($a0)
    /* A029C 800B1A8C 02002015 */  bnez       $t1, .L800B1A98
    /* A02A0 800B1A90 21180000 */   addu      $v1, $zero, $zero
    /* A02A4 800B1A94 01000924 */  addiu      $t1, $zero, 0x1
  .L800B1A98:
    /* A02A8 800B1A98 21308000 */  addu       $a2, $a0, $zero
  .L800B1A9C:
    /* A02AC 800B1A9C 0000A290 */  lbu        $v0, 0x0($a1)
    /* A02B0 800B1AA0 00000000 */  nop
    /* A02B4 800B1AA4 08004814 */  bne        $v0, $t0, .L800B1AC8
    /* A02B8 800B1AA8 0100A524 */   addiu     $a1, $a1, 0x1
    /* A02BC 800B1AAC 2A10E900 */  slt        $v0, $a3, $t1
    /* A02C0 800B1AB0 04004010 */  beqz       $v0, .L800B1AC4
    /* A02C4 800B1AB4 00000000 */   nop
    /* A02C8 800B1AB8 5D00CBA0 */  sb         $t3, 0x5D($a2)
    /* A02CC 800B1ABC B2C60208 */  j          .L800B1AC8
    /* A02D0 800B1AC0 FFFFE724 */   addiu     $a3, $a3, -0x1
  .L800B1AC4:
    /* A02D4 800B1AC4 5D00C8A0 */  sb         $t0, 0x5D($a2)
  .L800B1AC8:
    /* A02D8 800B1AC8 01006324 */  addiu      $v1, $v1, 0x1
    /* A02DC 800B1ACC 06006228 */  slti       $v0, $v1, 0x6
    /* A02E0 800B1AD0 F2FF4014 */  bnez       $v0, .L800B1A9C
    /* A02E4 800B1AD4 0100C624 */   addiu     $a2, $a2, 0x1
    /* A02E8 800B1AD8 E9008290 */  lbu        $v0, 0xE9($a0)
    /* A02EC 800B1ADC 01000825 */  addiu      $t0, $t0, 0x1
    /* A02F0 800B1AE0 2A100201 */  slt        $v0, $t0, $v0
    /* A02F4 800B1AE4 D9FF4014 */  bnez       $v0, .L800B1A4C
    /* A02F8 800B1AE8 05004A25 */   addiu     $t2, $t2, 0x5
  .L800B1AEC:
    /* A02FC 800B1AEC FE000224 */  addiu      $v0, $zero, 0xFE
    /* A0300 800B1AF0 460082A0 */  sb         $v0, 0x46($a0)
    /* A0304 800B1AF4 0800E003 */  jr         $ra
    /* A0308 800B1AF8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800B1A34
