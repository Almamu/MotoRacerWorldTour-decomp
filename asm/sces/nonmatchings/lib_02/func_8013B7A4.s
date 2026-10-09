nonmatching func_8013B7A4, 0xA0

glabel func_8013B7A4
    /* 8C70 8013B7A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C74 8013B7A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C78 8013B7AC 1C80103C */  lui        $s0, %hi(D_801BDF40)
    /* 8C7C 8013B7B0 40DF1026 */  addiu      $s0, $s0, %lo(D_801BDF40)
    /* 8C80 8013B7B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8C84 8013B7B8 00000296 */  lhu        $v0, 0x0($s0)
    /* 8C88 8013B7BC 00000000 */  nop
    /* 8C8C 8013B7C0 1C004010 */  beqz       $v0, .L8013B834
    /* 8C90 8013B7C4 21100000 */   addu      $v0, $zero, $zero
    /* 8C94 8013B7C8 FF2A050C */  jal        func_8014ABFC
    /* 8C98 8013B7CC 00000000 */   nop
    /* 8C9C 8013B7D0 1C80023C */  lui        $v0, %hi(D_801BEFD0)
    /* 8CA0 8013B7D4 D0EF428C */  lw         $v0, %lo(D_801BEFD0)($v0)
    /* 8CA4 8013B7D8 1C80043C */  lui        $a0, %hi(D_801BEFD4)
    /* 8CA8 8013B7DC D4EF848C */  lw         $a0, %lo(D_801BEFD4)($a0)
    /* 8CAC 8013B7E0 00004394 */  lhu        $v1, 0x0($v0)
    /* 8CB0 8013B7E4 00000000 */  nop
    /* 8CB4 8013B7E8 320003A6 */  sh         $v1, 0x32($s0)
    /* 8CB8 8013B7EC 0000838C */  lw         $v1, 0x0($a0)
    /* 8CBC 8013B7F0 1C80043C */  lui        $a0, %hi(D_801BEFCC)
    /* 8CC0 8013B7F4 CCEF848C */  lw         $a0, %lo(D_801BEFCC)($a0)
    /* 8CC4 8013B7F8 340003AE */  sw         $v1, 0x34($s0)
    /* 8CC8 8013B7FC 000040A4 */  sh         $zero, 0x0($v0)
    /* 8CCC 8013B800 00004294 */  lhu        $v0, 0x0($v0)
    /* 8CD0 8013B804 00000000 */  nop
    /* 8CD4 8013B808 000082A4 */  sh         $v0, 0x0($a0)
    /* 8CD8 8013B80C 1C80043C */  lui        $a0, %hi(D_801BEFD4)
    /* 8CDC 8013B810 D4EF848C */  lw         $a0, %lo(D_801BEFD4)($a0)
    /* 8CE0 8013B814 7777033C */  lui        $v1, (0x77777777 >> 16)
    /* 8CE4 8013B818 0000828C */  lw         $v0, 0x0($a0)
    /* 8CE8 8013B81C 77776334 */  ori        $v1, $v1, (0x77777777 & 0xFFFF)
    /* 8CEC 8013B820 24104300 */  and        $v0, $v0, $v1
    /* 8CF0 8013B824 F72A050C */  jal        func_8014ABDC
    /* 8CF4 8013B828 000082AC */   sw        $v0, 0x0($a0)
    /* 8CF8 8013B82C 21100002 */  addu       $v0, $s0, $zero
    /* 8CFC 8013B830 000040A4 */  sh         $zero, 0x0($v0)
  .L8013B834:
    /* 8D00 8013B834 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8D04 8013B838 1000B08F */  lw         $s0, 0x10($sp)
    /* 8D08 8013B83C 0800E003 */  jr         $ra
    /* 8D0C 8013B840 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013B7A4
