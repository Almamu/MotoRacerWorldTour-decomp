nonmatching PadStartCom, 0xCC

glabel PadStartCom
    /* D7D4 80140308 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D7D8 8014030C 1400BFAF */  sw         $ra, 0x14($sp)
    /* D7DC 80140310 1000B0AF */  sw         $s0, 0x10($sp)
    /* D7E0 80140314 1C80013C */  lui        $at, %hi(D_801BFE94)
    /* D7E4 80140318 FF2A050C */  jal        EnterCriticalSection
    /* D7E8 8014031C 94FE20AC */   sw        $zero, %lo(D_801BFE94)($at)
    /* D7EC 80140320 02000424 */  addiu      $a0, $zero, 0x2
    /* D7F0 80140324 1D80103C */  lui        $s0, %hi(D_801CE780)
    /* D7F4 80140328 80E71026 */  addiu      $s0, $s0, %lo(D_801CE780)
    /* D7F8 8014032C 0F2B050C */  jal        SysDeqIntRP
    /* D7FC 80140330 21280002 */   addu      $a1, $s0, $zero
    /* D800 80140334 02000424 */  addiu      $a0, $zero, 0x2
    /* D804 80140338 0B2B050C */  jal        SysEnqIntRP
    /* D808 8014033C 21280002 */   addu      $a1, $s0, $zero
    /* D80C 80140340 03000424 */  addiu      $a0, $zero, 0x3
    /* D810 80140344 1C80033C */  lui        $v1, %hi(D_801BFEBC)
    /* D814 80140348 BCFE638C */  lw         $v1, %lo(D_801BFEBC)($v1)
    /* D818 8014034C FEFF0224 */  addiu      $v0, $zero, -0x2
    /* D81C 80140350 000062AC */  sw         $v0, 0x0($v1)
    /* D820 80140354 0400628C */  lw         $v0, 0x4($v1)
    /* D824 80140358 21280000 */  addu       $a1, $zero, $zero
    /* D828 8014035C 01004234 */  ori        $v0, $v0, 0x1
    /* D82C 80140360 132B050C */  jal        ChangeClearRCnt
    /* D830 80140364 040062AC */   sw        $v0, 0x4($v1)
    /* D834 80140368 032B050C */  jal        ExitCriticalSection
    /* D838 8014036C 00000000 */   nop
    /* D83C 80140370 1C80043C */  lui        $a0, %hi(D_801BFE90)
    /* D840 80140374 90FE848C */  lw         $a0, %lo(D_801BFE90)($a0)
    /* D844 80140378 1C80023C */  lui        $v0, %hi(_padFuncClrInfo)
    /* D848 8014037C 60FE428C */  lw         $v0, %lo(_padFuncClrInfo)($v0)
    /* D84C 80140380 00000000 */  nop
    /* D850 80140384 09F84000 */  jalr       $v0
    /* D854 80140388 00000000 */   nop
    /* D858 8014038C 1C80043C */  lui        $a0, %hi(D_801BFE90)
    /* D85C 80140390 90FE848C */  lw         $a0, %lo(D_801BFE90)($a0)
    /* D860 80140394 1C80023C */  lui        $v0, %hi(_padFuncClrInfo)
    /* D864 80140398 60FE428C */  lw         $v0, %lo(_padFuncClrInfo)($v0)
    /* D868 8014039C 00000000 */  nop
    /* D86C 801403A0 09F84000 */  jalr       $v0
    /* D870 801403A4 F0008424 */   addiu     $a0, $a0, 0xF0
    /* D874 801403A8 1D80023C */  lui        $v0, %hi(D_801CE790)
    /* D878 801403AC 90E74224 */  addiu      $v0, $v0, %lo(D_801CE790)
    /* D87C 801403B0 040040AC */  sw         $zero, 0x4($v0)
    /* D880 801403B4 000040AC */  sw         $zero, 0x0($v0)
    /* D884 801403B8 01000224 */  addiu      $v0, $zero, 0x1
    /* D888 801403BC 1C80013C */  lui        $at, %hi(D_801BFE94)
    /* D88C 801403C0 94FE22AC */  sw         $v0, %lo(D_801BFE94)($at)
    /* D890 801403C4 1400BF8F */  lw         $ra, 0x14($sp)
    /* D894 801403C8 1000B08F */  lw         $s0, 0x10($sp)
    /* D898 801403CC 0800E003 */  jr         $ra
    /* D89C 801403D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel PadStartCom
