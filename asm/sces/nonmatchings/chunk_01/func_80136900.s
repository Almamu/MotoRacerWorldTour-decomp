/* Handwritten function */
nonmatching func_80136900, 0x24C

glabel func_80136900
    /* 3DCC 80136900 0E000005 */  bltz       $t0, .L8013693C
    /* 3DD0 80136904 40080800 */   sll       $at, $t0, 1
    /* 3DD4 80136908 07002104 */  bgez       $at, .L80136928
    /* 3DD8 8013690C 40080100 */   sll       $at, $at, 1
    /* 3DDC 80136910 06000934 */  ori        $t1, $zero, 0x6
    /* 3DE0 80136914 82470100 */  srl        $t0, $at, 30
    /* 3DE4 80136918 20002004 */  bltz       $at, .L8013699C
    /* 3DE8 8013691C 20C82803 */   add       $t9, $t9, $t0 /* handwritten instruction */
    /* 3DEC 80136920 1E000104 */  bgez       $zero, .L8013699C
    /* 3DF0 80136924 FDFF3923 */   addi      $t9, $t9, -0x3 /* handwritten instruction */
  .L80136928:
    /* 3DF4 80136928 05000934 */  ori        $t1, $zero, 0x5
    /* 3DF8 8013692C 1B002004 */  bltz       $at, .L8013699C
    /* 3DFC 80136930 01003923 */   addi      $t9, $t9, 0x1 /* handwritten instruction */
    /* 3E00 80136934 19000104 */  bgez       $zero, .L8013699C
    /* 3E04 80136938 FEFF3923 */   addi      $t9, $t9, -0x2 /* handwritten instruction */
  .L8013693C:
    /* 3E08 8013693C 00F08848 */  mtc2       $t0, $30 /* handwritten instruction */
    /* 3E0C 80136940 0A002004 */  bltz       $at, .L8013696C
    /* 3E10 80136944 40700100 */   sll       $t6, $at, 1
    /* 3E14 80136948 1400C105 */  bgez       $t6, .L8013699C
    /* 3E18 8013694C 05000934 */   ori       $t1, $zero, 0x5
    /* 3E1C 80136950 08000934 */  ori        $t1, $zero, 0x8
    /* 3E20 80136954 C0080800 */  sll        $at, $t0, 3
    /* 3E24 80136958 42470100 */  srl        $t0, $at, 29
    /* 3E28 8013695C 0F002004 */  bltz       $at, .L8013699C
    /* 3E2C 80136960 20C82803 */   add       $t9, $t9, $t0 /* handwritten instruction */
    /* 3E30 80136964 0D000104 */  bgez       $zero, .L8013699C
    /* 3E34 80136968 F9FF3923 */   addi      $t9, $t9, -0x7 /* handwritten instruction */
  .L8013696C:
    /* 3E38 8013696C 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
    /* 3E3C 80136970 FEFF0E20 */  addi       $t6, $zero, -0x2 /* handwritten instruction */
    /* 3E40 80136974 04082101 */  sllv       $at, $at, $t1
    /* 3E44 80136978 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
    /* 3E48 8013697C 03002004 */  bltz       $at, .L8013698C
    /* 3E4C 80136980 06402101 */   srlv      $t0, $at, $t1
    /* 3E50 80136984 06082E01 */  srlv       $at, $t6, $t1
    /* 3E54 80136988 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
  .L8013698C:
    /* 3E58 8013698C 22480900 */  neg        $t1, $t1 /* handwritten instruction */
    /* 3E5C 80136990 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
    /* 3E60 80136994 01002921 */  addi       $t1, $t1, 0x1 /* handwritten instruction */
    /* 3E64 80136998 20C82803 */  add        $t9, $t9, $t0 /* handwritten instruction */
  .L8013699C:
    /* 3E68 8013699C 80401900 */  sll        $t0, $t9, 2
    /* 3E6C 801369A0 FF030831 */  andi       $t0, $t0, 0x3FF
    /* 3E70 801369A4 E1D90408 */  j          func_80136784
    /* 3E74 801369A8 25400B01 */   or        $t0, $t0, $t3
  .L801369AC:
    /* 3E78 801369AC 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
    /* 3E7C 801369B0 09004004 */  bltz       $v0, .L801369D8
    /* 3E80 801369B4 40080200 */   sll       $at, $v0, 1
    /* 3E84 801369B8 12002104 */  bgez       $at, .L80136A04
    /* 3E88 801369BC 02000934 */   ori       $t1, $zero, 0x2
    /* 3E8C 801369C0 40080100 */  sll        $at, $at, 1
    /* 3E90 801369C4 03000934 */  ori        $t1, $zero, 0x3
    /* 3E94 801369C8 0E002004 */  bltz       $at, .L80136A04
    /* 3E98 801369CC 0100EF21 */   addi      $t7, $t7, 0x1 /* handwritten instruction */
    /* 3E9C 801369D0 0C000104 */  bgez       $zero, .L80136A04
    /* 3EA0 801369D4 FEFFEF21 */   addi      $t7, $t7, -0x2 /* handwritten instruction */
  .L801369D8:
    /* 3EA4 801369D8 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
    /* 3EA8 801369DC FFFF0E20 */  addi       $t6, $zero, -0x1 /* handwritten instruction */
    /* 3EAC 801369E0 04082101 */  sllv       $at, $at, $t1
    /* 3EB0 801369E4 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
    /* 3EB4 801369E8 03002004 */  bltz       $at, .L801369F8
    /* 3EB8 801369EC 06402101 */   srlv      $t0, $at, $t1
    /* 3EBC 801369F0 06082E01 */  srlv       $at, $t6, $t1
    /* 3EC0 801369F4 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
  .L801369F8:
    /* 3EC4 801369F8 22480900 */  neg        $t1, $t1 /* handwritten instruction */
    /* 3EC8 801369FC 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
    /* 3ECC 80136A00 2078E801 */  add        $t7, $t7, $t0 /* handwritten instruction */
  .L80136A04:
    /* 3ED0 80136A04 80400F00 */  sll        $t0, $t7, 2
    /* 3ED4 80136A08 FF030831 */  andi       $t0, $t0, 0x3FF
    /* 3ED8 80136A0C E1D9040C */  jal        func_80136784
    /* 3EDC 80136A10 25400B01 */   or        $t0, $t0, $t3
    /* 3EE0 80136A14 00F08848 */  mtc2       $t0, $30 /* handwritten instruction */
    /* 3EE4 80136A18 09000005 */  bltz       $t0, .L80136A40
    /* 3EE8 80136A1C 40080800 */   sll       $at, $t0, 1
    /* 3EEC 80136A20 13002104 */  bgez       $at, .L80136A70
    /* 3EF0 80136A24 04000934 */   ori       $t1, $zero, 0x4
    /* 3EF4 80136A28 40080100 */  sll        $at, $at, 1
    /* 3EF8 80136A2C 05000934 */  ori        $t1, $zero, 0x5
    /* 3EFC 80136A30 0F002004 */  bltz       $at, .L80136A70
    /* 3F00 80136A34 01001823 */   addi      $t8, $t8, 0x1 /* handwritten instruction */
    /* 3F04 80136A38 0D000104 */  bgez       $zero, .L80136A70
    /* 3F08 80136A3C FEFF1823 */   addi      $t8, $t8, -0x2 /* handwritten instruction */
  .L80136A40:
    /* 3F0C 80136A40 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
    /* 3F10 80136A44 FFFF0E20 */  addi       $t6, $zero, -0x1 /* handwritten instruction */
    /* 3F14 80136A48 04082101 */  sllv       $at, $at, $t1
    /* 3F18 80136A4C 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
    /* 3F1C 80136A50 03002004 */  bltz       $at, .L80136A60
    /* 3F20 80136A54 06402101 */   srlv      $t0, $at, $t1
    /* 3F24 80136A58 06082E01 */  srlv       $at, $t6, $t1
    /* 3F28 80136A5C 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
  .L80136A60:
    /* 3F2C 80136A60 22480900 */  neg        $t1, $t1 /* handwritten instruction */
    /* 3F30 80136A64 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
    /* 3F34 80136A68 02002921 */  addi       $t1, $t1, 0x2 /* handwritten instruction */
    /* 3F38 80136A6C 20C00803 */  add        $t8, $t8, $t0 /* handwritten instruction */
  .L80136A70:
    /* 3F3C 80136A70 80401800 */  sll        $t0, $t8, 2
    /* 3F40 80136A74 FF030831 */  andi       $t0, $t0, 0x3FF
    /* 3F44 80136A78 E1D9040C */  jal        func_80136784
    /* 3F48 80136A7C 25400B01 */   or        $t0, $t0, $t3
    /* 3F4C 80136A80 40DA040C */  jal        func_80136900
    /* 3F50 80136A84 00000000 */   nop
    /* 3F54 80136A88 40DA040C */  jal        func_80136900
    /* 3F58 80136A8C 00000000 */   nop
    /* 3F5C 80136A90 40DA040C */  jal        func_80136900
    /* 3F60 80136A94 00000000 */   nop
    /* 3F64 80136A98 40DA040C */  jal        func_80136900
    /* 3F68 80136A9C 00000000 */   nop
    /* 3F6C 80136AA0 2308AC00 */  subu       $at, $a1, $t4
    /* 3F70 80136AA4 15002104 */  bgez       $at, .L80136AFC
    /* 3F74 80136AA8 82450800 */   srl       $t0, $t0, 22
  .L80136AAC:
    /* 3F78 80136AAC FF030839 */  xori       $t0, $t0, 0x3FF
    /* 3F7C 80136AB0 80100200 */  sll        $v0, $v0, 2
    /* 3F80 80136AB4 820F0300 */  srl        $at, $v1, 30
    /* 3F84 80136AB8 25104100 */  or         $v0, $v0, $at
    /* 3F88 80136ABC 80180300 */  sll        $v1, $v1, 2
    /* 3F8C 80136AC0 BAFF0015 */  bnez       $t0, .L801369AC
    /* 3F90 80136AC4 02004A21 */   addi      $t2, $t2, 0x2 /* handwritten instruction */
  .L80136AC8:
    /* 3F94 80136AC8 00FE0834 */  ori        $t0, $zero, 0xFE00
    /* 3F98 80136ACC 0000BF8F */  lw         $ra, 0x0($sp)
    /* 3F9C 80136AD0 0400BD23 */  addi       $sp, $sp, 0x4 /* handwritten instruction */
  .L80136AD4:
    /* 3FA0 80136AD4 2308AD00 */  subu       $at, $a1, $t5
    /* 3FA4 80136AD8 04002104 */  bgez       $at, .L80136AEC
    /* 3FA8 80136ADC 00000000 */   nop
    /* 3FAC 80136AE0 0000A8A4 */  sh         $t0, 0x0($a1)
    /* 3FB0 80136AE4 FBFF0104 */  bgez       $zero, .L80136AD4
    /* 3FB4 80136AE8 0200A520 */   addi      $a1, $a1, 0x2 /* handwritten instruction */
  .L80136AEC:
    /* 3FB8 80136AEC 0800E003 */  jr         $ra
    /* 3FBC 80136AF0 25100000 */   or        $v0, $zero, $zero
  .L80136AF4:
    /* 3FC0 80136AF4 02000104 */  bgez       $zero, .L80136B00
    /* 3FC4 80136AF8 25081F00 */   or        $at, $zero, $ra
  .L80136AFC:
    /* 3FC8 80136AFC 25080000 */  or         $at, $zero, $zero
  .L80136B00:
    /* 3FCC 80136B00 0000BF8F */  lw         $ra, 0x0($sp)
    /* 3FD0 80136B04 0400BD23 */  addi       $sp, $sp, 0x4 /* handwritten instruction */
    /* 3FD4 80136B08 1A800E3C */  lui        $t6, %hi(D_8019DC50)
    /* 3FD8 80136B0C 50DCCE25 */  addiu      $t6, $t6, %lo(D_8019DC50)
    /* 3FDC 80136B10 0000C2AD */  sw         $v0, 0x0($t6)
    /* 3FE0 80136B14 0400C3AD */  sw         $v1, 0x4($t6)
    /* 3FE4 80136B18 0800C8AD */  sw         $t0, 0x8($t6)
    /* 3FE8 80136B1C 0C00C4AD */  sw         $a0, 0xC($t6)
    /* 3FEC 80136B20 1000C5AD */  sw         $a1, 0x10($t6)
    /* 3FF0 80136B24 1400C6AD */  sw         $a2, 0x14($t6)
    /* 3FF4 80136B28 1800CAAD */  sw         $t2, 0x18($t6)
    /* 3FF8 80136B2C 1C00CBAD */  sw         $t3, 0x1C($t6)
    /* 3FFC 80136B30 2000CDAD */  sw         $t5, 0x20($t6)
    /* 4000 80136B34 2400CFAD */  sw         $t7, 0x24($t6)
    /* 4004 80136B38 2800D8AD */  sw         $t8, 0x28($t6)
    /* 4008 80136B3C 2C00D9AD */  sw         $t9, 0x2C($t6)
    /* 400C 80136B40 3000C1AD */  sw         $at, 0x30($t6)
    /* 4010 80136B44 0800E003 */  jr         $ra
    /* 4014 80136B48 01000234 */   ori       $v0, $zero, 0x1
endlabel func_80136900
