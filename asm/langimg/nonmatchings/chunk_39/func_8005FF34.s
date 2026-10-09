nonmatching func_8005FF34, 0x84

glabel func_8005FF34
    /* 4E744 8005FF34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E748 8005FF38 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E74C 8005FF3C 1A00A010 */  beqz       $a1, .L8005FFA8
    /* 4E750 8005FF40 21388000 */   addu      $a3, $a0, $zero
    /* 4E754 8005FF44 0000C48C */  lw         $a0, 0x0($a2)
    /* 4E758 8005FF48 0000E68C */  lw         $a2, 0x0($a3)
    /* 4E75C 8005FF4C 40100400 */  sll        $v0, $a0, 1
    /* 4E760 8005FF50 21104400 */  addu       $v0, $v0, $a0
    /* 4E764 8005FF54 00190200 */  sll        $v1, $v0, 4
    /* 4E768 8005FF58 21104300 */  addu       $v0, $v0, $v1
    /* 4E76C 8005FF5C 00110200 */  sll        $v0, $v0, 4
    /* 4E770 8005FF60 F002A48C */  lw         $a0, 0x2F0($a1)
    /* 4E774 8005FF64 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 4E778 8005FF68 0600C314 */  bne        $a2, $v1, .L8005FF84
    /* 4E77C 8005FF6C 21208200 */   addu      $a0, $a0, $v0
    /* 4E780 8005FF70 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E784 8005FF74 7F000324 */  addiu      $v1, $zero, 0x7F
    /* 4E788 8005FF78 070083A0 */  sb         $v1, 0x7($a0)
    /* 4E78C 8005FF7C 00024234 */  ori        $v0, $v0, 0x200
    /* 4E790 8005FF80 000082A4 */  sh         $v0, 0x0($a0)
  .L8005FF84:
    /* 4E794 8005FF84 0500C014 */  bnez       $a2, .L8005FF9C
    /* 4E798 8005FF88 00000000 */   nop
    /* 4E79C 8005FF8C 00008294 */  lhu        $v0, 0x0($a0)
    /* 4E7A0 8005FF90 070080A0 */  sb         $zero, 0x7($a0)
    /* 4E7A4 8005FF94 FFFD4230 */  andi       $v0, $v0, 0xFDFF
    /* 4E7A8 8005FF98 000082A4 */  sh         $v0, 0x0($a0)
  .L8005FF9C:
    /* 4E7AC 8005FF9C 0A0080A0 */  sb         $zero, 0xA($a0)
    /* 4E7B0 8005FFA0 207D010C */  jal        func_8005F480
    /* 4E7B4 8005FFA4 40000524 */   addiu     $a1, $zero, 0x40
  .L8005FFA8:
    /* 4E7B8 8005FFA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E7BC 8005FFAC 00000000 */  nop
    /* 4E7C0 8005FFB0 0800E003 */  jr         $ra
    /* 4E7C4 8005FFB4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005FF34
