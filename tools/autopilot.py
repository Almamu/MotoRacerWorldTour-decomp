#!/usr/bin/env python3
"""Drive the player's bike around the track by following the AI racing line.

Used by tools/regress.py (scenario `lap`) and for experiments. Everything
is read from emulator RAM, so it works on rebuilt discs: the level module
(found in RAM by its collision pointer: the face table ends exactly at
the collision header, see _find_level) gives the track gates and racing lines (level root 28,
L+0x3EC), the race setup (root 15, L+0x378: lap count at +4) and the
collision faces (root 5, L+0xC6C), which identify the player's bike object
(its +0x220 points at a record holding the collision face under it).

Steering aims at the racing-line point a few gates ahead (gate position +
the line's lane offset); speed follows the line's target-speed byte
(throttle below it, brake well above it). Good enough to finish Sachsenring
without crashing (about 7600 frames for a lap).

    from autopilot import Autopilot
    ap = Autopilot(psx)          # in a race, before or after the start
    ap.set_laps(1)
    result = ap.drive(12000)     # {"finished": bool, "frames": n, "gates": passed, ...}
"""

import math
import struct

GATE_SIZE = 20
LINE_REC = 32


def find_level(psx):
    """The level module object: +0xC6C -> collision header whose face
    table (+4, count at +0) ends exactly at the header, +0x3EC and +0x378
    are RAM pointers too. (The current-module global 0x800C5E14 is only
    set while a module runs, so it reads 0 from outside.)"""
    import numpy as np
    words = psx.ram.view(np.uint32)
    for i in np.nonzero((words >= 0x80000000) & (words < 0x80200000))[0]:
        coll = int(words[i])
        c = coll & 0x1FFFFF
        if c + 8 > len(psx.ram):
            continue
        count = struct.unpack("<h", psx.ram[c:c + 2].tobytes())[0]
        faces = int(words[c // 4 + 1]) if c % 4 == 0 else 0
        if not (50 < count < 10000 and faces + 56 * count == coll):
            continue
        level = 0x80000000 + 4 * int(i) - 0xC6C
        ok = all(0x80000000 <= psx.u32(level + off) < 0x80200000 for off in (0x3EC, 0x378, 0xC70))
        if ok:
            return level
    raise RuntimeError("level object not found (not in a race?)")


class Autopilot:
    def __init__(self, psx, lookahead=3200.0, speed_lookahead=2400.0, speed_scale=0.55):
        self.psx = psx
        # distances along the line (game units), so gate spacing doesn't matter
        self.lookahead, self.speed_lookahead, self.speed_scale = lookahead, speed_lookahead, speed_scale
        self.level = self._find_level()
        self._read_track()
        self.bike = self._find_bike()

    # --- RAM helpers -----------------------------------------------------------
    def u32(self, a):
        return self.psx.u32(a)

    def s32(self, a):
        v = self.psx.u32(a)
        return v - (1 << 32) if v & 0x80000000 else v

    def _bytes(self, a, n):
        a &= 0x1FFFFF
        return self.psx.ram[a:a + n].tobytes()

    def _find_level(self):
        return find_level(self.psx)

    def _read_track(self):
        gates_root = self.u32(self.level + 0x3EC)
        lists = self.u32(gates_root + 0x28)
        n, g = self.u32(lists), self.u32(lists + 4)
        first = self.u32(lists + 8)
        line0 = self.u32(first) if first else 0  # trial / freestyle: no racing lines
        self.points = []
        for i in range(n):
            x, y, z, _, angle = struct.unpack("<3iIH", self._bytes(g + GATE_SIZE * i, 18))
            rec = self._bytes(line0 + LINE_REC * i, LINE_REC) if line0 else bytes(LINE_REC)
            lane = rec[7] - 256 if rec[7] > 127 else rec[7]
            a = angle * 2 * math.pi / 4096
            px, pz = math.sin(a), -math.cos(a)
            off = lane * 16
            self.points.append((x / 32 + px * off, z / 32 + pz * off, rec[0x0E]))
        self.ahead = []  # per point: index `lookahead` / `speed_lookahead` units further on
        n = len(self.points)
        for i in range(n):
            out = []
            for dist in (self.lookahead, self.speed_lookahead):
                j, d = i, 0.0
                while d < dist and j < i + n:
                    a, b = self.points[j % n], self.points[(j + 1) % n]
                    d += math.hypot(b[0] - a[0], b[1] - a[1])
                    j += 1
                out.append(j % n)
            self.ahead.append(out)

    def _find_bike(self):
        coll = self.u32(self.level + 0xC6C)
        faces = self.u32(coll + 4)
        nfaces = struct.unpack("<h", self._bytes(coll, 2))[0]
        lo, hi = faces, faces + 56 * nfaces
        import numpy as np
        words = self.psx.ram.view(np.uint32)
        for i in range(len(words) - 5):
            ok = True
            for k in range(3):
                rec = int(words[i + k])
                if not 0x80000000 <= rec < 0x801FFFFC or rec % 4:
                    ok = False
                    break
                face = self.u32(rec)
                if not (lo <= face < hi and (face - lo) % 56 == 0):
                    ok = False
                    break
            if ok:
                return 0x80000000 + 4 * i - 0x220
        raise RuntimeError("player bike not found")

    def position(self):
        return self.s32(self.bike + 0x64) / 32, self.s32(self.bike + 0x6C) / 32

    def set_laps(self, laps):
        race = self.u32(self.level + 0x378)
        a = race + 4 & 0x1FFFFF
        self.psx.ram[a:a + 4] = list(laps.to_bytes(4, "little"))

    def nearest(self, x, z):
        return min(range(len(self.points)), key=lambda i: (self.points[i][0] - x) ** 2 + (self.points[i][1] - z) ** 2)

    # --- driving ---------------------------------------------------------------
    def drive(self, frames, laps=None, step=4):
        """Drive up to `frames` frames; stop when a lap (or `laps` laps) is done
        and the bike has stopped. Returns a summary."""
        psx = self.psx
        n = len(self.points)
        x, z = self.position()
        start = gi = self.nearest(x, z)
        passed, prev, f, stopped = 0, (x, z), 0, 0
        want_laps = laps or 1
        while f < frames:
            if laps:
                self.set_laps(laps)  # the game fills it in after the start
            x, z = self.position()
            g = self.nearest(x, z)
            delta = (g - gi) % n
            if delta < n // 4:
                passed += delta
                gi = g
            target, speed_at = self.ahead[gi]
            tx, tz, _ = self.points[target]
            want = self.points[speed_at][2] * self.speed_scale
            vx, vz = x - prev[0], z - prev[1]
            prev = (x, z)
            v = math.hypot(vx, vz) / step
            buttons = []
            if v > 0.5:
                cr = vx * (tz - z) - vz * (tx - x)
                ang = math.atan2(cr, vx * (tx - x) + vz * (tz - z))
                if ang > 0.05:
                    buttons.append("left")
                elif ang < -0.05:
                    buttons.append("right")
            if v < want:
                buttons.append("cross")
            elif v > want * 1.15:
                buttons.append("square")
            psx.run(step, buttons)
            f += step
            stopped = stopped + step if v < 0.2 else 0
            if passed >= want_laps * n - 5 and stopped >= 100:
                break
        return {"finished": passed >= want_laps * n - 5, "frames": f, "gates": passed,
                "gate_count": n, "start_gate": start}
