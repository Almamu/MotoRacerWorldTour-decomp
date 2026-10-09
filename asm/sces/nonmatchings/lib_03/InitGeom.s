/* Handwritten function */
nonmatching InitGeom, 0x80

glabel InitGeom
    /* BC28 8013E75C 1C80013C */  lui        $at, %hi(D_801BFD88)
    /* BC2C 8013E760 88FD3FAC */  sw         $ra, %lo(D_801BFD88)($at)
    /* BC30 8013E764 FDF9040C */  jal        _patch_gte
    /* BC34 8013E768 00000000 */   nop
    /* BC38 8013E76C 1C801F3C */  lui        $ra, %hi(D_801BFD88)
    /* BC3C 8013E770 88FDFF8F */  lw         $ra, %lo(D_801BFD88)($ra)
    /* BC40 8013E774 00000000 */  nop
    /* BC44 8013E778 00600240 */  mfc0       $v0, $12 /* handwritten instruction */
    /* BC48 8013E77C 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* BC4C 8013E780 25104300 */  or         $v0, $v0, $v1
    /* BC50 8013E784 00608240 */  mtc0       $v0, $12 /* handwritten instruction */
    /* BC54 8013E788 00000000 */  nop
    /* BC58 8013E78C 55010824 */  addiu      $t0, $zero, 0x155
    /* BC5C 8013E790 00E8C848 */  ctc2       $t0, $29 /* handwritten instruction */
    /* BC60 8013E794 00000000 */  nop
    /* BC64 8013E798 00010824 */  addiu      $t0, $zero, 0x100
    /* BC68 8013E79C 00F0C848 */  ctc2       $t0, $30 /* handwritten instruction */
    /* BC6C 8013E7A0 00000000 */  nop
    /* BC70 8013E7A4 E8030824 */  addiu      $t0, $zero, 0x3E8
    /* BC74 8013E7A8 00D0C848 */  ctc2       $t0, $26 /* handwritten instruction */
    /* BC78 8013E7AC 00000000 */  nop
    /* BC7C 8013E7B0 9EEF0824 */  addiu      $t0, $zero, -0x1062
    /* BC80 8013E7B4 00D8C848 */  ctc2       $t0, $27 /* handwritten instruction */
    /* BC84 8013E7B8 00000000 */  nop
    /* BC88 8013E7BC 4001083C */  lui        $t0, (0x1400000 >> 16)
    /* BC8C 8013E7C0 00E0C848 */  ctc2       $t0, $28 /* handwritten instruction */
    /* BC90 8013E7C4 00000000 */  nop
    /* BC94 8013E7C8 00C0C048 */  ctc2       $zero, $24 /* handwritten instruction */
    /* BC98 8013E7CC 00C8C048 */  ctc2       $zero, $25 /* handwritten instruction */
    /* BC9C 8013E7D0 00000000 */  nop
    /* BCA0 8013E7D4 0800E003 */  jr         $ra
    /* BCA4 8013E7D8 00000000 */   nop
endlabel InitGeom
    /* BCA8 8013E7DC 00000000 */  nop
    /* BCAC 8013E7E0 00000000 */  nop
