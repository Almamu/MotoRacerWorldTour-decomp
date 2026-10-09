nonmatching SpuStart, 0x70

glabel SpuStart
    /* A17B4 800B2FA4 0C80023C */  lui        $v0, %hi(D_800C3DA0)
    /* A17B8 800B2FA8 A03D428C */  lw         $v0, %lo(D_800C3DA0)($v0)
    /* A17BC 800B2FAC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A17C0 800B2FB0 14004014 */  bnez       $v0, .L800B3004
    /* A17C4 800B2FB4 1000BFAF */   sw        $ra, 0x10($sp)
    /* A17C8 800B2FB8 01000224 */  addiu      $v0, $zero, 0x1
    /* A17CC 800B2FBC 0C80013C */  lui        $at, %hi(D_800C3DA0)
    /* A17D0 800B2FC0 E0D6020C */  jal        EnterCriticalSection
    /* A17D4 800B2FC4 A03D22AC */   sw        $v0, %lo(D_800C3DA0)($at)
    /* A17D8 800B2FC8 0B80043C */  lui        $a0, %hi(_spu_FiDMA)
    /* A17DC 800B2FCC 85CE020C */  jal        _SpuDataCallback
    /* A17E0 800B2FD0 5C348424 */   addiu     $a0, $a0, %lo(_spu_FiDMA)
    /* A17E4 800B2FD4 00F0043C */  lui        $a0, (0xF0000009 >> 16)
    /* A17E8 800B2FD8 09008434 */  ori        $a0, $a0, (0xF0000009 & 0xFFFF)
    /* A17EC 800B2FDC 20000524 */  addiu      $a1, $zero, 0x20
    /* A17F0 800B2FE0 00200624 */  addiu      $a2, $zero, 0x2000
    /* A17F4 800B2FE4 BCD6020C */  jal        OpenEvent
    /* A17F8 800B2FE8 21380000 */   addu      $a3, $zero, $zero
    /* A17FC 800B2FEC 21204000 */  addu       $a0, $v0, $zero
    /* A1800 800B2FF0 0C80013C */  lui        $at, %hi(D_800C3D38)
    /* A1804 800B2FF4 CCD6020C */  jal        EnableEvent
    /* A1808 800B2FF8 383D24AC */   sw        $a0, %lo(D_800C3D38)($at)
    /* A180C 800B2FFC E4D6020C */  jal        ExitCriticalSection
    /* A1810 800B3000 00000000 */   nop
  .L800B3004:
    /* A1814 800B3004 1000BF8F */  lw         $ra, 0x10($sp)
    /* A1818 800B3008 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A181C 800B300C 0800E003 */  jr         $ra
    /* A1820 800B3010 00000000 */   nop
endlabel SpuStart
    /* A1824 800B3014 00000000 */  nop
    /* A1828 800B3018 00000000 */  nop
