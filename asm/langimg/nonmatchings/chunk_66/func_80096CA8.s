nonmatching func_80096CA8, 0xDC

glabel func_80096CA8
    /* 854B8 80096CA8 0400A5AF */  sw         $a1, 0x4($sp)
    /* 854BC 80096CAC 0800A6AF */  sw         $a2, 0x8($sp)
    /* 854C0 80096CB0 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 854C4 80096CB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 854C8 80096CB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 854CC 80096CBC 3400B127 */  addiu      $s1, $sp, 0x34
    /* 854D0 80096CC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 854D4 80096CC4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 854D8 80096CC8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 854DC 80096CCC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 854E0 80096CD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 854E4 80096CD4 2C00A5AF */  sw         $a1, 0x2C($sp)
    /* 854E8 80096CD8 FCFF308E */  lw         $s0, -0x4($s1)
    /* 854EC 80096CDC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 854F0 80096CE0 20000212 */  beq        $s0, $v0, .L80096D64
    /* 854F4 80096CE4 21908000 */   addu      $s2, $a0, $zero
    /* 854F8 80096CE8 01001424 */  addiu      $s4, $zero, 0x1
    /* 854FC 80096CEC FFFF1324 */  addiu      $s3, $zero, -0x1
  .L80096CF0:
    /* 85500 80096CF0 FFFF0226 */  addiu      $v0, $s0, -0x1
    /* 85504 80096CF4 04105400 */  sllv       $v0, $s4, $v0
    /* 85508 80096CF8 23180200 */  negu       $v1, $v0
    /* 8550C 80096CFC 2C00A48F */  lw         $a0, 0x2C($sp)
    /* 85510 80096D00 00000000 */  nop
    /* 85514 80096D04 2A188300 */  slt        $v1, $a0, $v1
    /* 85518 80096D08 0D006014 */  bnez       $v1, .L80096D40
    /* 8551C 80096D0C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 85520 80096D10 2A104400 */  slt        $v0, $v0, $a0
    /* 85524 80096D14 0B004014 */  bnez       $v0, .L80096D44
    /* 85528 80096D18 21204002 */   addu      $a0, $s2, $zero
    /* 8552C 80096D1C 01000524 */  addiu      $a1, $zero, 0x1
    /* 85530 80096D20 B35A020C */  jal        func_80096ACC
    /* 85534 80096D24 01000624 */   addiu     $a2, $zero, 0x1
    /* 85538 80096D28 21204002 */  addu       $a0, $s2, $zero
    /* 8553C 80096D2C 2C00A68F */  lw         $a2, 0x2C($sp)
    /* 85540 80096D30 B35A020C */  jal        func_80096ACC
    /* 85544 80096D34 21280002 */   addu      $a1, $s0, $zero
    /* 85548 80096D38 595B0208 */  j          .L80096D64
    /* 8554C 80096D3C 00000000 */   nop
  .L80096D40:
    /* 85550 80096D40 21204002 */  addu       $a0, $s2, $zero
  .L80096D44:
    /* 85554 80096D44 01000524 */  addiu      $a1, $zero, 0x1
    /* 85558 80096D48 B35A020C */  jal        func_80096ACC
    /* 8555C 80096D4C 21300000 */   addu      $a2, $zero, $zero
    /* 85560 80096D50 04003126 */  addiu      $s1, $s1, 0x4
    /* 85564 80096D54 FCFF228E */  lw         $v0, -0x4($s1)
    /* 85568 80096D58 00000000 */  nop
    /* 8556C 80096D5C E4FF5314 */  bne        $v0, $s3, .L80096CF0
    /* 85570 80096D60 21804000 */   addu      $s0, $v0, $zero
  .L80096D64:
    /* 85574 80096D64 2400BF8F */  lw         $ra, 0x24($sp)
    /* 85578 80096D68 2000B48F */  lw         $s4, 0x20($sp)
    /* 8557C 80096D6C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 85580 80096D70 1800B28F */  lw         $s2, 0x18($sp)
    /* 85584 80096D74 1400B18F */  lw         $s1, 0x14($sp)
    /* 85588 80096D78 1000B08F */  lw         $s0, 0x10($sp)
    /* 8558C 80096D7C 0800E003 */  jr         $ra
    /* 85590 80096D80 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80096CA8
