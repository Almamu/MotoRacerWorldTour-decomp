nonmatching func_8005FB98, 0xA8

glabel func_8005FB98
    /* 4E3A8 8005FB98 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E3AC 8005FB9C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E3B0 8005FBA0 2300A010 */  beqz       $a1, .L8005FC30
    /* 4E3B4 8005FBA4 21388000 */   addu      $a3, $a0, $zero
    /* 4E3B8 8005FBA8 0000C48C */  lw         $a0, 0x0($a2)
    /* 4E3BC 8005FBAC 0000E68C */  lw         $a2, 0x0($a3)
    /* 4E3C0 8005FBB0 40100400 */  sll        $v0, $a0, 1
    /* 4E3C4 8005FBB4 21104400 */  addu       $v0, $v0, $a0
    /* 4E3C8 8005FBB8 00190200 */  sll        $v1, $v0, 4
    /* 4E3CC 8005FBBC 21104300 */  addu       $v0, $v0, $v1
    /* 4E3D0 8005FBC0 00110200 */  sll        $v0, $v0, 4
    /* 4E3D4 8005FBC4 F002A48C */  lw         $a0, 0x2F0($a1)
    /* 4E3D8 8005FBC8 01000324 */  addiu      $v1, $zero, 0x1
    /* 4E3DC 8005FBCC 21208200 */  addu       $a0, $a0, $v0
    /* 4E3E0 8005FBD0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4E3E4 8005FBD4 080080A0 */  sb         $zero, 0x8($a0)
    /* 4E3E8 8005FBD8 0700C214 */  bne        $a2, $v0, .L8005FBF8
    /* 4E3EC 8005FBDC 0B0083A0 */   sb        $v1, 0xB($a0)
    /* 4E3F0 8005FBE0 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E3F4 8005FBE4 81FF0324 */  addiu      $v1, $zero, -0x7F
    /* 4E3F8 8005FBE8 040083A0 */  sb         $v1, 0x4($a0)
    /* 4E3FC 8005FBEC 04004234 */  ori        $v0, $v0, 0x4
    /* 4E400 8005FBF0 0A7F0108 */  j          .L8005FC28
    /* 4E404 8005FBF4 000082A4 */   sh        $v0, 0x0($a0)
  .L8005FBF8:
    /* 4E408 8005FBF8 0B00C014 */  bnez       $a2, .L8005FC28
    /* 4E40C 8005FBFC 00000000 */   nop
    /* 4E410 8005FC00 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E414 8005FC04 00000000 */  nop
    /* 4E418 8005FC08 FBFF4230 */  andi       $v0, $v0, 0xFFFB
    /* 4E41C 8005FC0C 000082A4 */  sh         $v0, 0x0($a0)
    /* 4E420 8005FC10 08004230 */  andi       $v0, $v0, 0x8
    /* 4E424 8005FC14 03004010 */  beqz       $v0, .L8005FC24
    /* 4E428 8005FC18 7F000224 */   addiu     $v0, $zero, 0x7F
    /* 4E42C 8005FC1C 0A7F0108 */  j          .L8005FC28
    /* 4E430 8005FC20 040082A0 */   sb        $v0, 0x4($a0)
  .L8005FC24:
    /* 4E434 8005FC24 040080A0 */  sb         $zero, 0x4($a0)
  .L8005FC28:
    /* 4E438 8005FC28 207D010C */  jal        func_8005F480
    /* 4E43C 8005FC2C 80000524 */   addiu     $a1, $zero, 0x80
  .L8005FC30:
    /* 4E440 8005FC30 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E444 8005FC34 00000000 */  nop
    /* 4E448 8005FC38 0800E003 */  jr         $ra
    /* 4E44C 8005FC3C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005FB98
