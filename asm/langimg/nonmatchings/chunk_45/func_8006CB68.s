nonmatching func_8006CB68, 0xD8

glabel func_8006CB68
    /* 5B378 8006CB68 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5B37C 8006CB6C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 5B380 8006CB70 21908000 */  addu       $s2, $a0, $zero
    /* 5B384 8006CB74 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5B388 8006CB78 21800000 */  addu       $s0, $zero, $zero
    /* 5B38C 8006CB7C 1000A5A7 */  sh         $a1, 0x10($sp)
    /* 5B390 8006CB80 002C0500 */  sll        $a1, $a1, 16
    /* 5B394 8006CB84 4000A28F */  lw         $v0, 0x40($sp)
    /* 5B398 8006CB88 4400A38F */  lw         $v1, 0x44($sp)
    /* 5B39C 8006CB8C 032C0500 */  sra        $a1, $a1, 16
    /* 5B3A0 8006CB90 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 5B3A4 8006CB94 2400B1AF */  sw         $s1, 0x24($sp)
    /* 5B3A8 8006CB98 1200A6A7 */  sh         $a2, 0x12($sp)
    /* 5B3AC 8006CB9C 1400A7A7 */  sh         $a3, 0x14($sp)
    /* 5B3B0 8006CBA0 1800A3A7 */  sh         $v1, 0x18($sp)
    /* 5B3B4 8006CBA4 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 5B3B8 8006CBA8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5B3BC 8006CBAC 0700A210 */  beq        $a1, $v0, .L8006CBCC
    /* 5B3C0 8006CBB0 1000A327 */   addiu     $v1, $sp, 0x10
    /* 5B3C4 8006CBB4 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L8006CBB8:
    /* 5B3C8 8006CBB8 02006324 */  addiu      $v1, $v1, 0x2
    /* 5B3CC 8006CBBC 00006284 */  lh         $v0, 0x0($v1)
    /* 5B3D0 8006CBC0 00000000 */  nop
    /* 5B3D4 8006CBC4 FCFF4414 */  bne        $v0, $a0, .L8006CBB8
    /* 5B3D8 8006CBC8 01001026 */   addiu     $s0, $s0, 0x1
  .L8006CBCC:
    /* 5B3DC 8006CBCC C0191200 */  sll        $v1, $s2, 7
    /* 5B3E0 8006CBD0 23187200 */  subu       $v1, $v1, $s2
    /* 5B3E4 8006CBD4 C6D8020C */  jal        func_800B6318
    /* 5B3E8 8006CBD8 03920300 */   sra       $s2, $v1, 8
    /* 5B3EC 8006CBDC 1A005000 */  div        $zero, $v0, $s0
    /* 5B3F0 8006CBE0 10300000 */  mfhi       $a2
    /* 5B3F4 8006CBE4 0D80113C */  lui        $s1, %hi(D_800D11D0)
    /* 5B3F8 8006CBE8 D0113126 */  addiu      $s1, $s1, %lo(D_800D11D0)
    /* 5B3FC 8006CBEC 21202002 */  addu       $a0, $s1, $zero
    /* 5B400 8006CBF0 40300600 */  sll        $a2, $a2, 1
    /* 5B404 8006CBF4 2110A603 */  addu       $v0, $sp, $a2
    /* 5B408 8006CBF8 10004584 */  lh         $a1, 0x10($v0)
    /* 5B40C 8006CBFC A652000C */  jal        func_80014A98
    /* 5B410 8006CC00 21300000 */   addu      $a2, $zero, $zero
    /* 5B414 8006CC04 21202002 */  addu       $a0, $s1, $zero
    /* 5B418 8006CC08 21804000 */  addu       $s0, $v0, $zero
    /* 5B41C 8006CC0C 21280002 */  addu       $a1, $s0, $zero
    /* 5B420 8006CC10 DA50000C */  jal        func_80014368
    /* 5B424 8006CC14 21304002 */   addu      $a2, $s2, $zero
    /* 5B428 8006CC18 21202002 */  addu       $a0, $s1, $zero
    /* 5B42C 8006CC1C C652000C */  jal        func_80014B18
    /* 5B430 8006CC20 21280002 */   addu      $a1, $s0, $zero
    /* 5B434 8006CC24 21100002 */  addu       $v0, $s0, $zero
    /* 5B438 8006CC28 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 5B43C 8006CC2C 2800B28F */  lw         $s2, 0x28($sp)
    /* 5B440 8006CC30 2400B18F */  lw         $s1, 0x24($sp)
    /* 5B444 8006CC34 2000B08F */  lw         $s0, 0x20($sp)
    /* 5B448 8006CC38 0800E003 */  jr         $ra
    /* 5B44C 8006CC3C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8006CB68
