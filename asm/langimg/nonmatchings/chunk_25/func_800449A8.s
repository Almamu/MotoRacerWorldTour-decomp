nonmatching func_800449A8, 0x6C

glabel func_800449A8
    /* 331B8 800449A8 08008824 */  addiu      $t0, $a0, 0x8
    /* 331BC 800449AC 06000724 */  addiu      $a3, $zero, 0x6
    /* 331C0 800449B0 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 331C4 800449B4 18008524 */  addiu      $a1, $a0, 0x18
    /* 331C8 800449B8 14008624 */  addiu      $a2, $a0, 0x14
  .L800449BC:
    /* 331CC 800449BC 0000A28C */  lw         $v0, 0x0($a1)
    /* 331D0 800449C0 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 331D4 800449C4 FF0C4330 */  andi       $v1, $v0, 0xCFF
    /* 331D8 800449C8 0000A3AC */  sw         $v1, 0x0($a1)
    /* 331DC 800449CC 3F0C4330 */  andi       $v1, $v0, 0xC3F
    /* 331E0 800449D0 000000AD */  sw         $zero, 0x0($t0)
    /* 331E4 800449D4 F8FFC9AC */  sw         $t1, -0x8($a2)
    /* 331E8 800449D8 0000A3AC */  sw         $v1, 0x0($a1)
    /* 331EC 800449DC 0000C9AC */  sw         $t1, 0x0($a2)
    /* 331F0 800449E0 1400C624 */  addiu      $a2, $a2, 0x14
    /* 331F4 800449E4 0C0C4230 */  andi       $v0, $v0, 0xC0C
    /* 331F8 800449E8 0000A2AC */  sw         $v0, 0x0($a1)
    /* 331FC 800449EC 1400A524 */  addiu      $a1, $a1, 0x14
    /* 33200 800449F0 F2FFE014 */  bnez       $a3, .L800449BC
    /* 33204 800449F4 14000825 */   addiu     $t0, $t0, 0x14
    /* 33208 800449F8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3320C 800449FC 000082AC */  sw         $v0, 0x0($a0)
    /* 33210 80044A00 040082AC */  sw         $v0, 0x4($a0)
    /* 33214 80044A04 800080AC */  sw         $zero, 0x80($a0)
    /* 33218 80044A08 840082AC */  sw         $v0, 0x84($a0)
    /* 3321C 80044A0C 0800E003 */  jr         $ra
    /* 33220 80044A10 880082AC */   sw        $v0, 0x88($a0)
endlabel func_800449A8
