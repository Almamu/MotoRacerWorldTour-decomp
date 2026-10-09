nonmatching func_8003D924, 0x4C

glabel func_8003D924
    /* 2C134 8003D924 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C138 8003D928 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2C13C 8003D92C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C140 8003D930 F8FFB08C */  lw         $s0, -0x8($a1)
    /* 2C144 8003D934 00000000 */  nop
    /* 2C148 8003D938 09000012 */  beqz       $s0, .L8003D960
    /* 2C14C 8003D93C 21100002 */   addu      $v0, $s0, $zero
    /* 2C150 8003D940 FCFFA28C */  lw         $v0, -0x4($a1)
    /* 2C154 8003D944 5C01838C */  lw         $v1, 0x15C($a0)
    /* 2C158 8003D948 80100200 */  sll        $v0, $v0, 2
    /* 2C15C 8003D94C 21104300 */  addu       $v0, $v0, $v1
    /* 2C160 8003D950 0000468C */  lw         $a2, 0x0($v0)
    /* 2C164 8003D954 0AFF000C */  jal        func_8003FC28
    /* 2C168 8003D958 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 2C16C 8003D95C 21100002 */  addu       $v0, $s0, $zero
  .L8003D960:
    /* 2C170 8003D960 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2C174 8003D964 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C178 8003D968 0800E003 */  jr         $ra
    /* 2C17C 8003D96C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003D924
