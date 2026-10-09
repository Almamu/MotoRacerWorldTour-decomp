nonmatching SpuGetAllKeysStatus, 0x88

glabel SpuGetAllKeysStatus
    /* A2C54 800B4444 18000A24 */  addiu      $t2, $zero, 0x18
    /* A2C58 800B4448 21300000 */  addu       $a2, $zero, $zero
    /* A2C5C 800B444C 01000724 */  addiu      $a3, $zero, 0x1
    /* A2C60 800B4450 03000924 */  addiu      $t1, $zero, 0x3
    /* A2C64 800B4454 02000824 */  addiu      $t0, $zero, 0x2
    /* A2C68 800B4458 21288000 */  addu       $a1, $a0, $zero
  .L800B445C:
    /* A2C6C 800B445C 00210600 */  sll        $a0, $a2, 4
    /* A2C70 800B4460 0C80023C */  lui        $v0, %hi(_spu_RXX)
    /* A2C74 800B4464 B03D428C */  lw         $v0, %lo(_spu_RXX)($v0)
    /* A2C78 800B4468 0C80033C */  lui        $v1, %hi(_spu_keystat)
    /* A2C7C 800B446C 3C3D638C */  lw         $v1, %lo(_spu_keystat)($v1)
    /* A2C80 800B4470 21208200 */  addu       $a0, $a0, $v0
    /* A2C84 800B4474 0410C700 */  sllv       $v0, $a3, $a2
    /* A2C88 800B4478 24186200 */  and        $v1, $v1, $v0
    /* A2C8C 800B447C 0C008294 */  lhu        $v0, 0xC($a0)
    /* A2C90 800B4480 07006010 */  beqz       $v1, .L800B44A0
    /* A2C94 800B4484 00000000 */   nop
    /* A2C98 800B4488 03004010 */  beqz       $v0, .L800B4498
    /* A2C9C 800B448C 00000000 */   nop
    /* A2CA0 800B4490 2DD10208 */  j          .L800B44B4
    /* A2CA4 800B4494 0000A7A0 */   sb        $a3, 0x0($a1)
  .L800B4498:
    /* A2CA8 800B4498 2DD10208 */  j          .L800B44B4
    /* A2CAC 800B449C 0000A9A0 */   sb        $t1, 0x0($a1)
  .L800B44A0:
    /* A2CB0 800B44A0 03004010 */  beqz       $v0, .L800B44B0
    /* A2CB4 800B44A4 00000000 */   nop
    /* A2CB8 800B44A8 2DD10208 */  j          .L800B44B4
    /* A2CBC 800B44AC 0000A8A0 */   sb        $t0, 0x0($a1)
  .L800B44B0:
    /* A2CC0 800B44B0 0000A0A0 */  sb         $zero, 0x0($a1)
  .L800B44B4:
    /* A2CC4 800B44B4 0100C624 */  addiu      $a2, $a2, 0x1
    /* A2CC8 800B44B8 2A10CA00 */  slt        $v0, $a2, $t2
    /* A2CCC 800B44BC E7FF4014 */  bnez       $v0, .L800B445C
    /* A2CD0 800B44C0 0100A524 */   addiu     $a1, $a1, 0x1
    /* A2CD4 800B44C4 0800E003 */  jr         $ra
    /* A2CD8 800B44C8 00000000 */   nop
endlabel SpuGetAllKeysStatus
    /* A2CDC 800B44CC 00000000 */  nop
