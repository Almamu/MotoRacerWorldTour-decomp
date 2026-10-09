nonmatching func_800B608C, 0x34

glabel func_800B608C
    /* A489C 800B608C 21188000 */  addu       $v1, $a0, $zero
    /* A48A0 800B6090 FF006230 */  andi       $v0, $v1, 0xFF
    /* A48A4 800B6094 0C80013C */  lui        $at, %hi(D_800C4631)
    /* A48A8 800B6098 21082200 */  addu       $at, $at, $v0
    /* A48AC 800B609C 31462290 */  lbu        $v0, %lo(D_800C4631)($at)
    /* A48B0 800B60A0 00000000 */  nop
    /* A48B4 800B60A4 01004230 */  andi       $v0, $v0, 0x1
    /* A48B8 800B60A8 02004010 */  beqz       $v0, .L800B60B4
    /* A48BC 800B60AC 00000000 */   nop
    /* A48C0 800B60B0 20008324 */  addiu      $v1, $a0, 0x20
  .L800B60B4:
    /* A48C4 800B60B4 00160300 */  sll        $v0, $v1, 24
    /* A48C8 800B60B8 0800E003 */  jr         $ra
    /* A48CC 800B60BC 03160200 */   sra       $v0, $v0, 24
endlabel func_800B608C
    /* A48D0 800B60C0 00000000 */  nop
    /* A48D4 800B60C4 00000000 */  nop
