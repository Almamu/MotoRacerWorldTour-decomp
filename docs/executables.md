# Executables

The game is split in two: a small boot executable on the disc, and the real
game code stored in `MR3.DAT` as `data\LANGIMG.DAT`.

## SCES_030.37 (boot executable)

Standard PS-X EXE.

| Field        | Value        |
|--------------|--------------|
| `pc0`        | 0x80136B4C   |
| `t_addr`     | 0x80133334   |
| `t_size`     | 0x8D800      |
| stack        | 0x801FFFF0 (from SYSTEM.CNF) |

Built with PsyQ (libcd `bios.c` 1997-03-28, libgpu `sys.c` 1998-01-12). It
holds the CD and archive code, LZSS, MDEC/FMV playback and the libraries,
then loads `data\LANGIMG.DAT` into low RAM.

| Address    | Function                                                             |
|------------|----------------------------------------------------------------------|
| 0x80134E34 | Startup: opens `\MR3.DAT;1` (table to 0x80010008), loads `data\LANGIMG.DAT` to 0x800117F0 |
| 0x80135B1C | `OpenArchive(cd_path, table_dest)`                                    |
| 0x80135610 | `LoadFile(name, dest, &size_out)`: looks the name up, reads it and undoes LZSS in place (the packed data is first moved to the end of the buffer) |
| 0x8013598C | `FindEntry(archive, name)`: strips a leading `\`, upper-cases, hashes, binary search |
| 0x80135D98 | `Crc32(buf, len, init)`, table at 0x8019D590                           |
| 0x80135EC8 | `StrUpper(s)` (in place)                                               |
| 0x80135514 | `LzssDecompress(src, dest)`                                            |
| 0x8013C5D8 | called during startup with a RECT (0, 0, 640, 256)                    |

## data\LANGIMG.DAT (game code)

Despite the name, this is the game itself, written in C++ (RTTI-style class
names: `CModuleMenu`, `CModuleMr3`, `Cobjet`, `CobjetHud`,
`CobjetMotoHumain`, `CobjetCameraMotion`, `CanimMoveCamera`, ...). Build
string: `Beta V 0.50e`, `Aug 25 2000-17:01:47`.

16-byte header, then code and data:

| Offset | Type | Value      | Meaning                     |
|--------|------|------------|-----------------------------|
| 0x00   | u32  | 0x800A7084 | entry point                 |
| 0x04   | u32  | 0x80011800 | address of offset 0x10      |
| 0x08   | u32  | 0xB8800    | size of code + data         |
| 0x0C   | u32  | 0x9F720    | never read: the boot executable only reads the entry point at +0x00 (0x80134E8C, 0x8013547C); not the bss (the entry point clears 0x800C9F48–0x800DE7B0, heap from 0x800DE7B4) nor the end of code |

It's loaded at 0x800117F0, so **file offset X = address 0x800117F0 + X**.

Known locations:

| Address    | What                                                          |
|------------|---------------------------------------------------------------|
| 0x80049BA4 | builds level file names, `Data\Final\%s%s%s_P%c.sdf`          |
| 0x8004782C | builds `data\final\Menu_%d.Sdf`                                |
| 0x8009FFEC | references `Data\DB_X_X.sdf`                                   |
| 0x800A5590 | SDF loader (checks the `SDF0` magic)                           |
| 0x800C9E50 | level code table (`Sdf`, `Suz`, `Bar`, ...; see [formats/mr3dat.md](formats/mr3dat.md)) |

Other strings in the code give useful names for later: the menu pages
(`1ERPAGE`, `MOTOS`, `WORLD`, `SAVE`, `LOAD`, `CONFIGURATION`, ...), game
modes (`QuickArcade`, `Training`, `TimeAttack`, `SingleRace`,
`Championship`), freestyle tricks (`SUPERMAN`, `CLIFFHANGER`, `HART
ATTACK`, ...), and the sound effect names used to look up samples in the
`.snd` banks.
