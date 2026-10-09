nonmatching func_8005DB70, 0xA0

glabel func_8005DB70
    /* 4C380 8005DB70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C384 8005DB74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C388 8005DB78 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4C38C 8005DB7C 21908000 */  addu       $s2, $a0, $zero
    /* 4C390 8005DB80 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4C394 8005DB84 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C398 8005DB88 7803438E */  lw         $v1, 0x378($s2)
    /* 4C39C 8005DB8C 0C00A004 */  bltz       $a1, .L8005DBC0
    /* 4C3A0 8005DB90 21800000 */   addu      $s0, $zero, $zero
    /* 4C3A4 8005DB94 40100500 */  sll        $v0, $a1, 1
    /* 4C3A8 8005DB98 21104500 */  addu       $v0, $v0, $a1
    /* 4C3AC 8005DB9C 80100200 */  sll        $v0, $v0, 2
    /* 4C3B0 8005DBA0 23104500 */  subu       $v0, $v0, $a1
    /* 4C3B4 8005DBA4 80100200 */  sll        $v0, $v0, 2
    /* 4C3B8 8005DBA8 23104500 */  subu       $v0, $v0, $a1
    /* 4C3BC 8005DBAC 80100200 */  sll        $v0, $v0, 2
    /* 4C3C0 8005DBB0 21104500 */  addu       $v0, $v0, $a1
    /* 4C3C4 8005DBB4 C0100200 */  sll        $v0, $v0, 3
    /* 4C3C8 8005DBB8 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4C3CC 8005DBBC 21806200 */  addu       $s0, $v1, $v0
  .L8005DBC0:
    /* 4C3D0 8005DBC0 2800048E */  lw         $a0, 0x28($s0)
    /* 4C3D4 8005DBC4 3000118E */  lw         $s1, 0x30($s0)
    /* 4C3D8 8005DBC8 03008010 */  beqz       $a0, .L8005DBD8
    /* 4C3DC 8005DBCC 00000000 */   nop
    /* 4C3E0 8005DBD0 E07C010C */  jal        func_8005F380
    /* 4C3E4 8005DBD4 00000000 */   nop
  .L8005DBD8:
    /* 4C3E8 8005DBD8 21204002 */  addu       $a0, $s2, $zero
    /* 4C3EC 8005DBDC 21282002 */  addu       $a1, $s1, $zero
    /* 4C3F0 8005DBE0 540030AE */  sw         $s0, 0x54($s1)
    /* 4C3F4 8005DBE4 0000068E */  lw         $a2, 0x0($s0)
    /* 4C3F8 8005DBE8 08000786 */  lh         $a3, 0x8($s0)
    /* 4C3FC 8005DBEC 80360600 */  sll        $a2, $a2, 26
    /* 4C400 8005DBF0 0477010C */  jal        func_8005DC10
    /* 4C404 8005DBF4 C3360600 */   sra       $a2, $a2, 27
    /* 4C408 8005DBF8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4C40C 8005DBFC 1800B28F */  lw         $s2, 0x18($sp)
    /* 4C410 8005DC00 1400B18F */  lw         $s1, 0x14($sp)
    /* 4C414 8005DC04 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C418 8005DC08 0800E003 */  jr         $ra
    /* 4C41C 8005DC0C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8005DB70
