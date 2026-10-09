nonmatching qsort, 0x190

glabel qsort
    /* A4998 800B6188 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A499C 800B618C 2400B5AF */  sw         $s5, 0x24($sp)
    /* A49A0 800B6190 21A8A000 */  addu       $s5, $a1, $zero
    /* A49A4 800B6194 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A49A8 800B6198 2198C000 */  addu       $s3, $a2, $zero
    /* A49AC 800B619C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* A49B0 800B61A0 21B8E000 */  addu       $s7, $a3, $zero
    /* A49B4 800B61A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* A49B8 800B61A8 21A08000 */  addu       $s4, $a0, $zero
    /* A49BC 800B61AC 1800B2AF */  sw         $s2, 0x18($sp)
    /* A49C0 800B61B0 21909302 */  addu       $s2, $s4, $s3
    /* A49C4 800B61B4 2800B6AF */  sw         $s6, 0x28($sp)
    /* A49C8 800B61B8 21B00000 */  addu       $s6, $zero, $zero
    /* A49CC 800B61BC 0200A22E */  sltiu      $v0, $s5, 0x2
    /* A49D0 800B61C0 3000BFAF */  sw         $ra, 0x30($sp)
    /* A49D4 800B61C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A49D8 800B61C8 38004014 */  bnez       $v0, .L800B62AC
    /* A49DC 800B61CC 1000B0AF */   sw        $s0, 0x10($sp)
    /* A49E0 800B61D0 02000224 */  addiu      $v0, $zero, 0x2
    /* A49E4 800B61D4 0A00A216 */  bne        $s5, $v0, .L800B6200
    /* A49E8 800B61D8 42101500 */   srl       $v0, $s5, 1
    /* A49EC 800B61DC 09F8E002 */  jalr       $s7
    /* A49F0 800B61E0 21284002 */   addu      $a1, $s2, $zero
    /* A49F4 800B61E4 31004018 */  blez       $v0, .L800B62AC
    /* A49F8 800B61E8 21208002 */   addu      $a0, $s4, $zero
    /* A49FC 800B61EC 21284002 */  addu       $a1, $s2, $zero
    /* A4A00 800B61F0 B6D8020C */  jal        func_800B62D8
    /* A4A04 800B61F4 21306002 */   addu      $a2, $s3, $zero
    /* A4A08 800B61F8 ABD80208 */  j          .L800B62AC
    /* A4A0C 800B61FC 00000000 */   nop
  .L800B6200:
    /* A4A10 800B6200 18005300 */  mult       $v0, $s3
    /* A4A14 800B6204 21208002 */  addu       $a0, $s4, $zero
    /* A4A18 800B6208 21306002 */  addu       $a2, $s3, $zero
    /* A4A1C 800B620C 21888002 */  addu       $s1, $s4, $zero
    /* A4A20 800B6210 01001024 */  addiu      $s0, $zero, 0x1
    /* A4A24 800B6214 12180000 */  mflo       $v1
    /* A4A28 800B6218 B6D8020C */  jal        func_800B62D8
    /* A4A2C 800B621C 21288302 */   addu      $a1, $s4, $v1
    /* A4A30 800B6220 2B101502 */  sltu       $v0, $s0, $s5
    /* A4A34 800B6224 11004010 */  beqz       $v0, .L800B626C
    /* A4A38 800B6228 00000000 */   nop
  .L800B622C:
    /* A4A3C 800B622C 21204002 */  addu       $a0, $s2, $zero
    /* A4A40 800B6230 09F8E002 */  jalr       $s7
    /* A4A44 800B6234 21288002 */   addu      $a1, $s4, $zero
    /* A4A48 800B6238 08004104 */  bgez       $v0, .L800B625C
    /* A4A4C 800B623C 00000000 */   nop
    /* A4A50 800B6240 21883302 */  addu       $s1, $s1, $s3
    /* A4A54 800B6244 05005112 */  beq        $s2, $s1, .L800B625C
    /* A4A58 800B6248 0100D626 */   addiu     $s6, $s6, 0x1
    /* A4A5C 800B624C 21204002 */  addu       $a0, $s2, $zero
    /* A4A60 800B6250 21282002 */  addu       $a1, $s1, $zero
    /* A4A64 800B6254 B6D8020C */  jal        func_800B62D8
    /* A4A68 800B6258 21306002 */   addu      $a2, $s3, $zero
  .L800B625C:
    /* A4A6C 800B625C 01001026 */  addiu      $s0, $s0, 0x1
    /* A4A70 800B6260 2B101502 */  sltu       $v0, $s0, $s5
    /* A4A74 800B6264 F1FF4014 */  bnez       $v0, .L800B622C
    /* A4A78 800B6268 21905302 */   addu      $s2, $s2, $s3
  .L800B626C:
    /* A4A7C 800B626C 04003412 */  beq        $s1, $s4, .L800B6280
    /* A4A80 800B6270 21208002 */   addu      $a0, $s4, $zero
    /* A4A84 800B6274 21282002 */  addu       $a1, $s1, $zero
    /* A4A88 800B6278 B6D8020C */  jal        func_800B62D8
    /* A4A8C 800B627C 21306002 */   addu      $a2, $s3, $zero
  .L800B6280:
    /* A4A90 800B6280 21208002 */  addu       $a0, $s4, $zero
    /* A4A94 800B6284 2128C002 */  addu       $a1, $s6, $zero
    /* A4A98 800B6288 21306002 */  addu       $a2, $s3, $zero
    /* A4A9C 800B628C 62D8020C */  jal        qsort
    /* A4AA0 800B6290 2138E002 */   addu      $a3, $s7, $zero
    /* A4AA4 800B6294 21203302 */  addu       $a0, $s1, $s3
    /* A4AA8 800B6298 2328B602 */  subu       $a1, $s5, $s6
    /* A4AAC 800B629C FFFFA524 */  addiu      $a1, $a1, -0x1
    /* A4AB0 800B62A0 21306002 */  addu       $a2, $s3, $zero
    /* A4AB4 800B62A4 62D8020C */  jal        qsort
    /* A4AB8 800B62A8 2138E002 */   addu      $a3, $s7, $zero
  .L800B62AC:
    /* A4ABC 800B62AC 3000BF8F */  lw         $ra, 0x30($sp)
    /* A4AC0 800B62B0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* A4AC4 800B62B4 2800B68F */  lw         $s6, 0x28($sp)
    /* A4AC8 800B62B8 2400B58F */  lw         $s5, 0x24($sp)
    /* A4ACC 800B62BC 2000B48F */  lw         $s4, 0x20($sp)
    /* A4AD0 800B62C0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A4AD4 800B62C4 1800B28F */  lw         $s2, 0x18($sp)
    /* A4AD8 800B62C8 1400B18F */  lw         $s1, 0x14($sp)
    /* A4ADC 800B62CC 1000B08F */  lw         $s0, 0x10($sp)
    /* A4AE0 800B62D0 0800E003 */  jr         $ra
    /* A4AE4 800B62D4 3800BD27 */   addiu     $sp, $sp, 0x38
  alabel func_800B62D8
    /* A4AE8 800B62D8 21408000 */  addu       $t0, $a0, $zero
    /* A4AEC 800B62DC 2148A000 */  addu       $t1, $a1, $zero
    /* A4AF0 800B62E0 0A00C010 */  beqz       $a2, .L800B630C
    /* A4AF4 800B62E4 21380000 */   addu      $a3, $zero, $zero
  .L800B62E8:
    /* A4AF8 800B62E8 21180701 */  addu       $v1, $t0, $a3
    /* A4AFC 800B62EC 21202701 */  addu       $a0, $t1, $a3
    /* A4B00 800B62F0 00006590 */  lbu        $a1, 0x0($v1)
    /* A4B04 800B62F4 00008290 */  lbu        $v0, 0x0($a0)
    /* A4B08 800B62F8 0100E724 */  addiu      $a3, $a3, 0x1
    /* A4B0C 800B62FC 000062A0 */  sb         $v0, 0x0($v1)
    /* A4B10 800B6300 2B10E600 */  sltu       $v0, $a3, $a2
    /* A4B14 800B6304 F8FF4014 */  bnez       $v0, .L800B62E8
    /* A4B18 800B6308 000085A0 */   sb        $a1, 0x0($a0)
  .L800B630C:
    /* A4B1C 800B630C 0800E003 */  jr         $ra
    /* A4B20 800B6310 00000000 */   nop
    /* A4B24 800B6314 00000000 */  nop
endlabel qsort
