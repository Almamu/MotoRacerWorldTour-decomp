nonmatching func_800ADEE4, 0x13C

glabel func_800ADEE4
    /* 9C6F4 800ADEE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9C6F8 800ADEE8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9C6FC 800ADEEC 2A008014 */  bnez       $a0, .L800ADF98
    /* 9C700 800ADEF0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9C704 800ADEF4 08B8020C */  jal        func_800AE020
    /* 9C708 800ADEF8 00000000 */   nop
    /* 9C70C 800ADEFC C7B70208 */  j          .L800ADF1C
    /* 9C710 800ADF00 00000000 */   nop
  .L800ADF04:
    /* 9C714 800ADF04 CDB6020C */  jal        func_800ADB34
    /* 9C718 800ADF08 00000000 */   nop
    /* 9C71C 800ADF0C 15B8020C */  jal        func_800AE054
    /* 9C720 800ADF10 00000000 */   nop
    /* 9C724 800ADF14 3E004014 */  bnez       $v0, .L800AE010
    /* 9C728 800ADF18 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800ADF1C:
    /* 9C72C 800ADF1C 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C730 800ADF20 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C734 800ADF24 0C80023C */  lui        $v0, %hi(D_800BF36C)
    /* 9C738 800ADF28 6CF3428C */  lw         $v0, %lo(D_800BF36C)($v0)
    /* 9C73C 800ADF2C 00000000 */  nop
    /* 9C740 800ADF30 07006210 */  beq        $v1, $v0, .L800ADF50
    /* 9C744 800ADF34 00000000 */   nop
    /* 9C748 800ADF38 C1B70208 */  j          .L800ADF04
    /* 9C74C 800ADF3C 00000000 */   nop
  .L800ADF40:
    /* 9C750 800ADF40 15B8020C */  jal        func_800AE054
    /* 9C754 800ADF44 00000000 */   nop
    /* 9C758 800ADF48 31004014 */  bnez       $v0, .L800AE010
    /* 9C75C 800ADF4C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800ADF50:
    /* 9C760 800ADF50 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C764 800ADF54 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C768 800ADF58 00000000 */  nop
    /* 9C76C 800ADF5C 0000428C */  lw         $v0, 0x0($v0)
    /* 9C770 800ADF60 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 9C774 800ADF64 24104300 */  and        $v0, $v0, $v1
    /* 9C778 800ADF68 F5FF4014 */  bnez       $v0, .L800ADF40
    /* 9C77C 800ADF6C 00000000 */   nop
    /* 9C780 800ADF70 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9C784 800ADF74 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9C788 800ADF78 00000000 */  nop
    /* 9C78C 800ADF7C 0000428C */  lw         $v0, 0x0($v0)
    /* 9C790 800ADF80 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 9C794 800ADF84 24104300 */  and        $v0, $v0, $v1
    /* 9C798 800ADF88 EDFF4010 */  beqz       $v0, .L800ADF40
    /* 9C79C 800ADF8C 21100000 */   addu      $v0, $zero, $zero
    /* 9C7A0 800ADF90 04B80208 */  j          .L800AE010
    /* 9C7A4 800ADF94 00000000 */   nop
  .L800ADF98:
    /* 9C7A8 800ADF98 0C80023C */  lui        $v0, %hi(D_800BF368)
    /* 9C7AC 800ADF9C 68F3428C */  lw         $v0, %lo(D_800BF368)($v0)
    /* 9C7B0 800ADFA0 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C7B4 800ADFA4 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C7B8 800ADFA8 00000000 */  nop
    /* 9C7BC 800ADFAC 23104300 */  subu       $v0, $v0, $v1
    /* 9C7C0 800ADFB0 3F005030 */  andi       $s0, $v0, 0x3F
    /* 9C7C4 800ADFB4 03000012 */  beqz       $s0, .L800ADFC4
    /* 9C7C8 800ADFB8 00000000 */   nop
    /* 9C7CC 800ADFBC CDB6020C */  jal        func_800ADB34
    /* 9C7D0 800ADFC0 00000000 */   nop
  .L800ADFC4:
    /* 9C7D4 800ADFC4 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C7D8 800ADFC8 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C7DC 800ADFCC 00000000 */  nop
    /* 9C7E0 800ADFD0 0000428C */  lw         $v0, 0x0($v0)
    /* 9C7E4 800ADFD4 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 9C7E8 800ADFD8 24104300 */  and        $v0, $v0, $v1
    /* 9C7EC 800ADFDC 09004014 */  bnez       $v0, .L800AE004
    /* 9C7F0 800ADFE0 00000000 */   nop
    /* 9C7F4 800ADFE4 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9C7F8 800ADFE8 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9C7FC 800ADFEC 00000000 */  nop
    /* 9C800 800ADFF0 0000428C */  lw         $v0, 0x0($v0)
    /* 9C804 800ADFF4 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 9C808 800ADFF8 24104300 */  and        $v0, $v0, $v1
    /* 9C80C 800ADFFC 04004014 */  bnez       $v0, .L800AE010
    /* 9C810 800AE000 21100002 */   addu      $v0, $s0, $zero
  .L800AE004:
    /* 9C814 800AE004 02000016 */  bnez       $s0, .L800AE010
    /* 9C818 800AE008 21100002 */   addu      $v0, $s0, $zero
    /* 9C81C 800AE00C 01000224 */  addiu      $v0, $zero, 0x1
  .L800AE010:
    /* 9C820 800AE010 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9C824 800AE014 1000B08F */  lw         $s0, 0x10($sp)
    /* 9C828 800AE018 0800E003 */  jr         $ra
    /* 9C82C 800AE01C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800ADEE4
