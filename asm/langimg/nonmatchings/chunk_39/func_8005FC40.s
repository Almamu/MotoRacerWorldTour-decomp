nonmatching func_8005FC40, 0xA8

glabel func_8005FC40
    /* 4E450 8005FC40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E454 8005FC44 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E458 8005FC48 2300A010 */  beqz       $a1, .L8005FCD8
    /* 4E45C 8005FC4C 21388000 */   addu      $a3, $a0, $zero
    /* 4E460 8005FC50 0000C48C */  lw         $a0, 0x0($a2)
    /* 4E464 8005FC54 0000E68C */  lw         $a2, 0x0($a3)
    /* 4E468 8005FC58 40100400 */  sll        $v0, $a0, 1
    /* 4E46C 8005FC5C 21104400 */  addu       $v0, $v0, $a0
    /* 4E470 8005FC60 00190200 */  sll        $v1, $v0, 4
    /* 4E474 8005FC64 21104300 */  addu       $v0, $v0, $v1
    /* 4E478 8005FC68 00110200 */  sll        $v0, $v0, 4
    /* 4E47C 8005FC6C F002A48C */  lw         $a0, 0x2F0($a1)
    /* 4E480 8005FC70 01000324 */  addiu      $v1, $zero, 0x1
    /* 4E484 8005FC74 21208200 */  addu       $a0, $a0, $v0
    /* 4E488 8005FC78 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4E48C 8005FC7C 080080A0 */  sb         $zero, 0x8($a0)
    /* 4E490 8005FC80 0700C214 */  bne        $a2, $v0, .L8005FCA0
    /* 4E494 8005FC84 0B0083A0 */   sb        $v1, 0xB($a0)
    /* 4E498 8005FC88 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E49C 8005FC8C 7F000324 */  addiu      $v1, $zero, 0x7F
    /* 4E4A0 8005FC90 040083A0 */  sb         $v1, 0x4($a0)
    /* 4E4A4 8005FC94 08004234 */  ori        $v0, $v0, 0x8
    /* 4E4A8 8005FC98 347F0108 */  j          .L8005FCD0
    /* 4E4AC 8005FC9C 000082A4 */   sh        $v0, 0x0($a0)
  .L8005FCA0:
    /* 4E4B0 8005FCA0 0B00C014 */  bnez       $a2, .L8005FCD0
    /* 4E4B4 8005FCA4 00000000 */   nop
    /* 4E4B8 8005FCA8 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E4BC 8005FCAC 00000000 */  nop
    /* 4E4C0 8005FCB0 F7FF4230 */  andi       $v0, $v0, 0xFFF7
    /* 4E4C4 8005FCB4 000082A4 */  sh         $v0, 0x0($a0)
    /* 4E4C8 8005FCB8 04004230 */  andi       $v0, $v0, 0x4
    /* 4E4CC 8005FCBC 03004010 */  beqz       $v0, .L8005FCCC
    /* 4E4D0 8005FCC0 81FF0224 */   addiu     $v0, $zero, -0x7F
    /* 4E4D4 8005FCC4 347F0108 */  j          .L8005FCD0
    /* 4E4D8 8005FCC8 040082A0 */   sb        $v0, 0x4($a0)
  .L8005FCCC:
    /* 4E4DC 8005FCCC 040080A0 */  sb         $zero, 0x4($a0)
  .L8005FCD0:
    /* 4E4E0 8005FCD0 207D010C */  jal        func_8005F480
    /* 4E4E4 8005FCD4 20000524 */   addiu     $a1, $zero, 0x20
  .L8005FCD8:
    /* 4E4E8 8005FCD8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E4EC 8005FCDC 00000000 */  nop
    /* 4E4F0 8005FCE0 0800E003 */  jr         $ra
    /* 4E4F4 8005FCE4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005FC40
