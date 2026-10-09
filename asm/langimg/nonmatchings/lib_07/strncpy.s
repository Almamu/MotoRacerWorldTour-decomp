nonmatching strncpy, 0x70

glabel strncpy
    /* A4D88 800B6578 19008010 */  beqz       $a0, .L800B65E0
    /* A4D8C 800B657C 21100000 */   addu      $v0, $zero, $zero
    /* A4D90 800B6580 1700A010 */  beqz       $a1, .L800B65E0
    /* A4D94 800B6584 21180000 */   addu      $v1, $zero, $zero
    /* A4D98 800B6588 1400C018 */  blez       $a2, .L800B65DC
    /* A4D9C 800B658C 21388000 */   addu      $a3, $a0, $zero
  .L800B6590:
    /* A4DA0 800B6590 0000A290 */  lbu        $v0, 0x0($a1)
    /* A4DA4 800B6594 0100A524 */  addiu      $a1, $a1, 0x1
    /* A4DA8 800B6598 000082A0 */  sb         $v0, 0x0($a0)
    /* A4DAC 800B659C 0B004014 */  bnez       $v0, .L800B65CC
    /* A4DB0 800B65A0 01008424 */   addiu     $a0, $a0, 0x1
    /* A4DB4 800B65A4 6ED90208 */  j          .L800B65B8
    /* A4DB8 800B65A8 01006324 */   addiu     $v1, $v1, 0x1
  .L800B65AC:
    /* A4DBC 800B65AC 000080A0 */  sb         $zero, 0x0($a0)
    /* A4DC0 800B65B0 01008424 */  addiu      $a0, $a0, 0x1
    /* A4DC4 800B65B4 01006324 */  addiu      $v1, $v1, 0x1
  .L800B65B8:
    /* A4DC8 800B65B8 2A106600 */  slt        $v0, $v1, $a2
    /* A4DCC 800B65BC FBFF4014 */  bnez       $v0, .L800B65AC
    /* A4DD0 800B65C0 2110E000 */   addu      $v0, $a3, $zero
    /* A4DD4 800B65C4 78D90208 */  j          .L800B65E0
    /* A4DD8 800B65C8 00000000 */   nop
  .L800B65CC:
    /* A4DDC 800B65CC 01006324 */  addiu      $v1, $v1, 0x1
    /* A4DE0 800B65D0 2A106600 */  slt        $v0, $v1, $a2
    /* A4DE4 800B65D4 EEFF4014 */  bnez       $v0, .L800B6590
    /* A4DE8 800B65D8 00000000 */   nop
  .L800B65DC:
    /* A4DEC 800B65DC 2110E000 */  addu       $v0, $a3, $zero
  .L800B65E0:
    /* A4DF0 800B65E0 0800E003 */  jr         $ra
    /* A4DF4 800B65E4 00000000 */   nop
endlabel strncpy
