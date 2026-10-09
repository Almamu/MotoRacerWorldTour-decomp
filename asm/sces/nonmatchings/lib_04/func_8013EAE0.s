nonmatching func_8013EAE0, 0x44

glabel func_8013EAE0
    /* BFAC 8013EAE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BFB0 8013EAE4 1000B0AF */  sw         $s0, 0x10($sp)
    /* BFB4 8013EAE8 1C80103C */  lui        $s0, %hi(D_801BFD98)
    /* BFB8 8013EAEC 98FD028E */  lw         $v0, %lo(D_801BFD98)($s0)
    /* BFBC 8013EAF0 00000000 */  nop
    /* BFC0 8013EAF4 06004010 */  beqz       $v0, .L8013EB10
    /* BFC4 8013EAF8 1400BFAF */   sw        $ra, 0x14($sp)
    /* BFC8 8013EAFC 56FF040C */  jal        func_8013FD58
    /* BFCC 8013EB00 00000000 */   nop
    /* BFD0 8013EB04 98FD00AE */  sw         $zero, %lo(D_801BFD98)($s0)
    /* BFD4 8013EB08 C5FA0408 */  j          .L8013EB14
    /* BFD8 8013EB0C 01000224 */   addiu     $v0, $zero, 0x1
  .L8013EB10:
    /* BFDC 8013EB10 21100000 */  addu       $v0, $zero, $zero
  .L8013EB14:
    /* BFE0 8013EB14 1400BF8F */  lw         $ra, 0x14($sp)
    /* BFE4 8013EB18 1000B08F */  lw         $s0, 0x10($sp)
    /* BFE8 8013EB1C 0800E003 */  jr         $ra
    /* BFEC 8013EB20 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013EAE0
