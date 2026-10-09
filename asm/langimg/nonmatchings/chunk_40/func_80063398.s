nonmatching func_80063398, 0x90

glabel func_80063398
    /* 51BA8 80063398 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 51BAC 8006339C 4000B0AF */  sw         $s0, 0x40($sp)
    /* 51BB0 800633A0 21808000 */  addu       $s0, $a0, $zero
    /* 51BB4 800633A4 4400B1AF */  sw         $s1, 0x44($sp)
    /* 51BB8 800633A8 3000B127 */  addiu      $s1, $sp, 0x30
    /* 51BBC 800633AC 21202002 */  addu       $a0, $s1, $zero
    /* 51BC0 800633B0 64000526 */  addiu      $a1, $s0, 0x64
    /* 51BC4 800633B4 78000626 */  addiu      $a2, $s0, 0x78
    /* 51BC8 800633B8 4800B2AF */  sw         $s2, 0x48($sp)
    /* 51BCC 800633BC 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 51BD0 800633C0 3466020C */  jal        func_800998D0
    /* 51BD4 800633C4 2000B227 */   addiu     $s2, $sp, 0x20
    /* 51BD8 800633C8 21204002 */  addu       $a0, $s2, $zero
    /* 51BDC 800633CC 0D80063C */  lui        $a2, %hi(D_800D6130)
    /* 51BE0 800633D0 3061C68C */  lw         $a2, %lo(D_800D6130)($a2)
    /* 51BE4 800633D4 21282002 */  addu       $a1, $s1, $zero
    /* 51BE8 800633D8 C665020C */  jal        func_80099718
    /* 51BEC 800633DC 83310600 */   sra       $a2, $a2, 6
    /* 51BF0 800633E0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 51BF4 800633E4 21284002 */  addu       $a1, $s2, $zero
    /* 51BF8 800633E8 7367020C */  jal        func_80099DCC
    /* 51BFC 800633EC 06000624 */   addiu     $a2, $zero, 0x6
    /* 51C00 800633F0 1000A28F */  lw         $v0, 0x10($sp)
    /* 51C04 800633F4 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 51C08 800633F8 4800B28F */  lw         $s2, 0x48($sp)
    /* 51C0C 800633FC 4400B18F */  lw         $s1, 0x44($sp)
    /* 51C10 80063400 1000A327 */  addiu      $v1, $sp, 0x10
    /* 51C14 80063404 840002AE */  sw         $v0, 0x84($s0)
    /* 51C18 80063408 0400648C */  lw         $a0, 0x4($v1)
    /* 51C1C 8006340C 0800628C */  lw         $v0, 0x8($v1)
    /* 51C20 80063410 84001026 */  addiu      $s0, $s0, 0x84
    /* 51C24 80063414 040004AE */  sw         $a0, 0x4($s0)
    /* 51C28 80063418 080002AE */  sw         $v0, 0x8($s0)
    /* 51C2C 8006341C 4000B08F */  lw         $s0, 0x40($sp)
    /* 51C30 80063420 0800E003 */  jr         $ra
    /* 51C34 80063424 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_80063398
