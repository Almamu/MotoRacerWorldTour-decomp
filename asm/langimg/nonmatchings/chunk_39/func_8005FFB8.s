nonmatching func_8005FFB8, 0x80

glabel func_8005FFB8
    /* 4E7C8 8005FFB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E7CC 8005FFBC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E7D0 8005FFC0 1900A010 */  beqz       $a1, .L80060028
    /* 4E7D4 8005FFC4 21388000 */   addu      $a3, $a0, $zero
    /* 4E7D8 8005FFC8 0000C48C */  lw         $a0, 0x0($a2)
    /* 4E7DC 8005FFCC 0000E68C */  lw         $a2, 0x0($a3)
    /* 4E7E0 8005FFD0 40100400 */  sll        $v0, $a0, 1
    /* 4E7E4 8005FFD4 21104400 */  addu       $v0, $v0, $a0
    /* 4E7E8 8005FFD8 00190200 */  sll        $v1, $v0, 4
    /* 4E7EC 8005FFDC 21104300 */  addu       $v0, $v0, $v1
    /* 4E7F0 8005FFE0 00110200 */  sll        $v0, $v0, 4
    /* 4E7F4 8005FFE4 F002A48C */  lw         $a0, 0x2F0($a1)
    /* 4E7F8 8005FFE8 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 4E7FC 8005FFEC 21208200 */  addu       $a0, $a0, $v0
    /* 4E800 8005FFF0 0500C314 */  bne        $a2, $v1, .L80060008
    /* 4E804 8005FFF4 090080A0 */   sb        $zero, 0x9($a0)
    /* 4E808 8005FFF8 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E80C 8005FFFC 00000000 */  nop
    /* 4E810 80060000 01004234 */  ori        $v0, $v0, 0x1
    /* 4E814 80060004 000082A4 */  sh         $v0, 0x0($a0)
  .L80060008:
    /* 4E818 80060008 0500C014 */  bnez       $a2, .L80060020
    /* 4E81C 8006000C 00000000 */   nop
    /* 4E820 80060010 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E824 80060014 00000000 */  nop
    /* 4E828 80060018 FEFF4230 */  andi       $v0, $v0, 0xFFFE
    /* 4E82C 8006001C 000082A4 */  sh         $v0, 0x0($a0)
  .L80060020:
    /* 4E830 80060020 207D010C */  jal        func_8005F480
    /* 4E834 80060024 00400524 */   addiu     $a1, $zero, 0x4000
  .L80060028:
    /* 4E838 80060028 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E83C 8006002C 00000000 */  nop
    /* 4E840 80060030 0800E003 */  jr         $ra
    /* 4E844 80060034 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005FFB8
