nonmatching func_800A8B50, 0x88

glabel func_800A8B50
    /* 97360 800A8B50 0C80033C */  lui        $v1, %hi(D_800BD2DC)
    /* 97364 800A8B54 DCD2638C */  lw         $v1, %lo(D_800BD2DC)($v1)
    /* 97368 800A8B58 02000224 */  addiu      $v0, $zero, 0x2
    /* 9736C 800A8B5C 000062A0 */  sb         $v0, 0x0($v1)
    /* 97370 800A8B60 0C80033C */  lui        $v1, %hi(D_800BD2E4)
    /* 97374 800A8B64 E4D2638C */  lw         $v1, %lo(D_800BD2E4)($v1)
    /* 97378 800A8B68 00008290 */  lbu        $v0, 0x0($a0)
    /* 9737C 800A8B6C 00000000 */  nop
    /* 97380 800A8B70 000062A0 */  sb         $v0, 0x0($v1)
    /* 97384 800A8B74 0C80033C */  lui        $v1, %hi(D_800BD2E8)
    /* 97388 800A8B78 E8D2638C */  lw         $v1, %lo(D_800BD2E8)($v1)
    /* 9738C 800A8B7C 01008290 */  lbu        $v0, 0x1($a0)
    /* 97390 800A8B80 00000000 */  nop
    /* 97394 800A8B84 000062A0 */  sb         $v0, 0x0($v1)
    /* 97398 800A8B88 0C80033C */  lui        $v1, %hi(D_800BD2DC)
    /* 9739C 800A8B8C DCD2638C */  lw         $v1, %lo(D_800BD2DC)($v1)
    /* 973A0 800A8B90 03000224 */  addiu      $v0, $zero, 0x3
    /* 973A4 800A8B94 000062A0 */  sb         $v0, 0x0($v1)
    /* 973A8 800A8B98 0C80033C */  lui        $v1, %hi(D_800BD2E0)
    /* 973AC 800A8B9C E0D2638C */  lw         $v1, %lo(D_800BD2E0)($v1)
    /* 973B0 800A8BA0 02008290 */  lbu        $v0, 0x2($a0)
    /* 973B4 800A8BA4 00000000 */  nop
    /* 973B8 800A8BA8 000062A0 */  sb         $v0, 0x0($v1)
    /* 973BC 800A8BAC 0C80033C */  lui        $v1, %hi(D_800BD2E4)
    /* 973C0 800A8BB0 E4D2638C */  lw         $v1, %lo(D_800BD2E4)($v1)
    /* 973C4 800A8BB4 03008290 */  lbu        $v0, 0x3($a0)
    /* 973C8 800A8BB8 00000000 */  nop
    /* 973CC 800A8BBC 000062A0 */  sb         $v0, 0x0($v1)
    /* 973D0 800A8BC0 0C80033C */  lui        $v1, %hi(D_800BD2E8)
    /* 973D4 800A8BC4 E8D2638C */  lw         $v1, %lo(D_800BD2E8)($v1)
    /* 973D8 800A8BC8 20000224 */  addiu      $v0, $zero, 0x20
    /* 973DC 800A8BCC 000062A0 */  sb         $v0, 0x0($v1)
    /* 973E0 800A8BD0 0800E003 */  jr         $ra
    /* 973E4 800A8BD4 21100000 */   addu      $v0, $zero, $zero
endlabel func_800A8B50
