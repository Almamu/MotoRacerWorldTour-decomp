nonmatching func_8001A664, 0x48

glabel func_8001A664
    /* 8E74 8001A664 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8E78 8001A668 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E7C 8001A66C 21808000 */  addu       $s0, $a0, $zero
    /* 8E80 8001A670 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8E84 8001A674 CF6B000C */  jal        func_8001AF3C
    /* 8E88 8001A678 1000A627 */   addiu     $a2, $sp, 0x10
    /* 8E8C 8001A67C 06004010 */  beqz       $v0, .L8001A698
    /* 8E90 8001A680 21200002 */   addu      $a0, $s0, $zero
    /* 8E94 8001A684 1000A527 */  addiu      $a1, $sp, 0x10
    /* 8E98 8001A688 EF6A000C */  jal        func_8001ABBC
    /* 8E9C 8001A68C 21300000 */   addu      $a2, $zero, $zero
    /* 8EA0 8001A690 A7690008 */  j          .L8001A69C
    /* 8EA4 8001A694 00000000 */   nop
  .L8001A698:
    /* 8EA8 8001A698 21100000 */  addu       $v0, $zero, $zero
  .L8001A69C:
    /* 8EAC 8001A69C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8EB0 8001A6A0 1800B08F */  lw         $s0, 0x18($sp)
    /* 8EB4 8001A6A4 0800E003 */  jr         $ra
    /* 8EB8 8001A6A8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8001A664
