nonmatching func_80040178, 0x84

glabel func_80040178
    /* 2E988 80040178 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 2E98C 8004017C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2E990 80040180 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2E994 80040184 21908000 */  addu       $s2, $a0, $zero
    /* 2E998 80040188 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2E99C 8004018C 2180C000 */  addu       $s0, $a2, $zero
    /* 2E9A0 80040190 21200002 */  addu       $a0, $s0, $zero
    /* 2E9A4 80040194 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2E9A8 80040198 2188A000 */  addu       $s1, $a1, $zero
    /* 2E9AC 8004019C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2E9B0 800401A0 4000B327 */  addiu      $s3, $sp, 0x40
    /* 2E9B4 800401A4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2E9B8 800401A8 2ED9020C */  jal        strlen
    /* 2E9BC 800401AC 3C00A7AF */   sw        $a3, 0x3C($sp)
    /* 2E9C0 800401B0 21280002 */  addu       $a1, $s0, $zero
    /* 2E9C4 800401B4 3800248E */  lw         $a0, 0x38($s1)
    /* 2E9C8 800401B8 845F000C */  jal        func_80017E10
    /* 2E9CC 800401BC 21304000 */   addu      $a2, $v0, $zero
    /* 2E9D0 800401C0 21204002 */  addu       $a0, $s2, $zero
    /* 2E9D4 800401C4 21282002 */  addu       $a1, $s1, $zero
    /* 2E9D8 800401C8 21804000 */  addu       $s0, $v0, $zero
    /* 2E9DC 800401CC 3C00A78F */  lw         $a3, 0x3C($sp)
    /* 2E9E0 800401D0 21300002 */  addu       $a2, $s0, $zero
    /* 2E9E4 800401D4 2700010C */  jal        func_8004009C
    /* 2E9E8 800401D8 1000B3AF */   sw        $s3, 0x10($sp)
    /* 2E9EC 800401DC 21100002 */  addu       $v0, $s0, $zero
    /* 2E9F0 800401E0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2E9F4 800401E4 2400B38F */  lw         $s3, 0x24($sp)
    /* 2E9F8 800401E8 2000B28F */  lw         $s2, 0x20($sp)
    /* 2E9FC 800401EC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2EA00 800401F0 1800B08F */  lw         $s0, 0x18($sp)
    /* 2EA04 800401F4 0800E003 */  jr         $ra
    /* 2EA08 800401F8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80040178
