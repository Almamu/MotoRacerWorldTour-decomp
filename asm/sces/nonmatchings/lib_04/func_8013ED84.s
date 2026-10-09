nonmatching func_8013ED84, 0x60

glabel func_8013ED84
    /* C250 8013ED84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C254 8013ED88 01000424 */  addiu      $a0, $zero, 0x1
    /* C258 8013ED8C 21280000 */  addu       $a1, $zero, $zero
    /* C25C 8013ED90 1400BFAF */  sw         $ra, 0x14($sp)
    /* C260 8013ED94 32FB040C */  jal        func_8013ECC8
    /* C264 8013ED98 1000B0AF */   sw        $s0, 0x10($sp)
    /* C268 8013ED9C 02004010 */  beqz       $v0, .L8013EDA8
    /* C26C 8013EDA0 21800000 */   addu      $s0, $zero, $zero
    /* C270 8013EDA4 00005094 */  lhu        $s0, 0x0($v0)
  .L8013EDA8:
    /* C274 8013EDA8 00000000 */  nop
    /* C278 8013EDAC 00841000 */  sll        $s0, $s0, 16
    /* C27C 8013EDB0 21200000 */  addu       $a0, $zero, $zero
    /* C280 8013EDB4 32FB040C */  jal        func_8013ECC8
    /* C284 8013EDB8 21288000 */   addu      $a1, $a0, $zero
    /* C288 8013EDBC 04004010 */  beqz       $v0, .L8013EDD0
    /* C28C 8013EDC0 00000000 */   nop
    /* C290 8013EDC4 00004294 */  lhu        $v0, 0x0($v0)
    /* C294 8013EDC8 00000000 */  nop
    /* C298 8013EDCC 25800202 */  or         $s0, $s0, $v0
  .L8013EDD0:
    /* C29C 8013EDD0 21100002 */  addu       $v0, $s0, $zero
    /* C2A0 8013EDD4 1400BF8F */  lw         $ra, 0x14($sp)
    /* C2A4 8013EDD8 1000B08F */  lw         $s0, 0x10($sp)
    /* C2A8 8013EDDC 0800E003 */  jr         $ra
    /* C2AC 8013EDE0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013ED84
