/* Handwritten function */
nonmatching func_80082468, 0x134

glabel func_80082468
    /* 70C78 80082468 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 70C7C 8008246C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 70C80 80082470 21988000 */  addu       $s3, $a0, $zero
    /* 70C84 80082474 3000B4AF */  sw         $s4, 0x30($sp)
    /* 70C88 80082478 20007426 */  addiu      $s4, $s3, 0x20
    /* 70C8C 8008247C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 70C90 80082480 2800B2AF */  sw         $s2, 0x28($sp)
    /* 70C94 80082484 2400B1AF */  sw         $s1, 0x24($sp)
    /* 70C98 80082488 2000B0AF */  sw         $s0, 0x20($sp)
    /* 70C9C 8008248C 44007286 */  lh         $s2, 0x44($s3)
    /* 70CA0 80082490 5800718E */  lw         $s1, 0x58($s3)
    /* 70CA4 80082494 0000628E */  lw         $v0, 0x0($s3)
    /* 70CA8 80082498 0400638E */  lw         $v1, 0x4($s3)
    /* 70CAC 8008249C 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 70CB0 800824A0 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 70CB4 800824A4 0800628E */  lw         $v0, 0x8($s3)
    /* 70CB8 800824A8 0C00638E */  lw         $v1, 0xC($s3)
    /* 70CBC 800824AC 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 70CC0 800824B0 1000628E */  lw         $v0, 0x10($s3)
    /* 70CC4 800824B4 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 70CC8 800824B8 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 70CCC 800824BC 1400628E */  lw         $v0, 0x14($s3)
    /* 70CD0 800824C0 00000000 */  nop
    /* 70CD4 800824C4 03110200 */  sra        $v0, $v0, 4
    /* 70CD8 800824C8 0028C248 */  ctc2       $v0, $5 /* handwritten instruction */
    /* 70CDC 800824CC 1800638E */  lw         $v1, 0x18($s3)
    /* 70CE0 800824D0 00000000 */  nop
    /* 70CE4 800824D4 03190300 */  sra        $v1, $v1, 4
    /* 70CE8 800824D8 0030C348 */  ctc2       $v1, $6 /* handwritten instruction */
    /* 70CEC 800824DC 1C00628E */  lw         $v0, 0x1C($s3)
    /* 70CF0 800824E0 00000000 */  nop
    /* 70CF4 800824E4 03110200 */  sra        $v0, $v0, 4
    /* 70CF8 800824E8 0038C248 */  ctc2       $v0, $7 /* handwritten instruction */
    /* 70CFC 800824EC 23004012 */  beqz       $s2, .L8008257C
    /* 70D00 800824F0 02003026 */   addiu     $s0, $s1, 0x2
  .L800824F4:
    /* 70D04 800824F4 000020CA */  lwc2       $0, 0x0($s1)
    /* 70D08 800824F8 040021CA */  lwc2       $1, 0x4($s1)
    /* 70D0C 800824FC 00000000 */  nop
    /* 70D10 80082500 00000000 */  nop
    /* 70D14 80082504 1200484A */  mvmva      1, 0, 0, 0, 0
    /* 70D18 80082508 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* 70D1C 8008250C 00D00348 */  mfc2       $v1, $26 /* handwritten instruction */
    /* 70D20 80082510 00D80648 */  mfc2       $a2, $27 /* handwritten instruction */
    /* 70D24 80082514 00110200 */  sll        $v0, $v0, 4
    /* 70D28 80082518 00190300 */  sll        $v1, $v1, 4
    /* 70D2C 8008251C 00310600 */  sll        $a2, $a2, 4
    /* 70D30 80082520 21208002 */  addu       $a0, $s4, $zero
    /* 70D34 80082524 1000A527 */  addiu      $a1, $sp, 0x10
    /* 70D38 80082528 1000A2AF */  sw         $v0, 0x10($sp)
    /* 70D3C 8008252C 1400A3AF */  sw         $v1, 0x14($sp)
    /* 70D40 80082530 D46C000C */  jal        func_8001B350
    /* 70D44 80082534 1800A6AF */   sw        $a2, 0x18($sp)
    /* 70D48 80082538 0000848E */  lw         $a0, 0x0($s4)
    /* 70D4C 8008253C 00000000 */  nop
    /* 70D50 80082540 09008010 */  beqz       $a0, .L80082568
    /* 70D54 80082544 1000A527 */   addiu     $a1, $sp, 0x10
    /* 70D58 80082548 FD6B000C */  jal        func_8001AFF4
    /* 70D5C 8008254C 21300000 */   addu      $a2, $zero, $zero
    /* 70D60 80082550 1800638E */  lw         $v1, 0x18($s3)
    /* 70D64 80082554 00000000 */  nop
    /* 70D68 80082558 23104300 */  subu       $v0, $v0, $v1
    /* 70D6C 8008255C 03110200 */  sra        $v0, $v0, 4
    /* 70D70 80082560 5B090208 */  j          .L8008256C
    /* 70D74 80082564 000002A6 */   sh        $v0, 0x0($s0)
  .L80082568:
    /* 70D78 80082568 000000A6 */  sh         $zero, 0x0($s0)
  .L8008256C:
    /* 70D7C 8008256C 08001026 */  addiu      $s0, $s0, 0x8
    /* 70D80 80082570 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 70D84 80082574 DFFF4016 */  bnez       $s2, .L800824F4
    /* 70D88 80082578 08003126 */   addiu     $s1, $s1, 0x8
  .L8008257C:
    /* 70D8C 8008257C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 70D90 80082580 3000B48F */  lw         $s4, 0x30($sp)
    /* 70D94 80082584 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 70D98 80082588 2800B28F */  lw         $s2, 0x28($sp)
    /* 70D9C 8008258C 2400B18F */  lw         $s1, 0x24($sp)
    /* 70DA0 80082590 2000B08F */  lw         $s0, 0x20($sp)
    /* 70DA4 80082594 0800E003 */  jr         $ra
    /* 70DA8 80082598 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_80082468
