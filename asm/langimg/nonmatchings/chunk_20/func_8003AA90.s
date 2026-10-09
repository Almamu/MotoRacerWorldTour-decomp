nonmatching func_8003AA90, 0x94

glabel func_8003AA90
    /* 292A0 8003AA90 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 292A4 8003AA94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 292A8 8003AA98 21880000 */  addu       $s1, $zero, $zero
    /* 292AC 8003AA9C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 292B0 8003AAA0 21988000 */  addu       $s3, $a0, $zero
    /* 292B4 8003AAA4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 292B8 8003AAA8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 292BC 8003AAAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 292C0 8003AAB0 4800708E */  lw         $s0, 0x48($s3)
    /* 292C4 8003AAB4 00000000 */  nop
    /* 292C8 8003AAB8 0C000012 */  beqz       $s0, .L8003AAEC
    /* 292CC 8003AABC 2190A000 */   addu      $s2, $a1, $zero
    /* 292D0 8003AAC0 04000426 */  addiu      $a0, $s0, 0x4
  .L8003AAC4:
    /* 292D4 8003AAC4 2B98020C */  jal        func_800A60AC
    /* 292D8 8003AAC8 21284002 */   addu      $a1, $s2, $zero
    /* 292DC 8003AACC 03004014 */  bnez       $v0, .L8003AADC
    /* 292E0 8003AAD0 00000000 */   nop
    /* 292E4 8003AAD4 BBEA0008 */  j          .L8003AAEC
    /* 292E8 8003AAD8 21880002 */   addu      $s1, $s0, $zero
  .L8003AADC:
    /* 292EC 8003AADC 0000108E */  lw         $s0, 0x0($s0)
    /* 292F0 8003AAE0 00000000 */  nop
    /* 292F4 8003AAE4 F7FF0016 */  bnez       $s0, .L8003AAC4
    /* 292F8 8003AAE8 04000426 */   addiu     $a0, $s0, 0x4
  .L8003AAEC:
    /* 292FC 8003AAEC 06002016 */  bnez       $s1, .L8003AB08
    /* 29300 8003AAF0 21102002 */   addu      $v0, $s1, $zero
    /* 29304 8003AAF4 4400648E */  lw         $a0, 0x44($s3)
    /* 29308 8003AAF8 F8ED000C */  jal        func_8003B7E0
    /* 2930C 8003AAFC 21284002 */   addu      $a1, $s2, $zero
    /* 29310 8003AB00 21884000 */  addu       $s1, $v0, $zero
    /* 29314 8003AB04 21102002 */  addu       $v0, $s1, $zero
  .L8003AB08:
    /* 29318 8003AB08 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2931C 8003AB0C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 29320 8003AB10 1800B28F */  lw         $s2, 0x18($sp)
    /* 29324 8003AB14 1400B18F */  lw         $s1, 0x14($sp)
    /* 29328 8003AB18 1000B08F */  lw         $s0, 0x10($sp)
    /* 2932C 8003AB1C 0800E003 */  jr         $ra
    /* 29330 8003AB20 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003AA90
