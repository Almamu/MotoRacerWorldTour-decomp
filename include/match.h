#ifndef MATCH_H
#define MATCH_H

/* Named forms of the workarounds that make code match when plain C can't
 * (docs/matching_techniques.md, "The match.h macros"). Use these rather
 * than spelling the asm out, and say at the use what it fixes. */

/* Stores the word v at p, which may be unaligned, through the assembler's
 * usw macro (swl + swr). GCC sees one opaque instruction, so it can't
 * schedule other instructions between the two halves or move them across
 * it; the original's loops keep their order around the store that way
 * (LzssDecompress). */
#define STORE_UNALIGNED(p, v) __asm__ volatile("usw %0, 0(%1)" : : "r"(v), "r"(p))

#endif
