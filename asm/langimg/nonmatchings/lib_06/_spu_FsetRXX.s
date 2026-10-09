nonmatching _spu_FsetRXX, 0x44

glabel _spu_FsetRXX
    /* A202C 800B381C 0700C014 */  bnez       $a2, .L800B383C
    /* A2030 800B3820 40100400 */   sll       $v0, $a0, 1
    /* A2034 800B3824 0C80033C */  lui        $v1, %hi(_spu_RXX)
    /* A2038 800B3828 B03D638C */  lw         $v1, %lo(_spu_RXX)($v1)
    /* A203C 800B382C 00000000 */  nop
    /* A2040 800B3830 21104300 */  addu       $v0, $v0, $v1
    /* A2044 800B3834 16CE0208 */  j          .L800B3858
    /* A2048 800B3838 000045A4 */   sh        $a1, 0x0($v0)
  .L800B383C:
    /* A204C 800B383C 0C80043C */  lui        $a0, %hi(_spu_RXX)
    /* A2050 800B3840 B03D848C */  lw         $a0, %lo(_spu_RXX)($a0)
    /* A2054 800B3844 0C80033C */  lui        $v1, %hi(_spu_mem_mode_plus)
    /* A2058 800B3848 D83D638C */  lw         $v1, %lo(_spu_mem_mode_plus)($v1)
    /* A205C 800B384C 21104400 */  addu       $v0, $v0, $a0
    /* A2060 800B3850 06186500 */  srlv       $v1, $a1, $v1
    /* A2064 800B3854 000043A4 */  sh         $v1, 0x0($v0)
  .L800B3858:
    /* A2068 800B3858 0800E003 */  jr         $ra
    /* A206C 800B385C 00000000 */   nop
endlabel _spu_FsetRXX
