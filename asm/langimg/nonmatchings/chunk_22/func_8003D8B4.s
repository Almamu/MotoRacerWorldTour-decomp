nonmatching func_8003D8B4, 0x48

glabel func_8003D8B4
    /* 2C0C4 8003D8B4 940A838C */  lw         $v1, 0xA94($a0)
    /* 2C0C8 8003D8B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C0CC 8003D8BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2C0D0 8003D8C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C0D4 8003D8C4 FCFFB08C */  lw         $s0, -0x4($a1)
    /* 2C0D8 8003D8C8 00016230 */  andi       $v0, $v1, 0x100
    /* 2C0DC 8003D8CC 07004014 */  bnez       $v0, .L8003D8EC
    /* 2C0E0 8003D8D0 21100002 */   addu      $v0, $s0, $zero
    /* 2C0E4 8003D8D4 04000012 */  beqz       $s0, .L8003D8E8
    /* 2C0E8 8003D8D8 00016234 */   ori       $v0, $v1, 0x100
    /* 2C0EC 8003D8DC 940A82AC */  sw         $v0, 0xA94($a0)
    /* 2C0F0 8003D8E0 27F3000C */  jal        func_8003CC9C
    /* 2C0F4 8003D8E4 01000524 */   addiu     $a1, $zero, 0x1
  .L8003D8E8:
    /* 2C0F8 8003D8E8 21100002 */  addu       $v0, $s0, $zero
  .L8003D8EC:
    /* 2C0FC 8003D8EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2C100 8003D8F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C104 8003D8F4 0800E003 */  jr         $ra
    /* 2C108 8003D8F8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003D8B4
