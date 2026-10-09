/* Handwritten function */
nonmatching func_80098768, 0x114

glabel func_80098768
    /* 86F78 80098768 0000828C */  lw         $v0, 0x0($a0)
    /* 86F7C 8009876C 0400838C */  lw         $v1, 0x4($a0)
    /* 86F80 80098770 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 86F84 80098774 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 86F88 80098778 0800828C */  lw         $v0, 0x8($a0)
    /* 86F8C 8009877C 0C00838C */  lw         $v1, 0xC($a0)
    /* 86F90 80098780 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 86F94 80098784 1000828C */  lw         $v0, 0x10($a0)
    /* 86F98 80098788 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 86F9C 8009878C 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 86FA0 80098790 0000A48C */  lw         $a0, 0x0($a1)
    /* 86FA4 80098794 0400A78C */  lw         $a3, 0x4($a1)
    /* 86FA8 80098798 0800A58C */  lw         $a1, 0x8($a1)
    /* 86FAC 8009879C 07008104 */  bgez       $a0, .L800987BC
    /* 86FB0 800987A0 C34B0400 */   sra       $t1, $a0, 15
    /* 86FB4 800987A4 23200400 */  negu       $a0, $a0
    /* 86FB8 800987A8 C3130400 */  sra        $v0, $a0, 15
    /* 86FBC 800987AC 23480200 */  negu       $t1, $v0
    /* 86FC0 800987B0 FF7F8330 */  andi       $v1, $a0, 0x7FFF
    /* 86FC4 800987B4 F0610208 */  j          .L800987C0
    /* 86FC8 800987B8 23200300 */   negu      $a0, $v1
  .L800987BC:
    /* 86FCC 800987BC FF7F8430 */  andi       $a0, $a0, 0x7FFF
  .L800987C0:
    /* 86FD0 800987C0 0700E104 */  bgez       $a3, .L800987E0
    /* 86FD4 800987C4 C3430700 */   sra       $t0, $a3, 15
    /* 86FD8 800987C8 23380700 */  negu       $a3, $a3
    /* 86FDC 800987CC C3130700 */  sra        $v0, $a3, 15
    /* 86FE0 800987D0 23400200 */  negu       $t0, $v0
    /* 86FE4 800987D4 FF7FE330 */  andi       $v1, $a3, 0x7FFF
    /* 86FE8 800987D8 F9610208 */  j          .L800987E4
    /* 86FEC 800987DC 23380300 */   negu      $a3, $v1
  .L800987E0:
    /* 86FF0 800987E0 FF7FE730 */  andi       $a3, $a3, 0x7FFF
  .L800987E4:
    /* 86FF4 800987E4 0700A104 */  bgez       $a1, .L80098804
    /* 86FF8 800987E8 C3130500 */   sra       $v0, $a1, 15
    /* 86FFC 800987EC 23280500 */  negu       $a1, $a1
    /* 87000 800987F0 C3130500 */  sra        $v0, $a1, 15
    /* 87004 800987F4 23100200 */  negu       $v0, $v0
    /* 87008 800987F8 FF7FA330 */  andi       $v1, $a1, 0x7FFF
    /* 8700C 800987FC 02620208 */  j          .L80098808
    /* 87010 80098800 23280300 */   negu      $a1, $v1
  .L80098804:
    /* 87014 80098804 FF7FA530 */  andi       $a1, $a1, 0x7FFF
  .L80098808:
    /* 87018 80098808 00488948 */  mtc2       $t1, $9 /* handwritten instruction */
    /* 8701C 8009880C 00508848 */  mtc2       $t0, $10 /* handwritten instruction */
    /* 87020 80098810 00588248 */  mtc2       $v0, $11 /* handwritten instruction */
    /* 87024 80098814 00000000 */  nop
    /* 87028 80098818 00000000 */  nop
    /* 8702C 8009881C 12E0414A */  mvmva      0, 0, 3, 3, 0
    /* 87030 80098820 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 87034 80098824 001C0700 */  sll        $v1, $a3, 16
    /* 87038 80098828 25104300 */  or         $v0, $v0, $v1
    /* 8703C 8009882C 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* 87040 80098830 00088548 */  mtc2       $a1, $1 /* handwritten instruction */
    /* 87044 80098834 00C80948 */  mfc2       $t1, $25 /* handwritten instruction */
    /* 87048 80098838 00D00848 */  mfc2       $t0, $26 /* handwritten instruction */
    /* 8704C 8009883C 00D80248 */  mfc2       $v0, $27 /* handwritten instruction */
    /* 87050 80098840 1260484A */  mvmva      1, 0, 0, 3, 0
    /* 87054 80098844 C0480900 */  sll        $t1, $t1, 3
    /* 87058 80098848 C0400800 */  sll        $t0, $t0, 3
    /* 8705C 8009884C C0100200 */  sll        $v0, $v0, 3
    /* 87060 80098850 00C80448 */  mfc2       $a0, $25 /* handwritten instruction */
    /* 87064 80098854 00D00748 */  mfc2       $a3, $26 /* handwritten instruction */
    /* 87068 80098858 00D80548 */  mfc2       $a1, $27 /* handwritten instruction */
    /* 8706C 8009885C 21208900 */  addu       $a0, $a0, $t1
    /* 87070 80098860 2138E800 */  addu       $a3, $a3, $t0
    /* 87074 80098864 2128A200 */  addu       $a1, $a1, $v0
    /* 87078 80098868 2110C000 */  addu       $v0, $a2, $zero
    /* 8707C 8009886C 0000C4AC */  sw         $a0, 0x0($a2)
    /* 87080 80098870 0400C7AC */  sw         $a3, 0x4($a2)
    /* 87084 80098874 0800E003 */  jr         $ra
    /* 87088 80098878 0800C5AC */   sw        $a1, 0x8($a2)
endlabel func_80098768
