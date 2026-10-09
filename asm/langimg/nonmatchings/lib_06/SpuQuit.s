nonmatching SpuQuit, 0x80

glabel SpuQuit
    /* A2254 800B3A44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2258 800B3A48 0C80033C */  lui        $v1, %hi(_spu_isCalled)
    /* A225C 800B3A4C A03D638C */  lw         $v1, %lo(_spu_isCalled)($v1)
    /* A2260 800B3A50 01000224 */  addiu      $v0, $zero, 0x1
    /* A2264 800B3A54 14006214 */  bne        $v1, $v0, .L800B3AA8
    /* A2268 800B3A58 1000BFAF */   sw        $ra, 0x10($sp)
    /* A226C 800B3A5C 0C80013C */  lui        $at, %hi(_spu_isCalled)
    /* A2270 800B3A60 E0D6020C */  jal        EnterCriticalSection
    /* A2274 800B3A64 A03D20AC */   sw        $zero, %lo(_spu_isCalled)($at)
    /* A2278 800B3A68 21200000 */  addu       $a0, $zero, $zero
    /* A227C 800B3A6C 0C80013C */  lui        $at, %hi(_spu_transferCallback)
    /* A2280 800B3A70 E83D20AC */  sw         $zero, %lo(_spu_transferCallback)($at)
    /* A2284 800B3A74 0C80013C */  lui        $at, %hi(_spu_IRQCallback)
    /* A2288 800B3A78 85CE020C */  jal        _SpuDataCallback
    /* A228C 800B3A7C EC3D20AC */   sw        $zero, %lo(_spu_IRQCallback)($at)
    /* A2290 800B3A80 0C80043C */  lui        $a0, %hi(_spu_EVdma)
    /* A2294 800B3A84 383D848C */  lw         $a0, %lo(_spu_EVdma)($a0)
    /* A2298 800B3A88 C0D6020C */  jal        CloseEvent
    /* A229C 800B3A8C 00000000 */   nop
    /* A22A0 800B3A90 0C80043C */  lui        $a0, %hi(_spu_EVdma)
    /* A22A4 800B3A94 383D848C */  lw         $a0, %lo(_spu_EVdma)($a0)
    /* A22A8 800B3A98 D0D6020C */  jal        DisableEvent
    /* A22AC 800B3A9C 00000000 */   nop
    /* A22B0 800B3AA0 E4D6020C */  jal        ExitCriticalSection
    /* A22B4 800B3AA4 00000000 */   nop
  .L800B3AA8:
    /* A22B8 800B3AA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A22BC 800B3AAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A22C0 800B3AB0 0800E003 */  jr         $ra
    /* A22C4 800B3AB4 00000000 */   nop
    /* A22C8 800B3AB8 00000000 */  nop
    /* A22CC 800B3ABC 00000000 */  nop
    /* A22D0 800B3AC0 00000000 */  nop
endlabel SpuQuit
