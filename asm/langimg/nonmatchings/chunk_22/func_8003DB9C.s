nonmatching func_8003DB9C, 0x1F0

glabel func_8003DB9C
    /* 2C3AC 8003DB9C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2C3B0 8003DBA0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C3B4 8003DBA4 2198C000 */  addu       $s3, $a2, $zero
    /* 2C3B8 8003DBA8 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2C3BC 8003DBAC 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2C3C0 8003DBB0 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2C3C4 8003DBB4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2C3C8 8003DBB8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C3CC 8003DBBC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C3D0 8003DBC0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C3D4 8003DBC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C3D8 8003DBC8 0400728E */  lw         $s2, 0x4($s3)
    /* 2C3DC 8003DBCC 00000000 */  nop
    /* 2C3E0 8003DBD0 900A468E */  lw         $a2, 0xA90($s2)
    /* 2C3E4 8003DBD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C3E8 8003DBD8 0300C210 */  beq        $a2, $v0, .L8003DBE8
    /* 2C3EC 8003DBDC 04000224 */   addiu     $v0, $zero, 0x4
    /* 2C3F0 8003DBE0 0400C214 */  bne        $a2, $v0, .L8003DBF4
    /* 2C3F4 8003DBE4 21880000 */   addu      $s1, $zero, $zero
  .L8003DBE8:
    /* 2C3F8 8003DBE8 840A558E */  lw         $s5, 0xA84($s2)
    /* 2C3FC 8003DBEC FEF60008 */  j          .L8003DBF8
    /* 2C400 8003DBF0 21880000 */   addu      $s1, $zero, $zero
  .L8003DBF4:
    /* 2C404 8003DBF4 800A558E */  lw         $s5, 0xA80($s2)
  .L8003DBF8:
    /* 2C408 8003DBF8 940A458E */  lw         $a1, 0xA94($s2)
    /* 2C40C 8003DBFC 0000948C */  lw         $s4, 0x0($a0)
    /* 2C410 8003DC00 0002A230 */  andi       $v0, $a1, 0x200
    /* 2C414 8003DC04 56004014 */  bnez       $v0, .L8003DD60
    /* 2C418 8003DC08 00000000 */   nop
    /* 2C41C 8003DC0C 0000628E */  lw         $v0, 0x0($s3)
    /* 2C420 8003DC10 0C80173C */  lui        $s7, %hi(D_800C4D98)
    /* 2C424 8003DC14 984DF726 */  addiu      $s7, $s7, %lo(D_800C4D98)
    /* 2C428 8003DC18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C42C 8003DC1C 80100200 */  sll        $v0, $v0, 2
    /* 2C430 8003DC20 21105700 */  addu       $v0, $v0, $s7
    /* 2C434 8003DC24 0000438C */  lw         $v1, 0x0($v0)
    /* 2C438 8003DC28 00000000 */  nop
    /* 2C43C 8003DC2C 4C006014 */  bnez       $v1, .L8003DD60
    /* 2C440 8003DC30 8000A230 */   andi      $v0, $a1, 0x80
    /* 2C444 8003DC34 07004010 */  beqz       $v0, .L8003DC54
    /* 2C448 8003DC38 05000224 */   addiu     $v0, $zero, 0x5
    /* 2C44C 8003DC3C 48008016 */  bnez       $s4, .L8003DD60
    /* 2C450 8003DC40 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* 2C454 8003DC44 900A468E */  lw         $a2, 0xA90($s2)
    /* 2C458 8003DC48 2410A200 */  and        $v0, $a1, $v0
    /* 2C45C 8003DC4C 940A42AE */  sw         $v0, 0xA94($s2)
    /* 2C460 8003DC50 05000224 */  addiu      $v0, $zero, 0x5
  .L8003DC54:
    /* 2C464 8003DC54 1800C214 */  bne        $a2, $v0, .L8003DCB8
    /* 2C468 8003DC58 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 2C46C 8003DC5C 16008216 */  bne        $s4, $v0, .L8003DCB8
    /* 2C470 8003DC60 2120A002 */   addu      $a0, $s5, $zero
  .L8003DC64:
    /* 2C474 8003DC64 0000668E */  lw         $a2, 0x0($s3)
    /* 2C478 8003DC68 0EEC000C */  jal        func_8003B038
    /* 2C47C 8003DC6C 21282002 */   addu      $a1, $s1, $zero
    /* 2C480 8003DC70 21204000 */  addu       $a0, $v0, $zero
    /* 2C484 8003DC74 0A008010 */  beqz       $a0, .L8003DCA0
    /* 2C488 8003DC78 00000000 */   nop
    /* 2C48C 8003DC7C 2000828C */  lw         $v0, 0x20($a0)
    /* 2C490 8003DC80 0000638E */  lw         $v1, 0x0($s3)
    /* 2C494 8003DC84 00110200 */  sll        $v0, $v0, 4
    /* 2C498 8003DC88 03140200 */  sra        $v0, $v0, 16
    /* 2C49C 8003DC8C 24104300 */  and        $v0, $v0, $v1
    /* 2C4A0 8003DC90 33004010 */  beqz       $v0, .L8003DD60
    /* 2C4A4 8003DC94 00000000 */   nop
    /* 2C4A8 8003DC98 39E3000C */  jal        func_80038CE4
    /* 2C4AC 8003DC9C 21284002 */   addu      $a1, $s2, $zero
  .L8003DCA0:
    /* 2C4B0 8003DCA0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2C4B4 8003DCA4 0300222A */  slti       $v0, $s1, 0x3
    /* 2C4B8 8003DCA8 EEFF4014 */  bnez       $v0, .L8003DC64
    /* 2C4BC 8003DCAC 2120A002 */   addu      $a0, $s5, $zero
    /* 2C4C0 8003DCB0 50F70008 */  j          .L8003DD40
    /* 2C4C4 8003DCB4 00000000 */   nop
  .L8003DCB8:
    /* 2C4C8 8003DCB8 2900C014 */  bnez       $a2, .L8003DD60
    /* 2C4CC 8003DCBC 21880000 */   addu      $s1, $zero, $zero
    /* 2C4D0 8003DCC0 FE001624 */  addiu      $s6, $zero, 0xFE
    /* 2C4D4 8003DCC4 2120A002 */  addu       $a0, $s5, $zero
  .L8003DCC8:
    /* 2C4D8 8003DCC8 0000668E */  lw         $a2, 0x0($s3)
    /* 2C4DC 8003DCCC 0EEC000C */  jal        func_8003B038
    /* 2C4E0 8003DCD0 21282002 */   addu      $a1, $s1, $zero
    /* 2C4E4 8003DCD4 21804000 */  addu       $s0, $v0, $zero
    /* 2C4E8 8003DCD8 15000012 */  beqz       $s0, .L8003DD30
    /* 2C4EC 8003DCDC 00000000 */   nop
    /* 2C4F0 8003DCE0 2000028E */  lw         $v0, 0x20($s0)
    /* 2C4F4 8003DCE4 0000638E */  lw         $v1, 0x0($s3)
    /* 2C4F8 8003DCE8 00110200 */  sll        $v0, $v0, 4
    /* 2C4FC 8003DCEC 03140200 */  sra        $v0, $v0, 16
    /* 2C500 8003DCF0 24104300 */  and        $v0, $v0, $v1
    /* 2C504 8003DCF4 1A004010 */  beqz       $v0, .L8003DD60
    /* 2C508 8003DCF8 00000000 */   nop
    /* 2C50C 8003DCFC 21204002 */  addu       $a0, $s2, $zero
    /* 2C510 8003DD00 CDF4000C */  jal        func_8003D334
    /* 2C514 8003DD04 21280002 */   addu      $a1, $s0, $zero
    /* 2C518 8003DD08 2000028E */  lw         $v0, 0x20($s0)
    /* 2C51C 8003DD0C 00000000 */  nop
    /* 2C520 8003DD10 FF034230 */  andi       $v0, $v0, 0x3FF
    /* 2C524 8003DD14 02005614 */  bne        $v0, $s6, .L8003DD20
    /* 2C528 8003DD18 00000000 */   nop
    /* 2C52C 8003DD1C FF000224 */  addiu      $v0, $zero, 0xFF
  .L8003DD20:
    /* 2C530 8003DD20 03008216 */  bne        $s4, $v0, .L8003DD30
    /* 2C534 8003DD24 21204002 */   addu      $a0, $s2, $zero
    /* 2C538 8003DD28 CDF4000C */  jal        func_8003D334
    /* 2C53C 8003DD2C 21280002 */   addu      $a1, $s0, $zero
  .L8003DD30:
    /* 2C540 8003DD30 01003126 */  addiu      $s1, $s1, 0x1
    /* 2C544 8003DD34 0300222A */  slti       $v0, $s1, 0x3
    /* 2C548 8003DD38 E3FF4014 */  bnez       $v0, .L8003DCC8
    /* 2C54C 8003DD3C 2120A002 */   addu      $a0, $s5, $zero
  .L8003DD40:
    /* 2C550 8003DD40 6CF9000C */  jal        func_8003E5B0
    /* 2C554 8003DD44 21204002 */   addu      $a0, $s2, $zero
    /* 2C558 8003DD48 0000628E */  lw         $v0, 0x0($s3)
    /* 2C55C 8003DD4C 01000324 */  addiu      $v1, $zero, 0x1
    /* 2C560 8003DD50 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C564 8003DD54 80100200 */  sll        $v0, $v0, 2
    /* 2C568 8003DD58 21105700 */  addu       $v0, $v0, $s7
    /* 2C56C 8003DD5C 000043AC */  sw         $v1, 0x0($v0)
  .L8003DD60:
    /* 2C570 8003DD60 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2C574 8003DD64 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2C578 8003DD68 2800B68F */  lw         $s6, 0x28($sp)
    /* 2C57C 8003DD6C 2400B58F */  lw         $s5, 0x24($sp)
    /* 2C580 8003DD70 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C584 8003DD74 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C588 8003DD78 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C58C 8003DD7C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C590 8003DD80 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C594 8003DD84 0800E003 */  jr         $ra
    /* 2C598 8003DD88 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8003DB9C
