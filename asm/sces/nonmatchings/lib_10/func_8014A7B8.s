nonmatching func_8014A7B8, 0x80

glabel func_8014A7B8
    /* 17C84 8014A7B8 F8FFC624 */  addiu      $a2, $a2, -0x8
    /* 17C88 8014A7BC 82300600 */  srl        $a2, $a2, 2
    /* 17C8C 8014A7C0 0300C930 */  andi       $t1, $a2, 0x3
    /* 17C90 8014A7C4 82300600 */  srl        $a2, $a2, 2
    /* 17C94 8014A7C8 1100C010 */  beqz       $a2, .L8014A810
    /* 17C98 8014A7CC 00000000 */   nop
    /* 17C9C 8014A7D0 0C00A824 */  addiu      $t0, $a1, 0xC
    /* 17CA0 8014A7D4 0C008724 */  addiu      $a3, $a0, 0xC
  .L8014A7D8:
    /* 17CA4 8014A7D8 0000A28C */  lw         $v0, 0x0($a1)
    /* 17CA8 8014A7DC 1000A524 */  addiu      $a1, $a1, 0x10
    /* 17CAC 8014A7E0 F8FF038D */  lw         $v1, -0x8($t0)
    /* 17CB0 8014A7E4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 17CB4 8014A7E8 000082AC */  sw         $v0, 0x0($a0)
    /* 17CB8 8014A7EC 10008424 */  addiu      $a0, $a0, 0x10
    /* 17CBC 8014A7F0 F8FFE3AC */  sw         $v1, -0x8($a3)
    /* 17CC0 8014A7F4 FCFF028D */  lw         $v0, -0x4($t0)
    /* 17CC4 8014A7F8 0000038D */  lw         $v1, 0x0($t0)
    /* 17CC8 8014A7FC 10000825 */  addiu      $t0, $t0, 0x10
    /* 17CCC 8014A800 FCFFE2AC */  sw         $v0, -0x4($a3)
    /* 17CD0 8014A804 0000E3AC */  sw         $v1, 0x0($a3)
    /* 17CD4 8014A808 F3FFC014 */  bnez       $a2, .L8014A7D8
    /* 17CD8 8014A80C 1000E724 */   addiu     $a3, $a3, 0x10
  .L8014A810:
    /* 17CDC 8014A810 07002011 */  beqz       $t1, .L8014A830
    /* 17CE0 8014A814 00000000 */   nop
  .L8014A818:
    /* 17CE4 8014A818 0000A28C */  lw         $v0, 0x0($a1)
    /* 17CE8 8014A81C 0400A524 */  addiu      $a1, $a1, 0x4
    /* 17CEC 8014A820 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 17CF0 8014A824 000082AC */  sw         $v0, 0x0($a0)
    /* 17CF4 8014A828 FBFF2015 */  bnez       $t1, .L8014A818
    /* 17CF8 8014A82C 04008424 */   addiu     $a0, $a0, 0x4
  .L8014A830:
    /* 17CFC 8014A830 0800E003 */  jr         $ra
    /* 17D00 8014A834 00000000 */   nop
endlabel func_8014A7B8
