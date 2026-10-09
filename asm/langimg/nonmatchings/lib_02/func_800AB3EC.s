nonmatching func_800AB3EC, 0x2C

glabel func_800AB3EC
    /* 99BFC 800AB3EC 0C80023C */  lui        $v0, %hi(D_800BE5F0)
    /* 99C00 800AB3F0 F0E54224 */  addiu      $v0, $v0, %lo(D_800BE5F0)
    /* 99C04 800AB3F4 80200400 */  sll        $a0, $a0, 2
    /* 99C08 800AB3F8 21208200 */  addu       $a0, $a0, $v0
    /* 99C0C 800AB3FC 0000828C */  lw         $v0, 0x0($a0)
    /* 99C10 800AB400 00000000 */  nop
    /* 99C14 800AB404 0200A210 */  beq        $a1, $v0, .L800AB410
    /* 99C18 800AB408 00000000 */   nop
    /* 99C1C 800AB40C 000085AC */  sw         $a1, 0x0($a0)
  .L800AB410:
    /* 99C20 800AB410 0800E003 */  jr         $ra
    /* 99C24 800AB414 00000000 */   nop
endlabel func_800AB3EC
