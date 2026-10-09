nonmatching func_800B244C, 0x68

glabel func_800B244C
    /* A0C5C 800B244C 49008290 */  lbu        $v0, 0x49($a0)
    /* A0C60 800B2450 00000000 */  nop
    /* A0C64 800B2454 15004010 */  beqz       $v0, .L800B24AC
    /* A0C68 800B2458 00000000 */   nop
    /* A0C6C 800B245C 5D008324 */  addiu      $v1, $a0, 0x5D
    /* A0C70 800B2460 FF000524 */  addiu      $a1, $zero, 0xFF
    /* A0C74 800B2464 05000224 */  addiu      $v0, $zero, 0x5
    /* A0C78 800B2468 490080A0 */  sb         $zero, 0x49($a0)
    /* A0C7C 800B246C 460080A0 */  sb         $zero, 0x46($a0)
    /* A0C80 800B2470 E60080A4 */  sh         $zero, 0xE6($a0)
    /* A0C84 800B2474 140080AC */  sw         $zero, 0x14($a0)
    /* A0C88 800B2478 180080AC */  sw         $zero, 0x18($a0)
    /* A0C8C 800B247C E30080A0 */  sb         $zero, 0xE3($a0)
    /* A0C90 800B2480 E40080A0 */  sb         $zero, 0xE4($a0)
    /* A0C94 800B2484 E60080A4 */  sh         $zero, 0xE6($a0)
    /* A0C98 800B2488 E90080A0 */  sb         $zero, 0xE9($a0)
    /* A0C9C 800B248C EA0080A0 */  sb         $zero, 0xEA($a0)
    /* A0CA0 800B2490 000080AC */  sw         $zero, 0x0($a0)
    /* A0CA4 800B2494 040080AC */  sw         $zero, 0x4($a0)
    /* A0CA8 800B2498 080080AC */  sw         $zero, 0x8($a0)
  .L800B249C:
    /* A0CAC 800B249C 000065A0 */  sb         $a1, 0x0($v1)
    /* A0CB0 800B24A0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0CB4 800B24A4 FDFF4104 */  bgez       $v0, .L800B249C
    /* A0CB8 800B24A8 01006324 */   addiu     $v1, $v1, 0x1
  .L800B24AC:
    /* A0CBC 800B24AC 0800E003 */  jr         $ra
    /* A0CC0 800B24B0 00000000 */   nop
endlabel func_800B244C
