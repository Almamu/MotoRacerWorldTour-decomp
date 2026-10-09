nonmatching func_800B6468, 0x44

glabel func_800B6468
    /* A4C78 800B6468 0E008010 */  beqz       $a0, .L800B64A4
    /* A4C7C 800B646C 21100000 */   addu      $v0, $zero, $zero
    /* A4C80 800B6470 0C00A010 */  beqz       $a1, .L800B64A4
    /* A4C84 800B6474 21188000 */   addu      $v1, $a0, $zero
    /* A4C88 800B6478 0000A290 */  lbu        $v0, 0x0($a1)
    /* A4C8C 800B647C 0100A524 */  addiu      $a1, $a1, 0x1
    /* A4C90 800B6480 01006424 */  addiu      $a0, $v1, 0x1
    /* A4C94 800B6484 06004010 */  beqz       $v0, .L800B64A0
    /* A4C98 800B6488 000062A0 */   sb        $v0, 0x0($v1)
  .L800B648C:
    /* A4C9C 800B648C 0000A290 */  lbu        $v0, 0x0($a1)
    /* A4CA0 800B6490 0100A524 */  addiu      $a1, $a1, 0x1
    /* A4CA4 800B6494 000082A0 */  sb         $v0, 0x0($a0)
    /* A4CA8 800B6498 FCFF4014 */  bnez       $v0, .L800B648C
    /* A4CAC 800B649C 01008424 */   addiu     $a0, $a0, 0x1
  .L800B64A0:
    /* A4CB0 800B64A0 21106000 */  addu       $v0, $v1, $zero
  .L800B64A4:
    /* A4CB4 800B64A4 0800E003 */  jr         $ra
    /* A4CB8 800B64A8 00000000 */   nop
endlabel func_800B6468
    /* A4CBC 800B64AC 00000000 */  nop
    /* A4CC0 800B64B0 00000000 */  nop
    /* A4CC4 800B64B4 00000000 */  nop
