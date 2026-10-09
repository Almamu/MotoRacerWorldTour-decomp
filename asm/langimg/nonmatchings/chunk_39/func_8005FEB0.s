nonmatching func_8005FEB0, 0x84

glabel func_8005FEB0
    /* 4E6C0 8005FEB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E6C4 8005FEB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E6C8 8005FEB8 1A00A010 */  beqz       $a1, .L8005FF24
    /* 4E6CC 8005FEBC 21388000 */   addu      $a3, $a0, $zero
    /* 4E6D0 8005FEC0 0000C48C */  lw         $a0, 0x0($a2)
    /* 4E6D4 8005FEC4 0000E68C */  lw         $a2, 0x0($a3)
    /* 4E6D8 8005FEC8 40100400 */  sll        $v0, $a0, 1
    /* 4E6DC 8005FECC 21104400 */  addu       $v0, $v0, $a0
    /* 4E6E0 8005FED0 00190200 */  sll        $v1, $v0, 4
    /* 4E6E4 8005FED4 21104300 */  addu       $v0, $v0, $v1
    /* 4E6E8 8005FED8 00110200 */  sll        $v0, $v0, 4
    /* 4E6EC 8005FEDC F002A48C */  lw         $a0, 0x2F0($a1)
    /* 4E6F0 8005FEE0 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 4E6F4 8005FEE4 0600C314 */  bne        $a2, $v1, .L8005FF00
    /* 4E6F8 8005FEE8 21208200 */   addu      $a0, $a0, $v0
    /* 4E6FC 8005FEEC 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E700 8005FEF0 81FF0324 */  addiu      $v1, $zero, -0x7F
    /* 4E704 8005FEF4 070083A0 */  sb         $v1, 0x7($a0)
    /* 4E708 8005FEF8 00014234 */  ori        $v0, $v0, 0x100
    /* 4E70C 8005FEFC 000082A4 */  sh         $v0, 0x0($a0)
  .L8005FF00:
    /* 4E710 8005FF00 0500C014 */  bnez       $a2, .L8005FF18
    /* 4E714 8005FF04 00000000 */   nop
    /* 4E718 8005FF08 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E71C 8005FF0C 070080A0 */  sb         $zero, 0x7($a0)
    /* 4E720 8005FF10 FFFE4230 */  andi       $v0, $v0, 0xFEFF
    /* 4E724 8005FF14 000082A4 */  sh         $v0, 0x0($a0)
  .L8005FF18:
    /* 4E728 8005FF18 0A0080A0 */  sb         $zero, 0xA($a0)
    /* 4E72C 8005FF1C 207D010C */  jal        func_8005F480
    /* 4E730 8005FF20 10000524 */   addiu     $a1, $zero, 0x10
  .L8005FF24:
    /* 4E734 8005FF24 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E738 8005FF28 00000000 */  nop
    /* 4E73C 8005FF2C 0800E003 */  jr         $ra
    /* 4E740 8005FF30 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005FEB0
