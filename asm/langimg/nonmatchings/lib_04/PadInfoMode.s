nonmatching PadInfoMode, 0xF8

glabel PadInfoMode
    /* 9ED4C 800B053C 0C80023C */  lui        $v0, %hi(D_800C3C9C)
    /* 9ED50 800B0540 9C3C428C */  lw         $v0, %lo(D_800C3C9C)($v0)
    /* 9ED54 800B0544 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9ED58 800B0548 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9ED5C 800B054C 2180A000 */  addu       $s0, $a1, $zero
    /* 9ED60 800B0550 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9ED64 800B0554 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9ED68 800B0558 09F84000 */  jalr       $v0
    /* 9ED6C 800B055C 2188C000 */   addu      $s1, $a2, $zero
    /* 9ED70 800B0560 21184000 */  addu       $v1, $v0, $zero
    /* 9ED74 800B0564 03000224 */  addiu      $v0, $zero, 0x3
    /* 9ED78 800B0568 16000212 */  beq        $s0, $v0, .L800B05C4
    /* 9ED7C 800B056C 0400022A */   slti      $v0, $s0, 0x4
    /* 9ED80 800B0570 07004010 */  beqz       $v0, .L800B0590
    /* 9ED84 800B0574 01000224 */   addiu     $v0, $zero, 0x1
    /* 9ED88 800B0578 0C000212 */  beq        $s0, $v0, .L800B05AC
    /* 9ED8C 800B057C 02000224 */   addiu     $v0, $zero, 0x2
    /* 9ED90 800B0580 0D000212 */  beq        $s0, $v0, .L800B05B8
    /* 9ED94 800B0584 21100000 */   addu      $v0, $zero, $zero
    /* 9ED98 800B0588 88C10208 */  j          .L800B0620
    /* 9ED9C 800B058C 00000000 */   nop
  .L800B0590:
    /* 9EDA0 800B0590 04000224 */  addiu      $v0, $zero, 0x4
    /* 9EDA4 800B0594 0E000212 */  beq        $s0, $v0, .L800B05D0
    /* 9EDA8 800B0598 64000224 */   addiu     $v0, $zero, 0x64
    /* 9EDAC 800B059C 1C000212 */  beq        $s0, $v0, .L800B0610
    /* 9EDB0 800B05A0 21100000 */   addu      $v0, $zero, $zero
    /* 9EDB4 800B05A4 88C10208 */  j          .L800B0620
    /* 9EDB8 800B05A8 00000000 */   nop
  .L800B05AC:
    /* 9EDBC 800B05AC E8006290 */  lbu        $v0, 0xE8($v1)
    /* 9EDC0 800B05B0 88C10208 */  j          .L800B0620
    /* 9EDC4 800B05B4 00000000 */   nop
  .L800B05B8:
    /* 9EDC8 800B05B8 E6006294 */  lhu        $v0, 0xE6($v1)
    /* 9EDCC 800B05BC 88C10208 */  j          .L800B0620
    /* 9EDD0 800B05C0 00000000 */   nop
  .L800B05C4:
    /* 9EDD4 800B05C4 E4006290 */  lbu        $v0, 0xE4($v1)
    /* 9EDD8 800B05C8 88C10208 */  j          .L800B0620
    /* 9EDDC 800B05CC 00000000 */   nop
  .L800B05D0:
    /* 9EDE0 800B05D0 04002106 */  bgez       $s1, .L800B05E4
    /* 9EDE4 800B05D4 00000000 */   nop
    /* 9EDE8 800B05D8 E3006290 */  lbu        $v0, 0xE3($v1)
    /* 9EDEC 800B05DC 88C10208 */  j          .L800B0620
    /* 9EDF0 800B05E0 00000000 */   nop
  .L800B05E4:
    /* 9EDF4 800B05E4 E3006290 */  lbu        $v0, 0xE3($v1)
    /* 9EDF8 800B05E8 00000000 */  nop
    /* 9EDFC 800B05EC 2A102202 */  slt        $v0, $s1, $v0
    /* 9EE00 800B05F0 0A004010 */  beqz       $v0, .L800B061C
    /* 9EE04 800B05F4 40101100 */   sll       $v0, $s1, 1
    /* 9EE08 800B05F8 0000638C */  lw         $v1, 0x0($v1)
    /* 9EE0C 800B05FC 00000000 */  nop
    /* 9EE10 800B0600 21104300 */  addu       $v0, $v0, $v1
    /* 9EE14 800B0604 00004294 */  lhu        $v0, 0x0($v0)
    /* 9EE18 800B0608 88C10208 */  j          .L800B0620
    /* 9EE1C 800B060C 00000000 */   nop
  .L800B0610:
    /* 9EE20 800B0610 4C00628C */  lw         $v0, 0x4C($v1)
    /* 9EE24 800B0614 88C10208 */  j          .L800B0620
    /* 9EE28 800B0618 00000000 */   nop
  .L800B061C:
    /* 9EE2C 800B061C 21100000 */  addu       $v0, $zero, $zero
  .L800B0620:
    /* 9EE30 800B0620 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9EE34 800B0624 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EE38 800B0628 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EE3C 800B062C 0800E003 */  jr         $ra
    /* 9EE40 800B0630 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel PadInfoMode
