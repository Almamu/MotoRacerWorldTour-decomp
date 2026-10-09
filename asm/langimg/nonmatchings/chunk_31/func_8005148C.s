nonmatching func_8005148C, 0x68

glabel func_8005148C
    /* 3FC9C 8005148C 3000838C */  lw         $v1, 0x30($a0)
    /* 3FCA0 80051490 440580AC */  sw         $zero, 0x544($a0)
    /* 3FCA4 80051494 400580AC */  sw         $zero, 0x540($a0)
    /* 3FCA8 80051498 64006224 */  addiu      $v0, $v1, 0x64
    /* 3FCAC 8005149C 6400668C */  lw         $a2, 0x64($v1)
    /* 3FCB0 800514A0 0400478C */  lw         $a3, 0x4($v0)
    /* 3FCB4 800514A4 0800488C */  lw         $t0, 0x8($v0)
    /* 3FCB8 800514A8 48058324 */  addiu      $v1, $a0, 0x548
    /* 3FCBC 800514AC 480586AC */  sw         $a2, 0x548($a0)
    /* 3FCC0 800514B0 040067AC */  sw         $a3, 0x4($v1)
    /* 3FCC4 800514B4 080068AC */  sw         $t0, 0x8($v1)
    /* 3FCC8 800514B8 3000828C */  lw         $v0, 0x30($a0)
    /* 3FCCC 800514BC 00000000 */  nop
    /* 3FCD0 800514C0 73004988 */  lwl        $t1, 0x73($v0)
    /* 3FCD4 800514C4 70004998 */  lwr        $t1, 0x70($v0)
    /* 3FCD8 800514C8 77004A88 */  lwl        $t2, 0x77($v0)
    /* 3FCDC 800514CC 74004A98 */  lwr        $t2, 0x74($v0)
    /* 3FCE0 800514D0 570589A8 */  swl        $t1, 0x557($a0)
    /* 3FCE4 800514D4 540589B8 */  swr        $t1, 0x554($a0)
    /* 3FCE8 800514D8 5B058AA8 */  swl        $t2, 0x55B($a0)
    /* 3FCEC 800514DC 58058AB8 */  swr        $t2, 0x558($a0)
    /* 3FCF0 800514E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 3FCF4 800514E4 5C0585AC */  sw         $a1, 0x55C($a0)
    /* 3FCF8 800514E8 600580AC */  sw         $zero, 0x560($a0)
    /* 3FCFC 800514EC 0800E003 */  jr         $ra
    /* 3FD00 800514F0 640582AC */   sw        $v0, 0x564($a0)
endlabel func_8005148C
