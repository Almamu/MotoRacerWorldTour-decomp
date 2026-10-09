nonmatching func_800895A0, 0x38

glabel func_800895A0
    /* 77DB0 800895A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 77DB4 800895A4 07008010 */  beqz       $a0, .L800895C4
    /* 77DB8 800895A8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 77DBC 800895AC 7C4584AF */  sw         $a0, %gp_rel(D_800C8C6C)($gp)
    /* 77DC0 800895B0 884585AF */  sw         $a1, %gp_rel(D_800C8C78)($gp)
    /* 77DC4 800895B4 7625020C */  jal        func_800895D8
    /* 77DC8 800895B8 00000000 */   nop
    /* 77DCC 800895BC 72250208 */  j          .L800895C8
    /* 77DD0 800895C0 00000000 */   nop
  .L800895C4:
    /* 77DD4 800895C4 21100000 */  addu       $v0, $zero, $zero
  .L800895C8:
    /* 77DD8 800895C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 77DDC 800895CC 00000000 */  nop
    /* 77DE0 800895D0 0800E003 */  jr         $ra
    /* 77DE4 800895D4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800895A0
