#!/bin/sh
# Fetch one of the compilers (GCC 2.95.2 or 2.91.66 built for the PlayStation by
# decompals/old-gcc: static Linux binaries cpp, cc1, cc1plus, gcc, g++).
# Usage: tools/get_compiler.sh <version> <dest dir>
set -eu
version=$1
dest=$2
release=0.17
url=https://github.com/decompals/old-gcc/releases/download/$release/gcc-$version.tar.gz
sha256=$(grep " gcc-$version.tar.gz\$" "$(dirname "$0")/compilers.sha256" | cut -d' ' -f1)
tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT
curl -sSfL "$url" -o "$tmp"
echo "$sha256  $tmp" | sha256sum -c --quiet
mkdir -p "$dest"
tar xzf "$tmp" -C "$dest"
