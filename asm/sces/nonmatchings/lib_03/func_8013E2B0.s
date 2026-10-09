nonmatching func_8013E2B0, 0x13C

glabel func_8013E2B0
    /* B77C 8013E2B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B780 8013E2B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* B784 8013E2B8 2A008014 */  bnez       $a0, .L8013E364
    /* B788 8013E2BC 1000B0AF */   sw        $s0, 0x10($sp)
    /* B78C 8013E2C0 FBF8040C */  jal        func_8013E3EC
    /* B790 8013E2C4 00000000 */   nop
    /* B794 8013E2C8 BAF80408 */  j          .L8013E2E8
    /* B798 8013E2CC 00000000 */   nop
  .L8013E2D0:
    /* B79C 8013E2D0 C0F7040C */  jal        func_8013DF00
    /* B7A0 8013E2D4 00000000 */   nop
    /* B7A4 8013E2D8 08F9040C */  jal        func_8013E420
    /* B7A8 8013E2DC 00000000 */   nop
    /* B7AC 8013E2E0 3E004014 */  bnez       $v0, .L8013E3DC
    /* B7B0 8013E2E4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8013E2E8:
    /* B7B4 8013E2E8 1C80033C */  lui        $v1, %hi(D_801BFD60)
    /* B7B8 8013E2EC 60FD638C */  lw         $v1, %lo(D_801BFD60)($v1)
    /* B7BC 8013E2F0 1C80023C */  lui        $v0, %hi(D_801BFD64)
    /* B7C0 8013E2F4 64FD428C */  lw         $v0, %lo(D_801BFD64)($v0)
    /* B7C4 8013E2F8 00000000 */  nop
    /* B7C8 8013E2FC 07006210 */  beq        $v1, $v0, .L8013E31C
    /* B7CC 8013E300 00000000 */   nop
    /* B7D0 8013E304 B4F80408 */  j          .L8013E2D0
    /* B7D4 8013E308 00000000 */   nop
  .L8013E30C:
    /* B7D8 8013E30C 08F9040C */  jal        func_8013E420
    /* B7DC 8013E310 00000000 */   nop
    /* B7E0 8013E314 31004014 */  bnez       $v0, .L8013E3DC
    /* B7E4 8013E318 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8013E31C:
    /* B7E8 8013E31C 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B7EC 8013E320 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B7F0 8013E324 00000000 */  nop
    /* B7F4 8013E328 0000428C */  lw         $v0, 0x0($v0)
    /* B7F8 8013E32C 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* B7FC 8013E330 24104300 */  and        $v0, $v0, $v1
    /* B800 8013E334 F5FF4014 */  bnez       $v0, .L8013E30C
    /* B804 8013E338 00000000 */   nop
    /* B808 8013E33C 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* B80C 8013E340 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* B810 8013E344 00000000 */  nop
    /* B814 8013E348 0000428C */  lw         $v0, 0x0($v0)
    /* B818 8013E34C 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* B81C 8013E350 24104300 */  and        $v0, $v0, $v1
    /* B820 8013E354 EDFF4010 */  beqz       $v0, .L8013E30C
    /* B824 8013E358 21100000 */   addu      $v0, $zero, $zero
    /* B828 8013E35C F7F80408 */  j          .L8013E3DC
    /* B82C 8013E360 00000000 */   nop
  .L8013E364:
    /* B830 8013E364 1C80023C */  lui        $v0, %hi(D_801BFD60)
    /* B834 8013E368 60FD428C */  lw         $v0, %lo(D_801BFD60)($v0)
    /* B838 8013E36C 1C80033C */  lui        $v1, %hi(D_801BFD64)
    /* B83C 8013E370 64FD638C */  lw         $v1, %lo(D_801BFD64)($v1)
    /* B840 8013E374 00000000 */  nop
    /* B844 8013E378 23104300 */  subu       $v0, $v0, $v1
    /* B848 8013E37C 3F005030 */  andi       $s0, $v0, 0x3F
    /* B84C 8013E380 03000012 */  beqz       $s0, .L8013E390
    /* B850 8013E384 00000000 */   nop
    /* B854 8013E388 C0F7040C */  jal        func_8013DF00
    /* B858 8013E38C 00000000 */   nop
  .L8013E390:
    /* B85C 8013E390 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B860 8013E394 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B864 8013E398 00000000 */  nop
    /* B868 8013E39C 0000428C */  lw         $v0, 0x0($v0)
    /* B86C 8013E3A0 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* B870 8013E3A4 24104300 */  and        $v0, $v0, $v1
    /* B874 8013E3A8 09004014 */  bnez       $v0, .L8013E3D0
    /* B878 8013E3AC 00000000 */   nop
    /* B87C 8013E3B0 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* B880 8013E3B4 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* B884 8013E3B8 00000000 */  nop
    /* B888 8013E3BC 0000428C */  lw         $v0, 0x0($v0)
    /* B88C 8013E3C0 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* B890 8013E3C4 24104300 */  and        $v0, $v0, $v1
    /* B894 8013E3C8 04004014 */  bnez       $v0, .L8013E3DC
    /* B898 8013E3CC 21100002 */   addu      $v0, $s0, $zero
  .L8013E3D0:
    /* B89C 8013E3D0 02000016 */  bnez       $s0, .L8013E3DC
    /* B8A0 8013E3D4 21100002 */   addu      $v0, $s0, $zero
    /* B8A4 8013E3D8 01000224 */  addiu      $v0, $zero, 0x1
  .L8013E3DC:
    /* B8A8 8013E3DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* B8AC 8013E3E0 1000B08F */  lw         $s0, 0x10($sp)
    /* B8B0 8013E3E4 0800E003 */  jr         $ra
    /* B8B4 8013E3E8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013E2B0
