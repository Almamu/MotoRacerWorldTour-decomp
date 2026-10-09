nonmatching func_80142A90, 0x2C

glabel func_80142A90
    /* FF5C 80142A90 E6008294 */  lhu        $v0, 0xE6($a0)
    /* FF60 80142A94 00000000 */  nop
    /* FF64 80142A98 05004010 */  beqz       $v0, .L80142AB0
    /* FF68 80142A9C FF000224 */   addiu     $v0, $zero, 0xFF
    /* FF6C 80142AA0 46008390 */  lbu        $v1, 0x46($a0)
    /* FF70 80142AA4 00000000 */  nop
    /* FF74 80142AA8 02006210 */  beq        $v1, $v0, .L80142AB4
    /* FF78 80142AAC 21100000 */   addu      $v0, $zero, $zero
  .L80142AB0:
    /* FF7C 80142AB0 01000224 */  addiu      $v0, $zero, 0x1
  .L80142AB4:
    /* FF80 80142AB4 0800E003 */  jr         $ra
    /* FF84 80142AB8 00000000 */   nop
endlabel func_80142A90
    /* FF88 80142ABC 00000000 */  nop
    /* FF8C 80142AC0 00000000 */  nop
    /* FF90 80142AC4 00000000 */  nop
