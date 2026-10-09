nonmatching SpuSetTransferMode, 0x30

glabel SpuSetTransferMode
    /* A2B44 800B4334 05008010 */  beqz       $a0, .L800B434C
    /* A2B48 800B4338 01000224 */   addiu     $v0, $zero, 0x1
    /* A2B4C 800B433C 04008214 */  bne        $a0, $v0, .L800B4350
    /* A2B50 800B4340 21100000 */   addu      $v0, $zero, $zero
    /* A2B54 800B4344 D4D00208 */  j          .L800B4350
    /* A2B58 800B4348 01000224 */   addiu     $v0, $zero, 0x1
  .L800B434C:
    /* A2B5C 800B434C 21100000 */  addu       $v0, $zero, $zero
  .L800B4350:
    /* A2B60 800B4350 0C80013C */  lui        $at, %hi(_spu_trans_mode)
    /* A2B64 800B4354 403D24AC */  sw         $a0, %lo(_spu_trans_mode)($at)
    /* A2B68 800B4358 0C80013C */  lui        $at, %hi(_spu_transMode)
    /* A2B6C 800B435C 0800E003 */  jr         $ra
    /* A2B70 800B4360 CC3D22AC */   sw        $v0, %lo(_spu_transMode)($at)
endlabel SpuSetTransferMode
