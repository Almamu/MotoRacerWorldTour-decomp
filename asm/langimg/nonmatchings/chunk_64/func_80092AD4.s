/* Handwritten function */
nonmatching func_80092AD4, 0x19C

glabel func_80092AD4
    /* 812E4 80092AD4 21588000 */  addu       $t3, $a0, $zero
    /* 812E8 80092AD8 2150A000 */  addu       $t2, $a1, $zero
    /* 812EC 80092ADC 21C0C000 */  addu       $t8, $a2, $zero
    /* 812F0 80092AE0 21700000 */  addu       $t6, $zero, $zero
    /* 812F4 80092AE4 C0FF1924 */  addiu      $t9, $zero, -0x40
    /* 812F8 80092AE8 10006F25 */  addiu      $t7, $t3, 0x10
    /* 812FC 80092AEC 10004D25 */  addiu      $t5, $t2, 0x10
    /* 81300 80092AF0 24006925 */  addiu      $t1, $t3, 0x24
    /* 81304 80092AF4 0C004C25 */  addiu      $t4, $t2, 0xC
    /* 81308 80092AF8 80101800 */  sll        $v0, $t8, 2
    /* 8130C 80092AFC 21105800 */  addu       $v0, $v0, $t8
    /* 81310 80092B00 80100200 */  sll        $v0, $v0, 2
    /* 81314 80092B04 0000638D */  lw         $v1, 0x0($t3)
    /* 81318 80092B08 0400648D */  lw         $a0, 0x4($t3)
    /* 8131C 80092B0C 0800658D */  lw         $a1, 0x8($t3)
    /* 81320 80092B10 0C00668D */  lw         $a2, 0xC($t3)
    /* 81324 80092B14 1000678D */  lw         $a3, 0x10($t3)
    /* 81328 80092B18 21104B00 */  addu       $v0, $v0, $t3
    /* 8132C 80092B1C 000043AC */  sw         $v1, 0x0($v0)
    /* 81330 80092B20 040044AC */  sw         $a0, 0x4($v0)
    /* 81334 80092B24 080045AC */  sw         $a1, 0x8($v0)
    /* 81338 80092B28 0C0046AC */  sw         $a2, 0xC($v0)
    /* 8133C 80092B2C 100047AC */  sw         $a3, 0x10($v0)
  .L80092B30:
    /* 81340 80092B30 EEFF2785 */  lh         $a3, -0x12($t1)
    /* 81344 80092B34 02002885 */  lh         $t0, 0x2($t1)
    /* 81348 80092B38 1000E104 */  bgez       $a3, .L80092B7C
    /* 8134C 80092B3C 2610E800 */   xor       $v0, $a3, $t0
    /* 81350 80092B40 0000628D */  lw         $v0, 0x0($t3)
    /* 81354 80092B44 E0FF238D */  lw         $v1, -0x20($t1)
    /* 81358 80092B48 E4FF248D */  lw         $a0, -0x1C($t1)
    /* 8135C 80092B4C E8FF258D */  lw         $a1, -0x18($t1)
    /* 81360 80092B50 0000E68D */  lw         $a2, 0x0($t7)
    /* 81364 80092B54 0100CE25 */  addiu      $t6, $t6, 0x1
    /* 81368 80092B58 000042AD */  sw         $v0, 0x0($t2)
    /* 8136C 80092B5C F8FF83AD */  sw         $v1, -0x8($t4)
    /* 81370 80092B60 FCFF84AD */  sw         $a0, -0x4($t4)
    /* 81374 80092B64 000085AD */  sw         $a1, 0x0($t4)
    /* 81378 80092B68 14008C25 */  addiu      $t4, $t4, 0x14
    /* 8137C 80092B6C 0000A6AD */  sw         $a2, 0x0($t5)
    /* 81380 80092B70 1400AD25 */  addiu      $t5, $t5, 0x14
    /* 81384 80092B74 14004A25 */  addiu      $t2, $t2, 0x14
    /* 81388 80092B78 2610E800 */  xor        $v0, $a3, $t0
  .L80092B7C:
    /* 8138C 80092B7C 35004104 */  bgez       $v0, .L80092C54
    /* 81390 80092B80 2340E800 */   subu      $t0, $a3, $t0
    /* 81394 80092B84 003B0700 */  sll        $a3, $a3, 12
    /* 81398 80092B88 1A00E800 */  div        $zero, $a3, $t0
    /* 8139C 80092B8C F0FF228D */  lw         $v0, -0x10($t1)
    /* 813A0 80092B90 F4FF238D */  lw         $v1, -0xC($t1)
    /* 813A4 80092B94 F8FF248D */  lw         $a0, -0x8($t1)
    /* 813A8 80092B98 000069C9 */  lwc2       $9, 0x0($t3)
    /* 813AC 80092B9C 04006AC9 */  lwc2       $10, 0x4($t3)
    /* 813B0 80092BA0 08006BC9 */  lwc2       $11, 0x8($t3)
    /* 813B4 80092BA4 00A8C248 */  ctc2       $v0, $21 /* handwritten instruction */
    /* 813B8 80092BA8 00B0C348 */  ctc2       $v1, $22 /* handwritten instruction */
    /* 813BC 80092BAC 00B8C448 */  ctc2       $a0, $23 /* handwritten instruction */
    /* 813C0 80092BB0 12100000 */  mflo       $v0
    /* 813C4 80092BB4 0200E104 */  bgez       $a3, .L80092BC0
    /* 813C8 80092BB8 00000000 */   nop
    /* 813CC 80092BBC 3F004224 */  addiu      $v0, $v0, 0x3F
  .L80092BC0:
    /* 813D0 80092BC0 24105900 */  and        $v0, $v0, $t9
    /* 813D4 80092BC4 00408248 */  mtc2       $v0, $8 /* handwritten instruction */
    /* 813D8 80092BC8 E8FF258D */  lw         $a1, -0x18($t1)
    /* 813DC 80092BCC FCFF228D */  lw         $v0, -0x4($t1)
    /* 813E0 80092BD0 1100984A */  intpl
    /* 813E4 80092BD4 02190200 */  srl        $v1, $v0, 4
    /* 813E8 80092BD8 F00F6330 */  andi       $v1, $v1, 0xFF0
    /* 813EC 80092BDC 00210200 */  sll        $a0, $v0, 4
    /* 813F0 80092BE0 F00F8430 */  andi       $a0, $a0, 0xFF0
    /* 813F4 80092BE4 02130200 */  srl        $v0, $v0, 12
    /* 813F8 80092BE8 F00F4230 */  andi       $v0, $v0, 0xFF0
    /* 813FC 80092BEC 000049E9 */  swc2       $9, 0x0($t2)
    /* 81400 80092BF0 04004AE9 */  swc2       $10, 0x4($t2)
    /* 81404 80092BF4 08004BE9 */  swc2       $11, 0x8($t2)
    /* 81408 80092BF8 00308548 */  mtc2       $a1, $6 /* handwritten instruction */
    /* 8140C 80092BFC 00A8C448 */  ctc2       $a0, $21 /* handwritten instruction */
    /* 81410 80092C00 00B0C348 */  ctc2       $v1, $22 /* handwritten instruction */
    /* 81414 80092C04 00B8C248 */  ctc2       $v0, $23 /* handwritten instruction */
    /* 81418 80092C08 00002295 */  lhu        $v0, 0x0($t1)
    /* 8141C 80092C0C 0000E48D */  lw         $a0, 0x0($t7)
    /* 81420 80092C10 1000784A */  dpcs
    /* 81424 80092C14 02190200 */  srl        $v1, $v0, 4
    /* 81428 80092C18 00110200 */  sll        $v0, $v0, 4
    /* 8142C 80092C1C F00F4230 */  andi       $v0, $v0, 0xFF0
    /* 81430 80092C20 F00F6330 */  andi       $v1, $v1, 0xFF0
    /* 81434 80092C24 0C0056E9 */  swc2       $22, 0xC($t2)
    /* 81438 80092C28 00308448 */  mtc2       $a0, $6 /* handwritten instruction */
    /* 8143C 80092C2C 00A8C248 */  ctc2       $v0, $21 /* handwritten instruction */
    /* 81440 80092C30 00B0C348 */  ctc2       $v1, $22 /* handwritten instruction */
    /* 81444 80092C34 00B8C248 */  ctc2       $v0, $23 /* handwritten instruction */
    /* 81448 80092C38 00000000 */  nop
    /* 8144C 80092C3C 0100CE25 */  addiu      $t6, $t6, 0x1
    /* 81450 80092C40 1000784A */  dpcs
    /* 81454 80092C44 100056E9 */  swc2       $22, 0x10($t2)
    /* 81458 80092C48 14008C25 */  addiu      $t4, $t4, 0x14
    /* 8145C 80092C4C 1400AD25 */  addiu      $t5, $t5, 0x14
    /* 81460 80092C50 14004A25 */  addiu      $t2, $t2, 0x14
  .L80092C54:
    /* 81464 80092C54 14002925 */  addiu      $t1, $t1, 0x14
    /* 81468 80092C58 1400EF25 */  addiu      $t7, $t7, 0x14
    /* 8146C 80092C5C FFFF1827 */  addiu      $t8, $t8, -0x1
    /* 81470 80092C60 B3FF0017 */  bnez       $t8, .L80092B30
    /* 81474 80092C64 14006B25 */   addiu     $t3, $t3, 0x14
    /* 81478 80092C68 0800E003 */  jr         $ra
    /* 8147C 80092C6C 2110C001 */   addu      $v0, $t6, $zero
endlabel func_80092AD4
