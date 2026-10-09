/* Handwritten function */
nonmatching func_8006A028, 0xA8

glabel func_8006A028
    /* 58838 8006A028 21500000 */  addu       $t2, $zero, $zero
    /* 5883C 8006A02C 21580000 */  addu       $t3, $zero, $zero
    /* 58840 8006A030 0D80023C */  lui        $v0, %hi(D_800D60EC)
    /* 58844 8006A034 EC60428C */  lw         $v0, %lo(D_800D60EC)($v0)
    /* 58848 8006A038 1000A387 */  lh         $v1, 0x10($sp)
    /* 5884C 8006A03C 1000888C */  lw         $t0, 0x10($a0)
    /* 58850 8006A040 1400898C */  lw         $t1, 0x14($a0)
    /* 58854 8006A044 21104700 */  addu       $v0, $v0, $a3
    /* 58858 8006A048 280082AC */  sw         $v0, 0x28($a0)
    /* 5885C 8006A04C 21104300 */  addu       $v0, $v0, $v1
    /* 58860 8006A050 0800A810 */  beq        $a1, $t0, .L8006A074
    /* 58864 8006A054 2C0082AC */   sw        $v0, 0x2C($a0)
    /* 58868 8006A058 2310A800 */  subu       $v0, $a1, $t0
    /* 5886C 8006A05C 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
    /* 58870 8006A060 00000000 */  nop
    /* 58874 8006A064 00000000 */  nop
    /* 58878 8006A068 00F80348 */  mfc2       $v1, $31 /* handwritten instruction */
    /* 5887C 8006A06C 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 58880 8006A070 23504300 */  subu       $t2, $v0, $v1
  .L8006A074:
    /* 58884 8006A074 0700C910 */  beq        $a2, $t1, .L8006A094
    /* 58888 8006A078 2310C900 */   subu      $v0, $a2, $t1
    /* 5888C 8006A07C 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
    /* 58890 8006A080 00000000 */  nop
    /* 58894 8006A084 00000000 */  nop
    /* 58898 8006A088 00F80348 */  mfc2       $v1, $31 /* handwritten instruction */
    /* 5889C 8006A08C 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 588A0 8006A090 23584300 */  subu       $t3, $v0, $v1
  .L8006A094:
    /* 588A4 8006A094 21386001 */  addu       $a3, $t3, $zero
    /* 588A8 8006A098 2A10EA00 */  slt        $v0, $a3, $t2
    /* 588AC 8006A09C 03004010 */  beqz       $v0, .L8006A0AC
    /* 588B0 8006A0A0 0410E800 */   sllv      $v0, $t0, $a3
    /* 588B4 8006A0A4 21384001 */  addu       $a3, $t2, $zero
    /* 588B8 8006A0A8 0410E800 */  sllv       $v0, $t0, $a3
  .L8006A0AC:
    /* 588BC 8006A0AC 0418E900 */  sllv       $v1, $t1, $a3
    /* 588C0 8006A0B0 180082AC */  sw         $v0, 0x18($a0)
    /* 588C4 8006A0B4 0410E500 */  sllv       $v0, $a1, $a3
    /* 588C8 8006A0B8 1C0083AC */  sw         $v1, 0x1C($a0)
    /* 588CC 8006A0BC 0418E600 */  sllv       $v1, $a2, $a3
    /* 588D0 8006A0C0 200082AC */  sw         $v0, 0x20($a0)
    /* 588D4 8006A0C4 240083AC */  sw         $v1, 0x24($a0)
    /* 588D8 8006A0C8 0800E003 */  jr         $ra
    /* 588DC 8006A0CC 300087AC */   sw        $a3, 0x30($a0)
endlabel func_8006A028
