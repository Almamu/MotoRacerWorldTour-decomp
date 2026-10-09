nonmatching func_8004C430, 0xB4

glabel func_8004C430
    /* 3AC40 8004C430 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3AC44 8004C434 1000838C */  lw         $v1, 0x10($a0)
    /* 3AC48 8004C438 10000224 */  addiu      $v0, $zero, 0x10
    /* 3AC4C 8004C43C 25006214 */  bne        $v1, $v0, .L8004C4D4
    /* 3AC50 8004C440 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3AC54 8004C444 0403828C */  lw         $v0, 0x304($a0)
    /* 3AC58 8004C448 00000000 */  nop
    /* 3AC5C 8004C44C 21004014 */  bnez       $v0, .L8004C4D4
    /* 3AC60 8004C450 21108500 */   addu      $v0, $a0, $a1
    /* 3AC64 8004C454 70044380 */  lb         $v1, 0x470($v0)
    /* 3AC68 8004C458 7803878C */  lw         $a3, 0x378($a0)
    /* 3AC6C 8004C45C 0C006004 */  bltz       $v1, .L8004C490
    /* 3AC70 8004C460 21300000 */   addu      $a2, $zero, $zero
    /* 3AC74 8004C464 40100300 */  sll        $v0, $v1, 1
    /* 3AC78 8004C468 21104300 */  addu       $v0, $v0, $v1
    /* 3AC7C 8004C46C 80100200 */  sll        $v0, $v0, 2
    /* 3AC80 8004C470 23104300 */  subu       $v0, $v0, $v1
    /* 3AC84 8004C474 80100200 */  sll        $v0, $v0, 2
    /* 3AC88 8004C478 23104300 */  subu       $v0, $v0, $v1
    /* 3AC8C 8004C47C 80100200 */  sll        $v0, $v0, 2
    /* 3AC90 8004C480 21104300 */  addu       $v0, $v0, $v1
    /* 3AC94 8004C484 C0100200 */  sll        $v0, $v0, 3
    /* 3AC98 8004C488 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3AC9C 8004C48C 2130E200 */  addu       $a2, $a3, $v0
  .L8004C490:
    /* 3ACA0 8004C490 8801C294 */  lhu        $v0, 0x188($a2)
    /* 3ACA4 8004C494 00000000 */  nop
    /* 3ACA8 8004C498 0E004014 */  bnez       $v0, .L8004C4D4
    /* 3ACAC 8004C49C 80100500 */   sll       $v0, $a1, 2
    /* 3ACB0 8004C4A0 21108200 */  addu       $v0, $a0, $v0
    /* 3ACB4 8004C4A4 3C04468C */  lw         $a2, 0x43C($v0)
    /* 3ACB8 8004C4A8 00000000 */  nop
    /* 3ACBC 8004C4AC 5401C38C */  lw         $v1, 0x154($a2)
    /* 3ACC0 8004C4B0 00000000 */  nop
    /* 3ACC4 8004C4B4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 3ACC8 8004C4B8 03006104 */  bgez       $v1, .L8004C4C8
    /* 3ACCC 8004C4BC 5401C3AC */   sw        $v1, 0x154($a2)
    /* 3ACD0 8004C4C0 05000224 */  addiu      $v0, $zero, 0x5
    /* 3ACD4 8004C4C4 5401C2AC */  sw         $v0, 0x154($a2)
  .L8004C4C8:
    /* 3ACD8 8004C4C8 5401C68C */  lw         $a2, 0x154($a2)
    /* 3ACDC 8004C4CC 3931010C */  jal        func_8004C4E4
    /* 3ACE0 8004C4D0 00000000 */   nop
  .L8004C4D4:
    /* 3ACE4 8004C4D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3ACE8 8004C4D8 00000000 */  nop
    /* 3ACEC 8004C4DC 0800E003 */  jr         $ra
    /* 3ACF0 8004C4E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004C430
