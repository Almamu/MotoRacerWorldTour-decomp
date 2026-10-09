nonmatching func_8006D274, 0x6C

glabel func_8006D274
    /* 5BA84 8006D274 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5BA88 8006D278 21400000 */  addu       $t0, $zero, $zero
    /* 5BA8C 8006D27C 21488000 */  addu       $t1, $a0, $zero
    /* 5BA90 8006D280 2138C000 */  addu       $a3, $a2, $zero
    /* 5BA94 8006D284 3F00A380 */  lb         $v1, 0x3F($a1)
    /* 5BA98 8006D288 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5BA9C 8006D28C 10006210 */  beq        $v1, $v0, .L8006D2D0
    /* 5BAA0 8006D290 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5BAA4 8006D294 40300300 */  sll        $a2, $v1, 1
    /* 5BAA8 8006D298 2130C300 */  addu       $a2, $a2, $v1
    /* 5BAAC 8006D29C 80300600 */  sll        $a2, $a2, 2
    /* 5BAB0 8006D2A0 80200700 */  sll        $a0, $a3, 2
    /* 5BAB4 8006D2A4 21208700 */  addu       $a0, $a0, $a3
    /* 5BAB8 8006D2A8 80200400 */  sll        $a0, $a0, 2
    /* 5BABC 8006D2AC 23208700 */  subu       $a0, $a0, $a3
    /* 5BAC0 8006D2B0 8009228D */  lw         $v0, 0x980($t1)
    /* 5BAC4 8006D2B4 80210400 */  sll        $a0, $a0, 6
    /* 5BAC8 8006D2B8 0400438C */  lw         $v1, 0x4($v0)
    /* 5BACC 8006D2BC 21202401 */  addu       $a0, $t1, $a0
    /* 5BAD0 8006D2C0 F4B3010C */  jal        func_8006CFD0
    /* 5BAD4 8006D2C4 21306600 */   addu      $a2, $v1, $a2
    /* 5BAD8 8006D2C8 27100200 */  nor        $v0, $zero, $v0
    /* 5BADC 8006D2CC 2B400200 */  sltu       $t0, $zero, $v0
  .L8006D2D0:
    /* 5BAE0 8006D2D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5BAE4 8006D2D4 21100001 */  addu       $v0, $t0, $zero
    /* 5BAE8 8006D2D8 0800E003 */  jr         $ra
    /* 5BAEC 8006D2DC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006D274
