nonmatching func_8009F760, 0xCC

glabel func_8009F760
    /* 8DF70 8009F760 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DF74 8009F764 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DF78 8009F768 9C0A828C */  lw         $v0, 0xA9C($a0)
    /* 8DF7C 8009F76C 1400A014 */  bnez       $a1, .L8009F7C0
    /* 8DF80 8009F770 00000000 */   nop
    /* 8DF84 8009F774 0D80083C */  lui        $t0, %hi(D_800D497C)
    /* 8DF88 8009F778 7C490825 */  addiu      $t0, $t0, %lo(D_800D497C)
    /* 8DF8C 8009F77C 0000038D */  lw         $v1, 0x0($t0)
    /* 8DF90 8009F780 0400068D */  lw         $a2, 0x4($t0)
    /* 8DF94 8009F784 0800078D */  lw         $a3, 0x8($t0)
    /* 8DF98 8009F788 400043AC */  sw         $v1, 0x40($v0)
    /* 8DF9C 8009F78C 440046AC */  sw         $a2, 0x44($v0)
    /* 8DFA0 8009F790 480047AC */  sw         $a3, 0x48($v0)
    /* 8DFA4 8009F794 0C00038D */  lw         $v1, 0xC($t0)
    /* 8DFA8 8009F798 1000068D */  lw         $a2, 0x10($t0)
    /* 8DFAC 8009F79C 1400078D */  lw         $a3, 0x14($t0)
    /* 8DFB0 8009F7A0 4C0043AC */  sw         $v1, 0x4C($v0)
    /* 8DFB4 8009F7A4 500046AC */  sw         $a2, 0x50($v0)
    /* 8DFB8 8009F7A8 540047AC */  sw         $a3, 0x54($v0)
    /* 8DFBC 8009F7AC 1800038D */  lw         $v1, 0x18($t0)
    /* 8DFC0 8009F7B0 00000000 */  nop
    /* 8DFC4 8009F7B4 580043AC */  sw         $v1, 0x58($v0)
    /* 8DFC8 8009F7B8 017E0208 */  j          .L8009F804
    /* 8DFCC 8009F7BC 00000000 */   nop
  .L8009F7C0:
    /* 8DFD0 8009F7C0 0D80083C */  lui        $t0, %hi(D_800D497C)
    /* 8DFD4 8009F7C4 7C490825 */  addiu      $t0, $t0, %lo(D_800D497C)
    /* 8DFD8 8009F7C8 4000438C */  lw         $v1, 0x40($v0)
    /* 8DFDC 8009F7CC 4400468C */  lw         $a2, 0x44($v0)
    /* 8DFE0 8009F7D0 4800478C */  lw         $a3, 0x48($v0)
    /* 8DFE4 8009F7D4 000003AD */  sw         $v1, 0x0($t0)
    /* 8DFE8 8009F7D8 040006AD */  sw         $a2, 0x4($t0)
    /* 8DFEC 8009F7DC 080007AD */  sw         $a3, 0x8($t0)
    /* 8DFF0 8009F7E0 4C00438C */  lw         $v1, 0x4C($v0)
    /* 8DFF4 8009F7E4 5000468C */  lw         $a2, 0x50($v0)
    /* 8DFF8 8009F7E8 5400478C */  lw         $a3, 0x54($v0)
    /* 8DFFC 8009F7EC 0C0003AD */  sw         $v1, 0xC($t0)
    /* 8E000 8009F7F0 100006AD */  sw         $a2, 0x10($t0)
    /* 8E004 8009F7F4 140007AD */  sw         $a3, 0x14($t0)
    /* 8E008 8009F7F8 5800438C */  lw         $v1, 0x58($v0)
    /* 8E00C 8009F7FC 00000000 */  nop
    /* 8E010 8009F800 180003AD */  sw         $v1, 0x18($t0)
  .L8009F804:
    /* 8E014 8009F804 0D80043C */  lui        $a0, %hi(D_800D489C)
    /* 8E018 8009F808 9C488424 */  addiu      $a0, $a0, %lo(D_800D489C)
    /* 8E01C 8009F80C 2182020C */  jal        func_800A0884
    /* 8E020 8009F810 E0008424 */   addiu     $a0, $a0, 0xE0
    /* 8E024 8009F814 A47D020C */  jal        func_8009F690
    /* 8E028 8009F818 00000000 */   nop
    /* 8E02C 8009F81C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8E030 8009F820 00000000 */  nop
    /* 8E034 8009F824 0800E003 */  jr         $ra
    /* 8E038 8009F828 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F760
