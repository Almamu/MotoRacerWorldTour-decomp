nonmatching func_800B3860, 0xA4

glabel func_800B3860
    /* A2070 800B3860 0C80023C */  lui        $v0, %hi(D_800C3DD4)
    /* A2074 800B3864 D43D428C */  lw         $v0, %lo(D_800C3DD4)($v0)
    /* A2078 800B3868 00000000 */  nop
    /* A207C 800B386C 10004010 */  beqz       $v0, .L800B38B0
    /* A2080 800B3870 21308000 */   addu      $a2, $a0, $zero
    /* A2084 800B3874 0C80043C */  lui        $a0, %hi(D_800C3DDC)
    /* A2088 800B3878 DC3D848C */  lw         $a0, %lo(D_800C3DDC)($a0)
    /* A208C 800B387C 00000000 */  nop
    /* A2090 800B3880 1B00A400 */  divu       $zero, $a1, $a0
    /* A2094 800B3884 02008014 */  bnez       $a0, .L800B3890
    /* A2098 800B3888 00000000 */   nop
    /* A209C 800B388C 0D000700 */  break      7
  .L800B3890:
    /* A20A0 800B3890 10100000 */  mfhi       $v0
    /* A20A4 800B3894 06004010 */  beqz       $v0, .L800B38B0
    /* A20A8 800B3898 00000000 */   nop
    /* A20AC 800B389C 0C80023C */  lui        $v0, %hi(D_800C3DE0)
    /* A20B0 800B38A0 E03D428C */  lw         $v0, %lo(D_800C3DE0)($v0)
    /* A20B4 800B38A4 2128A400 */  addu       $a1, $a1, $a0
    /* A20B8 800B38A8 27100200 */  nor        $v0, $zero, $v0
    /* A20BC 800B38AC 2428A200 */  and        $a1, $a1, $v0
  .L800B38B0:
    /* A20C0 800B38B0 0C80023C */  lui        $v0, %hi(D_800C3DD8)
    /* A20C4 800B38B4 D83D428C */  lw         $v0, %lo(D_800C3DD8)($v0)
    /* A20C8 800B38B8 00000000 */  nop
    /* A20CC 800B38BC 06384500 */  srlv       $a3, $a1, $v0
    /* A20D0 800B38C0 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* A20D4 800B38C4 0600C210 */  beq        $a2, $v0, .L800B38E0
    /* A20D8 800B38C8 2118E000 */   addu      $v1, $a3, $zero
    /* A20DC 800B38CC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A20E0 800B38D0 0500C214 */  bne        $a2, $v0, .L800B38E8
    /* A20E4 800B38D4 2110A000 */   addu      $v0, $a1, $zero
    /* A20E8 800B38D8 3FCE0208 */  j          .L800B38FC
    /* A20EC 800B38DC FFFF6230 */   andi      $v0, $v1, 0xFFFF
  .L800B38E0:
    /* A20F0 800B38E0 3FCE0208 */  j          .L800B38FC
    /* A20F4 800B38E4 2110A000 */   addu      $v0, $a1, $zero
  .L800B38E8:
    /* A20F8 800B38E8 0C80043C */  lui        $a0, %hi(D_800C3DB0)
    /* A20FC 800B38EC B03D848C */  lw         $a0, %lo(D_800C3DB0)($a0)
    /* A2100 800B38F0 40180600 */  sll        $v1, $a2, 1
    /* A2104 800B38F4 21186400 */  addu       $v1, $v1, $a0
    /* A2108 800B38F8 000067A4 */  sh         $a3, 0x0($v1)
  .L800B38FC:
    /* A210C 800B38FC 0800E003 */  jr         $ra
    /* A2110 800B3900 00000000 */   nop
endlabel func_800B3860
