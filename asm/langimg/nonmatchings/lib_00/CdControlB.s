nonmatching CdControlB, 0x14C

glabel CdControlB
    /* 9613C 800A792C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 96140 800A7930 1400B1AF */  sw         $s1, 0x14($sp)
    /* 96144 800A7934 2188A000 */  addu       $s1, $a1, $zero
    /* 96148 800A7938 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9614C 800A793C 2190C000 */  addu       $s2, $a2, $zero
    /* 96150 800A7940 2000B4AF */  sw         $s4, 0x20($sp)
    /* 96154 800A7944 21A08000 */  addu       $s4, $a0, $zero
    /* 96158 800A7948 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9615C 800A794C 03001024 */  addiu      $s0, $zero, 0x3
    /* 96160 800A7950 3000BEAF */  sw         $fp, 0x30($sp)
    /* 96164 800A7954 01001E24 */  addiu      $fp, $zero, 0x1
    /* 96168 800A7958 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9616C 800A795C FF009332 */  andi       $s3, $s4, 0xFF
    /* 96170 800A7960 0C80033C */  lui        $v1, %hi(D_800BCF90)
    /* 96174 800A7964 90CF6324 */  addiu      $v1, $v1, %lo(D_800BCF90)
    /* 96178 800A7968 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9617C 800A796C 0C80153C */  lui        $s5, %hi(D_800BD018)
    /* 96180 800A7970 18D0B58E */  lw         $s5, %lo(D_800BD018)($s5)
    /* 96184 800A7974 80101300 */  sll        $v0, $s3, 2
    /* 96188 800A7978 2800B6AF */  sw         $s6, 0x28($sp)
    /* 9618C 800A797C 21B04300 */  addu       $s6, $v0, $v1
    /* 96190 800A7980 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 96194 800A7984 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* 96198 800A7988 3400BFAF */  sw         $ra, 0x34($sp)
  .L800A798C:
    /* 9619C 800A798C 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 961A0 800A7990 0B007E12 */  beq        $s3, $fp, .L800A79C0
    /* 961A4 800A7994 18D020AC */   sw        $zero, %lo(D_800BD018)($at)
    /* 961A8 800A7998 0C80023C */  lui        $v0, %hi(D_800BD024)
    /* 961AC 800A799C 24D04290 */  lbu        $v0, %lo(D_800BD024)($v0)
    /* 961B0 800A79A0 00000000 */  nop
    /* 961B4 800A79A4 10004230 */  andi       $v0, $v0, 0x10
    /* 961B8 800A79A8 05004010 */  beqz       $v0, .L800A79C0
    /* 961BC 800A79AC 01000424 */   addiu     $a0, $zero, 0x1
    /* 961C0 800A79B0 21280000 */  addu       $a1, $zero, $zero
    /* 961C4 800A79B4 21300000 */  addu       $a2, $zero, $zero
    /* 961C8 800A79B8 D1A1020C */  jal        CD_cw
    /* 961CC 800A79BC 21380000 */   addu      $a3, $zero, $zero
  .L800A79C0:
    /* 961D0 800A79C0 0B002012 */  beqz       $s1, .L800A79F0
    /* 961D4 800A79C4 00000000 */   nop
    /* 961D8 800A79C8 0000C28E */  lw         $v0, 0x0($s6)
    /* 961DC 800A79CC 00000000 */  nop
    /* 961E0 800A79D0 07004010 */  beqz       $v0, .L800A79F0
    /* 961E4 800A79D4 02000424 */   addiu     $a0, $zero, 0x2
    /* 961E8 800A79D8 21282002 */  addu       $a1, $s1, $zero
    /* 961EC 800A79DC 21304002 */  addu       $a2, $s2, $zero
    /* 961F0 800A79E0 D1A1020C */  jal        CD_cw
    /* 961F4 800A79E4 21380000 */   addu      $a3, $zero, $zero
    /* 961F8 800A79E8 0A004014 */  bnez       $v0, .L800A7A14
    /* 961FC 800A79EC 00000000 */   nop
  .L800A79F0:
    /* 96200 800A79F0 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 96204 800A79F4 18D035AC */  sw         $s5, %lo(D_800BD018)($at)
    /* 96208 800A79F8 FF008432 */  andi       $a0, $s4, 0xFF
    /* 9620C 800A79FC 21282002 */  addu       $a1, $s1, $zero
    /* 96210 800A7A00 21304002 */  addu       $a2, $s2, $zero
    /* 96214 800A7A04 D1A1020C */  jal        CD_cw
    /* 96218 800A7A08 21380000 */   addu      $a3, $zero, $zero
    /* 9621C 800A7A0C 06004010 */  beqz       $v0, .L800A7A28
    /* 96220 800A7A10 21100000 */   addu      $v0, $zero, $zero
  .L800A7A14:
    /* 96224 800A7A14 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 96228 800A7A18 DCFF1716 */  bne        $s0, $s7, .L800A798C
    /* 9622C 800A7A1C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 96230 800A7A20 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 96234 800A7A24 18D035AC */  sw         $s5, %lo(D_800BD018)($at)
  .L800A7A28:
    /* 96238 800A7A28 06004014 */  bnez       $v0, .L800A7A44
    /* 9623C 800A7A2C 21200000 */   addu      $a0, $zero, $zero
    /* 96240 800A7A30 7FA0020C */  jal        CD_sync
    /* 96244 800A7A34 21284002 */   addu      $a1, $s2, $zero
    /* 96248 800A7A38 02004238 */  xori       $v0, $v0, 0x2
    /* 9624C 800A7A3C 929E0208 */  j          .L800A7A48
    /* 96250 800A7A40 0100422C */   sltiu     $v0, $v0, 0x1
  .L800A7A44:
    /* 96254 800A7A44 21100000 */  addu       $v0, $zero, $zero
  .L800A7A48:
    /* 96258 800A7A48 3400BF8F */  lw         $ra, 0x34($sp)
    /* 9625C 800A7A4C 3000BE8F */  lw         $fp, 0x30($sp)
    /* 96260 800A7A50 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 96264 800A7A54 2800B68F */  lw         $s6, 0x28($sp)
    /* 96268 800A7A58 2400B58F */  lw         $s5, 0x24($sp)
    /* 9626C 800A7A5C 2000B48F */  lw         $s4, 0x20($sp)
    /* 96270 800A7A60 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 96274 800A7A64 1800B28F */  lw         $s2, 0x18($sp)
    /* 96278 800A7A68 1400B18F */  lw         $s1, 0x14($sp)
    /* 9627C 800A7A6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 96280 800A7A70 0800E003 */  jr         $ra
    /* 96284 800A7A74 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel CdControlB
