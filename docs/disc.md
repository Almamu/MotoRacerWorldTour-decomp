# Disc

PAL release, serial SCES-03037. Mixed-mode CD with 23 tracks:

| Track | Type          | Contents                                          |
|-------|---------------|---------------------------------------------------|
| 01    | MODE2/2352    | Data (ISO9660, 45274 sectors)                      |
| 02–23 | CD-DA audio   | Music (22 tracks). Each has a 2-second pregap.     |

A Redump-style cue sheet for the BIN files:

```
FILE "... (Track 01) [SCES-03037].bin" BINARY
  TRACK 01 MODE2/2352
    INDEX 01 00:00:00
FILE "... (Track 02) [SCES-03037].bin" BINARY
  TRACK 02 AUDIO
    INDEX 00 00:00:00
    INDEX 01 00:02:00
...
```

## File system

Extract with `tools/extract_iso.py`. The volume ID is empty.

| Path             | LBA   | Size     | XA attr | Contents                                    |
|------------------|-------|----------|---------|---------------------------------------------|
| `SYSTEM.CNF`     | 23    | 60       | Form 1  | Boot configuration                          |
| `SCES_030.37`    | 24    | 581632   | Form 1  | Boot executable ([executables.md](executables.md)) |
| `CINE/LOGODSI.DPS` | 309 | 8024064  | Form 2, interleaved | Delphine logo FMV                |
| `CINE/INTRO.DPS` | 4227  | 10678272 | Form 2, interleaved | Intro FMV                          |
| `MR3.DAT`        | 9441  | 39790323 | Form 1  | Main data archive ([formats/mr3dat.md](formats/mr3dat.md)) |
| `CINE/MR3GEN.DPS`| 28870 | 33288192 | Form 2, interleaved | End credits FMV                     |

`SYSTEM.CNF`:

```
BOOT=cdrom:\SCES_030.37;1
TCB=4
EVENT=10
STACK=801ffff0
```

The `.DPS` files are XA-interleaved (video plus XA audio), so the extractor
writes them as raw 2352-byte sectors to keep the subheaders and Form 2
payloads. They're STR movies with a header sector, see
[formats/dps.md](formats/dps.md). The boot executable also names `podium.dps`, `Final.dps` and
`logoea.dps`, which aren't on this disc.
