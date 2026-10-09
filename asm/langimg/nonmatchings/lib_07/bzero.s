nonmatching bzero, 0x30

glabel bzero
    /* A486C 800B605C 09008010 */  beqz       $a0, .L800B6084
    /* A4870 800B6060 21100000 */   addu      $v0, $zero, $zero
    /* A4874 800B6064 0300A01C */  bgtz       $a1, .L800B6074
    /* A4878 800B6068 21108000 */   addu      $v0, $a0, $zero
    /* A487C 800B606C 21D80208 */  j          .L800B6084
    /* A4880 800B6070 21100000 */   addu      $v0, $zero, $zero
  .L800B6074:
    /* A4884 800B6074 000080A0 */  sb         $zero, 0x0($a0)
    /* A4888 800B6078 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* A488C 800B607C FDFFA01C */  bgtz       $a1, .L800B6074
    /* A4890 800B6080 01008424 */   addiu     $a0, $a0, 0x1
  .L800B6084:
    /* A4894 800B6084 0800E003 */  jr         $ra
    /* A4898 800B6088 00000000 */   nop
endlabel bzero
