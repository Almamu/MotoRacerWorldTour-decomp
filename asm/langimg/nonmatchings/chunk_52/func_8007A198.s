/* Handwritten function */
nonmatching func_8007A198, 0x52C

glabel func_8007A198
    /* 689A8 8007A198 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 689AC 8007A19C 8000B4AF */  sw         $s4, 0x80($sp)
    /* 689B0 8007A1A0 21A0A000 */  addu       $s4, $a1, $zero
    /* 689B4 8007A1A4 801F0E3C */  lui        $t6, (0x1F800000 >> 16)
    /* 689B8 8007A1A8 801F0D3C */  lui        $t5, (0x1F80001C >> 16)
    /* 689BC 8007A1AC 1C00AD35 */  ori        $t5, $t5, (0x1F80001C & 0xFFFF)
    /* 689C0 8007A1B0 801F0B3C */  lui        $t3, (0x1F800018 >> 16)
    /* 689C4 8007A1B4 9400BFAF */  sw         $ra, 0x94($sp)
    /* 689C8 8007A1B8 9000BEAF */  sw         $fp, 0x90($sp)
    /* 689CC 8007A1BC 8C00B7AF */  sw         $s7, 0x8C($sp)
    /* 689D0 8007A1C0 8800B6AF */  sw         $s6, 0x88($sp)
    /* 689D4 8007A1C4 8400B5AF */  sw         $s5, 0x84($sp)
    /* 689D8 8007A1C8 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 689DC 8007A1CC 7800B2AF */  sw         $s2, 0x78($sp)
    /* 689E0 8007A1D0 7400B1AF */  sw         $s1, 0x74($sp)
    /* 689E4 8007A1D4 7000B0AF */  sw         $s0, 0x70($sp)
    /* 689E8 8007A1D8 0400938C */  lw         $s3, 0x4($a0)
    /* 689EC 8007A1DC 18006B35 */  ori        $t3, $t3, (0x1F800018 & 0xFFFF)
    /* 689F0 8007A1E0 18006C8E */  lw         $t4, 0x18($s3)
    /* 689F4 8007A1E4 00007986 */  lh         $t9, 0x0($s3)
    /* 689F8 8007A1E8 1C008F25 */  addiu      $t7, $t4, 0x1C
    /* 689FC 8007A1EC 18008A25 */  addiu      $t2, $t4, 0x18
  .L8007A1F0:
    /* 68A00 8007A1F0 ECFF438D */  lw         $v1, -0x14($t2)
    /* 68A04 8007A1F4 F0FF448D */  lw         $a0, -0x10($t2)
    /* 68A08 8007A1F8 F4FF458D */  lw         $a1, -0xC($t2)
    /* 68A0C 8007A1FC F8FF468D */  lw         $a2, -0x8($t2)
    /* 68A10 8007A200 FCFF478D */  lw         $a3, -0x4($t2)
    /* 68A14 8007A204 0000488D */  lw         $t0, 0x0($t2)
    /* 68A18 8007A208 20004A25 */  addiu      $t2, $t2, 0x20
    /* 68A1C 8007A20C 0000E98D */  lw         $t1, 0x0($t7)
    /* 68A20 8007A210 2000EF25 */  addiu      $t7, $t7, 0x20
    /* 68A24 8007A214 0000828D */  lw         $v0, 0x0($t4)
    /* 68A28 8007A218 20008C25 */  addiu      $t4, $t4, 0x20
    /* 68A2C 8007A21C FFFF3927 */  addiu      $t9, $t9, -0x1
    /* 68A30 8007A220 0000C2AD */  sw         $v0, (0x1F800000 & 0xFFFF)($t6)
    /* 68A34 8007A224 ECFF63AD */  sw         $v1, -0x14($t3)
    /* 68A38 8007A228 F0FF64AD */  sw         $a0, -0x10($t3)
    /* 68A3C 8007A22C F4FF65AD */  sw         $a1, -0xC($t3)
    /* 68A40 8007A230 F8FF66AD */  sw         $a2, -0x8($t3)
    /* 68A44 8007A234 FCFF67AD */  sw         $a3, -0x4($t3)
    /* 68A48 8007A238 000068AD */  sw         $t0, 0x0($t3)
    /* 68A4C 8007A23C 20006B25 */  addiu      $t3, $t3, 0x20
    /* 68A50 8007A240 0000A9AD */  sw         $t1, 0x0($t5)
    /* 68A54 8007A244 2000AD25 */  addiu      $t5, $t5, 0x20
    /* 68A58 8007A248 E9FF2017 */  bnez       $t9, .L8007A1F0
    /* 68A5C 8007A24C 2000CE25 */   addiu     $t6, $t6, %lo(D_1F800020)
    /* 68A60 8007A250 4800AEAF */  sw         $t6, 0x48($sp)
    /* 68A64 8007A254 4C00AEAF */  sw         $t6, 0x4C($sp)
    /* 68A68 8007A258 2138C001 */  addu       $a3, $t6, $zero
    /* 68A6C 8007A25C 0C00EA24 */  addiu      $t2, $a3, 0xC
    /* 68A70 8007A260 0800E824 */  addiu      $t0, $a3, 0x8
    /* 68A74 8007A264 1C00628E */  lw         $v0, 0x1C($s3)
    /* 68A78 8007A268 00007986 */  lh         $t9, 0x0($s3)
    /* 68A7C 8007A26C 14004924 */  addiu      $t1, $v0, 0x14
    /* 68A80 8007A270 10004624 */  addiu      $a2, $v0, 0x10
  .L8007A274:
    /* 68A84 8007A274 F8FFC28C */  lw         $v0, -0x8($a2)
    /* 68A88 8007A278 FCFFC38C */  lw         $v1, -0x4($a2)
    /* 68A8C 8007A27C 0000C48C */  lw         $a0, 0x0($a2)
    /* 68A90 8007A280 1C00C624 */  addiu      $a2, $a2, 0x1C
    /* 68A94 8007A284 0000258D */  lw         $a1, 0x0($t1)
    /* 68A98 8007A288 1C002925 */  addiu      $t1, $t1, 0x1C
    /* 68A9C 8007A28C FFFF3927 */  addiu      $t9, $t9, -0x1
    /* 68AA0 8007A290 0000E2AC */  sw         $v0, 0x0($a3)
    /* 68AA4 8007A294 FCFF03AD */  sw         $v1, -0x4($t0)
    /* 68AA8 8007A298 000004AD */  sw         $a0, 0x0($t0)
    /* 68AAC 8007A29C 10000825 */  addiu      $t0, $t0, 0x10
    /* 68AB0 8007A2A0 000045AD */  sw         $a1, 0x0($t2)
    /* 68AB4 8007A2A4 10004A25 */  addiu      $t2, $t2, 0x10
    /* 68AB8 8007A2A8 F2FF2017 */  bnez       $t9, .L8007A274
    /* 68ABC 8007A2AC 1000E724 */   addiu     $a3, $a3, 0x10
    /* 68AC0 8007A2B0 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 68AC4 8007A2B4 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 68AC8 8007A2B8 21280000 */  addu       $a1, $zero, $zero
    /* 68ACC 8007A2BC F677000C */  jal        func_8001DFD8
    /* 68AD0 8007A2C0 4800A7AF */   sw        $a3, 0x48($sp)
    /* 68AD4 8007A2C4 2800638E */  lw         $v1, 0x28($s3)
    /* 68AD8 8007A2C8 4800A78F */  lw         $a3, 0x48($sp)
    /* 68ADC 8007A2CC 0B006690 */  lbu        $a2, 0xB($v1)
    /* 68AE0 8007A2D0 10000224 */  addiu      $v0, $zero, 0x10
    /* 68AE4 8007A2D4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 68AE8 8007A2D8 1000658C */  lw         $a1, 0x10($v1)
    /* 68AEC 8007A2DC 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 68AF0 8007A2E0 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 68AF4 8007A2E4 7278000C */  jal        func_8001E1C8
    /* 68AF8 8007A2E8 00000000 */   nop
    /* 68AFC 8007A2EC 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 68B00 8007A2F0 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 68B04 8007A2F4 4478000C */  jal        func_8001E110
    /* 68B08 8007A2F8 00000000 */   nop
    /* 68B0C 8007A2FC 0D80103C */  lui        $s0, %hi(D_800C8864)
    /* 68B10 8007A300 6488108E */  lw         $s0, %lo(D_800C8864)($s0)
    /* 68B14 8007A304 00000000 */  nop
    /* 68B18 8007A308 3C01028E */  lw         $v0, 0x13C($s0)
    /* 68B1C 8007A30C 00000000 */  nop
    /* 68B20 8007A310 1C00438C */  lw         $v1, 0x1C($v0)
    /* 68B24 8007A314 1400448C */  lw         $a0, 0x14($v0)
    /* 68B28 8007A318 001C0300 */  sll        $v1, $v1, 16
    /* 68B2C 8007A31C C02A0400 */  sll        $a1, $a0, 11
    /* 68B30 8007A320 00130400 */  sll        $v0, $a0, 12
    /* 68B34 8007A324 21104500 */  addu       $v0, $v0, $a1
    /* 68B38 8007A328 1A006200 */  div        $zero, $v1, $v0
    /* 68B3C 8007A32C 12100000 */  mflo       $v0
    /* 68B40 8007A330 40230400 */  sll        $a0, $a0, 13
    /* 68B44 8007A334 00000000 */  nop
    /* 68B48 8007A338 1A006400 */  div        $zero, $v1, $a0
    /* 68B4C 8007A33C 12180000 */  mflo       $v1
    /* 68B50 8007A340 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* 68B54 8007A344 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 68B58 8007A348 60001126 */  addiu      $s1, $s0, 0x60
    /* 68B5C 8007A34C 21202002 */  addu       $a0, $s1, $zero
    /* 68B60 8007A350 21288002 */  addu       $a1, $s4, $zero
    /* 68B64 8007A354 1800B227 */  addiu      $s2, $sp, 0x18
    /* 68B68 8007A358 9D61020C */  jal        func_80098674
    /* 68B6C 8007A35C 21304002 */   addu      $a2, $s2, $zero
    /* 68B70 8007A360 3800A427 */  addiu      $a0, $sp, 0x38
    /* 68B74 8007A364 2C00A527 */  addiu      $a1, $sp, 0x2C
    /* 68B78 8007A368 14008226 */  addiu      $v0, $s4, 0x14
    /* 68B7C 8007A36C 7400038E */  lw         $v1, 0x74($s0)
    /* 68B80 8007A370 74001026 */  addiu      $s0, $s0, 0x74
    /* 68B84 8007A374 1400888E */  lw         $t0, 0x14($s4)
    /* 68B88 8007A378 0400478C */  lw         $a3, 0x4($v0)
    /* 68B8C 8007A37C 0800468C */  lw         $a2, 0x8($v0)
    /* 68B90 8007A380 0400028E */  lw         $v0, 0x4($s0)
    /* 68B94 8007A384 23400301 */  subu       $t0, $t0, $v1
    /* 68B98 8007A388 0800038E */  lw         $v1, 0x8($s0)
    /* 68B9C 8007A38C 2338E200 */  subu       $a3, $a3, $v0
    /* 68BA0 8007A390 3800A8AF */  sw         $t0, 0x38($sp)
    /* 68BA4 8007A394 3C00A7AF */  sw         $a3, 0x3C($sp)
    /* 68BA8 8007A398 2330C300 */  subu       $a2, $a2, $v1
    /* 68BAC 8007A39C 1F62020C */  jal        func_8009887C
    /* 68BB0 8007A3A0 4000A6AF */   sw        $a2, 0x40($sp)
    /* 68BB4 8007A3A4 0000228E */  lw         $v0, 0x0($s1)
    /* 68BB8 8007A3A8 0400238E */  lw         $v1, 0x4($s1)
    /* 68BBC 8007A3AC 0040C248 */  ctc2       $v0, $8 /* handwritten instruction */
    /* 68BC0 8007A3B0 0048C348 */  ctc2       $v1, $9 /* handwritten instruction */
    /* 68BC4 8007A3B4 0800228E */  lw         $v0, 0x8($s1)
    /* 68BC8 8007A3B8 0C00238E */  lw         $v1, 0xC($s1)
    /* 68BCC 8007A3BC 0050C248 */  ctc2       $v0, $10 /* handwritten instruction */
    /* 68BD0 8007A3C0 1000228E */  lw         $v0, 0x10($s1)
    /* 68BD4 8007A3C4 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 68BD8 8007A3C8 0060C248 */  ctc2       $v0, $12 /* handwritten instruction */
    /* 68BDC 8007A3CC 0000428E */  lw         $v0, 0x0($s2)
    /* 68BE0 8007A3D0 0400438E */  lw         $v1, 0x4($s2)
    /* 68BE4 8007A3D4 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 68BE8 8007A3D8 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 68BEC 8007A3DC 0800428E */  lw         $v0, 0x8($s2)
    /* 68BF0 8007A3E0 0C00438E */  lw         $v1, 0xC($s2)
    /* 68BF4 8007A3E4 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 68BF8 8007A3E8 1000428E */  lw         $v0, 0x10($s2)
    /* 68BFC 8007A3EC 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 68C00 8007A3F0 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 68C04 8007A3F4 0D80163C */  lui        $s6, %hi(D_800CBDC0)
    /* 68C08 8007A3F8 C0BDD68E */  lw         $s6, %lo(D_800CBDC0)($s6)
    /* 68C0C 8007A3FC 0D800E3C */  lui        $t6, %hi(D_800C8C70)
    /* 68C10 8007A400 708CCE8D */  lw         $t6, %lo(D_800C8C70)($t6)
    /* 68C14 8007A404 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 68C18 8007A408 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 68C1C 8007A40C 5400B6AF */  sw         $s6, 0x54($sp)
    /* 68C20 8007A410 0400428C */  lw         $v0, 0x4($v0)
    /* 68C24 8007A414 2800638E */  lw         $v1, 0x28($s3)
    /* 68C28 8007A418 5000A2AF */  sw         $v0, 0x50($sp)
    /* 68C2C 8007A41C 0000768C */  lw         $s6, 0x0($v1)
    /* 68C30 8007A420 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 68C34 8007A424 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 68C38 8007A428 5800B6AF */  sw         $s6, 0x58($sp)
    /* 68C3C 8007A42C 0A007690 */  lbu        $s6, 0xA($v1)
    /* 68C40 8007A430 00000000 */  nop
    /* 68C44 8007A434 5C00B6AF */  sw         $s6, 0x5C($sp)
    /* 68C48 8007A438 0400768C */  lw         $s6, 0x4($v1)
    /* 68C4C 8007A43C 00000000 */  nop
    /* 68C50 8007A440 6000B6AF */  sw         $s6, 0x60($sp)
    /* 68C54 8007A444 0B007990 */  lbu        $t9, 0xB($v1)
    /* 68C58 8007A448 F8005E8C */  lw         $fp, 0xF8($v0)
    /* 68C5C 8007A44C FC00578C */  lw         $s7, 0xFC($v0)
    /* 68C60 8007A450 0001428C */  lw         $v0, 0x100($v0)
    /* 68C64 8007A454 00000000 */  nop
    /* 68C68 8007A458 6800A2AF */  sw         $v0, 0x68($sp)
  .L8007A45C:
    /* 68C6C 8007A45C 4800B68F */  lw         $s6, 0x48($sp)
    /* 68C70 8007A460 00000000 */  nop
    /* 68C74 8007A464 0000C282 */  lb         $v0, 0x0($s6)
    /* 68C78 8007A468 00000000 */  nop
    /* 68C7C 8007A46C 7E004010 */  beqz       $v0, .L8007A668
    /* 68C80 8007A470 00000000 */   nop
    /* 68C84 8007A474 801F0A3C */  lui        $t2, %hi(D_1F800020)
    /* 68C88 8007A478 5800B58F */  lw         $s5, 0x58($sp)
    /* 68C8C 8007A47C 4C00B28F */  lw         $s2, 0x4C($sp)
    /* 68C90 8007A480 5C00B48F */  lw         $s4, 0x5C($sp)
    /* 68C94 8007A484 0E005326 */  addiu      $s3, $s2, 0xE
    /* 68C98 8007A488 0C005126 */  addiu      $s1, $s2, 0xC
  .L8007A48C:
    /* 68C9C 8007A48C 0000AF8E */  lw         $t7, 0x0($s5)
    /* 68CA0 8007A490 00000000 */  nop
    /* 68CA4 8007A494 6D00E011 */  beqz       $t7, .L8007A64C
    /* 68CA8 8007A498 00000000 */   nop
    /* 68CAC 8007A49C 080042C9 */  lwc2       $2, 0x8($t2)
    /* 68CB0 8007A4A0 0C0043C9 */  lwc2       $3, 0xC($t2)
    /* 68CB4 8007A4A4 100044C9 */  lwc2       $4, 0x10($t2)
    /* 68CB8 8007A4A8 140045C9 */  lwc2       $5, 0x14($t2)
    /* 68CBC 8007A4AC FFFFE331 */  andi       $v1, $t7, 0xFFFF
    /* 68CC0 8007A4B0 40100300 */  sll        $v0, $v1, 1
    /* 68CC4 8007A4B4 21104300 */  addu       $v0, $v0, $v1
    /* 68CC8 8007A4B8 80100200 */  sll        $v0, $v0, 2
    /* 68CCC 8007A4BC 037C0F00 */  sra        $t7, $t7, 16
    /* 68CD0 8007A4C0 2400D825 */  addiu      $t8, $t6, 0x24
    /* 68CD4 8007A4C4 6000B68F */  lw         $s6, 0x60($sp)
    /* 68CD8 8007A4C8 1C00CC25 */  addiu      $t4, $t6, 0x1C
    /* 68CDC 8007A4CC 2168C202 */  addu       $t5, $s6, $v0
    /* 68CE0 8007A4D0 5000B68F */  lw         $s6, 0x50($sp)
    /* 68CE4 8007A4D4 0800B025 */  addiu      $s0, $t5, 0x8
    /* 68CE8 8007A4D8 FBFFD626 */  addiu      $s6, $s6, -0x5
    /* 68CEC 8007A4DC 6400B6AF */  sw         $s6, 0x64($sp)
    /* 68CF0 8007A4E0 0000A98D */  lw         $t1, 0x0($t5)
    /* 68CF4 8007A4E4 0400A88D */  lw         $t0, 0x4($t5)
    /* 68CF8 8007A4E8 0800A78D */  lw         $a3, 0x8($t5)
    /* 68CFC 8007A4EC 6800B68F */  lw         $s6, 0x68($sp)
    /* 68D00 8007A4F0 23483E01 */  subu       $t1, $t1, $fp
    /* 68D04 8007A4F4 23401701 */  subu       $t0, $t0, $s7
    /* 68D08 8007A4F8 2338F600 */  subu       $a3, $a3, $s6
    /* 68D0C 8007A4FC 43490900 */  sra        $t1, $t1, 5
    /* 68D10 8007A500 43410800 */  sra        $t0, $t0, 5
    /* 68D14 8007A504 43390700 */  sra        $a3, $a3, 5
  .L8007A508:
    /* 68D18 8007A508 00488948 */  mtc2       $t1, $9 /* handwritten instruction */
    /* 68D1C 8007A50C 00508848 */  mtc2       $t0, $10 /* handwritten instruction */
    /* 68D20 8007A510 00588748 */  mtc2       $a3, $11 /* handwritten instruction */
    /* 68D24 8007A514 0C001026 */  addiu      $s0, $s0, 0xC
    /* 68D28 8007A518 0C00AD25 */  addiu      $t5, $t5, 0xC
    /* 68D2C 8007A51C 2158C001 */  addu       $t3, $t6, $zero
    /* 68D30 8007A520 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* 68D34 8007A524 0000A98D */  lw         $t1, 0x0($t5)
    /* 68D38 8007A528 FCFF088E */  lw         $t0, -0x4($s0)
    /* 68D3C 8007A52C 0000078E */  lw         $a3, 0x0($s0)
    /* 68D40 8007A530 6800B68F */  lw         $s6, 0x68($sp)
    /* 68D44 8007A534 23483E01 */  subu       $t1, $t1, $fp
    /* 68D48 8007A538 23401701 */  subu       $t0, $t0, $s7
    /* 68D4C 8007A53C 2338F600 */  subu       $a3, $a3, $s6
    /* 68D50 8007A540 43490900 */  sra        $t1, $t1, 5
    /* 68D54 8007A544 43410800 */  sra        $t0, $t0, 5
    /* 68D58 8007A548 43390700 */  sra        $a3, $a3, 5
    /* 68D5C 8007A54C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 68D60 8007A550 00000000 */  nop
    /* 68D64 8007A554 3A004014 */  bnez       $v0, .L8007A640
    /* 68D68 8007A558 00000000 */   nop
    /* 68D6C 8007A55C 000040C9 */  lwc2       $0, 0x0($t2)
    /* 68D70 8007A560 040041C9 */  lwc2       $1, 0x4($t2)
    /* 68D74 8007A564 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* 68D78 8007A568 00D00448 */  mfc2       $a0, $26 /* handwritten instruction */
    /* 68D7C 8007A56C 00D80348 */  mfc2       $v1, $27 /* handwritten instruction */
    /* 68D80 8007A570 0028C248 */  ctc2       $v0, $5 /* handwritten instruction */
    /* 68D84 8007A574 0030C448 */  ctc2       $a0, $6 /* handwritten instruction */
    /* 68D88 8007A578 0038C348 */  ctc2       $v1, $7 /* handwritten instruction */
    /* 68D8C 8007A57C 30006004 */  bltz       $v1, .L8007A640
    /* 68D90 8007A580 00000000 */   nop
    /* 68D94 8007A584 3000284A */  rtpt
    /* 68D98 8007A588 0000438E */  lw         $v1, 0x0($s2)
    /* 68D9C 8007A58C F8FF248E */  lw         $a0, -0x8($s1)
    /* 68DA0 8007A590 FCFF258E */  lw         $a1, -0x4($s1)
    /* 68DA4 8007A594 00002696 */  lhu        $a2, 0x0($s1)
    /* 68DA8 8007A598 00006296 */  lhu        $v0, 0x0($s3)
    /* 68DAC 8007A59C 0009163C */  lui        $s6, (0x9000000 >> 16)
    /* 68DB0 8007A5A0 0000D6AD */  sw         $s6, 0x0($t6)
    /* 68DB4 8007A5A4 E8FF83AD */  sw         $v1, -0x18($t4)
    /* 68DB8 8007A5A8 F0FF84AD */  sw         $a0, -0x10($t4)
    /* 68DBC 8007A5AC F8FF85AD */  sw         $a1, -0x8($t4)
    /* 68DC0 8007A5B0 000082AD */  sw         $v0, 0x0($t4)
    /* 68DC4 8007A5B4 000006AF */  sw         $a2, 0x0($t8)
    /* 68DC8 8007A5B8 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 68DCC 8007A5BC 00000000 */  nop
    /* 68DD0 8007A5C0 1F004014 */  bnez       $v0, .L8007A640
    /* 68DD4 8007A5C4 00000000 */   nop
    /* 68DD8 8007A5C8 180040C9 */  lwc2       $0, 0x18($t2)
    /* 68DDC 8007A5CC 1C0041C9 */  lwc2       $1, 0x1C($t2)
    /* 68DE0 8007A5D0 08006CE9 */  swc2       $12, 0x8($t3)
    /* 68DE4 8007A5D4 10006DE9 */  swc2       $13, 0x10($t3)
    /* 68DE8 8007A5D8 20006EE9 */  swc2       $14, 0x20($t3)
    /* 68DEC 8007A5DC 0100184A */  rtps
    /* 68DF0 8007A5E0 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 68DF4 8007A5E4 2E00684B */  avsz4
    /* 68DF8 8007A5E8 15004014 */  bnez       $v0, .L8007A640
    /* 68DFC 8007A5EC 00000000 */   nop
    /* 68E00 8007A5F0 18006EE9 */  swc2       $14, 0x18($t3)
    /* 68E04 8007A5F4 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 68E08 8007A5F8 6400B68F */  lw         $s6, 0x64($sp)
    /* 68E0C 8007A5FC 00000000 */  nop
    /* 68E10 8007A600 2A107600 */  slt        $v0, $v1, $s6
    /* 68E14 8007A604 04004014 */  bnez       $v0, .L8007A618
    /* 68E18 8007A608 00000000 */   nop
    /* 68E1C 8007A60C 5000B68F */  lw         $s6, 0x50($sp)
    /* 68E20 8007A610 00000000 */  nop
    /* 68E24 8007A614 FAFFC326 */  addiu      $v1, $s6, -0x6
  .L8007A618:
    /* 68E28 8007A618 5400B68F */  lw         $s6, 0x54($sp)
    /* 68E2C 8007A61C 80100300 */  sll        $v0, $v1, 2
    /* 68E30 8007A620 2110C202 */  addu       $v0, $s6, $v0
    /* 68E34 8007A624 02004488 */  lwl        $a0, 0x2($v0)
    /* 68E38 8007A628 001A0E00 */  sll        $v1, $t6, 8
    /* 68E3C 8007A62C 0200C4A9 */  swl        $a0, 0x2($t6)
    /* 68E40 8007A630 020043A8 */  swl        $v1, 0x2($v0)
    /* 68E44 8007A634 28008C25 */  addiu      $t4, $t4, 0x28
    /* 68E48 8007A638 28001827 */  addiu      $t8, $t8, 0x28
    /* 68E4C 8007A63C 2800CE25 */  addiu      $t6, $t6, 0x28
  .L8007A640:
    /* 68E50 8007A640 FFFFEF25 */  addiu      $t7, $t7, -0x1
    /* 68E54 8007A644 B0FFE015 */  bnez       $t7, .L8007A508
    /* 68E58 8007A648 00000000 */   nop
  .L8007A64C:
    /* 68E5C 8007A64C 0400B526 */  addiu      $s5, $s5, 0x4
    /* 68E60 8007A650 10003126 */  addiu      $s1, $s1, 0x10
    /* 68E64 8007A654 10007326 */  addiu      $s3, $s3, 0x10
    /* 68E68 8007A658 10005226 */  addiu      $s2, $s2, 0x10
    /* 68E6C 8007A65C FFFF9426 */  addiu      $s4, $s4, -0x1
    /* 68E70 8007A660 8AFF8016 */  bnez       $s4, .L8007A48C
    /* 68E74 8007A664 20004A25 */   addiu     $t2, $t2, %lo(D_1F800020)
  .L8007A668:
    /* 68E78 8007A668 5800B68F */  lw         $s6, 0x58($sp)
    /* 68E7C 8007A66C 00000000 */  nop
    /* 68E80 8007A670 4000D626 */  addiu      $s6, $s6, 0x40
    /* 68E84 8007A674 5800B6AF */  sw         $s6, 0x58($sp)
    /* 68E88 8007A678 4800B68F */  lw         $s6, 0x48($sp)
    /* 68E8C 8007A67C FFFF3927 */  addiu      $t9, $t9, -0x1
    /* 68E90 8007A680 0100D626 */  addiu      $s6, $s6, 0x1
    /* 68E94 8007A684 75FF2017 */  bnez       $t9, .L8007A45C
    /* 68E98 8007A688 4800B6AF */   sw        $s6, 0x48($sp)
    /* 68E9C 8007A68C 9400BF8F */  lw         $ra, 0x94($sp)
    /* 68EA0 8007A690 9000BE8F */  lw         $fp, 0x90($sp)
    /* 68EA4 8007A694 8C00B78F */  lw         $s7, 0x8C($sp)
    /* 68EA8 8007A698 8800B68F */  lw         $s6, 0x88($sp)
    /* 68EAC 8007A69C 8400B58F */  lw         $s5, 0x84($sp)
    /* 68EB0 8007A6A0 8000B48F */  lw         $s4, 0x80($sp)
    /* 68EB4 8007A6A4 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 68EB8 8007A6A8 7800B28F */  lw         $s2, 0x78($sp)
    /* 68EBC 8007A6AC 7400B18F */  lw         $s1, 0x74($sp)
    /* 68EC0 8007A6B0 7000B08F */  lw         $s0, 0x70($sp)
    /* 68EC4 8007A6B4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 68EC8 8007A6B8 708C2EAC */  sw         $t6, %lo(D_800C8C70)($at)
    /* 68ECC 8007A6BC 0800E003 */  jr         $ra
    /* 68ED0 8007A6C0 9800BD27 */   addiu     $sp, $sp, 0x98
endlabel func_8007A198
