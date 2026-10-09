nonmatching func_80081154, 0x70

glabel func_80081154
    /* 6F964 80081154 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6F968 80081158 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6F96C 8008115C 21888000 */  addu       $s1, $a0, $zero
    /* 6F970 80081160 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6F974 80081164 2190A000 */  addu       $s2, $a1, $zero
    /* 6F978 80081168 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6F97C 8008116C 0F00401A */  blez       $s2, .L800811AC
    /* 6F980 80081170 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6F984 80081174 80801200 */  sll        $s0, $s2, 2
    /* 6F988 80081178 959C020C */  jal        __builtin_vec_new
    /* 6F98C 8008117C 21200002 */   addu      $a0, $s0, $zero
    /* 6F990 80081180 21200002 */  addu       $a0, $s0, $zero
    /* 6F994 80081184 959C020C */  jal        __builtin_vec_new
    /* 6F998 80081188 000022AE */   sw        $v0, 0x0($s1)
    /* 6F99C 8008118C 0000248E */  lw         $a0, 0x0($s1)
    /* 6F9A0 80081190 00000000 */  nop
    /* 6F9A4 80081194 05008010 */  beqz       $a0, .L800811AC
    /* 6F9A8 80081198 040022AE */   sw        $v0, 0x4($s1)
    /* 6F9AC 8008119C 21280000 */  addu       $a1, $zero, $zero
    /* 6F9B0 800811A0 56D8020C */  jal        memset
    /* 6F9B4 800811A4 21300002 */   addu      $a2, $s0, $zero
    /* 6F9B8 800811A8 080032AE */  sw         $s2, 0x8($s1)
  .L800811AC:
    /* 6F9BC 800811AC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6F9C0 800811B0 1800B28F */  lw         $s2, 0x18($sp)
    /* 6F9C4 800811B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 6F9C8 800811B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 6F9CC 800811BC 0800E003 */  jr         $ra
    /* 6F9D0 800811C0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80081154
