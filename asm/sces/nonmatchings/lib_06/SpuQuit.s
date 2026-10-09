nonmatching SpuQuit, 0x80

glabel SpuQuit
    /* 10FDC 80143B10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10FE0 80143B14 1C80033C */  lui        $v1, %hi(_spu_isCalled)
    /* 10FE4 80143B18 E4FF638C */  lw         $v1, %lo(_spu_isCalled)($v1)
    /* 10FE8 80143B1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 10FEC 80143B20 14006214 */  bne        $v1, $v0, .L80143B74
    /* 10FF0 80143B24 1000BFAF */   sw        $ra, 0x10($sp)
    /* 10FF4 80143B28 1C80013C */  lui        $at, %hi(_spu_isCalled)
    /* 10FF8 80143B2C FF2A050C */  jal        EnterCriticalSection
    /* 10FFC 80143B30 E4FF20AC */   sw        $zero, %lo(_spu_isCalled)($at)
    /* 11000 80143B34 21200000 */  addu       $a0, $zero, $zero
    /* 11004 80143B38 1C80013C */  lui        $at, %hi(_spu_transferCallback)
    /* 11008 80143B3C 4CFF20AC */  sw         $zero, %lo(_spu_transferCallback)($at)
    /* 1100C 80143B40 1C80013C */  lui        $at, %hi(_spu_IRQCallback)
    /* 11010 80143B44 200E050C */  jal        _SpuDataCallback
    /* 11014 80143B48 50FF20AC */   sw        $zero, %lo(_spu_IRQCallback)($at)
    /* 11018 80143B4C 1C80043C */  lui        $a0, %hi(_spu_EVdma)
    /* 1101C 80143B50 7CFF848C */  lw         $a0, %lo(_spu_EVdma)($a0)
    /* 11020 80143B54 DF2A050C */  jal        CloseEvent
    /* 11024 80143B58 00000000 */   nop
    /* 11028 80143B5C 1C80043C */  lui        $a0, %hi(_spu_EVdma)
    /* 1102C 80143B60 7CFF848C */  lw         $a0, %lo(_spu_EVdma)($a0)
    /* 11030 80143B64 EF2A050C */  jal        DisableEvent
    /* 11034 80143B68 00000000 */   nop
    /* 11038 80143B6C 032B050C */  jal        ExitCriticalSection
    /* 1103C 80143B70 00000000 */   nop
  .L80143B74:
    /* 11040 80143B74 1000BF8F */  lw         $ra, 0x10($sp)
    /* 11044 80143B78 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 11048 80143B7C 0800E003 */  jr         $ra
    /* 1104C 80143B80 00000000 */   nop
    /* 11050 80143B84 00000000 */  nop
    /* 11054 80143B88 00000000 */  nop
    /* 11058 80143B8C 00000000 */  nop
endlabel SpuQuit
