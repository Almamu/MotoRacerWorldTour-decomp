/* Handwritten function */
nonmatching EntryPoint, 0xA8

glabel EntryPoint
    /* 95894 800A7084 0D80023C */  lui        $v0, %hi(D_800C9F48)
    /* 95898 800A7088 489F4224 */  addiu      $v0, $v0, %lo(D_800C9F48)
    /* 9589C 800A708C 0E80033C */  lui        $v1, %hi(D_800DE7B0)
    /* 958A0 800A7090 B0E76324 */  addiu      $v1, $v1, %lo(D_800DE7B0)
  .L800A7094:
    /* 958A4 800A7094 000040AC */  sw         $zero, 0x0($v0)
    /* 958A8 800A7098 04004224 */  addiu      $v0, $v0, 0x4
    /* 958AC 800A709C 2B084300 */  sltu       $at, $v0, $v1
    /* 958B0 800A70A0 FCFF2014 */  bnez       $at, .L800A7094
    /* 958B4 800A70A4 00000000 */   nop
    /* 958B8 800A70A8 0D80023C */  lui        $v0, %hi(D_800C8DC4)
    /* 958BC 800A70AC C48D428C */  lw         $v0, %lo(D_800C8DC4)($v0)
    /* 958C0 800A70B0 00000000 */  nop
    /* 958C4 800A70B4 F8FF4220 */  addi       $v0, $v0, -0x8 /* handwritten instruction */
    /* 958C8 800A70B8 0080083C */  lui        $t0, %hi(D_80000004)
    /* 958CC 800A70BC 25E84800 */  or         $sp, $v0, $t0
    /* 958D0 800A70C0 0E80043C */  lui        $a0, %hi(D_800DE7B0)
    /* 958D4 800A70C4 B0E78424 */  addiu      $a0, $a0, %lo(D_800DE7B0)
    /* 958D8 800A70C8 C0200400 */  sll        $a0, $a0, 3
    /* 958DC 800A70CC C2200400 */  srl        $a0, $a0, 3
    /* 958E0 800A70D0 0D80033C */  lui        $v1, %hi(D_800C8DC8)
    /* 958E4 800A70D4 C88D638C */  lw         $v1, %lo(D_800C8DC8)($v1)
    /* 958E8 800A70D8 00000000 */  nop
    /* 958EC 800A70DC 23284300 */  subu       $a1, $v0, $v1
    /* 958F0 800A70E0 2328A400 */  subu       $a1, $a1, $a0
    /* 958F4 800A70E4 0C80013C */  lui        $at, %hi(D_800BCF64)
    /* 958F8 800A70E8 64CF25AC */  sw         $a1, %lo(D_800BCF64)($at)
    /* 958FC 800A70EC 25208800 */  or         $a0, $a0, $t0
    /* 95900 800A70F0 0C80013C */  lui        $at, %hi(D_800BCF60)
    /* 95904 800A70F4 60CF24AC */  sw         $a0, %lo(D_800BCF60)($at)
    /* 95908 800A70F8 0D80013C */  lui        $at, %hi(D_800CC4C0)
    /* 9590C 800A70FC C0C43FAC */  sw         $ra, %lo(D_800CC4C0)($at)
    /* 95910 800A7100 0C801C3C */  lui        $gp, %hi(_gp)
    /* 95914 800A7104 F0469C27 */  addiu      $gp, $gp, %lo(_gp)
    /* 95918 800A7108 21F0A003 */  addu       $fp, $sp, $zero
    /* 9591C 800A710C B0D4020C */  jal        func_800B52C0
    /* 95920 800A7110 04008420 */   addi      $a0, $a0, %lo(D_80000004) /* handwritten instruction */
    /* 95924 800A7114 0D801F3C */  lui        $ra, %hi(D_800CC4C0)
    /* 95928 800A7118 C0C4FF8F */  lw         $ra, %lo(D_800CC4C0)($ra)
    /* 9592C 800A711C 00000000 */  nop
    /* 95930 800A7120 CB67020C */  jal        func_80099F2C
    /* 95934 800A7124 00000000 */   nop
    /* 95938 800A7128 4D000000 */  break      0, 1
endlabel EntryPoint
