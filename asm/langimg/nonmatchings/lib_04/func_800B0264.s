nonmatching func_800B0264, 0xB8

glabel func_800B0264
    /* 9EA74 800B0264 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EA78 800B0268 21288000 */  addu       $a1, $a0, $zero
    /* 9EA7C 800B026C 0E80023C */  lui        $v0, %hi(D_800DE2F8)
    /* 9EA80 800B0270 F8E24224 */  addiu      $v0, $v0, %lo(D_800DE2F8)
    /* 9EA84 800B0274 00190500 */  sll        $v1, $a1, 4
    /* 9EA88 800B0278 21186500 */  addu       $v1, $v1, $a1
    /* 9EA8C 800B027C 40180300 */  sll        $v1, $v1, 1
    /* 9EA90 800B0280 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EA94 800B0284 21886200 */  addu       $s1, $v1, $v0
    /* 9EA98 800B0288 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9EA9C 800B028C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EAA0 800B0290 00002482 */  lb         $a0, 0x0($s1)
    /* 9EAA4 800B0294 00000000 */  nop
    /* 9EAA8 800B0298 1A008014 */  bnez       $a0, .L800B0304
    /* 9EAAC 800B029C 21800000 */   addu      $s0, $zero, $zero
    /* 9EAB0 800B02A0 0E80033C */  lui        $v1, %hi(D_800DE358)
    /* 9EAB4 800B02A4 58E36324 */  addiu      $v1, $v1, %lo(D_800DE358)
    /* 9EAB8 800B02A8 80100500 */  sll        $v0, $a1, 2
    /* 9EABC 800B02AC 21104300 */  addu       $v0, $v0, $v1
    /* 9EAC0 800B02B0 0000448C */  lw         $a0, 0x0($v0)
    /* 9EAC4 800B02B4 02000524 */  addiu      $a1, $zero, 0x2
    /* 9EAC8 800B02B8 4FC1020C */  jal        func_800B053C
    /* 9EACC 800B02BC 21300000 */   addu      $a2, $zero, $zero
    /* 9EAD0 800B02C0 04004010 */  beqz       $v0, .L800B02D4
    /* 9EAD4 800B02C4 0C80023C */   lui       $v0, %hi(D_800C3C7C)
    /* 9EAD8 800B02C8 7C3C438C */  lw         $v1, %lo(D_800C3C7C)($v0)
    /* 9EADC 800B02CC C1C00208 */  j          .L800B0304
    /* 9EAE0 800B02D0 01007030 */   andi      $s0, $v1, 0x1
  .L800B02D4:
    /* 9EAE4 800B02D4 01002292 */  lbu        $v0, 0x1($s1)
    /* 9EAE8 800B02D8 07000324 */  addiu      $v1, $zero, 0x7
    /* 9EAEC 800B02DC 02110200 */  srl        $v0, $v0, 4
    /* 9EAF0 800B02E0 09004314 */  bne        $v0, $v1, .L800B0308
    /* 9EAF4 800B02E4 21100002 */   addu      $v0, $s0, $zero
    /* 9EAF8 800B02E8 0C80033C */  lui        $v1, %hi(D_800C3C7C)
    /* 9EAFC 800B02EC 7C3C628C */  lw         $v0, %lo(D_800C3C7C)($v1)
    /* 9EB00 800B02F0 00000000 */  nop
    /* 9EB04 800B02F4 02004230 */  andi       $v0, $v0, 0x2
    /* 9EB08 800B02F8 03004010 */  beqz       $v0, .L800B0308
    /* 9EB0C 800B02FC 21100002 */   addu      $v0, $s0, $zero
    /* 9EB10 800B0300 01001024 */  addiu      $s0, $zero, 0x1
  .L800B0304:
    /* 9EB14 800B0304 21100002 */  addu       $v0, $s0, $zero
  .L800B0308:
    /* 9EB18 800B0308 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9EB1C 800B030C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EB20 800B0310 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EB24 800B0314 0800E003 */  jr         $ra
    /* 9EB28 800B0318 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0264
