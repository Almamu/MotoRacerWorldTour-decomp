nonmatching func_8009CEAC, 0x68

glabel func_8009CEAC
    /* 8B6BC 8009CEAC 980A838C */  lw         $v1, 0xA98($a0)
    /* 8B6C0 8009CEB0 02000224 */  addiu      $v0, $zero, 0x2
    /* 8B6C4 8009CEB4 1500A214 */  bne        $a1, $v0, .L8009CF0C
    /* 8B6C8 8009CEB8 21400000 */   addu      $t0, $zero, $zero
    /* 8B6CC 8009CEBC 7C0060AC */  sw         $zero, 0x7C($v1)
    /* 8B6D0 8009CEC0 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 8B6D4 8009CEC4 4C006724 */  addiu      $a3, $v1, 0x4C
    /* 8B6D8 8009CEC8 48006624 */  addiu      $a2, $v1, 0x48
    /* 8B6DC 8009CECC 44006524 */  addiu      $a1, $v1, 0x44
    /* 8B6E0 8009CED0 40006424 */  addiu      $a0, $v1, 0x40
    /* 8B6E4 8009CED4 3C006324 */  addiu      $v1, $v1, 0x3C
  .L8009CED8:
    /* 8B6E8 8009CED8 000060AC */  sw         $zero, 0x0($v1)
    /* 8B6EC 8009CEDC 000080AC */  sw         $zero, 0x0($a0)
    /* 8B6F0 8009CEE0 0000A0AC */  sw         $zero, 0x0($a1)
    /* 8B6F4 8009CEE4 0000C9AC */  sw         $t1, 0x0($a2)
    /* 8B6F8 8009CEE8 0000E9AC */  sw         $t1, 0x0($a3)
    /* 8B6FC 8009CEEC 1400E724 */  addiu      $a3, $a3, 0x14
    /* 8B700 8009CEF0 1400C624 */  addiu      $a2, $a2, 0x14
    /* 8B704 8009CEF4 1400A524 */  addiu      $a1, $a1, 0x14
    /* 8B708 8009CEF8 14008424 */  addiu      $a0, $a0, 0x14
    /* 8B70C 8009CEFC 01000825 */  addiu      $t0, $t0, 0x1
    /* 8B710 8009CF00 0300022D */  sltiu      $v0, $t0, 0x3
    /* 8B714 8009CF04 F4FF4014 */  bnez       $v0, .L8009CED8
    /* 8B718 8009CF08 14006324 */   addiu     $v1, $v1, 0x14
  .L8009CF0C:
    /* 8B71C 8009CF0C 0800E003 */  jr         $ra
    /* 8B720 8009CF10 00000000 */   nop
endlabel func_8009CEAC
