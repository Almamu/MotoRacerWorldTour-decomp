nonmatching func_8007C354, 0xD4

glabel func_8007C354
    /* 6AB64 8007C354 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6AB68 8007C358 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 6AB6C 8007C35C 21888000 */  addu       $s1, $a0, $zero
    /* 6AB70 8007C360 3000BFAF */  sw         $ra, 0x30($sp)
    /* 6AB74 8007C364 2800B0AF */  sw         $s0, 0x28($sp)
    /* 6AB78 8007C368 0400268E */  lw         $a2, 0x4($s1)
    /* 6AB7C 8007C36C 00000000 */  nop
    /* 6AB80 8007C370 0600C290 */  lbu        $v0, 0x6($a2)
    /* 6AB84 8007C374 00000000 */  nop
    /* 6AB88 8007C378 04004230 */  andi       $v0, $v0, 0x4
    /* 6AB8C 8007C37C 0F004010 */  beqz       $v0, .L8007C3BC
    /* 6AB90 8007C380 2180A000 */   addu      $s0, $a1, $zero
    /* 6AB94 8007C384 1400028E */  lw         $v0, 0x14($s0)
    /* 6AB98 8007C388 1800038E */  lw         $v1, 0x18($s0)
    /* 6AB9C 8007C38C 1C00048E */  lw         $a0, 0x1C($s0)
    /* 6ABA0 8007C390 1800A2AF */  sw         $v0, 0x18($sp)
    /* 6ABA4 8007C394 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 6ABA8 8007C398 2000A4AF */  sw         $a0, 0x20($sp)
    /* 6ABAC 8007C39C 2800C88C */  lw         $t0, 0x28($a2)
    /* 6ABB0 8007C3A0 0400C284 */  lh         $v0, 0x4($a2)
    /* 6ABB4 8007C3A4 1800A527 */  addiu      $a1, $sp, 0x18
    /* 6ABB8 8007C3A8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6ABBC 8007C3AC 1800C68C */  lw         $a2, 0x18($a2)
    /* 6ABC0 8007C3B0 2000078D */  lw         $a3, 0x20($t0)
    /* 6ABC4 8007C3B4 4AFB010C */  jal        func_8007ED28
    /* 6ABC8 8007C3B8 21200002 */   addu      $a0, $s0, $zero
  .L8007C3BC:
    /* 6ABCC 8007C3BC 0800258E */  lw         $a1, 0x8($s1)
    /* 6ABD0 8007C3C0 6EF0010C */  jal        func_8007C1B8
    /* 6ABD4 8007C3C4 21200002 */   addu      $a0, $s0, $zero
    /* 6ABD8 8007C3C8 801F043C */  lui        $a0, (0x1F8003F0 >> 16)
    /* 6ABDC 8007C3CC E8D6020C */  jal        SetSp
    /* 6ABE0 8007C3D0 F0038434 */   ori       $a0, $a0, (0x1F8003F0 & 0xFFFF)
    /* 6ABE4 8007C3D4 0400258E */  lw         $a1, 0x4($s1)
    /* 6ABE8 8007C3D8 00000000 */  nop
    /* 6ABEC 8007C3DC 0600A390 */  lbu        $v1, 0x6($a1)
    /* 6ABF0 8007C3E0 00000000 */  nop
    /* 6ABF4 8007C3E4 02006330 */  andi       $v1, $v1, 0x2
    /* 6ABF8 8007C3E8 06006010 */  beqz       $v1, .L8007C404
    /* 6ABFC 8007C3EC 21804000 */   addu      $s0, $v0, $zero
    /* 6AC00 8007C3F0 144280AF */  sw         $zero, %gp_rel(D_800C8904)($gp)
    /* 6AC04 8007C3F4 E0F1010C */  jal        func_8007C780
    /* 6AC08 8007C3F8 21202002 */   addu      $a0, $s1, $zero
    /* 6AC0C 8007C3FC 03F10108 */  j          .L8007C40C
    /* 6AC10 8007C400 00000000 */   nop
  .L8007C404:
    /* 6AC14 8007C404 ECEF010C */  jal        func_8007BFB0
    /* 6AC18 8007C408 21202002 */   addu      $a0, $s1, $zero
  .L8007C40C:
    /* 6AC1C 8007C40C E8D6020C */  jal        SetSp
    /* 6AC20 8007C410 21200002 */   addu      $a0, $s0, $zero
    /* 6AC24 8007C414 3000BF8F */  lw         $ra, 0x30($sp)
    /* 6AC28 8007C418 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 6AC2C 8007C41C 2800B08F */  lw         $s0, 0x28($sp)
    /* 6AC30 8007C420 0800E003 */  jr         $ra
    /* 6AC34 8007C424 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8007C354
