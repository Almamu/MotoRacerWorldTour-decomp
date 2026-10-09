nonmatching SpuSetReverb, 0xD0

glabel SpuSetReverb
    /* 13CA0 801467D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 13CA4 801467D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 13CA8 801467DC 21808000 */  addu       $s0, $a0, $zero
    /* 13CAC 801467E0 06000012 */  beqz       $s0, .L801467FC
    /* 13CB0 801467E4 1400BFAF */   sw        $ra, 0x14($sp)
    /* 13CB4 801467E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 13CB8 801467EC 0B000212 */  beq        $s0, $v0, .L8014681C
    /* 13CBC 801467F0 00000000 */   nop
    /* 13CC0 801467F4 221A0508 */  j          .L80146888
    /* 13CC4 801467F8 00000000 */   nop
  .L801467FC:
    /* 13CC8 801467FC 1C80033C */  lui        $v1, %hi(_spu_RXX)
    /* 13CCC 80146800 14FF638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* 13CD0 80146804 00000000 */  nop
    /* 13CD4 80146808 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* 13CD8 8014680C 1C80013C */  lui        $at, %hi(_spu_rev_flag)
    /* 13CDC 80146810 88FF20AC */  sw         $zero, %lo(_spu_rev_flag)($at)
    /* 13CE0 80146814 211A0508 */  j          .L80146884
    /* 13CE4 80146818 7FFF4230 */   andi      $v0, $v0, 0xFF7F
  .L8014681C:
    /* 13CE8 8014681C 1C80023C */  lui        $v0, %hi(_spu_rev_reserve_wa)
    /* 13CEC 80146820 8CFF428C */  lw         $v0, %lo(_spu_rev_reserve_wa)($v0)
    /* 13CF0 80146824 00000000 */  nop
    /* 13CF4 80146828 0F005010 */  beq        $v0, $s0, .L80146868
    /* 13CF8 8014682C 00000000 */   nop
    /* 13CFC 80146830 1C80043C */  lui        $a0, %hi(_spu_rev_offsetaddr)
    /* 13D00 80146834 90FF848C */  lw         $a0, %lo(_spu_rev_offsetaddr)($a0)
    /* 13D04 80146838 2C0E050C */  jal        _SpuIsInAllocateArea_
    /* 13D08 8014683C 00000000 */   nop
    /* 13D0C 80146840 09004010 */  beqz       $v0, .L80146868
    /* 13D10 80146844 00000000 */   nop
    /* 13D14 80146848 1C80033C */  lui        $v1, %hi(_spu_RXX)
    /* 13D18 8014684C 14FF638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* 13D1C 80146850 00000000 */  nop
    /* 13D20 80146854 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* 13D24 80146858 1C80013C */  lui        $at, %hi(_spu_rev_flag)
    /* 13D28 8014685C 88FF20AC */  sw         $zero, %lo(_spu_rev_flag)($at)
    /* 13D2C 80146860 211A0508 */  j          .L80146884
    /* 13D30 80146864 7FFF4230 */   andi      $v0, $v0, 0xFF7F
  .L80146868:
    /* 13D34 80146868 1C80033C */  lui        $v1, %hi(_spu_RXX)
    /* 13D38 8014686C 14FF638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* 13D3C 80146870 00000000 */  nop
    /* 13D40 80146874 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* 13D44 80146878 1C80013C */  lui        $at, %hi(_spu_rev_flag)
    /* 13D48 8014687C 88FF30AC */  sw         $s0, %lo(_spu_rev_flag)($at)
    /* 13D4C 80146880 80004234 */  ori        $v0, $v0, 0x80
  .L80146884:
    /* 13D50 80146884 AA0162A4 */  sh         $v0, 0x1AA($v1)
  .L80146888:
    /* 13D54 80146888 1C80023C */  lui        $v0, %hi(_spu_rev_flag)
    /* 13D58 8014688C 88FF428C */  lw         $v0, %lo(_spu_rev_flag)($v0)
    /* 13D5C 80146890 1400BF8F */  lw         $ra, 0x14($sp)
    /* 13D60 80146894 1000B08F */  lw         $s0, 0x10($sp)
    /* 13D64 80146898 0800E003 */  jr         $ra
    /* 13D68 8014689C 1800BD27 */   addiu     $sp, $sp, 0x18
    /* 13D6C 801468A0 00000000 */  nop
endlabel SpuSetReverb
