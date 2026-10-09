nonmatching func_800846AC, 0x50

glabel func_800846AC
    /* 72EBC 800846AC 2148A000 */  addu       $t1, $a1, $zero
    /* 72EC0 800846B0 0D80023C */  lui        $v0, %hi(D_800CBD30)
    /* 72EC4 800846B4 30BD4224 */  addiu      $v0, $v0, %lo(D_800CBD30)
    /* 72EC8 800846B8 407684AF */  sw         $a0, %gp_rel(D_800CBD30)($gp)
    /* 72ECC 800846BC 040049AC */  sw         $t1, 0x4($v0)
    /* 72ED0 800846C0 080046AC */  sw         $a2, 0x8($v0)
    /* 72ED4 800846C4 1000A38F */  lw         $v1, 0x10($sp)
    /* 72ED8 800846C8 1400A58F */  lw         $a1, 0x14($sp)
    /* 72EDC 800846CC 21400000 */  addu       $t0, $zero, $zero
    /* 72EE0 800846D0 0C0047AC */  sw         $a3, 0xC($v0)
    /* 72EE4 800846D4 100043AC */  sw         $v1, 0x10($v0)
    /* 72EE8 800846D8 06008010 */  beqz       $a0, .L800846F4
    /* 72EEC 800846DC 140045AC */   sw        $a1, 0x14($v0)
    /* 72EF0 800846E0 04002011 */  beqz       $t1, .L800846F4
    /* 72EF4 800846E4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 72EF8 800846E8 0200C210 */  beq        $a2, $v0, .L800846F4
    /* 72EFC 800846EC 00000000 */   nop
    /* 72F00 800846F0 2B400700 */  sltu       $t0, $zero, $a3
  .L800846F4:
    /* 72F04 800846F4 0800E003 */  jr         $ra
    /* 72F08 800846F8 21100001 */   addu      $v0, $t0, $zero
endlabel func_800846AC
