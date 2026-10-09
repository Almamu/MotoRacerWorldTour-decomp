nonmatching func_8006FA30, 0xAC

glabel func_8006FA30
    /* 5E240 8006FA30 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E244 8006FA34 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E248 8006FA38 21888000 */  addu       $s1, $a0, $zero
    /* 5E24C 8006FA3C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5E250 8006FA40 0600A004 */  bltz       $a1, .L8006FA5C
    /* 5E254 8006FA44 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5E258 8006FA48 4000A228 */  slti       $v0, $a1, 0x40
    /* 5E25C 8006FA4C 04004010 */  beqz       $v0, .L8006FA60
    /* 5E260 8006FA50 3F001024 */   addiu     $s0, $zero, 0x3F
    /* 5E264 8006FA54 98BE0108 */  j          .L8006FA60
    /* 5E268 8006FA58 2180A000 */   addu      $s0, $a1, $zero
  .L8006FA5C:
    /* 5E26C 8006FA5C 21800000 */  addu       $s0, $zero, $zero
  .L8006FA60:
    /* 5E270 8006FA60 05000224 */  addiu      $v0, $zero, 0x5
    /* 5E274 8006FA64 07002216 */  bne        $s1, $v0, .L8006FA84
    /* 5E278 8006FA68 06000224 */   addiu     $v0, $zero, 0x6
    /* 5E27C 8006FA6C 80251000 */  sll        $a0, $s0, 22
    /* 5E280 8006FA70 03240400 */  sra        $a0, $a0, 16
    /* 5E284 8006FA74 DCD2020C */  jal        SpuSetCommonMasterVolume
    /* 5E288 8006FA78 21288000 */   addu      $a1, $a0, $zero
    /* 5E28C 8006FA7C AEBE0108 */  j          .L8006FAB8
    /* 5E290 8006FA80 40101100 */   sll       $v0, $s1, 1
  .L8006FA84:
    /* 5E294 8006FA84 05002216 */  bne        $s1, $v0, .L8006FA9C
    /* 5E298 8006FA88 80101100 */   sll       $v0, $s1, 2
    /* 5E29C 8006FA8C FF54000C */  jal        func_800153FC
    /* 5E2A0 8006FA90 40201000 */   sll       $a0, $s0, 1
    /* 5E2A4 8006FA94 AEBE0108 */  j          .L8006FAB8
    /* 5E2A8 8006FA98 40101100 */   sll       $v0, $s1, 1
  .L8006FA9C:
    /* 5E2AC 8006FA9C 0D80033C */  lui        $v1, %hi(D_800C83C0)
    /* 5E2B0 8006FAA0 C0836324 */  addiu      $v1, $v1, %lo(D_800C83C0)
    /* 5E2B4 8006FAA4 21104300 */  addu       $v0, $v0, $v1
    /* 5E2B8 8006FAA8 0000448C */  lw         $a0, 0x0($v0)
    /* 5E2BC 8006FAAC 4848000C */  jal        func_80012120
    /* 5E2C0 8006FAB0 40281000 */   sll       $a1, $s0, 1
    /* 5E2C4 8006FAB4 40101100 */  sll        $v0, $s1, 1
  .L8006FAB8:
    /* 5E2C8 8006FAB8 0C80033C */  lui        $v1, %hi(D_800C7F18)
    /* 5E2CC 8006FABC 187F6324 */  addiu      $v1, $v1, %lo(D_800C7F18)
    /* 5E2D0 8006FAC0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5E2D4 8006FAC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E2D8 8006FAC8 21104300 */  addu       $v0, $v0, $v1
    /* 5E2DC 8006FACC 000050A4 */  sh         $s0, 0x0($v0)
    /* 5E2E0 8006FAD0 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E2E4 8006FAD4 0800E003 */  jr         $ra
    /* 5E2E8 8006FAD8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006FA30
