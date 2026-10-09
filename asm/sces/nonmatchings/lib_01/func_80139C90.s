nonmatching func_80139C90, 0x84

glabel func_80139C90
    /* 715C 80139C90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7160 80139C94 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7164 80139C98 21808000 */  addu       $s0, $a0, $zero
    /* 7168 80139C9C 0E000424 */  addiu      $a0, $zero, 0xE
    /* 716C 80139CA0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 7170 80139CA4 21300000 */  addu       $a2, $zero, $zero
    /* 7174 80139CA8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7178 80139CAC B4DB040C */  jal        func_80136ED0
    /* 717C 80139CB0 1000B0A3 */   sb        $s0, 0x10($sp)
    /* 7180 80139CB4 00010232 */  andi       $v0, $s0, 0x100
    /* 7184 80139CB8 0E004010 */  beqz       $v0, .L80139CF4
    /* 7188 80139CBC 20000232 */   andi      $v0, $s0, 0x20
    /* 718C 80139CC0 04004010 */  beqz       $v0, .L80139CD4
    /* 7190 80139CC4 01000224 */   addiu     $v0, $zero, 0x1
    /* 7194 80139CC8 1C80013C */  lui        $at, %hi(D_801C64D8)
    /* 7198 80139CCC 37E70408 */  j          .L80139CDC
    /* 719C 80139CD0 D86420AC */   sw        $zero, %lo(D_801C64D8)($at)
  .L80139CD4:
    /* 71A0 80139CD4 1C80013C */  lui        $at, %hi(D_801C64D8)
    /* 71A4 80139CD8 D86422AC */  sw         $v0, %lo(D_801C64D8)($at)
  .L80139CDC:
    /* 71A8 80139CDC 1480043C */  lui        $a0, %hi(func_80139DA0)
    /* 71AC 80139CE0 B3DC040C */  jal        func_801372CC
    /* 71B0 80139CE4 A09D8424 */   addiu     $a0, $a0, %lo(func_80139DA0)
    /* 71B4 80139CE8 1480043C */  lui        $a0, %hi(func_80139D14)
    /* 71B8 80139CEC AFDB040C */  jal        func_80136EBC
    /* 71BC 80139CF0 149D8424 */   addiu     $a0, $a0, %lo(func_80139D14)
  .L80139CF4:
    /* 71C0 80139CF4 1B000424 */  addiu      $a0, $zero, 0x1B
    /* 71C4 80139CF8 21280000 */  addu       $a1, $zero, $zero
    /* 71C8 80139CFC B4DB040C */  jal        func_80136ED0
    /* 71CC 80139D00 21300000 */   addu      $a2, $zero, $zero
    /* 71D0 80139D04 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 71D4 80139D08 1800B08F */  lw         $s0, 0x18($sp)
    /* 71D8 80139D0C 0800E003 */  jr         $ra
    /* 71DC 80139D10 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80139C90
