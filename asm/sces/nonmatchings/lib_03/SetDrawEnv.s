nonmatching SetDrawEnv, 0x1F8

glabel SetDrawEnv
    /* A1D0 8013CD04 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A1D4 8013CD08 1800B0AF */  sw         $s0, 0x18($sp)
    /* A1D8 8013CD0C 2180A000 */  addu       $s0, $a1, $zero
    /* A1DC 8013CD10 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A1E0 8013CD14 21888000 */  addu       $s1, $a0, $zero
    /* A1E4 8013CD18 2000BFAF */  sw         $ra, 0x20($sp)
    /* A1E8 8013CD1C 00000486 */  lh         $a0, 0x0($s0)
    /* A1EC 8013CD20 02000586 */  lh         $a1, 0x2($s0)
    /* A1F0 8013CD24 63F4040C */  jal        func_8013D18C
    /* A1F4 8013CD28 00000000 */   nop
    /* A1F8 8013CD2C 040022AE */  sw         $v0, 0x4($s1)
    /* A1FC 8013CD30 04000496 */  lhu        $a0, 0x4($s0)
    /* A200 8013CD34 00000296 */  lhu        $v0, 0x0($s0)
    /* A204 8013CD38 02000596 */  lhu        $a1, 0x2($s0)
    /* A208 8013CD3C 21208200 */  addu       $a0, $a0, $v0
    /* A20C 8013CD40 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A210 8013CD44 00240400 */  sll        $a0, $a0, 16
    /* A214 8013CD48 06000296 */  lhu        $v0, 0x6($s0)
    /* A218 8013CD4C 03240400 */  sra        $a0, $a0, 16
    /* A21C 8013CD50 2128A200 */  addu       $a1, $a1, $v0
    /* A220 8013CD54 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* A224 8013CD58 002C0500 */  sll        $a1, $a1, 16
    /* A228 8013CD5C 89F4040C */  jal        func_8013D224
    /* A22C 8013CD60 032C0500 */   sra       $a1, $a1, 16
    /* A230 8013CD64 080022AE */  sw         $v0, 0x8($s1)
    /* A234 8013CD68 08000486 */  lh         $a0, 0x8($s0)
    /* A238 8013CD6C 0A000586 */  lh         $a1, 0xA($s0)
    /* A23C 8013CD70 AFF4040C */  jal        func_8013D2BC
    /* A240 8013CD74 00000000 */   nop
    /* A244 8013CD78 0C0022AE */  sw         $v0, 0xC($s1)
    /* A248 8013CD7C 17000492 */  lbu        $a0, 0x17($s0)
    /* A24C 8013CD80 16000592 */  lbu        $a1, 0x16($s0)
    /* A250 8013CD84 14000696 */  lhu        $a2, 0x14($s0)
    /* A254 8013CD88 5BF4040C */  jal        func_8013D16C
    /* A258 8013CD8C 00000000 */   nop
    /* A25C 8013CD90 0C000426 */  addiu      $a0, $s0, 0xC
    /* A260 8013CD94 B6F4040C */  jal        func_8013D2D8
    /* A264 8013CD98 100022AE */   sw        $v0, 0x10($s1)
    /* A268 8013CD9C 140022AE */  sw         $v0, 0x14($s1)
    /* A26C 8013CDA0 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* A270 8013CDA4 180022AE */  sw         $v0, 0x18($s1)
    /* A274 8013CDA8 18000292 */  lbu        $v0, 0x18($s0)
    /* A278 8013CDAC 00000000 */  nop
    /* A27C 8013CDB0 4B004010 */  beqz       $v0, .L8013CEE0
    /* A280 8013CDB4 07000824 */   addiu     $t0, $zero, 0x7
    /* A284 8013CDB8 00000296 */  lhu        $v0, 0x0($s0)
    /* A288 8013CDBC 00000000 */  nop
    /* A28C 8013CDC0 1000A2A7 */  sh         $v0, 0x10($sp)
    /* A290 8013CDC4 02000296 */  lhu        $v0, 0x2($s0)
    /* A294 8013CDC8 00000000 */  nop
    /* A298 8013CDCC 1200A2A7 */  sh         $v0, 0x12($sp)
    /* A29C 8013CDD0 04000496 */  lhu        $a0, 0x4($s0)
    /* A2A0 8013CDD4 00000000 */  nop
    /* A2A4 8013CDD8 1400A4A7 */  sh         $a0, 0x14($sp)
    /* A2A8 8013CDDC 06000296 */  lhu        $v0, 0x6($s0)
    /* A2AC 8013CDE0 00000000 */  nop
    /* A2B0 8013CDE4 1600A2A7 */  sh         $v0, 0x16($sp)
    /* A2B4 8013CDE8 00140400 */  sll        $v0, $a0, 16
    /* A2B8 8013CDEC 031C0200 */  sra        $v1, $v0, 16
    /* A2BC 8013CDF0 0B006004 */  bltz       $v1, .L8013CE20
    /* A2C0 8013CDF4 21100000 */   addu      $v0, $zero, $zero
    /* A2C4 8013CDF8 1C80023C */  lui        $v0, %hi(D_801BFC3C)
    /* A2C8 8013CDFC 3CFC4284 */  lh         $v0, %lo(D_801BFC3C)($v0)
    /* A2CC 8013CE00 00000000 */  nop
    /* A2D0 8013CE04 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A2D4 8013CE08 2A104300 */  slt        $v0, $v0, $v1
    /* A2D8 8013CE0C 1C80033C */  lui        $v1, %hi(D_801BFC3C)
    /* A2DC 8013CE10 3CFC6394 */  lhu        $v1, %lo(D_801BFC3C)($v1)
    /* A2E0 8013CE14 02004014 */  bnez       $v0, .L8013CE20
    /* A2E4 8013CE18 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* A2E8 8013CE1C 21108000 */  addu       $v0, $a0, $zero
  .L8013CE20:
    /* A2EC 8013CE20 1600A387 */  lh         $v1, 0x16($sp)
    /* A2F0 8013CE24 1600A497 */  lhu        $a0, 0x16($sp)
    /* A2F4 8013CE28 0C006004 */  bltz       $v1, .L8013CE5C
    /* A2F8 8013CE2C 1400A2A7 */   sh        $v0, 0x14($sp)
    /* A2FC 8013CE30 1C80023C */  lui        $v0, %hi(D_801BFC3E)
    /* A300 8013CE34 3EFC4284 */  lh         $v0, %lo(D_801BFC3E)($v0)
    /* A304 8013CE38 00000000 */  nop
    /* A308 8013CE3C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A30C 8013CE40 2A104300 */  slt        $v0, $v0, $v1
    /* A310 8013CE44 1C80033C */  lui        $v1, %hi(D_801BFC3E)
    /* A314 8013CE48 3EFC6394 */  lhu        $v1, %lo(D_801BFC3E)($v1)
    /* A318 8013CE4C 04004014 */  bnez       $v0, .L8013CE60
    /* A31C 8013CE50 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* A320 8013CE54 98F30408 */  j          .L8013CE60
    /* A324 8013CE58 21108000 */   addu      $v0, $a0, $zero
  .L8013CE5C:
    /* A328 8013CE5C 21100000 */  addu       $v0, $zero, $zero
  .L8013CE60:
    /* A32C 8013CE60 80300800 */  sll        $a2, $t0, 2
    /* A330 8013CE64 01000825 */  addiu      $t0, $t0, 0x1
    /* A334 8013CE68 80380800 */  sll        $a3, $t0, 2
    /* A338 8013CE6C 01000825 */  addiu      $t0, $t0, 0x1
    /* A33C 8013CE70 80280800 */  sll        $a1, $t0, 2
    /* A340 8013CE74 01000825 */  addiu      $t0, $t0, 0x1
    /* A344 8013CE78 1600A2A7 */  sh         $v0, 0x16($sp)
    /* A348 8013CE7C 1000A297 */  lhu        $v0, 0x10($sp)
    /* A34C 8013CE80 08000396 */  lhu        $v1, 0x8($s0)
    /* A350 8013CE84 2130D100 */  addu       $a2, $a2, $s1
    /* A354 8013CE88 23104300 */  subu       $v0, $v0, $v1
    /* A358 8013CE8C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* A35C 8013CE90 1200A297 */  lhu        $v0, 0x12($sp)
    /* A360 8013CE94 0A000396 */  lhu        $v1, 0xA($s0)
    /* A364 8013CE98 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* A368 8013CE9C 23104300 */  subu       $v0, $v0, $v1
    /* A36C 8013CEA0 1200A2A7 */  sh         $v0, 0x12($sp)
    /* A370 8013CEA4 1B000292 */  lbu        $v0, 0x1B($s0)
    /* A374 8013CEA8 1A000392 */  lbu        $v1, 0x1A($s0)
    /* A378 8013CEAC 00140200 */  sll        $v0, $v0, 16
    /* A37C 8013CEB0 001A0300 */  sll        $v1, $v1, 8
    /* A380 8013CEB4 25186400 */  or         $v1, $v1, $a0
    /* A384 8013CEB8 19000492 */  lbu        $a0, 0x19($s0)
    /* A388 8013CEBC 25104300 */  or         $v0, $v0, $v1
    /* A38C 8013CEC0 25104400 */  or         $v0, $v0, $a0
    /* A390 8013CEC4 0000C2AC */  sw         $v0, 0x0($a2)
    /* A394 8013CEC8 1000A28F */  lw         $v0, 0x10($sp)
    /* A398 8013CECC 2138F100 */  addu       $a3, $a3, $s1
    /* A39C 8013CED0 0000E2AC */  sw         $v0, 0x0($a3)
    /* A3A0 8013CED4 1400A28F */  lw         $v0, 0x14($sp)
    /* A3A4 8013CED8 2128B100 */  addu       $a1, $a1, $s1
    /* A3A8 8013CEDC 0000A2AC */  sw         $v0, 0x0($a1)
  .L8013CEE0:
    /* A3AC 8013CEE0 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* A3B0 8013CEE4 030022A2 */  sb         $v0, 0x3($s1)
    /* A3B4 8013CEE8 2000BF8F */  lw         $ra, 0x20($sp)
    /* A3B8 8013CEEC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A3BC 8013CEF0 1800B08F */  lw         $s0, 0x18($sp)
    /* A3C0 8013CEF4 0800E003 */  jr         $ra
    /* A3C4 8013CEF8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel SetDrawEnv
