nonmatching func_8013B3B4, 0xD8

glabel func_8013B3B4
    /* 8880 8013B3B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8884 8013B3B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8888 8013B3BC 1C80103C */  lui        $s0, %hi(D_801BDF40)
    /* 888C 8013B3C0 40DF1026 */  addiu      $s0, $s0, %lo(D_801BDF40)
    /* 8890 8013B3C4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8894 8013B3C8 00000296 */  lhu        $v0, 0x0($s0)
    /* 8898 8013B3CC 00000000 */  nop
    /* 889C 8013B3D0 2A004014 */  bnez       $v0, .L8013B47C
    /* 88A0 8013B3D4 21100000 */   addu      $v0, $zero, $zero
    /* 88A4 8013B3D8 1C80033C */  lui        $v1, %hi(D_801BEFCC)
    /* 88A8 8013B3DC CCEF638C */  lw         $v1, %lo(D_801BEFCC)($v1)
    /* 88AC 8013B3E0 1C80023C */  lui        $v0, %hi(D_801BEFD0)
    /* 88B0 8013B3E4 D0EF428C */  lw         $v0, %lo(D_801BEFD0)($v0)
    /* 88B4 8013B3E8 3333053C */  lui        $a1, (0x33333333 >> 16)
    /* 88B8 8013B3EC 000040A4 */  sh         $zero, 0x0($v0)
    /* 88BC 8013B3F0 00004294 */  lhu        $v0, 0x0($v0)
    /* 88C0 8013B3F4 3333A534 */  ori        $a1, $a1, (0x33333333 & 0xFFFF)
    /* 88C4 8013B3F8 000062A4 */  sh         $v0, 0x0($v1)
    /* 88C8 8013B3FC 1C80023C */  lui        $v0, %hi(D_801BEFD4)
    /* 88CC 8013B400 D4EF428C */  lw         $v0, %lo(D_801BEFD4)($v0)
    /* 88D0 8013B404 21200002 */  addu       $a0, $s0, $zero
    /* 88D4 8013B408 000045AC */  sw         $a1, 0x0($v0)
    /* 88D8 8013B40C 2FEE040C */  jal        func_8013B8BC
    /* 88DC 8013B410 1A040524 */   addiu     $a1, $zero, 0x41A
    /* 88E0 8013B414 7A30050C */  jal        func_8014C1E8
    /* 88E4 8013B418 38000426 */   addiu     $a0, $s0, 0x38
    /* 88E8 8013B41C 03004010 */  beqz       $v0, .L8013B42C
    /* 88EC 8013B420 00000000 */   nop
    /* 88F0 8013B424 23ED040C */  jal        func_8013B48C
    /* 88F4 8013B428 00000000 */   nop
  .L8013B42C:
    /* 88F8 8013B42C 1C80103C */  lui        $s0, %hi(D_801BDF7C)
    /* 88FC 8013B430 7CDF1026 */  addiu      $s0, $s0, %lo(D_801BDF7C)
    /* 8900 8013B434 FCFF0426 */  addiu      $a0, $s0, -0x4
    /* 8904 8013B438 DC0F0226 */  addiu      $v0, $s0, 0xFDC
    /* 8908 8013B43C FB2A050C */  jal        func_8014ABEC
    /* 890C 8013B440 000002AE */   sw        $v0, 0x0($s0)
    /* 8910 8013B444 01000224 */  addiu      $v0, $zero, 0x1
    /* 8914 8013B448 38EE040C */  jal        func_8013B8E0
    /* 8918 8013B44C C4FF02A6 */   sh        $v0, -0x3C($s0)
    /* 891C 8013B450 1C80033C */  lui        $v1, %hi(D_801BEFC8)
    /* 8920 8013B454 C8EF638C */  lw         $v1, %lo(D_801BEFC8)($v1)
    /* 8924 8013B458 80EE040C */  jal        func_8013BA00
    /* 8928 8013B45C 140062AC */   sw        $v0, 0x14($v1)
    /* 892C 8013B460 1C80043C */  lui        $a0, %hi(D_801BEFC8)
    /* 8930 8013B464 C8EF848C */  lw         $a0, %lo(D_801BEFC8)($a0)
    /* 8934 8013B468 D12A050C */  jal        func_8014AB44
    /* 8938 8013B46C 040082AC */   sw        $v0, 0x4($a0)
    /* 893C 8013B470 032B050C */  jal        func_8014AC0C
    /* 8940 8013B474 C4FF1026 */   addiu     $s0, $s0, -0x3C
    /* 8944 8013B478 21100002 */  addu       $v0, $s0, $zero
  .L8013B47C:
    /* 8948 8013B47C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 894C 8013B480 1000B08F */  lw         $s0, 0x10($sp)
    /* 8950 8013B484 0800E003 */  jr         $ra
    /* 8954 8013B488 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013B3B4
