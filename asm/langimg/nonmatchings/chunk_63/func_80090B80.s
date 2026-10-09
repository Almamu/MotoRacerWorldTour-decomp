nonmatching func_80090B80, 0xAC

glabel func_80090B80
    /* 7F390 80090B80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7F394 80090B84 21408000 */  addu       $t0, $a0, $zero
    /* 7F398 80090B88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7F39C 80090B8C 2180A000 */  addu       $s0, $a1, $zero
    /* 7F3A0 80090B90 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7F3A4 80090B94 00000281 */  lb         $v0, 0x0($t0)
    /* 7F3A8 80090B98 0000078E */  lw         $a3, 0x0($s0)
    /* 7F3AC 80090B9C 0B004018 */  blez       $v0, .L80090BCC
    /* 7F3B0 80090BA0 21300000 */   addu      $a2, $zero, $zero
  .L80090BA4:
    /* 7F3B4 80090BA4 0000E58C */  lw         $a1, 0x0($a3)
    /* 7F3B8 80090BA8 0800048D */  lw         $a0, 0x8($t0)
    /* 7F3BC 80090BAC C0110600 */  sll        $v0, $a2, 7
    /* 7F3C0 80090BB0 21104400 */  addu       $v0, $v0, $a0
    /* 7F3C4 80090BB4 100045AC */  sw         $a1, 0x10($v0)
    /* 7F3C8 80090BB8 00000381 */  lb         $v1, 0x0($t0)
    /* 7F3CC 80090BBC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 7F3D0 80090BC0 2A18C300 */  slt        $v1, $a2, $v1
    /* 7F3D4 80090BC4 F7FF6014 */  bnez       $v1, .L80090BA4
    /* 7F3D8 80090BC8 0400E724 */   addiu     $a3, $a3, 0x4
  .L80090BCC:
    /* 7F3DC 80090BCC F044020C */  jal        func_800913C0
    /* 7F3E0 80090BD0 21200001 */   addu      $a0, $t0, $zero
    /* 7F3E4 80090BD4 0000048E */  lw         $a0, 0x0($s0)
    /* 7F3E8 80090BD8 00000000 */  nop
    /* 7F3EC 80090BDC 04008010 */  beqz       $a0, .L80090BF0
    /* 7F3F0 80090BE0 00000000 */   nop
    /* 7F3F4 80090BE4 8D9C020C */  jal        __builtin_vec_delete
    /* 7F3F8 80090BE8 00000000 */   nop
    /* 7F3FC 80090BEC 000000AE */  sw         $zero, 0x0($s0)
  .L80090BF0:
    /* 7F400 80090BF0 0400048E */  lw         $a0, 0x4($s0)
    /* 7F404 80090BF4 00000000 */  nop
    /* 7F408 80090BF8 04008010 */  beqz       $a0, .L80090C0C
    /* 7F40C 80090BFC 00000000 */   nop
    /* 7F410 80090C00 8D9C020C */  jal        __builtin_vec_delete
    /* 7F414 80090C04 00000000 */   nop
    /* 7F418 80090C08 040000AE */  sw         $zero, 0x4($s0)
  .L80090C0C:
    /* 7F41C 80090C0C 03000012 */  beqz       $s0, .L80090C1C
    /* 7F420 80090C10 00000000 */   nop
    /* 7F424 80090C14 679C020C */  jal        __builtin_delete
    /* 7F428 80090C18 21200002 */   addu      $a0, $s0, $zero
  .L80090C1C:
    /* 7F42C 80090C1C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7F430 80090C20 1000B08F */  lw         $s0, 0x10($sp)
    /* 7F434 80090C24 0800E003 */  jr         $ra
    /* 7F438 80090C28 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80090B80
