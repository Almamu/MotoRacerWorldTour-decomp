nonmatching func_8006A994, 0x9C

glabel func_8006A994
    /* 591A4 8006A994 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 591A8 8006A998 1000B0AF */  sw         $s0, 0x10($sp)
    /* 591AC 8006A99C FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 591B0 8006A9A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 591B4 8006A9A4 21888000 */  addu       $s1, $a0, $zero
    /* 591B8 8006A9A8 2120A000 */  addu       $a0, $a1, $zero
    /* 591BC 8006A9AC 003C0700 */  sll        $a3, $a3, 16
    /* 591C0 8006A9B0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 591C4 8006A9B4 0800228E */  lw         $v0, 0x8($s1)
    /* 591C8 8006A9B8 00000000 */  nop
    /* 591CC 8006A9BC 16005010 */  beq        $v0, $s0, .L8006AA18
    /* 591D0 8006A9C0 033C0700 */   sra       $a3, $a3, 16
    /* 591D4 8006A9C4 1400C010 */  beqz       $a2, .L8006AA18
    /* 591D8 8006A9C8 00000000 */   nop
    /* 591DC 8006A9CC 21804000 */  addu       $s0, $v0, $zero
    /* 591E0 8006A9D0 0000238E */  lw         $v1, 0x0($s1)
    /* 591E4 8006A9D4 80101000 */  sll        $v0, $s0, 2
    /* 591E8 8006A9D8 21104300 */  addu       $v0, $v0, $v1
    /* 591EC 8006A9DC 000046AC */  sw         $a2, 0x0($v0)
    /* 591F0 8006A9E0 0D80053C */  lui        $a1, %hi(D_800D60EC)
    /* 591F4 8006A9E4 EC60A58C */  lw         $a1, %lo(D_800D60EC)($a1)
    /* 591F8 8006A9E8 0C00C38C */  lw         $v1, 0xC($a2)
    /* 591FC 8006A9EC 0200C4A0 */  sb         $a0, 0x2($a2)
    /* 59200 8006A9F0 0300C7A0 */  sb         $a3, 0x3($a2)
    /* 59204 8006A9F4 0800C5AC */  sw         $a1, 0x8($a2)
    /* 59208 8006A9F8 20006484 */  lh         $a0, 0x20($v1)
    /* 5920C 8006A9FC 2400628C */  lw         $v0, 0x24($v1)
    /* 59210 8006AA00 00000000 */  nop
    /* 59214 8006AA04 09F84000 */  jalr       $v0
    /* 59218 8006AA08 2120C400 */   addu      $a0, $a2, $a0
    /* 5921C 8006AA0C 40AB010C */  jal        func_8006AD00
    /* 59220 8006AA10 21202002 */   addu      $a0, $s1, $zero
    /* 59224 8006AA14 080022AE */  sw         $v0, 0x8($s1)
  .L8006AA18:
    /* 59228 8006AA18 21100002 */  addu       $v0, $s0, $zero
    /* 5922C 8006AA1C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 59230 8006AA20 1400B18F */  lw         $s1, 0x14($sp)
    /* 59234 8006AA24 1000B08F */  lw         $s0, 0x10($sp)
    /* 59238 8006AA28 0800E003 */  jr         $ra
    /* 5923C 8006AA2C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006A994
