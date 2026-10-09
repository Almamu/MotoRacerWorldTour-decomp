#!/usr/bin/env bash
# Fetch Sony's PsyQ libraries and the tool that converts their objects, for
# `make sdk` (docs/decomp.md, "Libraries"). Optional: the normal build doesn't
# need any of it. Nothing of it is committed (tools/psyq/ is ignored), and
# every download and extracted library is checked against tools/psyq.sha256.
#
#   tools/fetch_psyq.sh [--keep]     --keep: keep the downloaded archives in tools/psyq/dl/
#
# What, and from where (archive.org's ps1_sdks collection, as BFM-decomp does):
#   psyq-obj-parser   decomp.me's compilers release: PsyQ .OBJ -> ELF
#   4.3               Runtime Library 4.3 (Japan, DTL-S2340) disc, data track (~290 MB):
#                     PSX/LIB/*.LIB -> tools/psyq/430/
#   4.4               Runtime Library 4.4 archive (~80 MB): psx/lib/*.LIB and Sony's
#                     psx/lib/patches/*.LIB -> tools/psyq/440/
#   4.7               Runtime Library 4.7 archive, the .LIB files only -> tools/psyq/470/
set -euo pipefail
cd "$(dirname "$0")/.."
PSYQ=tools/psyq
DL=$PSYQ/dl
CK=tools/psyq.sha256
IA=https://archive.org/download/ps1_sdks
PARSER_URL=https://github.com/decompme/compilers/releases/download/compilers/psyq-obj-parser.tar.gz
RTL43_URL="$IA/Programmer%20Tool%20-%20Runtime%20Library%20Version%204.3%20%28Japan%29_DTL-S2340_redump.zip/PlayStation%20Programmer%20Tool%20-%20Runtime%20Library%20Version%204.3%20%28Japan%29%20%28Track%201%29.bin"
RTL44_URL="$IA/Runtime%20Library%204.4.7z"
RTL47_URL="$IA/Runtime%20Library%204.7.zip"
KEEP=0
[ "${1:-}" = --keep ] && KEEP=1

say() { printf 'fetch_psyq: %s\n' "$*"; }
die() { printf 'fetch_psyq: %s\n' "$*" >&2; exit 1; }
# check <path under tools/psyq or dl name> <file>
check() {
    local want got
    want=$(awk -v p="$1" '$2 == p {print $1}' "$CK")
    [ -n "$want" ] || die "no checksum for $1 in $CK"
    got=$(sha256sum "$2" | cut -d' ' -f1)
    [ "$got" = "$want" ] || die "checksum mismatch for $1 (got $got): refusing to use it"
}
fetch() {  # url name: download into dl/ unless a verified copy is there
    if [ -f "$DL/$2" ] && check "$2" "$DL/$2" 2>/dev/null; then return; fi
    say "downloading $2"
    curl -fL --retry 3 -o "$DL/$2.part" "$1"
    mv "$DL/$2.part" "$DL/$2"
    check "$2" "$DL/$2"
}
# verify every library of a version directory
check_libs() {
    local f
    for f in $(awk -v d="$1/" 'index($2, d) == 1 {print $2}' "$CK"); do
        [ -f "$PSYQ/$f" ] || return 1
        check "$f" "$PSYQ/$f" || return 1
    done
}
SEVENZ=$(command -v 7zz || command -v 7z || true)
mkdir -p "$DL"

# psyq-obj-parser
if ! { [ -x $PSYQ/psyq-obj-parser ] && check psyq-obj-parser $PSYQ/psyq-obj-parser 2>/dev/null; }; then
    fetch "$PARSER_URL" psyq-obj-parser.tar.gz
    tar xzf "$DL/psyq-obj-parser.tar.gz" -C "$PSYQ" psyq-obj-parser
    chmod +x $PSYQ/psyq-obj-parser
    check psyq-obj-parser $PSYQ/psyq-obj-parser
fi

# 4.3: the libraries are on the disc's ISO9660 file system
if ! check_libs 430 2>/dev/null; then
    fetch "$RTL43_URL" rtl43_track1.bin
    tmp=$(mktemp -d)
    python3 tools/extract_iso.py "$DL/rtl43_track1.bin" "$tmp" > /dev/null
    mkdir -p $PSYQ/430
    cp "$tmp"/PSX/LIB/*.LIB $PSYQ/430/
    rm -rf "$tmp"
    check_libs 430 || die "4.3 libraries don't match $CK"
    say "4.3 libraries verified"
fi

# 4.4, with Sony's patched libraries
if ! check_libs 440 2>/dev/null; then
    [ -n "$SEVENZ" ] || die "7zz (or 7z) is needed for the 4.4 archive"
    fetch "$RTL44_URL" rtl44.7z
    tmp=$(mktemp -d)
    "$SEVENZ" x -y -bd -o"$tmp" "$DL/rtl44.7z" 'psx/lib/*' > /dev/null
    mkdir -p $PSYQ/440/patches
    find "$tmp/psx/lib" -maxdepth 1 -iname '*.lib' -exec cp {} $PSYQ/440/ \;
    find "$tmp/psx/lib/patches" -maxdepth 1 -iname '*.lib' -exec cp {} $PSYQ/440/patches/ \;
    rm -rf "$tmp"
    check_libs 440 || die "4.4 libraries don't match $CK"
    say "4.4 libraries verified"
fi

# 4.7: archive.org serves the zip's members one by one
if ! check_libs 470 2>/dev/null; then
    mkdir -p $PSYQ/470
    for f in $(awk 'index($2, "470/") == 1 {sub("470/", "", $2); print $2}' "$CK"); do
        curl -fsL --retry 3 -o "$PSYQ/470/$f" "$RTL47_URL/LIB/$f"
    done
    check_libs 470 || die "4.7 libraries don't match $CK"
    say "4.7 libraries verified"
fi

[ "$KEEP" = 1 ] || rm -rf "$DL"
say "done: tools/psyq/ has psyq-obj-parser and the 4.3, 4.4 and 4.7 libraries"
