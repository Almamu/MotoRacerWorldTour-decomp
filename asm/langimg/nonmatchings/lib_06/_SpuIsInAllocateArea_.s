nonmatching _SpuIsInAllocateArea_, 0x8C

glabel _SpuIsInAllocateArea_
    /* A23A4 800B3B94 0C80023C */  lui        $v0, %hi(_spu_mem_mode_plus)
    /* A23A8 800B3B98 D83D428C */  lw         $v0, %lo(_spu_mem_mode_plus)($v0)
    /* A23AC 800B3B9C 0C80033C */  lui        $v1, %hi(D_800C3E18)
    /* A23B0 800B3BA0 183E638C */  lw         $v1, %lo(D_800C3E18)($v1)
    /* A23B4 800B3BA4 00000000 */  nop
    /* A23B8 800B3BA8 03006014 */  bnez       $v1, .L800B3BB8
    /* A23BC 800B3BAC 04204400 */   sllv      $a0, $a0, $v0
    /* A23C0 800B3BB0 06CF0208 */  j          .L800B3C18
    /* A23C4 800B3BB4 21100000 */   addu      $v0, $zero, $zero
  .L800B3BB8:
    /* A23C8 800B3BB8 0080083C */  lui        $t0, (0x80000000 >> 16)
    /* A23CC 800B3BBC 0040073C */  lui        $a3, (0x40000000 >> 16)
    /* A23D0 800B3BC0 FF0F063C */  lui        $a2, (0xFFFFFFF >> 16)
    /* A23D4 800B3BC4 FFFFC634 */  ori        $a2, $a2, (0xFFFFFFF & 0xFFFF)
    /* A23D8 800B3BC8 21286000 */  addu       $a1, $v1, $zero
  .L800B3BCC:
    /* A23DC 800B3BCC 0000A38C */  lw         $v1, 0x0($a1)
    /* A23E0 800B3BD0 00000000 */  nop
    /* A23E4 800B3BD4 24106800 */  and        $v0, $v1, $t0
    /* A23E8 800B3BD8 0C004014 */  bnez       $v0, .L800B3C0C
    /* A23EC 800B3BDC 24106700 */   and       $v0, $v1, $a3
    /* A23F0 800B3BE0 0C004014 */  bnez       $v0, .L800B3C14
    /* A23F4 800B3BE4 24186600 */   and       $v1, $v1, $a2
    /* A23F8 800B3BE8 2B106400 */  sltu       $v0, $v1, $a0
    /* A23FC 800B3BEC 0A004010 */  beqz       $v0, .L800B3C18
    /* A2400 800B3BF0 01000224 */   addiu     $v0, $zero, 0x1
    /* A2404 800B3BF4 0400A28C */  lw         $v0, 0x4($a1)
    /* A2408 800B3BF8 00000000 */  nop
    /* A240C 800B3BFC 21106200 */  addu       $v0, $v1, $v0
    /* A2410 800B3C00 2B108200 */  sltu       $v0, $a0, $v0
    /* A2414 800B3C04 04004014 */  bnez       $v0, .L800B3C18
    /* A2418 800B3C08 01000224 */   addiu     $v0, $zero, 0x1
  .L800B3C0C:
    /* A241C 800B3C0C F3CE0208 */  j          .L800B3BCC
    /* A2420 800B3C10 0800A524 */   addiu     $a1, $a1, 0x8
  .L800B3C14:
    /* A2424 800B3C14 21100000 */  addu       $v0, $zero, $zero
  .L800B3C18:
    /* A2428 800B3C18 0800E003 */  jr         $ra
    /* A242C 800B3C1C 00000000 */   nop
endlabel _SpuIsInAllocateArea_
    /* A2430 800B3C20 00000000 */  nop
