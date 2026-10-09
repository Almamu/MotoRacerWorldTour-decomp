nonmatching func_8006C064, 0x30

glabel func_8006C064
    /* 5A874 8006C064 002C0500 */  sll        $a1, $a1, 16
    /* 5A878 8006C068 0000828C */  lw         $v0, 0x0($a0)
    /* 5A87C 8006C06C 00000000 */  nop
    /* 5A880 8006C070 401F422C */  sltiu      $v0, $v0, 0x1F40
    /* 5A884 8006C074 05004010 */  beqz       $v0, .L8006C08C
    /* 5A888 8006C078 032C0500 */   sra       $a1, $a1, 16
    /* 5A88C 8006C07C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5A890 8006C080 160485A0 */  sb         $a1, 0x416($a0)
    /* 5A894 8006C084 0800E003 */  jr         $ra
    /* 5A898 8006C088 080080AC */   sw        $zero, 0x8($a0)
  .L8006C08C:
    /* 5A89C 8006C08C 0800E003 */  jr         $ra
    /* 5A8A0 8006C090 21100000 */   addu      $v0, $zero, $zero
endlabel func_8006C064
