nonmatching func_8013DF00, 0x260

glabel func_8013DF00
    /* B3CC 8013DF00 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B3D0 8013DF04 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B3D4 8013DF08 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B3D8 8013DF0C 1800BFAF */  sw         $ra, 0x18($sp)
    /* B3DC 8013DF10 1400B1AF */  sw         $s1, 0x14($sp)
    /* B3E0 8013DF14 1000B0AF */  sw         $s0, 0x10($sp)
    /* B3E4 8013DF18 0000428C */  lw         $v0, 0x0($v0)
    /* B3E8 8013DF1C 0001103C */  lui        $s0, (0x1000000 >> 16)
    /* B3EC 8013DF20 24105000 */  and        $v0, $v0, $s0
    /* B3F0 8013DF24 89004014 */  bnez       $v0, .L8013E14C
    /* B3F4 8013DF28 01000224 */   addiu     $v0, $zero, 0x1
    /* B3F8 8013DF2C E7EC040C */  jal        func_8013B39C
    /* B3FC 8013DF30 21200000 */   addu      $a0, $zero, $zero
    /* B400 8013DF34 1C80043C */  lui        $a0, %hi(D_801BFD60)
    /* B404 8013DF38 60FD848C */  lw         $a0, %lo(D_801BFD60)($a0)
    /* B408 8013DF3C 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B40C 8013DF40 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B410 8013DF44 1C80013C */  lui        $at, %hi(D_801BFD6C)
    /* B414 8013DF48 59008310 */  beq        $a0, $v1, .L8013E0B0
    /* B418 8013DF4C 6CFD22AC */   sw        $v0, %lo(D_801BFD6C)($at)
    /* B41C 8013DF50 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B420 8013DF54 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B424 8013DF58 00000000 */  nop
    /* B428 8013DF5C 0000428C */  lw         $v0, 0x0($v0)
    /* B42C 8013DF60 00000000 */  nop
    /* B430 8013DF64 24105000 */  and        $v0, $v0, $s0
    /* B434 8013DF68 51004014 */  bnez       $v0, .L8013E0B0
    /* B438 8013DF6C 00000000 */   nop
    /* B43C 8013DF70 0004113C */  lui        $s1, (0x4000000 >> 16)
    /* B440 8013DF74 0001103C */  lui        $s0, (0x1000000 >> 16)
  .L8013DF78:
    /* B444 8013DF78 1C80023C */  lui        $v0, %hi(D_801BFD64)
    /* B448 8013DF7C 64FD428C */  lw         $v0, %lo(D_801BFD64)($v0)
    /* B44C 8013DF80 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B450 8013DF84 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B454 8013DF88 01004224 */  addiu      $v0, $v0, 0x1
    /* B458 8013DF8C 3F004230 */  andi       $v0, $v0, 0x3F
    /* B45C 8013DF90 08004314 */  bne        $v0, $v1, .L8013DFB4
    /* B460 8013DF94 00000000 */   nop
    /* B464 8013DF98 1C80023C */  lui        $v0, %hi(D_801BFC44)
    /* B468 8013DF9C 44FC428C */  lw         $v0, %lo(D_801BFC44)($v0)
    /* B46C 8013DFA0 00000000 */  nop
    /* B470 8013DFA4 03004014 */  bnez       $v0, .L8013DFB4
    /* B474 8013DFA8 02000424 */   addiu     $a0, $zero, 0x2
    /* B478 8013DFAC BEEC040C */  jal        func_8013B2F8
    /* B47C 8013DFB0 21280000 */   addu      $a1, $zero, $zero
  .L8013DFB4:
    /* B480 8013DFB4 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* B484 8013DFB8 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* B488 8013DFBC 00000000 */  nop
    /* B48C 8013DFC0 0000628C */  lw         $v0, 0x0($v1)
    /* B490 8013DFC4 00000000 */  nop
    /* B494 8013DFC8 24105100 */  and        $v0, $v0, $s1
    /* B498 8013DFCC 06004014 */  bnez       $v0, .L8013DFE8
    /* B49C 8013DFD0 0004043C */   lui       $a0, (0x4000000 >> 16)
  .L8013DFD4:
    /* B4A0 8013DFD4 0000628C */  lw         $v0, 0x0($v1)
    /* B4A4 8013DFD8 00000000 */  nop
    /* B4A8 8013DFDC 24104400 */  and        $v0, $v0, $a0
    /* B4AC 8013DFE0 FCFF4010 */  beqz       $v0, .L8013DFD4
    /* B4B0 8013DFE4 00000000 */   nop
  .L8013DFE8:
    /* B4B4 8013DFE8 1C80053C */  lui        $a1, %hi(D_801BFD64)
    /* B4B8 8013DFEC 64FDA58C */  lw         $a1, %lo(D_801BFD64)($a1)
    /* B4BC 8013DFF0 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B4C0 8013DFF4 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B4C4 8013DFF8 00000000 */  nop
    /* B4C8 8013DFFC 40100300 */  sll        $v0, $v1, 1
    /* B4CC 8013E000 21104300 */  addu       $v0, $v0, $v1
    /* B4D0 8013E004 40110200 */  sll        $v0, $v0, 5
    /* B4D4 8013E008 40180500 */  sll        $v1, $a1, 1
    /* B4D8 8013E00C 21186500 */  addu       $v1, $v1, $a1
    /* B4DC 8013E010 1D80043C */  lui        $a0, %hi(D_801CCE6C)
    /* B4E0 8013E014 21208200 */  addu       $a0, $a0, $v0
    /* B4E4 8013E018 6CCE848C */  lw         $a0, %lo(D_801CCE6C)($a0)
    /* B4E8 8013E01C 1C80053C */  lui        $a1, %hi(D_801BFD64)
    /* B4EC 8013E020 64FDA58C */  lw         $a1, %lo(D_801BFD64)($a1)
    /* B4F0 8013E024 40190300 */  sll        $v1, $v1, 5
    /* B4F4 8013E028 40100500 */  sll        $v0, $a1, 1
    /* B4F8 8013E02C 21104500 */  addu       $v0, $v0, $a1
    /* B4FC 8013E030 40110200 */  sll        $v0, $v0, 5
    /* B500 8013E034 1D80053C */  lui        $a1, %hi(D_801CCE70)
    /* B504 8013E038 2128A200 */  addu       $a1, $a1, $v0
    /* B508 8013E03C 70CEA58C */  lw         $a1, %lo(D_801CCE70)($a1)
    /* B50C 8013E040 1D80023C */  lui        $v0, %hi(D_801CCE68)
    /* B510 8013E044 21104300 */  addu       $v0, $v0, $v1
    /* B514 8013E048 68CE428C */  lw         $v0, %lo(D_801CCE68)($v0)
    /* B518 8013E04C 00000000 */  nop
    /* B51C 8013E050 09F84000 */  jalr       $v0
    /* B520 8013E054 00000000 */   nop
    /* B524 8013E058 1C80023C */  lui        $v0, %hi(D_801BFD64)
    /* B528 8013E05C 64FD428C */  lw         $v0, %lo(D_801BFD64)($v0)
    /* B52C 8013E060 00000000 */  nop
    /* B530 8013E064 01004224 */  addiu      $v0, $v0, 0x1
    /* B534 8013E068 3F004230 */  andi       $v0, $v0, 0x3F
    /* B538 8013E06C 1C80013C */  lui        $at, %hi(D_801BFD64)
    /* B53C 8013E070 64FD22AC */  sw         $v0, %lo(D_801BFD64)($at)
    /* B540 8013E074 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B544 8013E078 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B548 8013E07C 1C80023C */  lui        $v0, %hi(D_801BFD64)
    /* B54C 8013E080 64FD428C */  lw         $v0, %lo(D_801BFD64)($v0)
    /* B550 8013E084 00000000 */  nop
    /* B554 8013E088 09006210 */  beq        $v1, $v0, .L8013E0B0
    /* B558 8013E08C 00000000 */   nop
    /* B55C 8013E090 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B560 8013E094 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B564 8013E098 00000000 */  nop
    /* B568 8013E09C 0000428C */  lw         $v0, 0x0($v0)
    /* B56C 8013E0A0 00000000 */  nop
    /* B570 8013E0A4 24105000 */  and        $v0, $v0, $s0
    /* B574 8013E0A8 B3FF4010 */  beqz       $v0, .L8013DF78
    /* B578 8013E0AC 00000000 */   nop
  .L8013E0B0:
    /* B57C 8013E0B0 1C80043C */  lui        $a0, %hi(D_801BFD6C)
    /* B580 8013E0B4 6CFD848C */  lw         $a0, %lo(D_801BFD6C)($a0)
    /* B584 8013E0B8 E7EC040C */  jal        func_8013B39C
    /* B588 8013E0BC 00000000 */   nop
    /* B58C 8013E0C0 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B590 8013E0C4 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B594 8013E0C8 1C80023C */  lui        $v0, %hi(D_801BFD64)
    /* B598 8013E0CC 64FD428C */  lw         $v0, %lo(D_801BFD64)($v0)
    /* B59C 8013E0D0 00000000 */  nop
    /* B5A0 8013E0D4 16006214 */  bne        $v1, $v0, .L8013E130
    /* B5A4 8013E0D8 00000000 */   nop
    /* B5A8 8013E0DC 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B5AC 8013E0E0 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B5B0 8013E0E4 00000000 */  nop
    /* B5B4 8013E0E8 0000428C */  lw         $v0, 0x0($v0)
    /* B5B8 8013E0EC 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* B5BC 8013E0F0 24104300 */  and        $v0, $v0, $v1
    /* B5C0 8013E0F4 0E004014 */  bnez       $v0, .L8013E130
    /* B5C4 8013E0F8 00000000 */   nop
    /* B5C8 8013E0FC 1C80033C */  lui        $v1, %hi(D_801BFC40)
    /* B5CC 8013E100 40FC6324 */  addiu      $v1, $v1, %lo(D_801BFC40)
    /* B5D0 8013E104 0000628C */  lw         $v0, 0x0($v1)
    /* B5D4 8013E108 00000000 */  nop
    /* B5D8 8013E10C 08004010 */  beqz       $v0, .L8013E130
    /* B5DC 8013E110 00000000 */   nop
    /* B5E0 8013E114 0400648C */  lw         $a0, 0x4($v1)
    /* B5E4 8013E118 00000000 */  nop
    /* B5E8 8013E11C 04008010 */  beqz       $a0, .L8013E130
    /* B5EC 8013E120 F8FF6224 */   addiu     $v0, $v1, -0x8
    /* B5F0 8013E124 080040AC */  sw         $zero, 0x8($v0)
    /* B5F4 8013E128 09F88000 */  jalr       $a0
    /* B5F8 8013E12C 00000000 */   nop
  .L8013E130:
    /* B5FC 8013E130 1C80023C */  lui        $v0, %hi(D_801BFD60)
    /* B600 8013E134 60FD428C */  lw         $v0, %lo(D_801BFD60)($v0)
    /* B604 8013E138 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B608 8013E13C 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B60C 8013E140 00000000 */  nop
    /* B610 8013E144 23104300 */  subu       $v0, $v0, $v1
    /* B614 8013E148 3F004230 */  andi       $v0, $v0, 0x3F
  .L8013E14C:
    /* B618 8013E14C 1800BF8F */  lw         $ra, 0x18($sp)
    /* B61C 8013E150 1400B18F */  lw         $s1, 0x14($sp)
    /* B620 8013E154 1000B08F */  lw         $s0, 0x10($sp)
    /* B624 8013E158 0800E003 */  jr         $ra
    /* B628 8013E15C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013DF00
