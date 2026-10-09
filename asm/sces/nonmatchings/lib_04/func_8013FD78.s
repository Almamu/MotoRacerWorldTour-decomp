nonmatching func_8013FD78, 0xCC

glabel func_8013FD78
    /* D244 8013FD78 1C80023C */  lui        $v0, %hi(D_801BFE70)
    /* D248 8013FD7C 70FE428C */  lw         $v0, %lo(D_801BFE70)($v0)
    /* D24C 8013FD80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D250 8013FD84 1000BFAF */  sw         $ra, 0x10($sp)
    /* D254 8013FD88 09F84000 */  jalr       $v0
    /* D258 8013FD8C 00000000 */   nop
    /* D25C 8013FD90 21184000 */  addu       $v1, $v0, $zero
    /* D260 8013FD94 37006290 */  lbu        $v0, 0x37($v1)
    /* D264 8013FD98 00000000 */  nop
    /* D268 8013FD9C 13004014 */  bnez       $v0, .L8013FDEC
    /* D26C 8013FDA0 00000000 */   nop
    /* D270 8013FDA4 38006290 */  lbu        $v0, 0x38($v1)
    /* D274 8013FDA8 00000000 */  nop
    /* D278 8013FDAC 0F004014 */  bnez       $v0, .L8013FDEC
    /* D27C 8013FDB0 00000000 */   nop
    /* D280 8013FDB4 1000628C */  lw         $v0, 0x10($v1)
    /* D284 8013FDB8 00000000 */  nop
    /* D288 8013FDBC 05006210 */  beq        $v1, $v0, .L8013FDD4
    /* D28C 8013FDC0 00000000 */   nop
    /* D290 8013FDC4 39006290 */  lbu        $v0, 0x39($v1)
    /* D294 8013FDC8 00000000 */  nop
    /* D298 8013FDCC 07004014 */  bnez       $v0, .L8013FDEC
    /* D29C 8013FDD0 00000000 */   nop
  .L8013FDD4:
    /* D2A0 8013FDD4 3000628C */  lw         $v0, 0x30($v1)
    /* D2A4 8013FDD8 00000000 */  nop
    /* D2A8 8013FDDC 00004290 */  lbu        $v0, 0x0($v0)
    /* D2AC 8013FDE0 00000000 */  nop
    /* D2B0 8013FDE4 12004010 */  beqz       $v0, .L8013FE30
    /* D2B4 8013FDE8 00000000 */   nop
  .L8013FDEC:
    /* D2B8 8013FDEC 49006490 */  lbu        $a0, 0x49($v1)
    /* D2BC 8013FDF0 03000224 */  addiu      $v0, $zero, 0x3
    /* D2C0 8013FDF4 0C008210 */  beq        $a0, $v0, .L8013FE28
    /* D2C4 8013FDF8 04008228 */   slti      $v0, $a0, 0x4
    /* D2C8 8013FDFC 05004010 */  beqz       $v0, .L8013FE14
    /* D2CC 8013FE00 02000224 */   addiu     $v0, $zero, 0x2
    /* D2D0 8013FE04 0B008210 */  beq        $a0, $v0, .L8013FE34
    /* D2D4 8013FE08 01000224 */   addiu     $v0, $zero, 0x1
    /* D2D8 8013FE0C 8CFF0408 */  j          .L8013FE30
    /* D2DC 8013FE10 00000000 */   nop
  .L8013FE14:
    /* D2E0 8013FE14 06000224 */  addiu      $v0, $zero, 0x6
    /* D2E4 8013FE18 06008210 */  beq        $a0, $v0, .L8013FE34
    /* D2E8 8013FE1C 04000224 */   addiu     $v0, $zero, 0x4
    /* D2EC 8013FE20 8CFF0408 */  j          .L8013FE30
    /* D2F0 8013FE24 00000000 */   nop
  .L8013FE28:
    /* D2F4 8013FE28 8DFF0408 */  j          .L8013FE34
    /* D2F8 8013FE2C 01000224 */   addiu     $v0, $zero, 0x1
  .L8013FE30:
    /* D2FC 8013FE30 49006290 */  lbu        $v0, 0x49($v1)
  .L8013FE34:
    /* D300 8013FE34 1000BF8F */  lw         $ra, 0x10($sp)
    /* D304 8013FE38 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D308 8013FE3C 0800E003 */  jr         $ra
    /* D30C 8013FE40 00000000 */   nop
endlabel func_8013FD78
