nonmatching func_800AB380, 0x6C

glabel func_800AB380
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
endlabel func_800AB380
