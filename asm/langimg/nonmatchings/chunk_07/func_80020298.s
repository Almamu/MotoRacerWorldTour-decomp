nonmatching func_80020298, 0x48

glabel func_80020298
    /* EAA8 80020298 9224023C */  lui        $v0, (0x24924925 >> 16)
    /* EAAC 8002029C 25494234 */  ori        $v0, $v0, (0x24924925 & 0xFFFF)
    /* EAB0 800202A0 C2180600 */  srl        $v1, $a2, 3
    /* EAB4 800202A4 19006200 */  multu      $v1, $v0
    /* EAB8 800202A8 10180000 */  mfhi       $v1
    /* EABC 800202AC 41066228 */  slti       $v0, $v1, 0x641
    /* EAC0 800202B0 02004014 */  bnez       $v0, .L800202BC
    /* EAC4 800202B4 00000000 */   nop
    /* EAC8 800202B8 40060324 */  addiu      $v1, $zero, 0x640
  .L800202BC:
    /* EACC 800202BC C61283A4 */  sh         $v1, 0x12C6($a0)
    /* EAD0 800202C0 001C0300 */  sll        $v1, $v1, 16
    /* EAD4 800202C4 031C0300 */  sra        $v1, $v1, 16
    /* EAD8 800202C8 C0100300 */  sll        $v0, $v1, 3
    /* EADC 800202CC 23104300 */  subu       $v0, $v0, $v1
    /* EAE0 800202D0 C0100200 */  sll        $v0, $v0, 3
    /* EAE4 800202D4 2310C200 */  subu       $v0, $a2, $v0
    /* EAE8 800202D8 0800E003 */  jr         $ra
    /* EAEC 800202DC 000085AC */   sw        $a1, 0x0($a0)
endlabel func_80020298
