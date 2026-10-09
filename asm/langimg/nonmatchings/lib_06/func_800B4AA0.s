nonmatching func_800B4AA0, 0xD0

glabel func_800B4AA0
    /* A32B0 800B4AA0 2138E500 */  addu       $a3, $a3, $a1
    /* A32B4 800B4AA4 AA2A053C */  lui        $a1, (0x2AAAAAAB >> 16)
    /* A32B8 800B4AA8 ABAAA534 */  ori        $a1, $a1, (0x2AAAAAAB & 0xFFFF)
    /* A32BC 800B4AAC FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* A32C0 800B4AB0 C2110300 */  srl        $v0, $v1, 7
    /* A32C4 800B4AB4 2130C200 */  addu       $a2, $a2, $v0
    /* A32C8 800B4AB8 2330C400 */  subu       $a2, $a2, $a0
    /* A32CC 800B4ABC 00340600 */  sll        $a2, $a2, 16
    /* A32D0 800B4AC0 03240600 */  sra        $a0, $a2, 16
    /* A32D4 800B4AC4 18008500 */  mult       $a0, $a1
    /* A32D8 800B4AC8 7F006730 */  andi       $a3, $v1, 0x7F
    /* A32DC 800B4ACC C3370600 */  sra        $a2, $a2, 31
    /* A32E0 800B4AD0 10400000 */  mfhi       $t0
    /* A32E4 800B4AD4 43100800 */  sra        $v0, $t0, 1
    /* A32E8 800B4AD8 23284600 */  subu       $a1, $v0, $a2
    /* A32EC 800B4ADC FEFFA624 */  addiu      $a2, $a1, -0x2
    /* A32F0 800B4AE0 40100500 */  sll        $v0, $a1, 1
    /* A32F4 800B4AE4 21104500 */  addu       $v0, $v0, $a1
    /* A32F8 800B4AE8 80100200 */  sll        $v0, $v0, 2
    /* A32FC 800B4AEC 23208200 */  subu       $a0, $a0, $v0
    /* A3300 800B4AF0 00140400 */  sll        $v0, $a0, 16
    /* A3304 800B4AF4 03004104 */  bgez       $v0, .L800B4B04
    /* A3308 800B4AF8 21188000 */   addu      $v1, $a0, $zero
    /* A330C 800B4AFC 0C008324 */  addiu      $v1, $a0, 0xC
    /* A3310 800B4B00 FDFFA624 */  addiu      $a2, $a1, -0x3
  .L800B4B04:
    /* A3314 800B4B04 001C0300 */  sll        $v1, $v1, 16
    /* A3318 800B4B08 C31B0300 */  sra        $v1, $v1, 15
    /* A331C 800B4B0C FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* A3320 800B4B10 40100200 */  sll        $v0, $v0, 1
    /* A3324 800B4B14 0C80013C */  lui        $at, %hi(D_800C4220)
    /* A3328 800B4B18 21082300 */  addu       $at, $at, $v1
    /* A332C 800B4B1C 20422394 */  lhu        $v1, %lo(D_800C4220)($at)
    /* A3330 800B4B20 0C80013C */  lui        $at, %hi(D_800C4238)
    /* A3334 800B4B24 21082200 */  addu       $at, $at, $v0
    /* A3338 800B4B28 38422294 */  lhu        $v0, %lo(D_800C4238)($at)
    /* A333C 800B4B2C 00000000 */  nop
    /* A3340 800B4B30 18006200 */  mult       $v1, $v0
    /* A3344 800B4B34 00140600 */  sll        $v0, $a2, 16
    /* A3348 800B4B38 03140200 */  sra        $v0, $v0, 16
    /* A334C 800B4B3C 12400000 */  mflo       $t0
    /* A3350 800B4B40 03004004 */  bltz       $v0, .L800B4B50
    /* A3354 800B4B44 032C0800 */   sra       $a1, $t0, 16
    /* A3358 800B4B48 DAD20208 */  j          .L800B4B68
    /* A335C 800B4B4C FF3F0524 */   addiu     $a1, $zero, 0x3FFF
  .L800B4B50:
    /* A3360 800B4B50 23200200 */  negu       $a0, $v0
    /* A3364 800B4B54 FFFF8324 */  addiu      $v1, $a0, -0x1
    /* A3368 800B4B58 01000224 */  addiu      $v0, $zero, 0x1
    /* A336C 800B4B5C 04106200 */  sllv       $v0, $v0, $v1
    /* A3370 800B4B60 2128A200 */  addu       $a1, $a1, $v0
    /* A3374 800B4B64 06288500 */  srlv       $a1, $a1, $a0
  .L800B4B68:
    /* A3378 800B4B68 0800E003 */  jr         $ra
    /* A337C 800B4B6C FFFFA230 */   andi      $v0, $a1, 0xFFFF
endlabel func_800B4AA0
