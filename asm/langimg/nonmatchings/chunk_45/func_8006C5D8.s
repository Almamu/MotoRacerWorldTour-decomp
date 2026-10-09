nonmatching func_8006C5D8, 0x6C

glabel func_8006C5D8
    /* 5ADE8 8006C5D8 21380000 */  addu       $a3, $zero, $zero
    /* 5ADEC 8006C5DC 21180000 */  addu       $v1, $zero, $zero
    /* 5ADF0 8006C5E0 21508000 */  addu       $t2, $a0, $zero
    /* 5ADF4 8006C5E4 2148A000 */  addu       $t1, $a1, $zero
    /* 5ADF8 8006C5E8 2140C000 */  addu       $t0, $a2, $zero
    /* 5ADFC 8006C5EC 0000A4AF */  sw         $a0, 0x0($sp)
    /* 5AE00 8006C5F0 0400A5AF */  sw         $a1, 0x4($sp)
    /* 5AE04 8006C5F4 0800A6AF */  sw         $a2, 0x8($sp)
    /* 5AE08 8006C5F8 07106A00 */  srav       $v0, $t2, $v1
  .L8006C5FC:
    /* 5AE0C 8006C5FC 01004230 */  andi       $v0, $v0, 0x1
    /* 5AE10 8006C600 02004010 */  beqz       $v0, .L8006C60C
    /* 5AE14 8006C604 07106900 */   srav      $v0, $t1, $v1
    /* 5AE18 8006C608 0100E724 */  addiu      $a3, $a3, 0x1
  .L8006C60C:
    /* 5AE1C 8006C60C 01004230 */  andi       $v0, $v0, 0x1
    /* 5AE20 8006C610 02004010 */  beqz       $v0, .L8006C61C
    /* 5AE24 8006C614 07106800 */   srav      $v0, $t0, $v1
    /* 5AE28 8006C618 0100E724 */  addiu      $a3, $a3, 0x1
  .L8006C61C:
    /* 5AE2C 8006C61C 01004230 */  andi       $v0, $v0, 0x1
    /* 5AE30 8006C620 02004010 */  beqz       $v0, .L8006C62C
    /* 5AE34 8006C624 00000000 */   nop
    /* 5AE38 8006C628 0100E724 */  addiu      $a3, $a3, 0x1
  .L8006C62C:
    /* 5AE3C 8006C62C 01006324 */  addiu      $v1, $v1, 0x1
    /* 5AE40 8006C630 20006228 */  slti       $v0, $v1, 0x20
    /* 5AE44 8006C634 F1FF4014 */  bnez       $v0, .L8006C5FC
    /* 5AE48 8006C638 07106A00 */   srav      $v0, $t2, $v1
    /* 5AE4C 8006C63C 0800E003 */  jr         $ra
    /* 5AE50 8006C640 0100E230 */   andi      $v0, $a3, 0x1
endlabel func_8006C5D8
