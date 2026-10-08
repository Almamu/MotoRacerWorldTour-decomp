#!/usr/bin/env python3
"""Dump a menu scene's pages, page lists and decompiled widget scripts.

  menu_script.py <Menu_N.Sdf | EndM_N.Sdf | level _PS.sdf>

Menus are driven by a small script system stored in the scene (see
docs/formats/sdf.md, "Menu pages and scripts"): pages hold named lists
(`PAGELIST` = the pages `ChangePage(cond, i)` can open), events with a
condition script and a sequence, and items shown under a condition;
widgets (the buttons) run action scripts, postfix bytecode evaluated by
0x80097128. This prints all of it as readable text, e.g.

  GameMode = 1; TrafficTrack = 14; ChangePage(ValidTraffic == 1 && ValidTraffic2 == 0, 0)

Level files hold the in-game menu (pause, end of race...) in root 41.
"""

import struct
import sys
from pathlib import Path

from sdf import parse

PAGE_SIZE = 0x74
ITEM_SIZE = 0x54
EVENT_SIZE = 0x34
WIDGET_SIZE = 0x48  # grows with the action: 0x6C for "open page", 0x4C for 2/3
ITEM_KINDS = {0: "visibility", 1: "visibility from list", 2: "play sequence", 3: "play sequence from list",
              4: "widget state", 5: "run script", 6: "set model", 7: "set model from list", 8: "set text",
              9: "set text from list", 10: "set value", 11: "set value from list", 12: "set sprite",
              13: "set sprite from list"}
BINOPS = {4: "*", 5: "/", 6: "%", 7: "-", 8: "+", 9: ">", 10: "<", 11: "<=", 12: ">=",
          13: "!=", 14: "==", 15: "&&", 16: "||"}


class Menu:
    def __init__(self, sdf, ui):
        self.sdf, self.ui = sdf, ui
        self.relocs = set(sdf.relocs)
        vt = ui + 0x74
        self.values = sdf.u32(vt)
        info = sdf.u32(vt + 4)
        self.vars = [self.str(sdf.u32(info + 8 * k)) for k in range(sdf.u32(vt + 0x14))]
        self.funcs = {}
        ft, nf = sdf.u32(ui + 0x7C), sdf.u32(ui + 0x8C)
        for k in range(nf):
            e = ft + 0x2C * k
            self.funcs[e] = (self.str(e), sdf.u32(e + 0x28))

    def str(self, a):
        d = self.sdf.data
        return d[a:d.index(b"\0", a)].decode("latin-1")

    def ptr(self, a):
        return self.sdf.u32(a) if a in self.relocs else None

    def pages(self):
        p = self.ptr(self.ui + 0xA7C)
        while p is not None and p in self.relocs:
            yield p
            p += PAGE_SIZE

    # --- scripts --------------------------------------------------------------

    def script(self, at):
        """Decompile the 16-byte script record at `at` into an expression."""
        toks, n = self.ptr(at), self.sdf.u32(at + 8)
        if toks is None or n == 0:
            return ""
        stack = []
        for k in range(n):
            value, op, sub = struct.unpack_from("<IHH", self.sdf.data, toks + 8 * k)
            if op == 0:
                if sub == 2:
                    i = (value - self.values) // 4
                    stack.append(self.vars[i] if 0 <= i < len(self.vars) else f"var@{value:#x}")
                elif sub == 4:
                    stack.append(str(value - (1 << 32) if value & 0x80000000 else value))
                else:
                    stack.append(f"&{value:#x}")
            elif op == 1:
                name, argc = self.funcs.get(value, (f"fn@{value:#x}", 0))
                args = stack[len(stack) - argc:] if argc else []
                del stack[len(stack) - argc:]
                stack.append(f"{name}({', '.join(args)})")
            elif op in (2, 3):
                a = stack.pop()
                stack.append(("-" if op == 2 else "!") + a)
            elif op in BINOPS:
                b, a = stack.pop(), stack.pop()
                stack.append(f"{a} {BINOPS[op]} {b}")
            elif op == 17:
                stack.append("*" + stack.pop())
            elif op == 18:
                b, a = stack.pop(), stack.pop()
                stack.append(f"{a} = {b}")
            else:
                stack.append(f"<op {op}>")
        return "; ".join(stack)

    # --- pages ----------------------------------------------------------------

    def lists(self, page):
        node = self.ptr(page + 0x48)
        while node is not None:
            name, count, data = self.str(node + 4), self.sdf.data[node + 0x24], self.ptr(node + 0x28)
            if data is None:
                values = []
            elif name == "PAGELIST":
                values = [self.str(data + 32 * k) for k in range(count)]
            else:
                values = [self.sdf.u32(data + 4 * k) for k in range(count)]
            yield name, values
            node = self.ptr(node)

    def dump(self, out=print):
        for page in self.pages():
            d = self.sdf.data
            out(f"== {self.str(self.sdf.u32(page))}")
            for name, values in self.lists(page):
                out(f"  list {name}: {', '.join(map(str, values))}")
            items, events = self.ptr(page + 0x3C), self.ptr(page + 0x40)
            for k in range(d[page + 0x2C] if items is not None else 0):
                it = items + ITEM_SIZE * k
                cond = self.script(self.ptr(it + 0x20)) if self.ptr(it + 0x20) is not None else ""
                value = self.script(self.ptr(it + 0x50)) if self.ptr(it + 0x50) is not None else ""
                kind, subtype, phase = self.sdf.u32(it + 0x2C), self.sdf.u32(it + 0x24), self.sdf.u32(it + 0x28)
                arg = d[it + 0x30:it + 0x50].split(b"\0")[0].decode("latin-1")
                out(f"  item {self.str(it)!r} phase {phase} {ITEM_KINDS.get(kind, f'kind {kind}')}/{subtype}"
                    + (f" {arg!r}" if arg.isprintable() and arg else "")
                    + (f" value {value}" if value else "") + (f" if {cond}" if cond else ""))
            for k in range(d[page + 0x2D] if events is not None else 0):
                ev = events + EVENT_SIZE * k
                kind = self.sdf.u32(ev)
                cond = self.script(self.ptr(ev + 0x24)) if self.ptr(ev + 0x24) is not None else ""
                seq = self.ptr(ev + 0x30)
                seq_name = self.str(self.sdf.u32(seq)) if seq is not None and (seq in self.relocs) else "-"
                name = self.str(ev + 4) if kind == 5 else ""
                out(f"  event {kind}{' ' + name if name else ''} -> sequence {seq_name}"
                    + (f" if {cond}" if cond else ""))

    def widget_table(self):
        """The widget pointer table: of the runs of consecutive pointers whose
        targets hold a scene-object pointer at +0x28, the one with the most
        targets carrying action scripts (872 entries at data 0x2588 in
        Menu_0, 94 with actions)."""
        def has_actions(t):
            return (t + 0x30) in self.relocs and 0 < self.sdf.u32(t + 0x34) < 64
        runs, run = [], []
        for r in sorted(self.relocs):
            t = self.sdf.u32(r)
            good = (t + 0x28) in self.relocs and t + WIDGET_SIZE <= len(self.sdf.data)
            if good and run and r == run[-1] + 4:
                run.append(r)
            else:
                runs.append(run)
                run = [r] if good else []
        runs.append(run)
        best = max(runs, key=lambda rr: sum(has_actions(self.sdf.u32(r)) for r in rr))
        return [self.sdf.u32(r) for r in best]

    def widgets(self):
        """(name, button index, press action, decompiled action scripts) per widget."""
        for w in self.widget_table():
            n = self.sdf.u32(w + 0x34)
            acts = self.ptr(w + 0x30)
            scripts = [x for x in (self.script(acts + 16 * k) for k in range(n)) if x] \
                if acts is not None and 0 < n < 64 else []
            action = struct.unpack_from("<h", self.sdf.data, w)[0]
            if action == 0:
                press = f"open page {self.str(w + 0x48)!r}"
            elif action == 2:
                press = f"go back {self.sdf.u32(w + 0x48)}"
            elif action == 4:
                var = self.sdf.u32(w + 0x48)
                i = (var - self.values) // 4
                vname = self.vars[i] if 0 <= i < len(self.vars) else f"&{var:#x}"
                lo, hi, step = struct.unpack_from("<iii", self.sdf.data, w + 0x4C)
                press = f"step {vname} {lo}..{hi} by {step}"
            else:
                press = {-1: "", 1: "set group value", 3: "leave menu"}.get(action, f"action {action}")
            if not (scripts or press):
                continue
            obj = self.ptr(w + 0x28)
            name = self.str(w + 8) or (self.str(self.sdf.u32(obj)) if obj is not None and obj in self.relocs else "")
            yield name, self.sdf.u32(w + 4), press, scripts


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    sdf = parse(Path(sys.argv[1]).read_bytes())
    ui = sdf.roots[41] if len(sdf.roots) == 51 else sdf.roots[0]
    menu = Menu(sdf, ui)
    print(f"{len(menu.vars)} variables: {', '.join(menu.vars)}")
    print(f"functions: {', '.join(f'{n}/{a}' for n, a in menu.funcs.values())}")
    menu.dump()
    print("== widgets")
    for name, index, press, scripts in menu.widgets():
        print(f"  {name} [{index}]" + (f" press: {press}" if press else "") + (": " + " | ".join(scripts) if scripts else ""))


if __name__ == "__main__":
    main()
