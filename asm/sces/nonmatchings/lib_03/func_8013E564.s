nonmatching func_8013E564, 0xA0

glabel func_8013E564
    /* BA30 8013E564 0010033C */  lui        $v1, (0x10000007 >> 16)
    /* BA34 8013E568 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* BA38 8013E56C 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* BA3C 8013E570 07006334 */  ori        $v1, $v1, (0x10000007 & 0xFFFF)
    /* BA40 8013E574 000043AC */  sw         $v1, 0x0($v0)
    /* BA44 8013E578 1C80053C */  lui        $a1, %hi(D_801BFD3C)
    /* BA48 8013E57C 3CFDA58C */  lw         $a1, %lo(D_801BFD3C)($a1)
    /* BA4C 8013E580 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* BA50 8013E584 0000A28C */  lw         $v0, 0x0($a1)
    /* BA54 8013E588 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* BA58 8013E58C 24104300 */  and        $v0, $v0, $v1
    /* BA5C 8013E590 02000324 */  addiu      $v1, $zero, 0x2
    /* BA60 8013E594 0F004310 */  beq        $v0, $v1, .L8013E5D4
    /* BA64 8013E598 00E1033C */   lui       $v1, (0xE1001000 >> 16)
    /* BA68 8013E59C 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* BA6C 8013E5A0 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* BA70 8013E5A4 00000000 */  nop
    /* BA74 8013E5A8 0000428C */  lw         $v0, 0x0($v0)
    /* BA78 8013E5AC 00106334 */  ori        $v1, $v1, (0xE1001000 & 0xFFFF)
    /* BA7C 8013E5B0 FF3F4230 */  andi       $v0, $v0, 0x3FFF
    /* BA80 8013E5B4 25104300 */  or         $v0, $v0, $v1
    /* BA84 8013E5B8 0000A2AC */  sw         $v0, 0x0($a1)
    /* BA88 8013E5BC 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* BA8C 8013E5C0 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* BA90 8013E5C4 21100000 */  addu       $v0, $zero, $zero
    /* BA94 8013E5C8 0000638C */  lw         $v1, 0x0($v1)
    /* BA98 8013E5CC 7FF90408 */  j          .L8013E5FC
    /* BA9C 8013E5D0 00000000 */   nop
  .L8013E5D4:
    /* BAA0 8013E5D4 08008230 */  andi       $v0, $a0, 0x8
    /* BAA4 8013E5D8 07004010 */  beqz       $v0, .L8013E5F8
    /* BAA8 8013E5DC 0009043C */   lui       $a0, (0x9000001 >> 16)
    /* BAAC 8013E5E0 01008434 */  ori        $a0, $a0, (0x9000001 & 0xFFFF)
    /* BAB0 8013E5E4 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* BAB4 8013E5E8 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* BAB8 8013E5EC 02000224 */  addiu      $v0, $zero, 0x2
    /* BABC 8013E5F0 7FF90408 */  j          .L8013E5FC
    /* BAC0 8013E5F4 000064AC */   sw        $a0, 0x0($v1)
  .L8013E5F8:
    /* BAC4 8013E5F8 01000224 */  addiu      $v0, $zero, 0x1
  .L8013E5FC:
    /* BAC8 8013E5FC 0800E003 */  jr         $ra
    /* BACC 8013E600 00000000 */   nop
endlabel func_8013E564
