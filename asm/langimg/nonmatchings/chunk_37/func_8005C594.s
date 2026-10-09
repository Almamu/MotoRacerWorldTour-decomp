nonmatching func_8005C594, 0x44

glabel func_8005C594
    /* 4ADA4 8005C594 D06C828F */  lw         $v0, %gp_rel(D_800CB3C0)($gp)
    /* 4ADA8 8005C598 01000324 */  addiu      $v1, $zero, 0x1
    /* 4ADAC 8005C59C 01004224 */  addiu      $v0, $v0, 0x1
    /* 4ADB0 8005C5A0 D06C82AF */  sw         $v0, %gp_rel(D_800CB3C0)($gp)
    /* 4ADB4 8005C5A4 0A004314 */  bne        $v0, $v1, .L8005C5D0
    /* 4ADB8 8005C5A8 63000224 */   addiu     $v0, $zero, 0x63
    /* 4ADBC 8005C5AC FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4ADC0 8005C5B0 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8005C5B4:
    /* 4ADC4 8005C5B4 FFFF4314 */  bne        $v0, $v1, .L8005C5B4
    /* 4ADC8 8005C5B8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 4ADCC 8005C5BC 63000224 */  addiu      $v0, $zero, 0x63
    /* 4ADD0 8005C5C0 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4ADD4 8005C5C4 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8005C5C8:
    /* 4ADD8 8005C5C8 FFFF4314 */  bne        $v0, $v1, .L8005C5C8
    /* 4ADDC 8005C5CC FFFF4224 */   addiu     $v0, $v0, -0x1
  .L8005C5D0:
    /* 4ADE0 8005C5D0 0800E003 */  jr         $ra
    /* 4ADE4 8005C5D4 00000000 */   nop
endlabel func_8005C594
