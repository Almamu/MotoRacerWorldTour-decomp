nonmatching func_8009FFCC, 0xA0

glabel func_8009FFCC
    /* 8E7DC 8009FFCC 1058828F */  lw         $v0, %gp_rel(D_800C9F00)($gp)
    /* 8E7E0 8009FFD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8E7E4 8009FFD4 21004014 */  bnez       $v0, .L800A005C
    /* 8E7E8 8009FFD8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8E7EC 8009FFDC 959C020C */  jal        __builtin_vec_new
    /* 8E7F0 8009FFE0 10000424 */   addiu     $a0, $zero, 0x10
    /* 8E7F4 8009FFE4 21204000 */  addu       $a0, $v0, $zero
    /* 8E7F8 8009FFE8 0D80053C */  lui        $a1, %hi(D_800C9F04)
    /* 8E7FC 8009FFEC 049FA524 */  addiu      $a1, $a1, %lo(D_800C9F04)
    /* 8E800 8009FFF0 105882AF */  sw         $v0, %gp_rel(D_800C9F00)($gp)
    /* 8E804 8009FFF4 5ED9020C */  jal        strncpy
    /* 8E808 8009FFF8 10000624 */   addiu     $a2, $zero, 0x10
    /* 8E80C 8009FFFC 1058838F */  lw         $v1, %gp_rel(D_800C9F00)($gp)
    /* 8E810 800A0000 00000000 */  nop
    /* 8E814 800A0004 0F0060A0 */  sb         $zero, 0xF($v1)
    /* 8E818 800A0008 1058848F */  lw         $a0, %gp_rel(D_800C9F00)($gp)
    /* 8E81C 800A000C 44000224 */  addiu      $v0, $zero, 0x44
    /* 8E820 800A0010 080082A0 */  sb         $v0, 0x8($a0)
    /* 8E824 800A0014 0C80043C */  lui        $a0, %hi(D_800BC888)
    /* 8E828 800A0018 88C8848C */  lw         $a0, %lo(D_800BC888)($a0)
    /* 8E82C 800A001C 00000000 */  nop
    /* 8E830 800A0020 08008010 */  beqz       $a0, .L800A0044
    /* 8E834 800A0024 3412023C */   lui       $v0, (0x12345670 >> 16)
    /* 8E838 800A0028 0000838C */  lw         $v1, 0x0($a0)
    /* 8E83C 800A002C 70564234 */  ori        $v0, $v0, (0x12345670 & 0xFFFF)
    /* 8E840 800A0030 04006214 */  bne        $v1, $v0, .L800A0044
    /* 8E844 800A0034 00000000 */   nop
    /* 8E848 800A0038 04008290 */  lbu        $v0, 0x4($a0)
    /* 8E84C 800A003C 13800208 */  j          .L800A004C
    /* 8E850 800A0040 00000000 */   nop
  .L800A0044:
    /* 8E854 800A0044 0D80023C */  lui        $v0, %hi(D_800C9D40)
    /* 8E858 800A0048 409D4290 */  lbu        $v0, %lo(D_800C9D40)($v0)
  .L800A004C:
    /* 8E85C 800A004C 1058838F */  lw         $v1, %gp_rel(D_800C9F00)($gp)
    /* 8E860 800A0050 30004224 */  addiu      $v0, $v0, 0x30
    /* 8E864 800A0054 0A0062A0 */  sb         $v0, 0xA($v1)
    /* 8E868 800A0058 1058828F */  lw         $v0, %gp_rel(D_800C9F00)($gp)
  .L800A005C:
    /* 8E86C 800A005C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8E870 800A0060 00000000 */  nop
    /* 8E874 800A0064 0800E003 */  jr         $ra
    /* 8E878 800A0068 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009FFCC
