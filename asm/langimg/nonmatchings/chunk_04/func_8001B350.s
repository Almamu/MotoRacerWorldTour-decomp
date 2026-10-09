nonmatching func_8001B350, 0x364

glabel func_8001B350
    /* 9B60 8001B350 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 9B64 8001B354 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 9B68 8001B358 7800BEAF */  sw         $fp, 0x78($sp)
    /* 9B6C 8001B35C 7400B7AF */  sw         $s7, 0x74($sp)
    /* 9B70 8001B360 7000B6AF */  sw         $s6, 0x70($sp)
    /* 9B74 8001B364 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 9B78 8001B368 6800B4AF */  sw         $s4, 0x68($sp)
    /* 9B7C 8001B36C 6400B3AF */  sw         $s3, 0x64($sp)
    /* 9B80 8001B370 6000B2AF */  sw         $s2, 0x60($sp)
    /* 9B84 8001B374 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 9B88 8001B378 5800B0AF */  sw         $s0, 0x58($sp)
    /* 9B8C 8001B37C 21B08000 */  addu       $s6, $a0, $zero
    /* 9B90 8001B380 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B94 8001B384 21A8A000 */  addu       $s5, $a1, $zero
    /* 9B98 8001B388 21280000 */  addu       $a1, $zero, $zero
    /* 9B9C 8001B38C 08000624 */  addiu      $a2, $zero, 0x8
    /* 9BA0 8001B390 0000C28E */  lw         $v0, 0x0($s6)
    /* 9BA4 8001B394 00000000 */  nop
    /* 9BA8 8001B398 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9BAC 8001B39C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 9BB0 8001B3A0 2000AB8F */  lw         $t3, 0x20($sp)
    /* 9BB4 8001B3A4 2400AC8F */  lw         $t4, 0x24($sp)
    /* 9BB8 8001B3A8 1800ABAF */  sw         $t3, 0x18($sp)
    /* 9BBC 8001B3AC 1C00ACAF */  sw         $t4, 0x1C($sp)
    /* 9BC0 8001B3B0 56D8020C */  jal        memset
    /* 9BC4 8001B3B4 0A001724 */   addiu     $s7, $zero, 0xA
    /* 9BC8 8001B3B8 0000D08E */  lw         $s0, 0x0($s6)
    /* 9BCC 8001B3BC 00000000 */  nop
    /* 9BD0 8001B3C0 03000016 */  bnez       $s0, .L8001B3D0
    /* 9BD4 8001B3C4 21A00000 */   addu      $s4, $zero, $zero
    /* 9BD8 8001B3C8 7F6D0008 */  j          .L8001B5FC
    /* 9BDC 8001B3CC 21B80000 */   addu      $s7, $zero, $zero
  .L8001B3D0:
    /* 9BE0 8001B3D0 2800BE27 */  addiu      $fp, $sp, 0x28
    /* 9BE4 8001B3D4 0800D326 */  addiu      $s3, $s6, 0x8
    /* 9BE8 8001B3D8 4000AB27 */  addiu      $t3, $sp, 0x40
    /* 9BEC 8001B3DC 4800AC27 */  addiu      $t4, $sp, 0x48
    /* 9BF0 8001B3E0 5000ABAF */  sw         $t3, 0x50($sp)
    /* 9BF4 8001B3E4 6E6D0008 */  j          .L8001B5B8
    /* 9BF8 8001B3E8 5400ACAF */   sw        $t4, 0x54($sp)
  .L8001B3EC:
    /* 9BFC 8001B3EC 28000286 */  lh         $v0, 0x28($s0)
    /* 9C00 8001B3F0 00000000 */  nop
    /* 9C04 8001B3F4 02004104 */  bgez       $v0, .L8001B400
    /* 9C08 8001B3F8 03000524 */   addiu     $a1, $zero, 0x3
    /* 9C0C 8001B3FC 02000524 */  addiu      $a1, $zero, 0x2
  .L8001B400:
    /* 9C10 8001B400 01800A24 */  addiu      $t2, $zero, -0x7FFF
    /* 9C14 8001B404 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 9C18 8001B408 3000A827 */  addiu      $t0, $sp, 0x30
    /* 9C1C 8001B40C 80100500 */  sll        $v0, $a1, 2
    /* 9C20 8001B410 21304800 */  addu       $a2, $v0, $t0
    /* 9C24 8001B414 0C000426 */  addiu      $a0, $s0, 0xC
    /* 9C28 8001B418 40180500 */  sll        $v1, $a1, 1
    /* 9C2C 8001B41C 21186400 */  addu       $v1, $v1, $a0
  .L8001B420:
    /* 9C30 8001B420 0000C28C */  lw         $v0, 0x0($a2)
    /* 9C34 8001B424 00000000 */  nop
    /* 9C38 8001B428 2A104700 */  slt        $v0, $v0, $a3
    /* 9C3C 8001B42C 0C004010 */  beqz       $v0, .L8001B460
    /* 9C40 8001B430 00000000 */   nop
    /* 9C44 8001B434 00006484 */  lh         $a0, 0x0($v1)
    /* 9C48 8001B438 00000000 */  nop
    /* 9C4C 8001B43C 03008A14 */  bne        $a0, $t2, .L8001B44C
    /* 9C50 8001B440 2190A000 */   addu      $s2, $a1, $zero
    /* 9C54 8001B444 176D0008 */  j          .L8001B45C
    /* 9C58 8001B448 21880000 */   addu      $s1, $zero, $zero
  .L8001B44C:
    /* 9C5C 8001B44C C0100400 */  sll        $v0, $a0, 3
    /* 9C60 8001B450 23104400 */  subu       $v0, $v0, $a0
    /* 9C64 8001B454 C0100200 */  sll        $v0, $v0, 3
    /* 9C68 8001B458 21880202 */  addu       $s1, $s0, $v0
  .L8001B45C:
    /* 9C6C 8001B45C 0000C78C */  lw         $a3, 0x0($a2)
  .L8001B460:
    /* 9C70 8001B460 FCFFC624 */  addiu      $a2, $a2, -0x4
    /* 9C74 8001B464 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9C78 8001B468 EDFFA914 */  bne        $a1, $t1, .L8001B420
    /* 9C7C 8001B46C FEFF6324 */   addiu     $v1, $v1, -0x2
    /* 9C80 8001B470 37002012 */  beqz       $s1, .L8001B550
    /* 9C84 8001B474 21200002 */   addu      $a0, $s0, $zero
    /* 9C88 8001B478 1800A58F */  lw         $a1, 0x18($sp)
    /* 9C8C 8001B47C 00000000 */  nop
    /* 9C90 8001B480 0D002516 */  bne        $s1, $a1, .L8001B4B8
    /* 9C94 8001B484 80101200 */   sll       $v0, $s2, 2
    /* 9C98 8001B488 21100201 */  addu       $v0, $t0, $v0
    /* 9C9C 8001B48C 0000438C */  lw         $v1, 0x0($v0)
    /* 9CA0 8001B490 00000000 */  nop
    /* 9CA4 8001B494 2A187400 */  slt        $v1, $v1, $s4
    /* 9CA8 8001B498 02006010 */  beqz       $v1, .L8001B4A4
    /* 9CAC 8001B49C 00000000 */   nop
    /* 9CB0 8001B4A0 21802002 */  addu       $s0, $s1, $zero
  .L8001B4A4:
    /* 9CB4 8001B4A4 0000A28E */  lw         $v0, 0x0($s5)
    /* 9CB8 8001B4A8 0400A38E */  lw         $v1, 0x4($s5)
    /* 9CBC 8001B4AC 0800A48E */  lw         $a0, 0x8($s5)
    /* 9CC0 8001B4B0 7C6D0008 */  j          .L8001B5F0
    /* 9CC4 8001B4B4 FFFF1224 */   addiu     $s2, $zero, -0x1
  .L8001B4B8:
    /* 9CC8 8001B4B8 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 9CCC 8001B4BC 00000000 */  nop
    /* 9CD0 8001B4C0 1A002216 */  bne        $s1, $v0, .L8001B52C
    /* 9CD4 8001B4C4 80101200 */   sll       $v0, $s2, 2
    /* 9CD8 8001B4C8 2000A48F */  lw         $a0, 0x20($sp)
    /* 9CDC 8001B4CC 00000000 */  nop
    /* 9CE0 8001B4D0 2A109400 */  slt        $v0, $a0, $s4
    /* 9CE4 8001B4D4 09004010 */  beqz       $v0, .L8001B4FC
    /* 9CE8 8001B4D8 80101200 */   sll       $v0, $s2, 2
    /* 9CEC 8001B4DC 21100201 */  addu       $v0, $t0, $v0
    /* 9CF0 8001B4E0 0000438C */  lw         $v1, 0x0($v0)
    /* 9CF4 8001B4E4 00000000 */  nop
    /* 9CF8 8001B4E8 2A188302 */  slt        $v1, $s4, $v1
    /* 9CFC 8001B4EC 0A006010 */  beqz       $v1, .L8001B518
    /* 9D00 8001B4F0 00000000 */   nop
    /* 9D04 8001B4F4 466D0008 */  j          .L8001B518
    /* 9D08 8001B4F8 21802002 */   addu      $s0, $s1, $zero
  .L8001B4FC:
    /* 9D0C 8001B4FC 21100201 */  addu       $v0, $t0, $v0
    /* 9D10 8001B500 0000438C */  lw         $v1, 0x0($v0)
    /* 9D14 8001B504 00000000 */  nop
    /* 9D18 8001B508 2A186400 */  slt        $v1, $v1, $a0
    /* 9D1C 8001B50C 02006010 */  beqz       $v1, .L8001B518
    /* 9D20 8001B510 21802002 */   addu      $s0, $s1, $zero
    /* 9D24 8001B514 2180A000 */  addu       $s0, $a1, $zero
  .L8001B518:
    /* 9D28 8001B518 0000A28E */  lw         $v0, 0x0($s5)
    /* 9D2C 8001B51C 0400A38E */  lw         $v1, 0x4($s5)
    /* 9D30 8001B520 0800A48E */  lw         $a0, 0x8($s5)
    /* 9D34 8001B524 7C6D0008 */  j          .L8001B5F0
    /* 9D38 8001B528 FFFF1224 */   addiu     $s2, $zero, -0x1
  .L8001B52C:
    /* 9D3C 8001B52C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9D40 8001B530 2000A38F */  lw         $v1, 0x20($sp)
    /* 9D44 8001B534 21100201 */  addu       $v0, $t0, $v0
    /* 9D48 8001B538 1C00A5AF */  sw         $a1, 0x1C($sp)
    /* 9D4C 8001B53C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9D50 8001B540 2400A3AF */  sw         $v1, 0x24($sp)
    /* 9D54 8001B544 0000548C */  lw         $s4, 0x0($v0)
    /* 9D58 8001B548 6B6D0008 */  j          .L8001B5AC
    /* 9D5C 8001B54C 21802002 */   addu      $s0, $s1, $zero
  .L8001B550:
    /* 9D60 8001B550 5000A68F */  lw         $a2, 0x50($sp)
    /* 9D64 8001B554 CF6B000C */  jal        func_8001AF3C
    /* 9D68 8001B558 21286002 */   addu      $a1, $s3, $zero
    /* 9D6C 8001B55C 21200002 */  addu       $a0, $s0, $zero
    /* 9D70 8001B560 80281200 */  sll        $a1, $s2, 2
    /* 9D74 8001B564 1C00A524 */  addiu      $a1, $a1, 0x1C
    /* 9D78 8001B568 21280502 */  addu       $a1, $s0, $a1
    /* 9D7C 8001B56C 5000A68F */  lw         $a2, 0x50($sp)
    /* 9D80 8001B570 5400AD8F */  lw         $t5, 0x54($sp)
    /* 9D84 8001B574 2800A727 */  addiu      $a3, $sp, 0x28
    /* 9D88 8001B578 906B000C */  jal        func_8001AE40
    /* 9D8C 8001B57C 1000ADAF */   sw        $t5, 0x10($sp)
    /* 9D90 8001B580 21200002 */  addu       $a0, $s0, $zero
    /* 9D94 8001B584 5400A58F */  lw         $a1, 0x54($sp)
    /* 9D98 8001B588 EC6B000C */  jal        func_8001AFB0
    /* 9D9C 8001B58C 21306002 */   addu      $a2, $s3, $zero
    /* 9DA0 8001B590 0800C28E */  lw         $v0, 0x8($s6)
    /* 9DA4 8001B594 0400638E */  lw         $v1, 0x4($s3)
    /* 9DA8 8001B598 0800648E */  lw         $a0, 0x8($s3)
    /* 9DAC 8001B59C 0000A2AE */  sw         $v0, 0x0($s5)
    /* 9DB0 8001B5A0 0400A3AE */  sw         $v1, 0x4($s5)
    /* 9DB4 8001B5A4 7F6D0008 */  j          .L8001B5FC
    /* 9DB8 8001B5A8 0800A4AE */   sw        $a0, 0x8($s5)
  .L8001B5AC:
    /* 9DBC 8001B5AC FFFFF726 */  addiu      $s7, $s7, -0x1
    /* 9DC0 8001B5B0 1400E012 */  beqz       $s7, .L8001B604
    /* 9DC4 8001B5B4 00000000 */   nop
  .L8001B5B8:
    /* 9DC8 8001B5B8 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 9DCC 8001B5BC 21200002 */  addu       $a0, $s0, $zero
    /* 9DD0 8001B5C0 2128A002 */  addu       $a1, $s5, $zero
    /* 9DD4 8001B5C4 CF6B000C */  jal        func_8001AF3C
    /* 9DD8 8001B5C8 2130C003 */   addu      $a2, $fp, $zero
    /* 9DDC 8001B5CC 21200002 */  addu       $a0, $s0, $zero
    /* 9DE0 8001B5D0 2128C003 */  addu       $a1, $fp, $zero
    /* 9DE4 8001B5D4 EF6A000C */  jal        func_8001ABBC
    /* 9DE8 8001B5D8 3000A627 */   addiu     $a2, $sp, 0x30
    /* 9DEC 8001B5DC 83FF4010 */  beqz       $v0, .L8001B3EC
    /* 9DF0 8001B5E0 21380000 */   addu      $a3, $zero, $zero
    /* 9DF4 8001B5E4 0000A28E */  lw         $v0, 0x0($s5)
    /* 9DF8 8001B5E8 0400A38E */  lw         $v1, 0x4($s5)
    /* 9DFC 8001B5EC 0800A48E */  lw         $a0, 0x8($s5)
  .L8001B5F0:
    /* 9E00 8001B5F0 0800C2AE */  sw         $v0, 0x8($s6)
    /* 9E04 8001B5F4 040063AE */  sw         $v1, 0x4($s3)
    /* 9E08 8001B5F8 080064AE */  sw         $a0, 0x8($s3)
  .L8001B5FC:
    /* 9E0C 8001B5FC 1F00E016 */  bnez       $s7, .L8001B67C
    /* 9E10 8001B600 00000000 */   nop
  .L8001B604:
    /* 9E14 8001B604 21880000 */  addu       $s1, $zero, $zero
    /* 9E18 8001B608 2128A002 */  addu       $a1, $s5, $zero
    /* 9E1C 8001B60C 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 9E20 8001B610 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 9E24 8001B614 21380000 */  addu       $a3, $zero, $zero
    /* 9E28 8001B618 6C0C508C */  lw         $s0, 0xC6C($v0)
    /* 9E2C 8001B61C 0000C68E */  lw         $a2, 0x0($s6)
    /* 9E30 8001B620 AB69000C */  jal        func_8001A6AC
    /* 9E34 8001B624 21200002 */   addu      $a0, $s0, $zero
    /* 9E38 8001B628 21204000 */  addu       $a0, $v0, $zero
    /* 9E3C 8001B62C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 9E40 8001B630 05008310 */  beq        $a0, $v1, .L8001B648
    /* 9E44 8001B634 C0100400 */   sll       $v0, $a0, 3
    /* 9E48 8001B638 23104400 */  subu       $v0, $v0, $a0
    /* 9E4C 8001B63C 0400038E */  lw         $v1, 0x4($s0)
    /* 9E50 8001B640 C0100200 */  sll        $v0, $v0, 3
    /* 9E54 8001B644 21886200 */  addu       $s1, $v1, $v0
  .L8001B648:
    /* 9E58 8001B648 21802002 */  addu       $s0, $s1, $zero
    /* 9E5C 8001B64C 0A000012 */  beqz       $s0, .L8001B678
    /* 9E60 8001B650 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 9E64 8001B654 0000D0AE */  sw         $s0, 0x0($s6)
    /* 9E68 8001B658 0000A38E */  lw         $v1, 0x0($s5)
    /* 9E6C 8001B65C 0400A48E */  lw         $a0, 0x4($s5)
    /* 9E70 8001B660 0800A58E */  lw         $a1, 0x8($s5)
    /* 9E74 8001B664 0800C226 */  addiu      $v0, $s6, 0x8
    /* 9E78 8001B668 0800C3AE */  sw         $v1, 0x8($s6)
    /* 9E7C 8001B66C 040044AC */  sw         $a0, 0x4($v0)
    /* 9E80 8001B670 9F6D0008 */  j          .L8001B67C
    /* 9E84 8001B674 080045AC */   sw        $a1, 0x8($v0)
  .L8001B678:
    /* 9E88 8001B678 0000D08E */  lw         $s0, 0x0($s6)
  .L8001B67C:
    /* 9E8C 8001B67C 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 9E90 8001B680 7800BE8F */  lw         $fp, 0x78($sp)
    /* 9E94 8001B684 7400B78F */  lw         $s7, 0x74($sp)
    /* 9E98 8001B688 21104002 */  addu       $v0, $s2, $zero
    /* 9E9C 8001B68C 0000D0AE */  sw         $s0, 0x0($s6)
    /* 9EA0 8001B690 7000B68F */  lw         $s6, 0x70($sp)
    /* 9EA4 8001B694 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 9EA8 8001B698 6800B48F */  lw         $s4, 0x68($sp)
    /* 9EAC 8001B69C 6400B38F */  lw         $s3, 0x64($sp)
    /* 9EB0 8001B6A0 6000B28F */  lw         $s2, 0x60($sp)
    /* 9EB4 8001B6A4 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 9EB8 8001B6A8 5800B08F */  lw         $s0, 0x58($sp)
    /* 9EBC 8001B6AC 0800E003 */  jr         $ra
    /* 9EC0 8001B6B0 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_8001B350
