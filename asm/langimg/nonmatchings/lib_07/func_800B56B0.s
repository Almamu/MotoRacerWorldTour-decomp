nonmatching func_800B56B0, 0x80

glabel func_800B56B0
    /* A3EC0 800B56B0 F8FFC624 */  addiu      $a2, $a2, -0x8
    /* A3EC4 800B56B4 82300600 */  srl        $a2, $a2, 2
    /* A3EC8 800B56B8 0300C930 */  andi       $t1, $a2, 0x3
    /* A3ECC 800B56BC 82300600 */  srl        $a2, $a2, 2
    /* A3ED0 800B56C0 1100C010 */  beqz       $a2, .L800B5708
    /* A3ED4 800B56C4 00000000 */   nop
    /* A3ED8 800B56C8 0C00A824 */  addiu      $t0, $a1, 0xC
    /* A3EDC 800B56CC 0C008724 */  addiu      $a3, $a0, 0xC
  .L800B56D0:
    /* A3EE0 800B56D0 0000A28C */  lw         $v0, 0x0($a1)
    /* A3EE4 800B56D4 1000A524 */  addiu      $a1, $a1, 0x10
    /* A3EE8 800B56D8 F8FF038D */  lw         $v1, -0x8($t0)
    /* A3EEC 800B56DC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A3EF0 800B56E0 000082AC */  sw         $v0, 0x0($a0)
    /* A3EF4 800B56E4 10008424 */  addiu      $a0, $a0, 0x10
    /* A3EF8 800B56E8 F8FFE3AC */  sw         $v1, -0x8($a3)
    /* A3EFC 800B56EC FCFF028D */  lw         $v0, -0x4($t0)
    /* A3F00 800B56F0 0000038D */  lw         $v1, 0x0($t0)
    /* A3F04 800B56F4 10000825 */  addiu      $t0, $t0, 0x10
    /* A3F08 800B56F8 FCFFE2AC */  sw         $v0, -0x4($a3)
    /* A3F0C 800B56FC 0000E3AC */  sw         $v1, 0x0($a3)
    /* A3F10 800B5700 F3FFC014 */  bnez       $a2, .L800B56D0
    /* A3F14 800B5704 1000E724 */   addiu     $a3, $a3, 0x10
  .L800B5708:
    /* A3F18 800B5708 07002011 */  beqz       $t1, .L800B5728
    /* A3F1C 800B570C 00000000 */   nop
  .L800B5710:
    /* A3F20 800B5710 0000A28C */  lw         $v0, 0x0($a1)
    /* A3F24 800B5714 0400A524 */  addiu      $a1, $a1, 0x4
    /* A3F28 800B5718 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* A3F2C 800B571C 000082AC */  sw         $v0, 0x0($a0)
    /* A3F30 800B5720 FBFF2015 */  bnez       $t1, .L800B5710
    /* A3F34 800B5724 04008424 */   addiu     $a0, $a0, 0x4
  .L800B5728:
    /* A3F38 800B5728 0800E003 */  jr         $ra
    /* A3F3C 800B572C 00000000 */   nop
endlabel func_800B56B0
