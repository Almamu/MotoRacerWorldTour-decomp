nonmatching CdRead, 0x19C

glabel CdRead
    /* 6EBC 801399F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6EC0 801399F4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6EC4 801399F8 21A08000 */  addu       $s4, $a0, $zero
    /* 6EC8 801399FC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6ECC 80139A00 2198A000 */  addu       $s3, $a1, $zero
    /* 6ED0 80139A04 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6ED4 80139A08 1C80103C */  lui        $s0, %hi(D_801BDC9C)
    /* 6ED8 80139A0C 9CDC1026 */  addiu      $s0, $s0, %lo(D_801BDC9C)
    /* 6EDC 80139A10 2400BFAF */  sw         $ra, 0x24($sp)
    /* 6EE0 80139A14 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6EE4 80139A18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6EE8 80139A1C 0000028E */  lw         $v0, 0x0($s0)
    /* 6EEC 80139A20 00000000 */  nop
    /* 6EF0 80139A24 11004010 */  beqz       $v0, .L80139A6C
    /* 6EF4 80139A28 2190C000 */   addu      $s2, $a2, $zero
    /* 6EF8 80139A2C 22EC040C */  jal        VSync
    /* 6EFC 80139A30 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 6F00 80139A34 0000038E */  lw         $v1, 0x0($s0)
    /* 6F04 80139A38 00000000 */  nop
    /* 6F08 80139A3C 0B006010 */  beqz       $v1, .L80139A6C
    /* 6F0C 80139A40 21884000 */   addu      $s1, $v0, $zero
  .L80139A44:
    /* 6F10 80139A44 22EC040C */  jal        VSync
    /* 6F14 80139A48 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 6F18 80139A4C 23105100 */  subu       $v0, $v0, $s1
    /* 6F1C 80139A50 7900422C */  sltiu      $v0, $v0, 0x79
    /* 6F20 80139A54 11004010 */  beqz       $v0, .L80139A9C
    /* 6F24 80139A58 00000000 */   nop
    /* 6F28 80139A5C 0000028E */  lw         $v0, 0x0($s0)
    /* 6F2C 80139A60 00000000 */  nop
    /* 6F30 80139A64 F7FF4014 */  bnez       $v0, .L80139A44
    /* 6F34 80139A68 00000000 */   nop
  .L80139A6C:
    /* 6F38 80139A6C 1C80043C */  lui        $a0, %hi(D_801BDC78)
    /* 6F3C 80139A70 78DC8424 */  addiu      $a0, $a0, %lo(D_801BDC78)
    /* 6F40 80139A74 0C0092AC */  sw         $s2, 0xC($a0)
    /* 6F44 80139A78 0C00828C */  lw         $v0, 0xC($a0)
    /* 6F48 80139A7C 00000000 */  nop
    /* 6F4C 80139A80 30004330 */  andi       $v1, $v0, 0x30
    /* 6F50 80139A84 0D006010 */  beqz       $v1, .L80139ABC
    /* 6F54 80139A88 20000224 */   addiu     $v0, $zero, 0x20
    /* 6F58 80139A8C 0E006210 */  beq        $v1, $v0, .L80139AC8
    /* 6F5C 80139A90 46020224 */   addiu     $v0, $zero, 0x246
    /* 6F60 80139A94 B5E60408 */  j          .L80139AD4
    /* 6F64 80139A98 00000000 */   nop
  .L80139A9C:
    /* 6F68 80139A9C 1C80103C */  lui        $s0, %hi(D_801BDCA0)
    /* 6F6C 80139AA0 A0DC1026 */  addiu      $s0, $s0, %lo(D_801BDCA0)
    /* 6F70 80139AA4 0000048E */  lw         $a0, 0x0($s0)
    /* 6F74 80139AA8 AADB040C */  jal        CdSyncCallback
    /* 6F78 80139AAC D8FF1026 */   addiu     $s0, $s0, -0x28
    /* 6F7C 80139AB0 240000AE */  sw         $zero, 0x24($s0)
    /* 6F80 80139AB4 9BE60408 */  j          .L80139A6C
    /* 6F84 80139AB8 00000000 */   nop
  .L80139ABC:
    /* 6F88 80139ABC 00020224 */  addiu      $v0, $zero, 0x200
    /* 6F8C 80139AC0 B8E60408 */  j          .L80139AE0
    /* 6F90 80139AC4 100082AC */   sw        $v0, 0x10($a0)
  .L80139AC8:
    /* 6F94 80139AC8 49020224 */  addiu      $v0, $zero, 0x249
    /* 6F98 80139ACC B8E60408 */  j          .L80139AE0
    /* 6F9C 80139AD0 100082AC */   sw        $v0, 0x10($a0)
  .L80139AD4:
    /* 6FA0 80139AD4 1C80033C */  lui        $v1, %hi(D_801BDC78)
    /* 6FA4 80139AD8 78DC6324 */  addiu      $v1, $v1, %lo(D_801BDC78)
    /* 6FA8 80139ADC 100062AC */  sw         $v0, 0x10($v1)
  .L80139AE0:
    /* 6FAC 80139AE0 1C80103C */  lui        $s0, %hi(D_801BDC78)
    /* 6FB0 80139AE4 78DC1026 */  addiu      $s0, $s0, %lo(D_801BDC78)
    /* 6FB4 80139AE8 0C00028E */  lw         $v0, 0xC($s0)
    /* 6FB8 80139AEC 21200000 */  addu       $a0, $zero, $zero
    /* 6FBC 80139AF0 20004234 */  ori        $v0, $v0, 0x20
    /* 6FC0 80139AF4 0C0002AE */  sw         $v0, 0xC($s0)
    /* 6FC4 80139AF8 040013AE */  sw         $s3, 0x4($s0)
    /* 6FC8 80139AFC AADB040C */  jal        CdSyncCallback
    /* 6FCC 80139B00 000014AE */   sw        $s4, 0x0($s0)
    /* 6FD0 80139B04 21200000 */  addu       $a0, $zero, $zero
    /* 6FD4 80139B08 AFDB040C */  jal        CdReadyCallback
    /* 6FD8 80139B0C 280002AE */   sw        $v0, 0x28($s0)
    /* 6FDC 80139B10 1C80033C */  lui        $v1, %hi(D_801BD8BC)
    /* 6FE0 80139B14 BCD8638C */  lw         $v1, %lo(D_801BD8BC)($v1)
    /* 6FE4 80139B18 2C0002AE */  sw         $v0, 0x2C($s0)
    /* 6FE8 80139B1C 01006330 */  andi       $v1, $v1, 0x1
    /* 6FEC 80139B20 04006010 */  beqz       $v1, .L80139B34
    /* 6FF0 80139B24 00000000 */   nop
    /* 6FF4 80139B28 B3DC040C */  jal        CdDataCallback
    /* 6FF8 80139B2C 21200000 */   addu      $a0, $zero, $zero
    /* 6FFC 80139B30 300002AE */  sw         $v0, 0x30($s0)
  .L80139B34:
    /* 7000 80139B34 22EC040C */  jal        VSync
    /* 7004 80139B38 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 7008 80139B3C 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 700C 80139B40 8ADB040C */  jal        func_80136E28
    /* 7010 80139B44 00000000 */   nop
    /* 7014 80139B48 E0004230 */  andi       $v0, $v0, 0xE0
    /* 7018 80139B4C 04004010 */  beqz       $v0, .L80139B60
    /* 701C 80139B50 09000424 */   addiu     $a0, $zero, 0x9
    /* 7020 80139B54 21280000 */  addu       $a1, $zero, $zero
    /* 7024 80139B58 50DC040C */  jal        CdControlB
    /* 7028 80139B5C 21300000 */   addu      $a2, $zero, $zero
  .L80139B60:
    /* 702C 80139B60 02E6040C */  jal        func_80139808
    /* 7030 80139B64 21200000 */   addu      $a0, $zero, $zero
    /* 7034 80139B68 2A100200 */  slt        $v0, $zero, $v0
    /* 7038 80139B6C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 703C 80139B70 2000B48F */  lw         $s4, 0x20($sp)
    /* 7040 80139B74 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7044 80139B78 1800B28F */  lw         $s2, 0x18($sp)
    /* 7048 80139B7C 1400B18F */  lw         $s1, 0x14($sp)
    /* 704C 80139B80 1000B08F */  lw         $s0, 0x10($sp)
    /* 7050 80139B84 0800E003 */  jr         $ra
    /* 7054 80139B88 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel CdRead
