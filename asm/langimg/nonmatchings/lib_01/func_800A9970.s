nonmatching func_800A9970, 0xA4

glabel func_800A9970
    /* 98180 800A9970 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 98184 800A9974 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 98188 800A9978 21988000 */  addu       $s3, $a0, $zero
    /* 9818C 800A997C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 98190 800A9980 21A0A000 */  addu       $s4, $a1, $zero
    /* 98194 800A9984 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98198 800A9988 21800000 */  addu       $s0, $zero, $zero
    /* 9819C 800A998C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 981A0 800A9990 0D80123C */  lui        $s2, %hi(D_800D6794)
    /* 981A4 800A9994 94675226 */  addiu      $s2, $s2, %lo(D_800D6794)
    /* 981A8 800A9998 1400B1AF */  sw         $s1, 0x14($sp)
    /* 981AC 800A999C 21880000 */  addu       $s1, $zero, $zero
    /* 981B0 800A99A0 2400BFAF */  sw         $ra, 0x24($sp)
  .L800A99A4:
    /* 981B4 800A99A4 0D80023C */  lui        $v0, %hi(D_800D678C)
    /* 981B8 800A99A8 21105100 */  addu       $v0, $v0, $s1
    /* 981BC 800A99AC 8C67428C */  lw         $v0, %lo(D_800D678C)($v0)
    /* 981C0 800A99B0 00000000 */  nop
    /* 981C4 800A99B4 0E004010 */  beqz       $v0, .L800A99F0
    /* 981C8 800A99B8 00000000 */   nop
    /* 981CC 800A99BC 07005314 */  bne        $v0, $s3, .L800A99DC
    /* 981D0 800A99C0 21208002 */   addu      $a0, $s4, $zero
    /* 981D4 800A99C4 FED8020C */  jal        func_800B63F8
    /* 981D8 800A99C8 21284002 */   addu      $a1, $s2, $zero
    /* 981DC 800A99CC 04004014 */  bnez       $v0, .L800A99E0
    /* 981E0 800A99D0 2C005226 */   addiu     $s2, $s2, 0x2C
    /* 981E4 800A99D4 7DA60208 */  j          .L800A99F4
    /* 981E8 800A99D8 01000226 */   addiu     $v0, $s0, 0x1
  .L800A99DC:
    /* 981EC 800A99DC 2C005226 */  addiu      $s2, $s2, 0x2C
  .L800A99E0:
    /* 981F0 800A99E0 01001026 */  addiu      $s0, $s0, 0x1
    /* 981F4 800A99E4 8000022A */  slti       $v0, $s0, 0x80
    /* 981F8 800A99E8 EEFF4014 */  bnez       $v0, .L800A99A4
    /* 981FC 800A99EC 2C003126 */   addiu     $s1, $s1, 0x2C
  .L800A99F0:
    /* 98200 800A99F0 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800A99F4:
    /* 98204 800A99F4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 98208 800A99F8 2000B48F */  lw         $s4, 0x20($sp)
    /* 9820C 800A99FC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 98210 800A9A00 1800B28F */  lw         $s2, 0x18($sp)
    /* 98214 800A9A04 1400B18F */  lw         $s1, 0x14($sp)
    /* 98218 800A9A08 1000B08F */  lw         $s0, 0x10($sp)
    /* 9821C 800A9A0C 0800E003 */  jr         $ra
    /* 98220 800A9A10 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A9970
