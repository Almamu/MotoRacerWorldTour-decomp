nonmatching func_8009C3BC, 0x178

glabel func_8009C3BC
    /* 8ABCC 8009C3BC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8ABD0 8009C3C0 21408000 */  addu       $t0, $a0, $zero
    /* 8ABD4 8009C3C4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8ABD8 8009C3C8 6000078D */  lw         $a3, 0x60($t0)
    /* 8ABDC 8009C3CC 2F00A010 */  beqz       $a1, .L8009C48C
    /* 8ABE0 8009C3D0 03000624 */   addiu     $a2, $zero, 0x3
    /* 8ABE4 8009C3D4 C021E38C */  lw         $v1, 0x21C0($a3)
    /* 8ABE8 8009C3D8 00000000 */  nop
    /* 8ABEC 8009C3DC 2800648C */  lw         $a0, 0x28($v1)
    /* 8ABF0 8009C3E0 00000000 */  nop
    /* 8ABF4 8009C3E4 0400828C */  lw         $v0, 0x4($a0)
    /* 8ABF8 8009C3E8 00000000 */  nop
    /* 8ABFC 8009C3EC 02004234 */  ori        $v0, $v0, 0x2
    /* 8AC00 8009C3F0 040082AC */  sw         $v0, 0x4($a0)
    /* 8AC04 8009C3F4 C421E38C */  lw         $v1, 0x21C4($a3)
    /* 8AC08 8009C3F8 00000000 */  nop
    /* 8AC0C 8009C3FC 2800658C */  lw         $a1, 0x28($v1)
    /* 8AC10 8009C400 00000000 */  nop
    /* 8AC14 8009C404 0400A28C */  lw         $v0, 0x4($a1)
    /* 8AC18 8009C408 00000000 */  nop
    /* 8AC1C 8009C40C 02004234 */  ori        $v0, $v0, 0x2
    /* 8AC20 8009C410 0400A2AC */  sw         $v0, 0x4($a1)
    /* 8AC24 8009C414 C821E48C */  lw         $a0, 0x21C8($a3)
    /* 8AC28 8009C418 00000000 */  nop
    /* 8AC2C 8009C41C 0400838C */  lw         $v1, 0x4($a0)
    /* 8AC30 8009C420 00000000 */  nop
    /* 8AC34 8009C424 02006334 */  ori        $v1, $v1, 0x2
    /* 8AC38 8009C428 040083AC */  sw         $v1, 0x4($a0)
    /* 8AC3C 8009C42C CC21E58C */  lw         $a1, 0x21CC($a3)
    /* 8AC40 8009C430 00000000 */  nop
    /* 8AC44 8009C434 0400A28C */  lw         $v0, 0x4($a1)
    /* 8AC48 8009C438 00000000 */  nop
    /* 8AC4C 8009C43C 02004234 */  ori        $v0, $v0, 0x2
    /* 8AC50 8009C440 0400A2AC */  sw         $v0, 0x4($a1)
    /* 8AC54 8009C444 4C00038D */  lw         $v1, 0x4C($t0)
    /* 8AC58 8009C448 21380000 */  addu       $a3, $zero, $zero
    /* 8AC5C 8009C44C 1400648C */  lw         $a0, 0x14($v1)
    /* 8AC60 8009C450 02000324 */  addiu      $v1, $zero, 0x2
    /* 8AC64 8009C454 080080A4 */  sh         $zero, 0x8($a0)
    /* 8AC68 8009C458 4C00028D */  lw         $v0, 0x4C($t0)
    /* 8AC6C 8009C45C 21200001 */  addu       $a0, $t0, $zero
    /* 8AC70 8009C460 0800458C */  lw         $a1, 0x8($v0)
    /* 8AC74 8009C464 01000224 */  addiu      $v0, $zero, 0x1
    /* 8AC78 8009C468 0800A3A4 */  sh         $v1, 0x8($a1)
    /* 8AC7C 8009C46C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 8AC80 8009C470 21280000 */  addu       $a1, $zero, $zero
    /* 8AC84 8009C474 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8AC88 8009C478 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8AC8C 8009C47C C9EA000C */  jal        func_8003AB24
    /* 8AC90 8009C480 1800A0AF */   sw        $zero, 0x18($sp)
    /* 8AC94 8009C484 49710208 */  j          .L8009C524
    /* 8AC98 8009C488 00000000 */   nop
  .L8009C48C:
    /* 8AC9C 8009C48C C021E38C */  lw         $v1, 0x21C0($a3)
    /* 8ACA0 8009C490 00000000 */  nop
    /* 8ACA4 8009C494 2800658C */  lw         $a1, 0x28($v1)
    /* 8ACA8 8009C498 00000000 */  nop
    /* 8ACAC 8009C49C 0400A28C */  lw         $v0, 0x4($a1)
    /* 8ACB0 8009C4A0 FDFF0624 */  addiu      $a2, $zero, -0x3
    /* 8ACB4 8009C4A4 24104600 */  and        $v0, $v0, $a2
    /* 8ACB8 8009C4A8 0400A2AC */  sw         $v0, 0x4($a1)
    /* 8ACBC 8009C4AC C421E38C */  lw         $v1, 0x21C4($a3)
    /* 8ACC0 8009C4B0 00000000 */  nop
    /* 8ACC4 8009C4B4 2800648C */  lw         $a0, 0x28($v1)
    /* 8ACC8 8009C4B8 00000000 */  nop
    /* 8ACCC 8009C4BC 0400828C */  lw         $v0, 0x4($a0)
    /* 8ACD0 8009C4C0 00000000 */  nop
    /* 8ACD4 8009C4C4 24104600 */  and        $v0, $v0, $a2
    /* 8ACD8 8009C4C8 040082AC */  sw         $v0, 0x4($a0)
    /* 8ACDC 8009C4CC C821E58C */  lw         $a1, 0x21C8($a3)
    /* 8ACE0 8009C4D0 00000000 */  nop
    /* 8ACE4 8009C4D4 0400A38C */  lw         $v1, 0x4($a1)
    /* 8ACE8 8009C4D8 00000000 */  nop
    /* 8ACEC 8009C4DC 24186600 */  and        $v1, $v1, $a2
    /* 8ACF0 8009C4E0 0400A3AC */  sw         $v1, 0x4($a1)
    /* 8ACF4 8009C4E4 CC21E48C */  lw         $a0, 0x21CC($a3)
    /* 8ACF8 8009C4E8 00000000 */  nop
    /* 8ACFC 8009C4EC 0400828C */  lw         $v0, 0x4($a0)
    /* 8AD00 8009C4F0 00000000 */  nop
    /* 8AD04 8009C4F4 24104600 */  and        $v0, $v0, $a2
    /* 8AD08 8009C4F8 040082AC */  sw         $v0, 0x4($a0)
    /* 8AD0C 8009C4FC 4C00038D */  lw         $v1, 0x4C($t0)
    /* 8AD10 8009C500 D021E294 */  lhu        $v0, 0x21D0($a3)
    /* 8AD14 8009C504 1400658C */  lw         $a1, 0x14($v1)
    /* 8AD18 8009C508 00000000 */  nop
    /* 8AD1C 8009C50C 0800A2A4 */  sh         $v0, 0x8($a1)
    /* 8AD20 8009C510 4C00038D */  lw         $v1, 0x4C($t0)
    /* 8AD24 8009C514 00000000 */  nop
    /* 8AD28 8009C518 0800648C */  lw         $a0, 0x8($v1)
    /* 8AD2C 8009C51C 00000000 */  nop
    /* 8AD30 8009C520 080080A4 */  sh         $zero, 0x8($a0)
  .L8009C524:
    /* 8AD34 8009C524 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8AD38 8009C528 00000000 */  nop
    /* 8AD3C 8009C52C 0800E003 */  jr         $ra
    /* 8AD40 8009C530 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009C3BC
