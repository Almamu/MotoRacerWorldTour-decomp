nonmatching startIntrVSync, 0x120

glabel startIntrVSync
    /* 99B38 800AB328 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99B3C 800AB32C 0C80043C */  lui        $a0, %hi(D_800BE5F0)
    /* 99B40 800AB330 F0E58424 */  addiu      $a0, $a0, %lo(D_800BE5F0)
    /* 99B44 800AB334 0C80033C */  lui        $v1, %hi(D_800BE614)
    /* 99B48 800AB338 14E6638C */  lw         $v1, %lo(D_800BE614)($v1)
    /* 99B4C 800AB33C 00010224 */  addiu      $v0, $zero, 0x100
    /* 99B50 800AB340 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99B54 800AB344 000062AC */  sw         $v0, 0x0($v1)
    /* 99B58 800AB348 0C80013C */  lui        $at, %hi(D_800BE610)
    /* 99B5C 800AB34C 10E620AC */  sw         $zero, %lo(D_800BE610)($at)
    /* 99B60 800AB350 06AD020C */  jal        func_800AB418
    /* 99B64 800AB354 08000524 */   addiu     $a1, $zero, 0x8
    /* 99B68 800AB358 0B80053C */  lui        $a1, %hi(startIntrVSync + 0x58)
    /* 99B6C 800AB35C 80B3A524 */  addiu      $a1, $a1, %lo(startIntrVSync + 0x58)
    /* 99B70 800AB360 44AB020C */  jal        InterruptCallback
    /* 99B74 800AB364 21200000 */   addu      $a0, $zero, $zero
    /* 99B78 800AB368 0B80023C */  lui        $v0, %hi(D_800AB3EC)
    /* 99B7C 800AB36C ECB34224 */  addiu      $v0, $v0, %lo(D_800AB3EC)
    /* 99B80 800AB370 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99B84 800AB374 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99B88 800AB378 0800E003 */  jr         $ra
    /* 99B8C 800AB37C 00000000 */   nop
    /* 99B90 800AB380 0C80023C */  lui        $v0, %hi(D_800BE610)
    /* 99B94 800AB384 10E6428C */  lw         $v0, %lo(D_800BE610)($v0)
    /* 99B98 800AB388 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 99B9C 800AB38C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 99BA0 800AB390 21880000 */  addu       $s1, $zero, $zero
    /* 99BA4 800AB394 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99BA8 800AB398 0C80103C */  lui        $s0, %hi(D_800BE5F0)
    /* 99BAC 800AB39C F0E51026 */  addiu      $s0, $s0, %lo(D_800BE5F0)
    /* 99BB0 800AB3A0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 99BB4 800AB3A4 01004224 */  addiu      $v0, $v0, 0x1
    /* 99BB8 800AB3A8 0C80013C */  lui        $at, %hi(D_800BE610)
    /* 99BBC 800AB3AC 10E622AC */  sw         $v0, %lo(D_800BE610)($at)
  .L800AB3B0:
    /* 99BC0 800AB3B0 0000028E */  lw         $v0, 0x0($s0)
    /* 99BC4 800AB3B4 00000000 */  nop
    /* 99BC8 800AB3B8 03004010 */  beqz       $v0, .L800AB3C8
    /* 99BCC 800AB3BC 00000000 */   nop
    /* 99BD0 800AB3C0 09F84000 */  jalr       $v0
    /* 99BD4 800AB3C4 00000000 */   nop
  .L800AB3C8:
    /* 99BD8 800AB3C8 01003126 */  addiu      $s1, $s1, 0x1
    /* 99BDC 800AB3CC 0800222A */  slti       $v0, $s1, 0x8
    /* 99BE0 800AB3D0 F7FF4014 */  bnez       $v0, .L800AB3B0
    /* 99BE4 800AB3D4 04001026 */   addiu     $s0, $s0, 0x4
    /* 99BE8 800AB3D8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 99BEC 800AB3DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 99BF0 800AB3E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 99BF4 800AB3E4 0800E003 */  jr         $ra
    /* 99BF8 800AB3E8 2000BD27 */   addiu     $sp, $sp, 0x20
  alabel D_800AB3EC
    /* 99BFC 800AB3EC 0C80023C */  lui        $v0, %hi(D_800BE5F0)
    /* 99C00 800AB3F0 F0E54224 */  addiu      $v0, $v0, %lo(D_800BE5F0)
    /* 99C04 800AB3F4 80200400 */  sll        $a0, $a0, 2
    /* 99C08 800AB3F8 21208200 */  addu       $a0, $a0, $v0
    /* 99C0C 800AB3FC 0000828C */  lw         $v0, 0x0($a0)
    /* 99C10 800AB400 00000000 */  nop
    /* 99C14 800AB404 0200A210 */  beq        $a1, $v0, .L800AB410
    /* 99C18 800AB408 00000000 */   nop
    /* 99C1C 800AB40C 000085AC */  sw         $a1, 0x0($a0)
  .L800AB410:
    /* 99C20 800AB410 0800E003 */  jr         $ra
    /* 99C24 800AB414 00000000 */   nop
  alabel func_800AB418
    /* 99C28 800AB418 0600A010 */  beqz       $a1, .L800AB434
    /* 99C2C 800AB41C FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 99C30 800AB420 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800AB424:
    /* 99C34 800AB424 000080AC */  sw         $zero, 0x0($a0)
    /* 99C38 800AB428 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 99C3C 800AB42C FDFF4314 */  bne        $v0, $v1, .L800AB424
    /* 99C40 800AB430 04008424 */   addiu     $a0, $a0, 0x4
  .L800AB434:
    /* 99C44 800AB434 0800E003 */  jr         $ra
    /* 99C48 800AB438 00000000 */   nop
    /* 99C4C 800AB43C 00000000 */  nop
    /* 99C50 800AB440 00000000 */  nop
    /* 99C54 800AB444 00000000 */  nop
endlabel startIntrVSync
