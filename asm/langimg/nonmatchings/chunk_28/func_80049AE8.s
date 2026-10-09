nonmatching func_80049AE8, 0xB4

glabel func_80049AE8
    /* 382F8 80049AE8 CC6A828F */  lw         $v0, %gp_rel(D_800CB1BC)($gp)
    /* 382FC 80049AEC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 38300 80049AF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 38304 80049AF4 01001024 */  addiu      $s0, $zero, 0x1
    /* 38308 80049AF8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3830C 80049AFC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 38310 80049B00 1400B1AF */  sw         $s1, 0x14($sp)
    /* 38314 80049B04 01004224 */  addiu      $v0, $v0, 0x1
    /* 38318 80049B08 CC6A82AF */  sw         $v0, %gp_rel(D_800CB1BC)($gp)
    /* 3831C 80049B0C 05005014 */  bne        $v0, $s0, .L80049B24
    /* 38320 80049B10 00000000 */   nop
    /* 38324 80049B14 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 38328 80049B18 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 3832C 80049B1C 1CBF010C */  jal        func_8006FC70
    /* 38330 80049B20 00000000 */   nop
  .L80049B24:
    /* 38334 80049B24 BC68828F */  lw         $v0, %gp_rel(D_800CAFAC)($gp)
    /* 38338 80049B28 00000000 */  nop
    /* 3833C 80049B2C 01004224 */  addiu      $v0, $v0, 0x1
    /* 38340 80049B30 BC6882AF */  sw         $v0, %gp_rel(D_800CAFAC)($gp)
    /* 38344 80049B34 05005014 */  bne        $v0, $s0, .L80049B4C
    /* 38348 80049B38 00000000 */   nop
    /* 3834C 80049B3C 0D80043C */  lui        $a0, %hi(D_800CB0A0)
    /* 38350 80049B40 A0B08424 */  addiu      $a0, $a0, %lo(D_800CB0A0)
    /* 38354 80049B44 1CBF010C */  jal        func_8006FC70
    /* 38358 80049B48 00000000 */   nop
  .L80049B4C:
    /* 3835C 80049B4C B868828F */  lw         $v0, %gp_rel(D_800CAFA8)($gp)
    /* 38360 80049B50 00000000 */  nop
    /* 38364 80049B54 01004224 */  addiu      $v0, $v0, 0x1
    /* 38368 80049B58 B86882AF */  sw         $v0, %gp_rel(D_800CAFA8)($gp)
    /* 3836C 80049B5C 09005014 */  bne        $v0, $s0, .L80049B84
    /* 38370 80049B60 01001024 */   addiu     $s0, $zero, 0x1
    /* 38374 80049B64 0D80113C */  lui        $s1, %hi(D_800CAFB8)
    /* 38378 80049B68 B8AF3126 */  addiu      $s1, $s1, %lo(D_800CAFB8)
    /* 3837C 80049B6C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L80049B70:
    /* 38380 80049B70 1B28020C */  jal        func_8008A06C
    /* 38384 80049B74 21202002 */   addu      $a0, $s1, $zero
    /* 38388 80049B78 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 3838C 80049B7C FCFF1216 */  bne        $s0, $s2, .L80049B70
    /* 38390 80049B80 74003126 */   addiu     $s1, $s1, 0x74
  .L80049B84:
    /* 38394 80049B84 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 38398 80049B88 1800B28F */  lw         $s2, 0x18($sp)
    /* 3839C 80049B8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 383A0 80049B90 1000B08F */  lw         $s0, 0x10($sp)
    /* 383A4 80049B94 0800E003 */  jr         $ra
    /* 383A8 80049B98 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80049AE8
