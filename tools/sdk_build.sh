#!/usr/bin/env bash
# make sdk: build both executables with Sony's PsyQ objects linked in place
# of the library asm they match (tools/psyq_match.py, tools/psyq_link.py),
# and check they're still byte-identical. Needs tools/fetch_psyq.sh first,
# and a normal build (make) for the linker scripts and the other objects.
set -euo pipefail
cd "$(dirname "$0")/.."
if [ -z "${CROSS:-}" ]; then
    command -v mipsel-unknown-linux-gnu-as >/dev/null && CROSS=mipsel-unknown-linux-gnu- || CROSS=mipsel-linux-gnu-
fi
AS=${CROSS}as
LD=${CROSS}ld
OBJCOPY=${CROSS}objcopy
ASFLAGS="-EL -march=r3000 -mtune=r3000 -mabi=32 -no-pad-sections -O1 -G0 -I include"
OUT=build/sdk
[ -x tools/psyq/psyq-obj-parser ] || { echo "tools/psyq is missing: run tools/fetch_psyq.sh" >&2; exit 1; }
mkdir -p "$OUT"
python3 tools/psyq_match.py --json "$OUT/match.json" > "$OUT/match.txt"
for t in langimg sces; do
    d="$OUT/$t"
    rm -rf "$d"
    python3 tools/psyq_link.py "$t" "$OUT/match.json" "$d"
    while read -r src obj; do
        mkdir -p "$(dirname "$obj")"
        $AS $ASFLAGS -o "$obj" "$src"
        # 4-byte sections, as in the Makefile (ALIGN4)
        $OBJCOPY --set-section-alignment .text=4 --set-section-alignment .data=4 \
            --set-section-alignment .bss=4 --set-section-alignment .rodata=4 "$obj"
    done < "$d/objects.txt"
    $LD -EL --no-check-sections --no-warn-rwx-segments -Map "$d/$t.map" \
        -T "$d/${t}_syms.ld" -T "$d/$t.ld" \
        -T "linker/$t/undefined_syms_auto.txt" -T "linker/$t/undefined_funcs_auto.txt" \
        -o "$d/$t.elf"
    $OBJCOPY -O binary "$d/$t.elf" "$OUT/$t.bin"
done
python3 -c "import sys; p=sys.argv[1]; d=open(p,'rb').read(); n=-(len(d)-16)%2048; open(p,'ab').write(bytes(n))" "$OUT/langimg.bin"
sed "s| build/| $OUT/|" config/checksums.sha1 | sha1sum -c
# Both matched: record which functions Sony's objects provide, for
# tools/chunks.py.
for t in langimg sces; do cp "$OUT/$t/replaced.txt" "$OUT/$t.sdk_functions.txt"; done
