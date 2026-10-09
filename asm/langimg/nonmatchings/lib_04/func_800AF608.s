nonmatching func_800AF608, 0xF8

glabel func_800AF608
    /* 9DE18 800AF608 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 9DE1C 800AF60C 3800B6AF */  sw         $s6, 0x38($sp)
    /* 9DE20 800AF610 21B0C000 */  addu       $s6, $a2, $zero
    /* 9DE24 800AF614 2800B2AF */  sw         $s2, 0x28($sp)
    /* 9DE28 800AF618 21900000 */  addu       $s2, $zero, $zero
    /* 9DE2C 800AF61C 0C80023C */  lui        $v0, %hi(D_800C3C68)
    /* 9DE30 800AF620 683C4224 */  addiu      $v0, $v0, %lo(D_800C3C68)
    /* 9DE34 800AF624 3400B5AF */  sw         $s5, 0x34($sp)
    /* 9DE38 800AF628 21A84000 */  addu       $s5, $v0, $zero
    /* 9DE3C 800AF62C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 9DE40 800AF630 21A0A000 */  addu       $s4, $a1, $zero
    /* 9DE44 800AF634 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9DE48 800AF638 08009126 */  addiu      $s1, $s4, 0x8
    /* 9DE4C 800AF63C 0F008430 */  andi       $a0, $a0, 0xF
    /* 9DE50 800AF640 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 9DE54 800AF644 40980400 */  sll        $s3, $a0, 1
    /* 9DE58 800AF648 21106202 */  addu       $v0, $s3, $v0
    /* 9DE5C 800AF64C 0C80033C */  lui        $v1, %hi(D_800C3BC4)
    /* 9DE60 800AF650 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 9DE64 800AF654 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9DE68 800AF658 00004494 */  lhu        $a0, 0x0($v0)
    /* 9DE6C 800AF65C C43B7024 */  addiu      $s0, $v1, %lo(D_800C3BC4)
    /* 9DE70 800AF660 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 9DE74 800AF664 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 9DE78 800AF668 1C00A4A7 */  sh         $a0, 0x1C($sp)
    /* 9DE7C 800AF66C 1E00A4A7 */  sh         $a0, 0x1E($sp)
  .L800AF670:
    /* 9DE80 800AF670 0000228E */  lw         $v0, 0x0($s1)
    /* 9DE84 800AF674 00000000 */  nop
    /* 9DE88 800AF678 12004010 */  beqz       $v0, .L800AF6C4
    /* 9DE8C 800AF67C 00000000 */   nop
    /* 9DE90 800AF680 21207502 */  addu       $a0, $s3, $s5
    /* 9DE94 800AF684 00008294 */  lhu        $v0, 0x0($a0)
    /* 9DE98 800AF688 0000038E */  lw         $v1, 0x0($s0)
    /* 9DE9C 800AF68C 00000000 */  nop
    /* 9DEA0 800AF690 24104300 */  and        $v0, $v0, $v1
    /* 9DEA4 800AF694 0B004010 */  beqz       $v0, .L800AF6C4
    /* 9DEA8 800AF698 2128C002 */   addu      $a1, $s6, $zero
    /* 9DEAC 800AF69C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9DEB0 800AF6A0 00000296 */  lhu        $v0, 0x0($s0)
    /* 9DEB4 800AF6A4 00008394 */  lhu        $v1, 0x0($a0)
    /* 9DEB8 800AF6A8 27100200 */  nor        $v0, $zero, $v0
    /* 9DEBC 800AF6AC 24186200 */  and        $v1, $v1, $v0
    /* 9DEC0 800AF6B0 000083A4 */  sh         $v1, 0x0($a0)
    /* 9DEC4 800AF6B4 0000228E */  lw         $v0, 0x0($s1)
    /* 9DEC8 800AF6B8 0000868E */  lw         $a2, 0x0($s4)
    /* 9DECC 800AF6BC 09F84000 */  jalr       $v0
    /* 9DED0 800AF6C0 1000A427 */   addiu     $a0, $sp, 0x10
  .L800AF6C4:
    /* 9DED4 800AF6C4 04003126 */  addiu      $s1, $s1, 0x4
    /* 9DED8 800AF6C8 01005226 */  addiu      $s2, $s2, 0x1
    /* 9DEDC 800AF6CC 0F00422E */  sltiu      $v0, $s2, 0xF
    /* 9DEE0 800AF6D0 E7FF4014 */  bnez       $v0, .L800AF670
    /* 9DEE4 800AF6D4 04001026 */   addiu     $s0, $s0, 0x4
    /* 9DEE8 800AF6D8 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 9DEEC 800AF6DC 3800B68F */  lw         $s6, 0x38($sp)
    /* 9DEF0 800AF6E0 3400B58F */  lw         $s5, 0x34($sp)
    /* 9DEF4 800AF6E4 3000B48F */  lw         $s4, 0x30($sp)
    /* 9DEF8 800AF6E8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 9DEFC 800AF6EC 2800B28F */  lw         $s2, 0x28($sp)
    /* 9DF00 800AF6F0 2400B18F */  lw         $s1, 0x24($sp)
    /* 9DF04 800AF6F4 2000B08F */  lw         $s0, 0x20($sp)
    /* 9DF08 800AF6F8 0800E003 */  jr         $ra
    /* 9DF0C 800AF6FC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800AF608
