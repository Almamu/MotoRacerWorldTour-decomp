nonmatching func_8004C38C, 0x70

glabel func_8004C38C
    /* 3AB9C 8004C38C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3ABA0 8004C390 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3ABA4 8004C394 21888000 */  addu       $s1, $a0, $zero
    /* 3ABA8 8004C398 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3ABAC 8004C39C 01001024 */  addiu      $s0, $zero, 0x1
    /* 3ABB0 8004C3A0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3ABB4 8004C3A4 21202002 */  addu       $a0, $s1, $zero
  .L8004C3A8:
    /* 3ABB8 8004C3A8 D931010C */  jal        func_8004C764
    /* 3ABBC 8004C3AC 21280002 */   addu      $a1, $s0, $zero
    /* 3ABC0 8004C3B0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 3ABC4 8004C3B4 FCFF0106 */  bgez       $s0, .L8004C3A8
    /* 3ABC8 8004C3B8 21202002 */   addu      $a0, $s1, $zero
    /* 3ABCC 8004C3BC 0C03268E */  lw         $a2, 0x30C($s1)
    /* 3ABD0 8004C3C0 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 3ABD4 8004C3C4 0800D010 */  beq        $a2, $s0, .L8004C3E8
    /* 3ABD8 8004C3C8 00000000 */   nop
    /* 3ABDC 8004C3CC 0403228E */  lw         $v0, 0x304($s1)
    /* 3ABE0 8004C3D0 00000000 */  nop
    /* 3ABE4 8004C3D4 04004014 */  bnez       $v0, .L8004C3E8
    /* 3ABE8 8004C3D8 00000000 */   nop
    /* 3ABEC 8004C3DC 3931010C */  jal        func_8004C4E4
    /* 3ABF0 8004C3E0 21280000 */   addu      $a1, $zero, $zero
    /* 3ABF4 8004C3E4 0C0330AE */  sw         $s0, 0x30C($s1)
  .L8004C3E8:
    /* 3ABF8 8004C3E8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3ABFC 8004C3EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 3AC00 8004C3F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 3AC04 8004C3F4 0800E003 */  jr         $ra
    /* 3AC08 8004C3F8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8004C38C
