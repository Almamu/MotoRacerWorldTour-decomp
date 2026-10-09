nonmatching func_8005F380, 0xE4

glabel func_8005F380
    /* 4DB90 8005F380 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4DB94 8005F384 21400000 */  addu       $t0, $zero, $zero
    /* 4DB98 8005F388 18008624 */  addiu      $a2, $a0, 0x18
    /* 4DB9C 8005F38C 14008524 */  addiu      $a1, $a0, 0x14
    /* 4DBA0 8005F390 10008324 */  addiu      $v1, $a0, 0x10
    /* 4DBA4 8005F394 01000224 */  addiu      $v0, $zero, 0x1
    /* 4DBA8 8005F398 0B0082A0 */  sb         $v0, 0xB($a0)
    /* 4DBAC 8005F39C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4DBB0 8005F3A0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4DBB4 8005F3A4 080080A0 */  sb         $zero, 0x8($a0)
    /* 4DBB8 8005F3A8 090080A0 */  sb         $zero, 0x9($a0)
    /* 4DBBC 8005F3AC 0A0080A0 */  sb         $zero, 0xA($a0)
    /* 4DBC0 8005F3B0 0C0080A0 */  sb         $zero, 0xC($a0)
    /* 4DBC4 8005F3B4 000080A4 */  sh         $zero, 0x0($a0)
    /* 4DBC8 8005F3B8 020080A4 */  sh         $zero, 0x2($a0)
    /* 4DBCC 8005F3BC 040080A0 */  sb         $zero, 0x4($a0)
    /* 4DBD0 8005F3C0 050080A0 */  sb         $zero, 0x5($a0)
    /* 4DBD4 8005F3C4 060080A0 */  sb         $zero, 0x6($a0)
    /* 4DBD8 8005F3C8 070080A0 */  sb         $zero, 0x7($a0)
    /* 4DBDC 8005F3CC 0D0082A0 */  sb         $v0, 0xD($a0)
    /* 4DBE0 8005F3D0 0E0080A0 */  sb         $zero, 0xE($a0)
    /* 4DBE4 8005F3D4 0F0080A0 */  sb         $zero, 0xF($a0)
    /* 4DBE8 8005F3D8 900180AC */  sw         $zero, 0x190($a0)
    /* 4DBEC 8005F3DC 940180AC */  sw         $zero, 0x194($a0)
  .L8005F3E0:
    /* 4DBF0 8005F3E0 000060AC */  sw         $zero, 0x0($v1)
    /* 4DBF4 8005F3E4 0000A0AC */  sw         $zero, 0x0($a1)
    /* 4DBF8 8005F3E8 0000C0AC */  sw         $zero, 0x0($a2)
    /* 4DBFC 8005F3EC 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 4DC00 8005F3F0 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 4DC04 8005F3F4 01000825 */  addiu      $t0, $t0, 0x1
    /* 4DC08 8005F3F8 20000229 */  slti       $v0, $t0, 0x20
    /* 4DC0C 8005F3FC F8FF4014 */  bnez       $v0, .L8005F3E0
    /* 4DC10 8005F400 0C006324 */   addiu     $v1, $v1, 0xC
    /* 4DC14 8005F404 21400000 */  addu       $t0, $zero, $zero
    /* 4DC18 8005F408 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 4DC1C 8005F40C B8018724 */  addiu      $a3, $a0, 0x1B8
    /* 4DC20 8005F410 B4018624 */  addiu      $a2, $a0, 0x1B4
    /* 4DC24 8005F414 B0018524 */  addiu      $a1, $a0, 0x1B0
    /* 4DC28 8005F418 AC018324 */  addiu      $v1, $a0, 0x1AC
  .L8005F41C:
    /* 4DC2C 8005F41C 000060AC */  sw         $zero, 0x0($v1)
    /* 4DC30 8005F420 0000A9AC */  sw         $t1, 0x0($a1)
    /* 4DC34 8005F424 0000C9AC */  sw         $t1, 0x0($a2)
    /* 4DC38 8005F428 0000E9AC */  sw         $t1, 0x0($a3)
    /* 4DC3C 8005F42C 1000E724 */  addiu      $a3, $a3, 0x10
    /* 4DC40 8005F430 1000C624 */  addiu      $a2, $a2, 0x10
    /* 4DC44 8005F434 1000A524 */  addiu      $a1, $a1, 0x10
    /* 4DC48 8005F438 01000825 */  addiu      $t0, $t0, 0x1
    /* 4DC4C 8005F43C 18000229 */  slti       $v0, $t0, 0x18
    /* 4DC50 8005F440 F6FF4014 */  bnez       $v0, .L8005F41C
    /* 4DC54 8005F444 10006324 */   addiu     $v1, $v1, 0x10
    /* 4DC58 8005F448 980180AC */  sw         $zero, 0x198($a0)
    /* 4DC5C 8005F44C 197D010C */  jal        func_8005F464
    /* 4DC60 8005F450 A40180A4 */   sh        $zero, 0x1A4($a0)
    /* 4DC64 8005F454 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4DC68 8005F458 00000000 */  nop
    /* 4DC6C 8005F45C 0800E003 */  jr         $ra
    /* 4DC70 8005F460 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005F380
