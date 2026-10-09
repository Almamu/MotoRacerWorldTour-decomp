nonmatching func_800201A4, 0x40

glabel func_800201A4
    /* E9B4 800201A4 36008284 */  lh         $v0, 0x36($a0)
    /* E9B8 800201A8 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* E9BC 800201AC 0B004710 */  beq        $v0, $a3, .L800201DC
    /* E9C0 800201B0 21280000 */   addu      $a1, $zero, $zero
    /* E9C4 800201B4 26008384 */  lh         $v1, 0x26($a0)
    /* E9C8 800201B8 00830624 */  addiu      $a2, $zero, -0x7D00
    /* E9CC 800201BC 06006610 */  beq        $v1, $a2, .L800201D8
    /* E9D0 800201C0 C0100300 */   sll       $v0, $v1, 3
    /* E9D4 800201C4 23104300 */  subu       $v0, $v0, $v1
    /* E9D8 800201C8 C0100200 */  sll        $v0, $v0, 3
    /* E9DC 800201CC 21288200 */  addu       $a1, $a0, $v0
    /* E9E0 800201D0 2E00A6A4 */  sh         $a2, 0x2E($a1)
    /* E9E4 800201D4 260086A4 */  sh         $a2, 0x26($a0)
  .L800201D8:
    /* E9E8 800201D8 360087A4 */  sh         $a3, 0x36($a0)
  .L800201DC:
    /* E9EC 800201DC 0800E003 */  jr         $ra
    /* E9F0 800201E0 2110A000 */   addu      $v0, $a1, $zero
endlabel func_800201A4
