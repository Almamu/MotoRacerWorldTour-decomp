nonmatching func_800AE198, 0xA0

glabel func_800AE198
    /* 9C9A8 800AE198 0010033C */  lui        $v1, (0x10000007 >> 16)
    /* 9C9AC 800AE19C 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9C9B0 800AE1A0 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9C9B4 800AE1A4 07006334 */  ori        $v1, $v1, (0x10000007 & 0xFFFF)
    /* 9C9B8 800AE1A8 000043AC */  sw         $v1, 0x0($v0)
    /* 9C9BC 800AE1AC 0C80053C */  lui        $a1, %hi(D_800BF344)
    /* 9C9C0 800AE1B0 44F3A58C */  lw         $a1, %lo(D_800BF344)($a1)
    /* 9C9C4 800AE1B4 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 9C9C8 800AE1B8 0000A28C */  lw         $v0, 0x0($a1)
    /* 9C9CC 800AE1BC FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 9C9D0 800AE1C0 24104300 */  and        $v0, $v0, $v1
    /* 9C9D4 800AE1C4 02000324 */  addiu      $v1, $zero, 0x2
    /* 9C9D8 800AE1C8 0F004310 */  beq        $v0, $v1, .L800AE208
    /* 9C9DC 800AE1CC 00E1033C */   lui       $v1, (0xE1001000 >> 16)
    /* 9C9E0 800AE1D0 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9C9E4 800AE1D4 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9C9E8 800AE1D8 00000000 */  nop
    /* 9C9EC 800AE1DC 0000428C */  lw         $v0, 0x0($v0)
    /* 9C9F0 800AE1E0 00106334 */  ori        $v1, $v1, (0xE1001000 & 0xFFFF)
    /* 9C9F4 800AE1E4 FF3F4230 */  andi       $v0, $v0, 0x3FFF
    /* 9C9F8 800AE1E8 25104300 */  or         $v0, $v0, $v1
    /* 9C9FC 800AE1EC 0000A2AC */  sw         $v0, 0x0($a1)
    /* 9CA00 800AE1F0 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9CA04 800AE1F4 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9CA08 800AE1F8 21100000 */  addu       $v0, $zero, $zero
    /* 9CA0C 800AE1FC 0000638C */  lw         $v1, 0x0($v1)
    /* 9CA10 800AE200 8CB80208 */  j          .L800AE230
    /* 9CA14 800AE204 00000000 */   nop
  .L800AE208:
    /* 9CA18 800AE208 08008230 */  andi       $v0, $a0, 0x8
    /* 9CA1C 800AE20C 07004010 */  beqz       $v0, .L800AE22C
    /* 9CA20 800AE210 0009043C */   lui       $a0, (0x9000001 >> 16)
    /* 9CA24 800AE214 01008434 */  ori        $a0, $a0, (0x9000001 & 0xFFFF)
    /* 9CA28 800AE218 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9CA2C 800AE21C 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9CA30 800AE220 02000224 */  addiu      $v0, $zero, 0x2
    /* 9CA34 800AE224 8CB80208 */  j          .L800AE230
    /* 9CA38 800AE228 000064AC */   sw        $a0, 0x0($v1)
  .L800AE22C:
    /* 9CA3C 800AE22C 01000224 */  addiu      $v0, $zero, 0x1
  .L800AE230:
    /* 9CA40 800AE230 0800E003 */  jr         $ra
    /* 9CA44 800AE234 00000000 */   nop
endlabel func_800AE198
