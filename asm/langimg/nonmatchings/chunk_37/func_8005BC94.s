nonmatching func_8005BC94, 0x150

glabel func_8005BC94
    /* 4A4A4 8005BC94 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 4A4A8 8005BC98 3400B1AF */  sw         $s1, 0x34($sp)
    /* 4A4AC 8005BC9C 21888000 */  addu       $s1, $a0, $zero
    /* 4A4B0 8005BCA0 4800BFAF */  sw         $ra, 0x48($sp)
    /* 4A4B4 8005BCA4 4400B5AF */  sw         $s5, 0x44($sp)
    /* 4A4B8 8005BCA8 4000B4AF */  sw         $s4, 0x40($sp)
    /* 4A4BC 8005BCAC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 4A4C0 8005BCB0 3800B2AF */  sw         $s2, 0x38($sp)
    /* 4A4C4 8005BCB4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 4A4C8 8005BCB8 7803228E */  lw         $v0, 0x378($s1)
    /* 4A4CC 8005BCBC 00000000 */  nop
    /* 4A4D0 8005BCC0 4A1F4380 */  lb         $v1, 0x1F4A($v0)
    /* 4A4D4 8005BCC4 00000000 */  nop
    /* 4A4D8 8005BCC8 3D006018 */  blez       $v1, .L8005BDC0
    /* 4A4DC 8005BCCC 2180A000 */   addu      $s0, $a1, $zero
    /* 4A4E0 8005BCD0 21900000 */  addu       $s2, $zero, $zero
    /* 4A4E4 8005BCD4 01001524 */  addiu      $s5, $zero, 0x1
    /* 4A4E8 8005BCD8 1C001426 */  addiu      $s4, $s0, 0x1C
    /* 4A4EC 8005BCDC 01001324 */  addiu      $s3, $zero, 0x1
    /* 4A4F0 8005BCE0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A4F4 8005BCE4 200002A6 */  sh         $v0, 0x20($s0)
    /* 4A4F8 8005BCE8 2800A0A7 */  sh         $zero, 0x28($sp)
  .L8005BCEC:
    /* 4A4FC 8005BCEC 7803228E */  lw         $v0, 0x378($s1)
    /* 4A500 8005BCF0 2800A587 */  lh         $a1, 0x28($sp)
    /* 4A504 8005BCF4 4A1F4380 */  lb         $v1, 0x1F4A($v0)
    /* 4A508 8005BCF8 00000000 */  nop
    /* 4A50C 8005BCFC 2A18A300 */  slt        $v1, $a1, $v1
    /* 4A510 8005BD00 2F006010 */  beqz       $v1, .L8005BDC0
    /* 4A514 8005BD04 00000000 */   nop
    /* 4A518 8005BD08 220015A6 */  sh         $s5, 0x22($s0)
    /* 4A51C 8005BD0C 7803248E */  lw         $a0, 0x378($s1)
    /* 4A520 8005BD10 0BC5010C */  jal        func_8007142C
    /* 4A524 8005BD14 401E8424 */   addiu     $a0, $a0, 0x1E40
    /* 4A528 8005BD18 22000586 */  lh         $a1, 0x22($s0)
    /* 4A52C 8005BD1C 21204000 */  addu       $a0, $v0, $zero
    /* 4A530 8005BD20 66C3010C */  jal        func_80070D98
    /* 4A534 8005BD24 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 4A538 8005BD28 2800A527 */  addiu      $a1, $sp, 0x28
    /* 4A53C 8005BD2C 7803248E */  lw         $a0, 0x378($s1)
    /* 4A540 8005BD30 22000626 */  addiu      $a2, $s0, 0x22
    /* 4A544 8005BD34 1000B4AF */  sw         $s4, 0x10($sp)
    /* 4A548 8005BD38 1400B3AF */  sw         $s3, 0x14($sp)
    /* 4A54C 8005BD3C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4A550 8005BD40 2000A2AF */  sw         $v0, 0x20($sp)
    /* 4A554 8005BD44 20000286 */  lh         $v0, 0x20($s0)
    /* 4A558 8005BD48 22000386 */  lh         $v1, 0x22($s0)
    /* 4A55C 8005BD4C 00140200 */  sll        $v0, $v0, 16
    /* 4A560 8005BD50 25104300 */  or         $v0, $v0, $v1
    /* 4A564 8005BD54 1800A2AF */  sw         $v0, 0x18($sp)
    /* 4A568 8005BD58 3000078E */  lw         $a3, 0x30($s0)
    /* 4A56C 8005BD5C 401E8424 */  addiu      $a0, $a0, 0x1E40
    /* 4A570 8005BD60 19C5010C */  jal        func_80071464
    /* 4A574 8005BD64 6400E724 */   addiu     $a3, $a3, 0x64
    /* 4A578 8005BD68 10004010 */  beqz       $v0, .L8005BDAC
    /* 4A57C 8005BD6C 00000000 */   nop
    /* 4A580 8005BD70 2800A597 */  lhu        $a1, 0x28($sp)
    /* 4A584 8005BD74 22000296 */  lhu        $v0, 0x22($s0)
    /* 4A588 8005BD78 200005A6 */  sh         $a1, 0x20($s0)
    /* 4A58C 8005BD7C 240005A6 */  sh         $a1, 0x24($s0)
    /* 4A590 8005BD80 002C0500 */  sll        $a1, $a1, 16
    /* 4A594 8005BD84 260002A6 */  sh         $v0, 0x26($s0)
    /* 4A598 8005BD88 7803248E */  lw         $a0, 0x378($s1)
    /* 4A59C 8005BD8C 032C0500 */  sra        $a1, $a1, 16
    /* 4A5A0 8005BD90 0BC5010C */  jal        func_8007142C
    /* 4A5A4 8005BD94 401E8424 */   addiu     $a0, $a0, 0x1E40
    /* 4A5A8 8005BD98 02004380 */  lb         $v1, 0x2($v0)
    /* 4A5AC 8005BD9C 01001224 */  addiu      $s2, $zero, 0x1
    /* 4A5B0 8005BDA0 27180300 */  nor        $v1, $zero, $v1
    /* 4A5B4 8005BDA4 0100632C */  sltiu      $v1, $v1, 0x1
    /* 4A5B8 8005BDA8 450003A2 */  sb         $v1, 0x45($s0)
  .L8005BDAC:
    /* 4A5BC 8005BDAC 2800A297 */  lhu        $v0, 0x28($sp)
    /* 4A5C0 8005BDB0 00000000 */  nop
    /* 4A5C4 8005BDB4 01004224 */  addiu      $v0, $v0, 0x1
    /* 4A5C8 8005BDB8 CCFF4012 */  beqz       $s2, .L8005BCEC
    /* 4A5CC 8005BDBC 2800A2A7 */   sh        $v0, 0x28($sp)
  .L8005BDC0:
    /* 4A5D0 8005BDC0 4800BF8F */  lw         $ra, 0x48($sp)
    /* 4A5D4 8005BDC4 4400B58F */  lw         $s5, 0x44($sp)
    /* 4A5D8 8005BDC8 4000B48F */  lw         $s4, 0x40($sp)
    /* 4A5DC 8005BDCC 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 4A5E0 8005BDD0 3800B28F */  lw         $s2, 0x38($sp)
    /* 4A5E4 8005BDD4 3400B18F */  lw         $s1, 0x34($sp)
    /* 4A5E8 8005BDD8 3000B08F */  lw         $s0, 0x30($sp)
    /* 4A5EC 8005BDDC 0800E003 */  jr         $ra
    /* 4A5F0 8005BDE0 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8005BC94
