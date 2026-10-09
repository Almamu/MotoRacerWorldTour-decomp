nonmatching func_8004C7EC, 0x84

glabel func_8004C7EC
    /* 3AFFC 8004C7EC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3B000 8004C7F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3B004 8004C7F4 21908000 */  addu       $s2, $a0, $zero
    /* 3B008 8004C7F8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3B00C 8004C7FC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3B010 8004C800 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3B014 8004C804 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3B018 8004C808 1800458E */  lw         $a1, 0x18($s2)
    /* 3B01C 8004C80C 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 3B020 8004C810 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 3B024 8004C814 F1E3010C */  jal        func_80078FC4
    /* 3B028 8004C818 00000000 */   nop
    /* 3B02C 8004C81C 0D004010 */  beqz       $v0, .L8004C854
    /* 3B030 8004C820 21880000 */   addu      $s1, $zero, $zero
    /* 3B034 8004C824 FEFF1324 */  addiu      $s3, $zero, -0x2
    /* 3B038 8004C828 88045026 */  addiu      $s0, $s2, 0x488
  .L8004C82C:
    /* 3B03C 8004C82C 21204002 */  addu       $a0, $s2, $zero
    /* 3B040 8004C830 21282002 */  addu       $a1, $s1, $zero
    /* 3B044 8004C834 0000028E */  lw         $v0, 0x0($s0)
    /* 3B048 8004C838 01003126 */  addiu      $s1, $s1, 0x1
    /* 3B04C 8004C83C 24105300 */  and        $v0, $v0, $s3
    /* 3B050 8004C840 313C010C */  jal        func_8004F0C4
    /* 3B054 8004C844 000002AE */   sw        $v0, 0x0($s0)
    /* 3B058 8004C848 0200222A */  slti       $v0, $s1, 0x2
    /* 3B05C 8004C84C F7FF4014 */  bnez       $v0, .L8004C82C
    /* 3B060 8004C850 04001026 */   addiu     $s0, $s0, 0x4
  .L8004C854:
    /* 3B064 8004C854 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3B068 8004C858 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3B06C 8004C85C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3B070 8004C860 1400B18F */  lw         $s1, 0x14($sp)
    /* 3B074 8004C864 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B078 8004C868 0800E003 */  jr         $ra
    /* 3B07C 8004C86C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8004C7EC
