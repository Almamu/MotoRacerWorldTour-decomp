nonmatching func_80136ED0, 0x13C

glabel func_80136ED0
    /* 439C 80136ED0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 43A0 80136ED4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 43A4 80136ED8 2188A000 */  addu       $s1, $a1, $zero
    /* 43A8 80136EDC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 43AC 80136EE0 2190C000 */  addu       $s2, $a2, $zero
    /* 43B0 80136EE4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 43B4 80136EE8 21A08000 */  addu       $s4, $a0, $zero
    /* 43B8 80136EEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 43BC 80136EF0 03001024 */  addiu      $s0, $zero, 0x3
    /* 43C0 80136EF4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 43C4 80136EF8 FF009332 */  andi       $s3, $s4, 0xFF
    /* 43C8 80136EFC 1C80033C */  lui        $v1, %hi(D_801BD8C8)
    /* 43CC 80136F00 C8D86324 */  addiu      $v1, $v1, %lo(D_801BD8C8)
    /* 43D0 80136F04 2400B5AF */  sw         $s5, 0x24($sp)
    /* 43D4 80136F08 1C80153C */  lui        $s5, %hi(D_801BD950)
    /* 43D8 80136F0C 50D9B58E */  lw         $s5, %lo(D_801BD950)($s5)
    /* 43DC 80136F10 80101300 */  sll        $v0, $s3, 2
    /* 43E0 80136F14 2800B6AF */  sw         $s6, 0x28($sp)
    /* 43E4 80136F18 21B04300 */  addu       $s6, $v0, $v1
    /* 43E8 80136F1C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 43EC 80136F20 21B80000 */  addu       $s7, $zero, $zero
    /* 43F0 80136F24 3000BEAF */  sw         $fp, 0x30($sp)
    /* 43F4 80136F28 FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* 43F8 80136F2C 3400BFAF */  sw         $ra, 0x34($sp)
  .L80136F30:
    /* 43FC 80136F30 1C80013C */  lui        $at, %hi(D_801BD950)
    /* 4400 80136F34 50D920AC */  sw         $zero, %lo(D_801BD950)($at)
    /* 4404 80136F38 01000824 */  addiu      $t0, $zero, 0x1
    /* 4408 80136F3C 0B006812 */  beq        $s3, $t0, .L80136F6C
    /* 440C 80136F40 00000000 */   nop
    /* 4410 80136F44 1C80023C */  lui        $v0, %hi(D_801BD95C)
    /* 4414 80136F48 5CD94290 */  lbu        $v0, %lo(D_801BD95C)($v0)
    /* 4418 80136F4C 00000000 */  nop
    /* 441C 80136F50 10004230 */  andi       $v0, $v0, 0x10
    /* 4420 80136F54 05004010 */  beqz       $v0, .L80136F6C
    /* 4424 80136F58 01000424 */   addiu     $a0, $zero, 0x1
    /* 4428 80136F5C 21280000 */  addu       $a1, $zero, $zero
    /* 442C 80136F60 21300000 */  addu       $a2, $zero, $zero
    /* 4430 80136F64 CEDF040C */  jal        func_80137F38
    /* 4434 80136F68 21380000 */   addu      $a3, $zero, $zero
  .L80136F6C:
    /* 4438 80136F6C 0B002012 */  beqz       $s1, .L80136F9C
    /* 443C 80136F70 00000000 */   nop
    /* 4440 80136F74 0000C28E */  lw         $v0, 0x0($s6)
    /* 4444 80136F78 00000000 */  nop
    /* 4448 80136F7C 07004010 */  beqz       $v0, .L80136F9C
    /* 444C 80136F80 02000424 */   addiu     $a0, $zero, 0x2
    /* 4450 80136F84 21282002 */  addu       $a1, $s1, $zero
    /* 4454 80136F88 21304002 */  addu       $a2, $s2, $zero
    /* 4458 80136F8C CEDF040C */  jal        func_80137F38
    /* 445C 80136F90 21380000 */   addu      $a3, $zero, $zero
    /* 4460 80136F94 0A004014 */  bnez       $v0, .L80136FC0
    /* 4464 80136F98 00000000 */   nop
  .L80136F9C:
    /* 4468 80136F9C 1C80013C */  lui        $at, %hi(D_801BD950)
    /* 446C 80136FA0 50D935AC */  sw         $s5, %lo(D_801BD950)($at)
    /* 4470 80136FA4 FF008432 */  andi       $a0, $s4, 0xFF
    /* 4474 80136FA8 21282002 */  addu       $a1, $s1, $zero
    /* 4478 80136FAC 21304002 */  addu       $a2, $s2, $zero
    /* 447C 80136FB0 CEDF040C */  jal        func_80137F38
    /* 4480 80136FB4 21380000 */   addu      $a3, $zero, $zero
    /* 4484 80136FB8 08004010 */  beqz       $v0, .L80136FDC
    /* 4488 80136FBC 0100E226 */   addiu     $v0, $s7, 0x1
  .L80136FC0:
    /* 448C 80136FC0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 4490 80136FC4 DAFF1E16 */  bne        $s0, $fp, .L80136F30
    /* 4494 80136FC8 00000000 */   nop
    /* 4498 80136FCC 1C80013C */  lui        $at, %hi(D_801BD950)
    /* 449C 80136FD0 50D935AC */  sw         $s5, %lo(D_801BD950)($at)
    /* 44A0 80136FD4 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* 44A4 80136FD8 0100E226 */  addiu      $v0, $s7, 0x1
  .L80136FDC:
    /* 44A8 80136FDC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 44AC 80136FE0 3000BE8F */  lw         $fp, 0x30($sp)
    /* 44B0 80136FE4 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 44B4 80136FE8 2800B68F */  lw         $s6, 0x28($sp)
    /* 44B8 80136FEC 2400B58F */  lw         $s5, 0x24($sp)
    /* 44BC 80136FF0 2000B48F */  lw         $s4, 0x20($sp)
    /* 44C0 80136FF4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 44C4 80136FF8 1800B28F */  lw         $s2, 0x18($sp)
    /* 44C8 80136FFC 1400B18F */  lw         $s1, 0x14($sp)
    /* 44CC 80137000 1000B08F */  lw         $s0, 0x10($sp)
    /* 44D0 80137004 0800E003 */  jr         $ra
    /* 44D4 80137008 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_80136ED0
