nonmatching func_8013C6F0, 0x5C

glabel func_8013C6F0
    /* 9BBC 8013C6F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9BC0 8013C6F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9BC4 8013C6F8 21808000 */  addu       $s0, $a0, $zero
    /* 9BC8 8013C6FC 1C80023C */  lui        $v0, %hi(D_801BFC30)
    /* 9BCC 8013C700 30FC428C */  lw         $v0, %lo(D_801BFC30)($v0)
    /* 9BD0 8013C704 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9BD4 8013C708 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9BD8 8013C70C 3C00428C */  lw         $v0, 0x3C($v0)
    /* 9BDC 8013C710 03001192 */  lbu        $s1, 0x3($s0)
    /* 9BE0 8013C714 09F84000 */  jalr       $v0
    /* 9BE4 8013C718 21200000 */   addu      $a0, $zero, $zero
    /* 9BE8 8013C71C 1C80023C */  lui        $v0, %hi(D_801BFC30)
    /* 9BEC 8013C720 30FC428C */  lw         $v0, %lo(D_801BFC30)($v0)
    /* 9BF0 8013C724 04000426 */  addiu      $a0, $s0, 0x4
    /* 9BF4 8013C728 1400428C */  lw         $v0, 0x14($v0)
    /* 9BF8 8013C72C 00000000 */  nop
    /* 9BFC 8013C730 09F84000 */  jalr       $v0
    /* 9C00 8013C734 21282002 */   addu      $a1, $s1, $zero
    /* 9C04 8013C738 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9C08 8013C73C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9C0C 8013C740 1000B08F */  lw         $s0, 0x10($sp)
    /* 9C10 8013C744 0800E003 */  jr         $ra
    /* 9C14 8013C748 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013C6F0
