nonmatching func_800B2DAC, 0x2C

glabel func_800B2DAC
    /* A15BC 800B2DAC E6008294 */  lhu        $v0, 0xE6($a0)
    /* A15C0 800B2DB0 00000000 */  nop
    /* A15C4 800B2DB4 05004010 */  beqz       $v0, .L800B2DCC
    /* A15C8 800B2DB8 FF000224 */   addiu     $v0, $zero, 0xFF
    /* A15CC 800B2DBC 46008390 */  lbu        $v1, 0x46($a0)
    /* A15D0 800B2DC0 00000000 */  nop
    /* A15D4 800B2DC4 02006210 */  beq        $v1, $v0, .L800B2DD0
    /* A15D8 800B2DC8 21100000 */   addu      $v0, $zero, $zero
  .L800B2DCC:
    /* A15DC 800B2DCC 01000224 */  addiu      $v0, $zero, 0x1
  .L800B2DD0:
    /* A15E0 800B2DD0 0800E003 */  jr         $ra
    /* A15E4 800B2DD4 00000000 */   nop
endlabel func_800B2DAC
    /* A15E8 800B2DD8 00000000 */  nop
