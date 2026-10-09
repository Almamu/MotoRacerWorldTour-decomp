/* Handwritten function */
nonmatching func_800A6A98, 0x140

glabel func_800A6A98
    /* 952A8 800A6A98 FCFFBD23 */  addi       $sp, $sp, -0x4 /* handwritten instruction */
    /* 952AC 800A6A9C 0000BFAF */  sw         $ra, 0x0($sp)
    /* 952B0 800A6AA0 0C800E3C */  lui        $t6, %hi(D_800BCF1C)
    /* 952B4 800A6AA4 1CCFCE25 */  addiu      $t6, $t6, %lo(D_800BCF1C)
    /* 952B8 800A6AA8 0000CC8D */  lw         $t4, 0x0($t6)
    /* 952BC 800A6AAC 801F073C */  lui        $a3, (0x1F800000 >> 16)
    /* 952C0 800A6AB0 15008014 */  bnez       $a0, .L800A6B08
    /* 952C4 800A6AB4 40600C00 */   sll       $t4, $t4, 1
    /* 952C8 800A6AB8 0C800E3C */  lui        $t6, %hi(D_800BCF20)
    /* 952CC 800A6ABC 20CFCE25 */  addiu      $t6, $t6, %lo(D_800BCF20)
    /* 952D0 800A6AC0 0000C28D */  lw         $v0, 0x0($t6)
    /* 952D4 800A6AC4 0400C38D */  lw         $v1, 0x4($t6)
    /* 952D8 800A6AC8 0800C88D */  lw         $t0, 0x8($t6)
    /* 952DC 800A6ACC 0C00C48D */  lw         $a0, 0xC($t6)
    /* 952E0 800A6AD0 1000C58D */  lw         $a1, 0x10($t6)
    /* 952E4 800A6AD4 1400C68D */  lw         $a2, 0x14($t6)
    /* 952E8 800A6AD8 1800CA8D */  lw         $t2, 0x18($t6)
    /* 952EC 800A6ADC 1C00CB8D */  lw         $t3, 0x1C($t6)
    /* 952F0 800A6AE0 2000CD8D */  lw         $t5, 0x20($t6)
    /* 952F4 800A6AE4 2400CF8D */  lw         $t7, 0x24($t6)
    /* 952F8 800A6AE8 2800D88D */  lw         $t8, 0x28($t6)
    /* 952FC 800A6AEC 2C00D98D */  lw         $t9, 0x2C($t6)
    /* 95300 800A6AF0 3000DF8D */  lw         $ra, 0x30($t6)
    /* 95304 800A6AF4 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
    /* 95308 800A6AF8 2800E017 */  bnez       $ra, .L800A6B9C
    /* 9530C 800A6AFC 00000000 */   nop
    /* 95310 800A6B00 FF000104 */  bgez       $zero, .L800A6F00
    /* 95314 800A6B04 00000000 */   nop
  .L800A6B08:
    /* 95318 800A6B08 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
    /* 9531C 800A6B0C 0000888C */  lw         $t0, 0x0($a0)
    /* 95320 800A6B10 04008B8C */  lw         $t3, 0x4($a0)
    /* 95324 800A6B14 0800828C */  lw         $v0, 0x8($a0)
    /* 95328 800A6B18 0C00838C */  lw         $v1, 0xC($a0)
    /* 9532C 800A6B1C 1000868C */  lw         $a2, 0x10($a0)
    /* 95330 800A6B20 25500000 */  or         $t2, $zero, $zero
    /* 95334 800A6B24 25780000 */  or         $t7, $zero, $zero
    /* 95338 800A6B28 25C00000 */  or         $t8, $zero, $zero
    /* 9533C 800A6B2C 25C80000 */  or         $t9, $zero, $zero
    /* 95340 800A6B30 000C0200 */  sll        $at, $v0, 16
    /* 95344 800A6B34 02140200 */  srl        $v0, $v0, 16
    /* 95348 800A6B38 25104100 */  or         $v0, $v0, $at
    /* 9534C 800A6B3C 000C0300 */  sll        $at, $v1, 16
    /* 95350 800A6B40 021C0300 */  srl        $v1, $v1, 16
    /* 95354 800A6B44 25186100 */  or         $v1, $v1, $at
    /* 95358 800A6B48 0000A8AC */  sw         $t0, 0x0($a1)
    /* 9535C 800A6B4C 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
    /* 95360 800A6B50 14008420 */  addi       $a0, $a0, 0x14 /* handwritten instruction */
    /* 95364 800A6B54 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 95368 800A6B58 80400800 */  sll        $t0, $t0, 2
    /* 9536C 800A6B5C 2068A800 */  add        $t5, $a1, $t0 /* handwritten instruction */
    /* 95370 800A6B60 020C0B00 */  srl        $at, $t3, 16
    /* 95374 800A6B64 03002138 */  xori       $at, $at, 0x3
    /* 95378 800A6B68 3F006B31 */  andi       $t3, $t3, 0x3F
    /* 9537C 800A6B6C A4002010 */  beqz       $at, .L800A6E00
    /* 95380 800A6B70 805A0B00 */   sll       $t3, $t3, 10
    /* 95384 800A6B74 82450200 */  srl        $t0, $v0, 22
    /* 95388 800A6B78 25400B01 */  or         $t0, $t0, $t3
    /* 9538C 800A6B7C F69A020C */  jal        func_800A6BD8
    /* 95390 800A6B80 0A000934 */   ori       $t1, $zero, 0xA
    /* 95394 800A6B84 82450800 */  srl        $t0, $t0, 22
    /* 95398 800A6B88 FF010139 */  xori       $at, $t0, 0x1FF
    /* 9539C 800A6B8C E3002010 */  beqz       $at, .L800A6F1C
    /* 953A0 800A6B90 2308AC00 */   subu      $at, $a1, $t4
    /* 953A4 800A6B94 EC002104 */  bgez       $at, .L800A6F48
    /* 953A8 800A6B98 25400B01 */   or        $t0, $t0, $t3
  .L800A6B9C:
    /* 953AC 800A6B9C 0E000104 */  bgez       $zero, func_800A6BD8
    /* 953B0 800A6BA0 0C000934 */   ori       $t1, $zero, 0xC
  .L800A6BA4:
    /* 953B4 800A6BA4 23004104 */  bgez       $v0, .L800A6C34
    /* 953B8 800A6BA8 40080200 */   sll       $at, $v0, 1
    /* 953BC 800A6BAC 06002004 */  bltz       $at, .L800A6BC8
    /* 953C0 800A6BB0 80080200 */   sll       $at, $v0, 2
    /* 953C4 800A6BB4 00FE0834 */  ori        $t0, $zero, 0xFE00
    /* 953C8 800A6BB8 0000A8A4 */  sh         $t0, 0x0($a1)
    /* 953CC 800A6BBC 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* 953D0 800A6BC0 0800E003 */  jr         $ra
    /* 953D4 800A6BC4 80400200 */   sll       $t0, $v0, 2
  .L800A6BC8:
    /* 953D8 800A6BC8 03000934 */  ori        $t1, $zero, 0x3
    /* 953DC 800A6BCC 02002104 */  bgez       $at, func_800A6BD8
    /* 953E0 800A6BD0 01000834 */   ori       $t0, $zero, 0x1
    /* 953E4 800A6BD4 FF030834 */  ori        $t0, $zero, 0x3FF
endlabel func_800A6A98
