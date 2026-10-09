nonmatching func_8009E01C, 0x84

glabel func_8009E01C
    /* 8C82C 8009E01C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8C830 8009E020 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C834 8009E024 21808000 */  addu       $s0, $a0, $zero
    /* 8C838 8009E028 F01F0424 */  addiu      $a0, $zero, 0x1FF0
    /* 8C83C 8009E02C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C840 8009E030 2198C000 */  addu       $s3, $a2, $zero
    /* 8C844 8009E034 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C848 8009E038 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8C84C 8009E03C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C850 8009E040 3C0005AE */  sw         $a1, 0x3C($s0)
    /* 8C854 8009E044 3800B28F */  lw         $s2, 0x38($sp)
    /* 8C858 8009E048 959C020C */  jal        __builtin_vec_new
    /* 8C85C 8009E04C 2188E000 */   addu      $s1, $a3, $zero
    /* 8C860 8009E050 21204000 */  addu       $a0, $v0, $zero
    /* 8C864 8009E054 21280000 */  addu       $a1, $zero, $zero
    /* 8C868 8009E058 F01F0624 */  addiu      $a2, $zero, 0x1FF0
    /* 8C86C 8009E05C 56D8020C */  jal        func_800B6158
    /* 8C870 8009E060 340002AE */   sw        $v0, 0x34($s0)
    /* 8C874 8009E064 3400048E */  lw         $a0, 0x34($s0)
    /* 8C878 8009E068 21282002 */  addu       $a1, $s1, $zero
    /* 8C87C 8009E06C 00048424 */  addiu      $a0, $a0, 0x400
    /* 8C880 8009E070 46D8020C */  jal        func_800B6118
    /* 8C884 8009E074 00044626 */   addiu     $a2, $s2, 0x400
    /* 8C888 8009E078 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8C88C 8009E07C 400013AE */  sw         $s3, 0x40($s0)
    /* 8C890 8009E080 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C894 8009E084 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C898 8009E088 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C89C 8009E08C F01F0324 */  addiu      $v1, $zero, 0x1FF0
    /* 8C8A0 8009E090 380003AE */  sw         $v1, 0x38($s0)
    /* 8C8A4 8009E094 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C8A8 8009E098 0800E003 */  jr         $ra
    /* 8C8AC 8009E09C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009E01C
