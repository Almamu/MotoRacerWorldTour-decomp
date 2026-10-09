#!/usr/bin/env bash
# The two original files the build compares against (SCES_030.37 and
# data\LANGIMG.DAT), as one archive, for CI. Never commit the archive.
#
#   tools/baserom.sh pack [ARCHIVE]     from extracted/ (default: build/baserom.tar.gz)
#   tools/baserom.sh unpack ARCHIVE     into extracted/, checked against the SHA-1s
#                                       in config/*.yaml
set -euo pipefail
cd "$(dirname "$0")/.."
SCES=extracted/disc/SCES_030.37
LANGIMG=extracted/mr3dat/data/LANGIMG.DAT

sha1_of() {  # the sha1: line of a splat config
    sed -n 's/^sha1: *//p' "config/$1.yaml"
}
check() {
    echo "$(sha1_of sces)  $SCES" | sha1sum -c --quiet
    echo "$(sha1_of langimg)  $LANGIMG" | sha1sum -c --quiet
}

case "${1:-}" in
pack)
    out=${2:-build/baserom.tar.gz}
    check
    mkdir -p "$(dirname "$out")"
    tar czf "$out" -C extracted/disc SCES_030.37 -C ../mr3dat/data LANGIMG.DAT
    echo "wrote $out"
    ;;
unpack)
    [ -n "${2:-}" ] || { echo "usage: $0 unpack ARCHIVE" >&2; exit 1; }
    tmp=$(mktemp -d)
    trap 'rm -rf "$tmp"' EXIT
    tar xzf "$2" -C "$tmp"
    mkdir -p "$(dirname "$SCES")" "$(dirname "$LANGIMG")"
    cp "$tmp/SCES_030.37" "$SCES"
    cp "$tmp/LANGIMG.DAT" "$LANGIMG"
    check
    echo "unpacked and verified"
    ;;
*)
    sed -n '2,8p' "$0"
    exit 1
    ;;
esac
