nonmatching func_80049A24, 0xC4

glabel func_80049A24
    /* 38234 80049A24 B868828F */  lw         $v0, %gp_rel(D_800CAFA8)($gp)
    /* 38238 80049A28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3823C 80049A2C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 38240 80049A30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 38244 80049A34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 38248 80049A38 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3824C 80049A3C B86882AF */  sw         $v0, %gp_rel(D_800CAFA8)($gp)
    /* 38250 80049A40 10004014 */  bnez       $v0, .L80049A84
    /* 38254 80049A44 00000000 */   nop
    /* 38258 80049A48 0D80113C */  lui        $s1, %hi(D_800CAFB8)
    /* 3825C 80049A4C B8AF3126 */  addiu      $s1, $s1, %lo(D_800CAFB8)
    /* 38260 80049A50 0C002012 */  beqz       $s1, .L80049A84
    /* 38264 80049A54 00000000 */   nop
    /* 38268 80049A58 0D80103C */  lui        $s0, %hi(D_800CB0A0)
    /* 3826C 80049A5C A0B01026 */  addiu      $s0, $s0, %lo(D_800CB0A0)
    /* 38270 80049A60 08001112 */  beq        $s0, $s1, .L80049A84
    /* 38274 80049A64 00000000 */   nop
    /* 38278 80049A68 8CFF1026 */  addiu      $s0, $s0, -0x74
  .L80049A6C:
    /* 3827C 80049A6C 21200002 */  addu       $a0, $s0, $zero
    /* 38280 80049A70 3028020C */  jal        func_8008A0C0
    /* 38284 80049A74 02000524 */   addiu     $a1, $zero, 0x2
    /* 38288 80049A78 FCFF1116 */  bne        $s0, $s1, .L80049A6C
    /* 3828C 80049A7C 8CFF1026 */   addiu     $s0, $s0, -0x74
    /* 38290 80049A80 74001026 */  addiu      $s0, $s0, 0x74
  .L80049A84:
    /* 38294 80049A84 BC68828F */  lw         $v0, %gp_rel(D_800CAFAC)($gp)
    /* 38298 80049A88 00000000 */  nop
    /* 3829C 80049A8C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 382A0 80049A90 BC6882AF */  sw         $v0, %gp_rel(D_800CAFAC)($gp)
    /* 382A4 80049A94 05004014 */  bnez       $v0, .L80049AAC
    /* 382A8 80049A98 00000000 */   nop
    /* 382AC 80049A9C 0D80043C */  lui        $a0, %hi(D_800CB0A0)
    /* 382B0 80049AA0 A0B08424 */  addiu      $a0, $a0, %lo(D_800CB0A0)
    /* 382B4 80049AA4 2BBF010C */  jal        func_8006FCAC
    /* 382B8 80049AA8 02000524 */   addiu     $a1, $zero, 0x2
  .L80049AAC:
    /* 382BC 80049AAC CC6A828F */  lw         $v0, %gp_rel(D_800CB1BC)($gp)
    /* 382C0 80049AB0 00000000 */  nop
    /* 382C4 80049AB4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 382C8 80049AB8 CC6A82AF */  sw         $v0, %gp_rel(D_800CB1BC)($gp)
    /* 382CC 80049ABC 05004014 */  bnez       $v0, .L80049AD4
    /* 382D0 80049AC0 00000000 */   nop
    /* 382D4 80049AC4 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 382D8 80049AC8 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 382DC 80049ACC 2BBF010C */  jal        func_8006FCAC
    /* 382E0 80049AD0 02000524 */   addiu     $a1, $zero, 0x2
  .L80049AD4:
    /* 382E4 80049AD4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 382E8 80049AD8 1400B18F */  lw         $s1, 0x14($sp)
    /* 382EC 80049ADC 1000B08F */  lw         $s0, 0x10($sp)
    /* 382F0 80049AE0 0800E003 */  jr         $ra
    /* 382F4 80049AE4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80049A24
