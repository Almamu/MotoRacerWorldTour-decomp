#!/usr/bin/env python3
"""Deterministic PS1 runner: a minimal libretro frontend for experiments.

Loads the Beetle PSX (Mednafen) libretro core with ctypes and gives frame-
exact control: press buttons per frame, read/write main RAM, save and load
states, grab screenshots. Unlike tools/emutest.py (real Mednafen + key
presses through X), two runs with the same input give the same frames, so
the effect of a data change can be measured exactly.

    from psxrun import Psx
    psx = Psx(cue, bios, core=...)        # BIOS is copied as scph5502.bin
    psx.run(600)                          # 600 frames, no buttons
    psx.run(10, {"start"})                # hold Start for 10 frames
    ram = psx.ram                         # 2 MB, writable (0x80000000 = ram[0])
    st = psx.save_state(); psx.load_state(st)
    psx.screenshot("x.png")

Buttons: cross circle square triangle start select up down left right
l1 r1 l2 r2.

Only one Psx per process: the core keeps global state, so a second
instance would keep running the first disc. Compare data variants by
patching RAM after load_state(), or run each disc in its own process.

The core comes from nixpkgs (libretro.beetle-psx); PSX_CORE overrides the
path. Command line:  psxrun.py <cue> <bios> <out.png> <script>
with a script like "600;start*10;300;cross*10;900" (frames;button*frames).
"""

import ctypes as C
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

import numpy as np

BUTTONS = {"cross": 0, "square": 1, "select": 2, "start": 3, "up": 4, "down": 5, "left": 6,
           "right": 7, "circle": 8, "triangle": 9, "l1": 10, "r1": 11, "l2": 12, "r2": 13}

ENV_GET_VARIABLE = 15
ENV_SET_PIXEL_FORMAT = 10
ENV_GET_SYSTEM_DIRECTORY = 9
ENV_GET_SAVE_DIRECTORY = 31
ENV_GET_CAN_DUPE = 3
ENV_GET_INPUT_BITMASKS = 51 | 0x10000  # experimental flag
RETRO_MEMORY_SYSTEM_RAM = 2
JOYPAD_MASK = 256


class GameInfo(C.Structure):
    _fields_ = [("path", C.c_char_p), ("data", C.c_void_p), ("size", C.c_size_t), ("meta", C.c_char_p)]


class Variable(C.Structure):
    _fields_ = [("key", C.c_char_p), ("value", C.c_char_p)]


ENV_CB = C.CFUNCTYPE(C.c_bool, C.c_uint, C.c_void_p)
VIDEO_CB = C.CFUNCTYPE(None, C.c_void_p, C.c_uint, C.c_uint, C.c_size_t)
AUDIO_CB = C.CFUNCTYPE(None, C.c_int16, C.c_int16)
AUDIO_BATCH_CB = C.CFUNCTYPE(C.c_size_t, C.c_void_p, C.c_size_t)
POLL_CB = C.CFUNCTYPE(None)
INPUT_CB = C.CFUNCTYPE(C.c_int16, C.c_uint, C.c_uint, C.c_uint, C.c_uint)

# Core options (anything not listed uses the core's default).
OPTIONS = {
    b"beetle_psx_renderer": b"software",
    b"beetle_psx_cd_access_method": b"sync",
    b"beetle_psx_skip_bios": b"disabled",
}


def default_core():
    if os.environ.get("PSX_CORE"):
        return os.environ["PSX_CORE"]
    out = subprocess.run(["nix", "build", "--no-link", "--print-out-paths", "nixpkgs#libretro.beetle-psx"],
                         check=True, capture_output=True, text=True).stdout.split()[-1]
    return str(next(Path(out).rglob("*_libretro.so")))


_LOADED = False


class Psx:
    def __init__(self, cue, bios, core=None, workdir=None):
        # The core is a shared library with global state: a second instance in
        # the same process silently keeps running the first disc. Use one Psx
        # per process (save/load states to compare variants of RAM).
        global _LOADED
        if _LOADED:
            raise RuntimeError("one Psx per process (the libretro core keeps global state)")
        _LOADED = True
        self.dir = Path(workdir or tempfile.mkdtemp(prefix="psxrun-"))
        sysdir = self.dir / "system"
        sysdir.mkdir(parents=True, exist_ok=True)
        for name in ("scph5500.bin", "scph5501.bin", "scph5502.bin"):
            shutil.copyfile(bios, sysdir / name)
        self._sysdir = str(sysdir).encode()
        self._buttons = 0
        self._frame = None
        self.lib = C.CDLL(core or default_core())
        self._pixfmt = 0
        self._keep = []
        self._var_values = {}

        def env(cmd, data):
            cmd &= 0xFFFF
            if cmd == ENV_GET_SYSTEM_DIRECTORY or cmd == ENV_GET_SAVE_DIRECTORY:
                C.cast(data, C.POINTER(C.c_char_p))[0] = self._sysdir
                return True
            if cmd == ENV_SET_PIXEL_FORMAT:
                self._pixfmt = C.cast(data, C.POINTER(C.c_int))[0]
                return True
            if cmd == ENV_GET_VARIABLE:
                var = C.cast(data, C.POINTER(Variable))[0]
                value = OPTIONS.get(var.key)
                if value is None:
                    return False
                C.cast(data, C.POINTER(Variable))[0].value = value
                return True
            if cmd == ENV_GET_CAN_DUPE:
                C.cast(data, C.POINTER(C.c_bool))[0] = True
                return True
            if cmd == (ENV_GET_INPUT_BITMASKS & 0xFFFF):
                return True
            return False

        def video(data, w, h, pitch):
            if data:
                self._frame = (data, w, h, pitch)

        def input_state(port, device, index, ident):
            if port != 0:
                return 0
            if ident == JOYPAD_MASK:
                return self._buttons
            return 1 if self._buttons >> ident & 1 else 0

        self._cbs = [ENV_CB(env), VIDEO_CB(video), AUDIO_CB(lambda l, r: None),
                     AUDIO_BATCH_CB(lambda d, n: n), POLL_CB(lambda: None), INPUT_CB(input_state)]
        lib = self.lib
        lib.retro_set_environment(self._cbs[0])
        lib.retro_init()
        lib.retro_set_video_refresh(self._cbs[1])
        lib.retro_set_audio_sample(self._cbs[2])
        lib.retro_set_audio_sample_batch(self._cbs[3])
        lib.retro_set_input_poll(self._cbs[4])
        lib.retro_set_input_state(self._cbs[5])
        self._path = str(Path(cue).resolve()).encode()
        info = GameInfo(self._path, None, 0, None)
        lib.retro_load_game.restype = C.c_bool
        if not lib.retro_load_game(C.byref(info)):
            raise RuntimeError("core refused the game")
        lib.retro_set_controller_port_device(0, 1)  # RETRO_DEVICE_JOYPAD
        lib.retro_get_memory_data.restype = C.c_void_p
        lib.retro_get_memory_size.restype = C.c_size_t
        lib.retro_serialize_size.restype = C.c_size_t
        lib.retro_serialize.restype = C.c_bool
        lib.retro_unserialize.restype = C.c_bool
        ptr = lib.retro_get_memory_data(RETRO_MEMORY_SYSTEM_RAM)
        size = lib.retro_get_memory_size(RETRO_MEMORY_SYSTEM_RAM)
        self.ram = np.ctypeslib.as_array(C.cast(ptr, C.POINTER(C.c_uint8)), (size,))
        self.frame_count = 0

    def run(self, frames, buttons=()):
        self._buttons = sum(1 << BUTTONS[b] for b in buttons)
        for _ in range(frames):
            self.lib.retro_run()
            self.frame_count += 1
        self._buttons = 0

    def save_state(self):
        n = self.lib.retro_serialize_size()
        buf = (C.c_uint8 * n)()
        if not self.lib.retro_serialize(buf, n):
            raise RuntimeError("serialize failed")
        return bytes(buf)

    def load_state(self, state):
        buf = (C.c_uint8 * len(state)).from_buffer_copy(state)
        if not self.lib.retro_unserialize(buf, len(state)):
            raise RuntimeError("unserialize failed")

    def image(self):
        data, w, h, pitch = self._frame
        raw = np.ctypeslib.as_array(C.cast(data, C.POINTER(C.c_uint8)), (h * pitch,)).reshape(h, pitch)
        if self._pixfmt == 1:  # XRGB8888
            px = raw[:, :w * 4].reshape(h, w, 4)
            return px[..., [2, 1, 0]].copy()
        px = raw[:, :w * 2].copy().view(np.uint16).reshape(h, w)
        if self._pixfmt == 2:  # RGB565
            r, g, b = (px >> 11) & 31, (px >> 5) & 63, px & 31
            return np.stack([r << 3 | r >> 2, g << 2 | g >> 4, b << 3 | b >> 2], -1).astype(np.uint8)
        r, g, b = (px >> 10) & 31, (px >> 5) & 31, px & 31  # 0RGB1555
        return (np.stack([r, g, b], -1) * 255 // 31).astype(np.uint8)

    def screenshot(self, path):
        from PIL import Image
        Image.fromarray(self.image()).save(path)

    def u32(self, addr):
        a = addr & 0x1FFFFF
        return int(self.ram[a:a + 4].view(np.uint32)[0])

    def s32(self, addr):
        a = addr & 0x1FFFFF
        return int(self.ram[a:a + 4].view(np.int32)[0])


def main():
    if len(sys.argv) != 5:
        sys.exit(__doc__)
    cue, bios, out, script = sys.argv[1:]
    psx = Psx(cue, bios)
    for step in script.split(";"):
        if "*" in step:
            names, n = step.split("*")
            psx.run(int(n), names.split("+"))
        else:
            psx.run(int(step))
    psx.screenshot(out)
    print(f"{psx.frame_count} frames -> {out}")


if __name__ == "__main__":
    main()
