nonmatching func_8001467C, 0x70

glabel func_8001467C
    /* 2E8C 8001467C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E90 80014680 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E94 80014684 21888000 */  addu       $s1, $a0, $zero
    /* 2E98 80014688 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2E9C 8001468C 2198E000 */  addu       $s3, $a3, $zero
    /* 2EA0 80014690 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2EA4 80014694 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2EA8 80014698 A652000C */  jal        func_80014A98
    /* 2EAC 8001469C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2EB0 800146A0 21202002 */  addu       $a0, $s1, $zero
    /* 2EB4 800146A4 21904000 */  addu       $s2, $v0, $zero
    /* 2EB8 800146A8 9F50000C */  jal        func_8001427C
    /* 2EBC 800146AC 21284002 */   addu      $a1, $s2, $zero
    /* 2EC0 800146B0 21804000 */  addu       $s0, $v0, $zero
    /* 2EC4 800146B4 05000012 */  beqz       $s0, .L800146CC
    /* 2EC8 800146B8 21202002 */   addu      $a0, $s1, $zero
    /* 2ECC 800146BC 9F50000C */  jal        func_8001427C
    /* 2ED0 800146C0 21286002 */   addu      $a1, $s3, $zero
    /* 2ED4 800146C4 200002AE */  sw         $v0, 0x20($s0)
    /* 2ED8 800146C8 200050AC */  sw         $s0, 0x20($v0)
  .L800146CC:
    /* 2EDC 800146CC 21104002 */  addu       $v0, $s2, $zero
    /* 2EE0 800146D0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2EE4 800146D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2EE8 800146D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 2EEC 800146DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2EF0 800146E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EF4 800146E4 0800E003 */  jr         $ra
    /* 2EF8 800146E8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8001467C
