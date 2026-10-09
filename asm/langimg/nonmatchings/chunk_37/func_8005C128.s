nonmatching func_8005C128, 0x1DC

glabel func_8005C128
    /* 4A938 8005C128 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4A93C 8005C12C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A940 8005C130 21888000 */  addu       $s1, $a0, $zero
    /* 4A944 8005C134 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4A948 8005C138 2190A000 */  addu       $s2, $a1, $zero
    /* 4A94C 8005C13C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A950 8005C140 2180C000 */  addu       $s0, $a2, $zero
    /* 4A954 8005C144 0300422E */  sltiu      $v0, $s2, 0x3
    /* 4A958 8005C148 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4A95C 8005C14C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4A960 8005C150 64004010 */  beqz       $v0, .L8005C2E4
    /* 4A964 8005C154 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 4A968 8005C158 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A96C 8005C15C 61000212 */  beq        $s0, $v0, .L8005C2E4
    /* 4A970 8005C160 00000000 */   nop
    /* 4A974 8005C164 1800258E */  lw         $a1, 0x18($s1)
    /* 4A978 8005C168 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 4A97C 8005C16C 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 4A980 8005C170 F1E3010C */  jal        func_80078FC4
    /* 4A984 8005C174 80A01000 */   sll       $s4, $s0, 2
    /* 4A988 8005C178 C4003326 */  addiu      $s3, $s1, 0xC4
    /* 4A98C 8005C17C 21187402 */  addu       $v1, $s3, $s4
    /* 4A990 8005C180 0000658C */  lw         $a1, 0x0($v1)
    /* 4A994 8005C184 7A24020C */  jal        func_800891E8
    /* 4A998 8005C188 30004424 */   addiu     $a0, $v0, 0x30
    /* 4A99C 8005C18C 80301200 */  sll        $a2, $s2, 2
    /* 4A9A0 8005C190 0D80043C */  lui        $a0, %hi(D_800CB400)
    /* 4A9A4 8005C194 00B48424 */  addiu      $a0, $a0, %lo(D_800CB400)
    /* 4A9A8 8005C198 2130C400 */  addu       $a2, $a2, $a0
    /* 4A9AC 8005C19C CA032386 */  lh         $v1, 0x3CA($s1)
    /* 4A9B0 8005C1A0 0000C58C */  lw         $a1, 0x0($a2)
    /* 4A9B4 8005C1A4 00000000 */  nop
    /* 4A9B8 8005C1A8 18006500 */  mult       $v1, $a1
    /* 4A9BC 8005C1AC 7803248E */  lw         $a0, 0x378($s1)
    /* 4A9C0 8005C1B0 21284000 */  addu       $a1, $v0, $zero
    /* 4A9C4 8005C1B4 12180000 */  mflo       $v1
    /* 4A9C8 8005C1B8 03330300 */  sra        $a2, $v1, 12
    /* 4A9CC 8005C1BC C80326A6 */  sh         $a2, 0x3C8($s1)
    /* 4A9D0 8005C1C0 0000838C */  lw         $v1, 0x0($a0)
    /* 4A9D4 8005C1C4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4A9D8 8005C1C8 04006214 */  bne        $v1, $v0, .L8005C1DC
    /* 4A9DC 8005C1CC 001C0600 */   sll       $v1, $a2, 16
    /* 4A9E0 8005C1D0 3000A28C */  lw         $v0, 0x30($a1)
    /* 4A9E4 8005C1D4 7B700108 */  j          .L8005C1EC
    /* 4A9E8 8005C1D8 C3100200 */   sra       $v0, $v0, 3
  .L8005C1DC:
    /* 4A9EC 8005C1DC 3000A28C */  lw         $v0, 0x30($a1)
    /* 4A9F0 8005C1E0 031C0300 */  sra        $v1, $v1, 16
    /* 4A9F4 8005C1E4 23104300 */  subu       $v0, $v0, $v1
    /* 4A9F8 8005C1E8 43100200 */  sra        $v0, $v0, 1
  .L8005C1EC:
    /* 4A9FC 8005C1EC C40322A6 */  sh         $v0, 0x3C4($s1)
    /* 4AA00 8005C1F0 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4AA04 8005C1F4 40801200 */  sll        $s0, $s2, 1
    /* 4AA08 8005C1F8 21801202 */  addu       $s0, $s0, $s2
    /* 4AA0C 8005C1FC C0801000 */  sll        $s0, $s0, 3
    /* 4AA10 8005C200 23801202 */  subu       $s0, $s0, $s2
    /* 4AA14 8005C204 80801000 */  sll        $s0, $s0, 2
    /* 4AA18 8005C208 B803248E */  lw         $a0, 0x3B8($s1)
    /* 4AA1C 8005C20C C8032696 */  lhu        $a2, 0x3C8($s1)
    /* 4AA20 8005C210 C4032296 */  lhu        $v0, 0x3C4($s1)
    /* 4AA24 8005C214 21209000 */  addu       $a0, $a0, $s0
    /* 4AA28 8005C218 001C0600 */  sll        $v1, $a2, 16
    /* 4AA2C 8005C21C 431C0300 */  sra        $v1, $v1, 17
    /* 4AA30 8005C220 21184300 */  addu       $v1, $v0, $v1
    /* 4AA34 8005C224 21104600 */  addu       $v0, $v0, $a2
    /* 4AA38 8005C228 02004224 */  addiu      $v0, $v0, 0x2
    /* 4AA3C 8005C22C D40323A6 */  sh         $v1, 0x3D4($s1)
    /* 4AA40 8005C230 D80322A6 */  sh         $v0, 0x3D8($s1)
    /* 4AA44 8005C234 D418020C */  jal        func_80086350
    /* 4AA48 8005C238 D00322A6 */   sh        $v0, 0x3D0($s1)
    /* 4AA4C 8005C23C C4032526 */  addiu      $a1, $s1, 0x3C4
    /* 4AA50 8005C240 B803248E */  lw         $a0, 0x3B8($s1)
    /* 4AA54 8005C244 E8030624 */  addiu      $a2, $zero, 0x3E8
    /* 4AA58 8005C248 F318020C */  jal        func_800863CC
    /* 4AA5C 8005C24C 21209000 */   addu      $a0, $a0, $s0
    /* 4AA60 8005C250 21187402 */  addu       $v1, $s3, $s4
    /* 4AA64 8005C254 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AA68 8005C258 00006494 */  lhu        $a0, 0x0($v1)
    /* 4AA6C 8005C25C 21100202 */  addu       $v0, $s0, $v0
    /* 4AA70 8005C260 5A0044A4 */  sh         $a0, 0x5A($v0)
    /* 4AA74 8005C264 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4AA78 8005C268 CC032596 */  lhu        $a1, 0x3CC($s1)
    /* 4AA7C 8005C26C 21180302 */  addu       $v1, $s0, $v1
    /* 4AA80 8005C270 1C0065A4 */  sh         $a1, 0x1C($v1)
    /* 4AA84 8005C274 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AA88 8005C278 CE032496 */  lhu        $a0, 0x3CE($s1)
    /* 4AA8C 8005C27C 21100202 */  addu       $v0, $s0, $v0
    /* 4AA90 8005C280 1E0044A4 */  sh         $a0, 0x1E($v0)
    /* 4AA94 8005C284 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4AA98 8005C288 D4032596 */  lhu        $a1, 0x3D4($s1)
    /* 4AA9C 8005C28C 21180302 */  addu       $v1, $s0, $v1
    /* 4AAA0 8005C290 240065A4 */  sh         $a1, 0x24($v1)
    /* 4AAA4 8005C294 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AAA8 8005C298 D6032496 */  lhu        $a0, 0x3D6($s1)
    /* 4AAAC 8005C29C 21100202 */  addu       $v0, $s0, $v0
    /* 4AAB0 8005C2A0 260044A4 */  sh         $a0, 0x26($v0)
    /* 4AAB4 8005C2A4 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4AAB8 8005C2A8 D0032596 */  lhu        $a1, 0x3D0($s1)
    /* 4AABC 8005C2AC 21180302 */  addu       $v1, $s0, $v1
    /* 4AAC0 8005C2B0 200065A4 */  sh         $a1, 0x20($v1)
    /* 4AAC4 8005C2B4 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AAC8 8005C2B8 D2032496 */  lhu        $a0, 0x3D2($s1)
    /* 4AACC 8005C2BC 21100202 */  addu       $v0, $s0, $v0
    /* 4AAD0 8005C2C0 220044A4 */  sh         $a0, 0x22($v0)
    /* 4AAD4 8005C2C4 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4AAD8 8005C2C8 D8032596 */  lhu        $a1, 0x3D8($s1)
    /* 4AADC 8005C2CC 21180302 */  addu       $v1, $s0, $v1
    /* 4AAE0 8005C2D0 280065A4 */  sh         $a1, 0x28($v1)
    /* 4AAE4 8005C2D4 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4AAE8 8005C2D8 DA032496 */  lhu        $a0, 0x3DA($s1)
    /* 4AAEC 8005C2DC 21800202 */  addu       $s0, $s0, $v0
    /* 4AAF0 8005C2E0 2A0004A6 */  sh         $a0, 0x2A($s0)
  .L8005C2E4:
    /* 4AAF4 8005C2E4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4AAF8 8005C2E8 2000B48F */  lw         $s4, 0x20($sp)
    /* 4AAFC 8005C2EC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4AB00 8005C2F0 1800B28F */  lw         $s2, 0x18($sp)
    /* 4AB04 8005C2F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 4AB08 8005C2F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 4AB0C 8005C2FC 0800E003 */  jr         $ra
    /* 4AB10 8005C300 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8005C128
