nonmatching _padSetActAlign, 0x68

glabel _padSetActAlign
    /* A01C0 800B19B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A01C4 800B19B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* A01C8 800B19B8 21808000 */  addu       $s0, $a0, $zero
    /* A01CC 800B19BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* A01D0 800B19C0 0C80023C */  lui        $v0, %hi(D_800C3CA4)
    /* A01D4 800B19C4 A43C428C */  lw         $v0, %lo(D_800C3CA4)($v0)
    /* A01D8 800B19C8 1800BFAF */  sw         $ra, 0x18($sp)
    /* A01DC 800B19CC 09F84000 */  jalr       $v0
    /* A01E0 800B19D0 2188A000 */   addu      $s1, $a1, $zero
    /* A01E4 800B19D4 0B004014 */  bnez       $v0, .L800B1A04
    /* A01E8 800B19D8 21100000 */   addu      $v0, $zero, $zero
    /* A01EC 800B19DC 01000224 */  addiu      $v0, $zero, 0x1
    /* A01F0 800B19E0 01000324 */  addiu      $v1, $zero, 0x1
    /* A01F4 800B19E4 460003A2 */  sb         $v1, 0x46($s0)
    /* A01F8 800B19E8 0B80033C */  lui        $v1, %hi(func_800B1A18)
    /* A01FC 800B19EC 181A6324 */  addiu      $v1, $v1, %lo(func_800B1A18)
    /* A0200 800B19F0 140003AE */  sw         $v1, 0x14($s0)
    /* A0204 800B19F4 0B80033C */  lui        $v1, %hi(func_800B1A34)
    /* A0208 800B19F8 341A6324 */  addiu      $v1, $v1, %lo(func_800B1A34)
    /* A020C 800B19FC 200011AE */  sw         $s1, 0x20($s0)
    /* A0210 800B1A00 180003AE */  sw         $v1, 0x18($s0)
  .L800B1A04:
    /* A0214 800B1A04 1800BF8F */  lw         $ra, 0x18($sp)
    /* A0218 800B1A08 1400B18F */  lw         $s1, 0x14($sp)
    /* A021C 800B1A0C 1000B08F */  lw         $s0, 0x10($sp)
    /* A0220 800B1A10 0800E003 */  jr         $ra
    /* A0224 800B1A14 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _padSetActAlign
