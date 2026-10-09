nonmatching _SpuInit, 0xE8

glabel _SpuInit
    /* 10BEC 80143720 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10BF0 80143724 1000B0AF */  sw         $s0, 0x10($sp)
    /* 10BF4 80143728 1400BFAF */  sw         $ra, 0x14($sp)
    /* 10BF8 8014372C A6EC040C */  jal        ResetCallback
    /* 10BFC 80143730 21808000 */   addu      $s0, $a0, $zero
    /* 10C00 80143734 4A0B050C */  jal        _spu_init
    /* 10C04 80143738 21200002 */   addu      $a0, $s0, $zero
    /* 10C08 8014373C 08000016 */  bnez       $s0, .L80143760
    /* 10C0C 80143740 00C00434 */   ori       $a0, $zero, 0xC000
    /* 10C10 80143744 17000324 */  addiu      $v1, $zero, 0x17
    /* 10C14 80143748 1C80023C */  lui        $v0, %hi(D_801BFFDE)
    /* 10C18 8014374C DEFF4224 */  addiu      $v0, $v0, %lo(D_801BFFDE)
  .L80143750:
    /* 10C1C 80143750 000044A4 */  sh         $a0, 0x0($v0)
    /* 10C20 80143754 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 10C24 80143758 FDFF6104 */  bgez       $v1, .L80143750
    /* 10C28 8014375C FEFF4224 */   addiu     $v0, $v0, -0x2
  .L80143760:
    /* 10C2C 80143760 020E050C */  jal        SpuStart
    /* 10C30 80143764 00000000 */   nop
    /* 10C34 80143768 D1000424 */  addiu      $a0, $zero, 0xD1
    /* 10C38 8014376C 1C80023C */  lui        $v0, %hi(D_801BFF98)
    /* 10C3C 80143770 98FF4224 */  addiu      $v0, $v0, %lo(D_801BFF98)
    /* 10C40 80143774 1C80053C */  lui        $a1, %hi(_spu_rev_startaddr)
    /* 10C44 80143778 0404A58C */  lw         $a1, %lo(_spu_rev_startaddr)($a1)
    /* 10C48 8014377C 1C80013C */  lui        $at, %hi(_spu_rev_flag)
    /* 10C4C 80143780 88FF20AC */  sw         $zero, %lo(_spu_rev_flag)($at)
    /* 10C50 80143784 1C80013C */  lui        $at, %hi(_spu_rev_reserve_wa)
    /* 10C54 80143788 8CFF20AC */  sw         $zero, %lo(_spu_rev_reserve_wa)($at)
    /* 10C58 8014378C 000040AC */  sw         $zero, 0x0($v0)
    /* 10C5C 80143790 040040A4 */  sh         $zero, 0x4($v0)
    /* 10C60 80143794 060040A4 */  sh         $zero, 0x6($v0)
    /* 10C64 80143798 080040AC */  sw         $zero, 0x8($v0)
    /* 10C68 8014379C 0C0040AC */  sw         $zero, 0xC($v0)
    /* 10C6C 801437A0 1C80013C */  lui        $at, %hi(_spu_rev_offsetaddr)
    /* 10C70 801437A4 90FF25AC */  sw         $a1, %lo(_spu_rev_offsetaddr)($at)
    /* 10C74 801437A8 4A0D050C */  jal        _spu_FsetRXX
    /* 10C78 801437AC 21300000 */   addu      $a2, $zero, $zero
    /* 10C7C 801437B0 1C80013C */  lui        $at, %hi(_spu_AllocBlockNum)
    /* 10C80 801437B4 F4FF20AC */  sw         $zero, %lo(_spu_AllocBlockNum)($at)
    /* 10C84 801437B8 1C80013C */  lui        $at, %hi(_spu_AllocLastNum)
    /* 10C88 801437BC F8FF20AC */  sw         $zero, %lo(_spu_AllocLastNum)($at)
    /* 10C8C 801437C0 1C80013C */  lui        $at, %hi(_spu_memList)
    /* 10C90 801437C4 FCFF20AC */  sw         $zero, %lo(_spu_memList)($at)
    /* 10C94 801437C8 1C80013C */  lui        $at, %hi(_spu_trans_mode)
    /* 10C98 801437CC 84FF20AC */  sw         $zero, %lo(_spu_trans_mode)($at)
    /* 10C9C 801437D0 1C80013C */  lui        $at, %hi(_spu_transMode)
    /* 10CA0 801437D4 30FF20AC */  sw         $zero, %lo(_spu_transMode)($at)
    /* 10CA4 801437D8 1C80013C */  lui        $at, %hi(_spu_keystat)
    /* 10CA8 801437DC 80FF20AC */  sw         $zero, %lo(_spu_keystat)($at)
    /* 10CAC 801437E0 1C80013C */  lui        $at, %hi(_spu_RQmask)
    /* 10CB0 801437E4 ACFF20AC */  sw         $zero, %lo(_spu_RQmask)($at)
    /* 10CB4 801437E8 1C80013C */  lui        $at, %hi(_spu_RQvoice)
    /* 10CB8 801437EC A8FF20AC */  sw         $zero, %lo(_spu_RQvoice)($at)
    /* 10CBC 801437F0 1C80013C */  lui        $at, %hi(_spu_env)
    /* 10CC0 801437F4 E0FF20AC */  sw         $zero, %lo(_spu_env)($at)
    /* 10CC4 801437F8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 10CC8 801437FC 1000B08F */  lw         $s0, 0x10($sp)
    /* 10CCC 80143800 0800E003 */  jr         $ra
    /* 10CD0 80143804 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel _SpuInit
