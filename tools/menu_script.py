#!/usr/bin/env python3
"""Dump a menu scene's pages, page lists and decompiled widget scripts.

  menu_script.py <Menu_N.Sdf | EndM_N.Sdf | level _PS.sdf>     readable dump
  menu_script.py export <file.sdf> <menu.json>                editable JSON
  menu_script.py import <file.sdf> <menu.json> <out.sdf>      apply edits

The JSON holds variable defaults, page lists (PAGELIST page names and the
other lists' values), item / event condition and value scripts, and the
widgets' page links and action scripts. Scripts are written as the dump
shows them and compiled back (in place, or appended when they grow);
unedited, the file comes back byte-identical.

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


PREC = {15: 1, 16: 1, 13: 3, 14: 3, 9: 4, 10: 4, 11: 4, 12: 4, 7: 5, 8: 5, 4: 6, 5: 6, 6: 6}
PREC[15] = 2  # && binds tighter than ||
OPS = {v: k for k, v in BINOPS.items()}


def _lex(text):
    import re
    return re.findall(r"@0x[0-9a-fA-F]+|0x[0-9a-fA-F]+|\d+|[A-Za-z_][A-Za-z0-9_]*|&&|\|\||[<>=!]=|[-+*/%<>=!(),;]", text)


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

    def tokens(self, at):
        """Raw tokens [(value, op, subtype)] of the script record at `at`."""
        toks, n = self.ptr(at), self.sdf.u32(at + 8)
        if toks is None:
            return []
        return [struct.unpack_from("<IHH", self.sdf.data, toks + 8 * k) for k in range(n)]

    def script(self, at):
        """Decompile the 16-byte script record at `at` into expressions
        (parenthesised only where needed, so compile() gives the same tokens)."""
        stack = []  # (text, precedence)
        for value, op, sub in self.tokens(at):
            if op == 0:
                if sub == 2:
                    i = (value - self.values) // 4
                    stack.append((self.vars[i] if 0 <= i < len(self.vars) else f"var@{value:#x}", 9))
                elif sub == 4:
                    stack.append((str(value - (1 << 32) if value & 0x80000000 else value), 9))
                else:
                    stack.append((f"@{value:#x}", 9))
            elif op == 1:
                name, argc = self.funcs.get(value, (f"fn@{value:#x}", 0))
                args = [t for t, _ in stack[len(stack) - argc:]] if argc else []
                del stack[len(stack) - argc:]
                stack.append((f"{name}({', '.join(args)})", 9))
            elif op in (2, 3, 17):
                t, pr = stack.pop()
                sym = {2: "-", 3: "!", 17: "*"}[op]
                stack.append((sym + (t if pr >= 8 and not (op == 2 and t[:1].isdigit()) else f"({t})"), 8))
            elif op in BINOPS:
                (b, pb), (a, pa) = stack.pop(), stack.pop()
                pr = PREC[op]
                a = a if pa >= pr else f"({a})"
                b = b if pb > pr else f"({b})"
                stack.append((f"{a} {BINOPS[op]} {b}", pr))
            elif op == 18:
                (b, _), (a, _) = stack.pop(), stack.pop()
                stack.append((f"{a} = {b}", 0))
            else:
                stack.append((f"<op {op}>", 9))
        return "; ".join(t for t, _ in stack)

    def compile(self, text):
        """Expressions (as printed by script()) -> tokens [(value, op, subtype)]."""
        names = {v: k for k, v in enumerate(self.vars)}
        funcs = {n: (addr, argc) for addr, (n, argc) in self.funcs.items()}
        toks = _lex(text)
        out = []
        pos = 0

        def peek():
            return toks[pos] if pos < len(toks) else None

        def take(expect=None):
            nonlocal pos
            t = peek()
            if t is None or (expect is not None and t != expect):
                raise ValueError(f"script {text!r}: expected {expect or 'more'} at {t!r}")
            pos += 1
            return t

        def primary():
            t = take()
            if t == "(":
                expr(1)
                take(")")
            elif t in ("-", "!", "*"):
                if t == "-" and peek() is not None and peek().isdigit():
                    out.append(((-int(take())) & 0xFFFFFFFF, 0, 4))
                    return
                primary()
                out.append((0, {"-": 2, "!": 3, "*": 17}[t], 0))
            elif t[0].isdigit():
                out.append((int(t, 0) & 0xFFFFFFFF, 0, 4))
            elif t[0] == "@":
                out.append((int(t[1:], 16), 0, 3))
            elif peek() == "(":
                if t not in funcs:
                    raise ValueError(f"script {text!r}: unknown function {t}")
                take("(")
                addr, argc = funcs[t]
                for k in range(argc):
                    if k:
                        take(",")
                    expr(0)
                take(")")
                out.append((addr, 1, 1))
            else:
                if t not in names:
                    raise ValueError(f"script {text!r}: unknown variable {t}")
                out.append((self.values + 4 * names[t], 0, 2))

        def expr(minprec):
            primary()
            while True:
                t = peek()
                if t == "=" and minprec <= 0:
                    take()
                    expr(0)
                    out.append((0, 18, 0))
                    continue
                op = OPS.get(t)
                if op is None or PREC[op] < max(minprec, 1):
                    return
                take()
                expr(PREC[op] + 1)
                out.append((0, op, 0))

        while peek() is not None:
            expr(0)
            if peek() == ";":
                take()
        return out

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


# --- editable JSON ----------------------------------------------------------

def _is_ptr_token(op, sub):
    return (op == 0 and sub in (2, 3)) or op == 1


def menu_of(sdf):
    return Menu(sdf, sdf.roots[41] if len(sdf.roots) == 51 else sdf.roots[0])


def export_json(sdf):
    """Editable view of a scene's menu: variable defaults, page lists, item
    and event scripts, widget page links and scripts. Records are keyed by
    their data offset (`id`) so edits map back."""
    m = menu_of(sdf)
    d = sdf.data
    variables = {}
    for k, name in enumerate(m.vars):
        at = m.values + 4 * k
        if at not in m.relocs:
            variables[name] = struct.unpack_from("<i", d, at)[0]
    pages = {}
    for page in m.pages():
        entry = {"lists": {name: values for name, values in m.lists(page)}, "items": [], "events": []}
        items, events = m.ptr(page + 0x3C), m.ptr(page + 0x40)
        for k in range(d[page + 0x2C] if items is not None else 0):
            it = items + ITEM_SIZE * k
            entry["items"].append({
                "id": hex(it), "object": m.str(it),
                "kind": ITEM_KINDS.get(sdf.u32(it + 0x2C), sdf.u32(it + 0x2C)),
                "condition": m.script(m.ptr(it + 0x20)) if m.ptr(it + 0x20) is not None else None,
                "value": m.script(m.ptr(it + 0x50)) if m.ptr(it + 0x50) is not None else None})
        for k in range(d[page + 0x2D] if events is not None else 0):
            ev = events + EVENT_SIZE * k
            entry["events"].append({
                "id": hex(ev), "type": sdf.u32(ev),
                "condition": m.script(m.ptr(ev + 0x24)) if m.ptr(ev + 0x24) is not None else None})
        pages[m.str(sdf.u32(page))] = entry
    widgets = []
    for w in m.widget_table():
        n, acts = sdf.u32(w + 0x34), m.ptr(w + 0x30)
        action = struct.unpack_from("<h", d, w)[0]
        rec = {"id": hex(w), "name": m.str(w + 8), "button": sdf.u32(w + 4)}
        if action == 0:
            rec["open_page"] = m.str(w + 0x48)
        if acts is not None and 0 < n < 64:
            rec["scripts"] = [m.script(acts + 16 * k) for k in range(n)]
        if len(rec) > 3:
            widgets.append(rec)
    return {"variables": variables, "pages": pages, "widgets": widgets}


def _write_str(sdf, at, text, size=32):
    raw = text.encode("latin-1")
    if len(raw) >= size:
        raise ValueError(f"{text!r} is longer than {size - 1} characters")
    data = bytearray(sdf.data)
    data[at:at + size] = raw + b"\0" * (size - len(raw))
    sdf.data = bytes(data)


def write_script(sdf, m, rec, text):
    """Compile `text` into the script record at `rec` (in place if it fits,
    else into a new token array appended to the file)."""
    toks = m.compile(text)
    old_at, old_n = m.ptr(rec), sdf.u32(rec + 8)
    if len(toks) <= old_n:
        at = old_at
    else:
        at = sdf.append(b"\0" * (8 * len(toks)))
        sdf.set_pointer(rec, at)
    data = bytearray(sdf.data)
    relocs = set(sdf.relocs)
    for k, (value, op, sub) in enumerate(toks):
        slot = at + 8 * k
        struct.pack_into("<IHH", data, slot, value, op, sub)
        if _is_ptr_token(op, sub):
            relocs.add(slot)
        else:
            relocs.discard(slot)
    struct.pack_into("<I", data, rec + 8, len(toks))
    sdf.data = bytes(data)
    sdf.relocs = sorted(relocs)
    m.relocs = relocs


def import_json(sdf, new):
    """Apply the differences between `new` and the scene's current export."""
    m = menu_of(sdf)
    old = export_json(sdf)
    log = []
    for name, value in new.get("variables", {}).items():
        if old["variables"].get(name) != value:
            k = m.vars.index(name)
            data = bytearray(sdf.data)
            struct.pack_into("<i", data, m.values + 4 * k, value)
            sdf.data = bytes(data)
            log.append(f"variable {name} = {value}")
    pages = {m.str(sdf.u32(p)): p for p in m.pages()}
    for pname, entry in new.get("pages", {}).items():
        before = old["pages"][pname]
        for lname, values in entry.get("lists", {}).items():
            if values == before["lists"].get(lname):
                continue
            node = m.ptr(pages[pname] + 0x48)
            while node is not None and m.str(node + 4) != lname:
                node = m.ptr(node)
            if node is None or len(values) != sdf.data[node + 0x24]:
                raise ValueError(f"{pname}/{lname}: lists keep their length")
            at = m.ptr(node + 0x28)
            for k, v in enumerate(values):
                if lname == "PAGELIST":
                    _write_str(sdf, at + 32 * k, v)
                else:
                    data = bytearray(sdf.data)
                    struct.pack_into("<I", data, at + 4 * k, v)
                    sdf.data = bytes(data)
            log.append(f"{pname}: list {lname}")
        for kind, field_offsets in (("items", {"condition": 0x20, "value": 0x50}), ("events", {"condition": 0x24})):
            for a, b in zip(entry.get(kind, []), before[kind]):
                for field, off in field_offsets.items():
                    if a.get(field) != b.get(field):
                        if b.get(field) is None:
                            raise ValueError(f"{pname} {kind} {a['id']}: no script to edit in '{field}'")
                        write_script(sdf, m, m.ptr(int(a["id"], 16) + off), a[field])
                        log.append(f"{pname}: {kind[:-1]} {a['id']} {field}")
    before = {w["id"]: w for w in old["widgets"]}
    for w in new.get("widgets", []):
        b = before[w["id"]]
        at = int(w["id"], 16)
        if w.get("open_page") != b.get("open_page"):
            if "open_page" not in b:
                raise ValueError(f"widget {w['id']}: not a page link")
            _write_str(sdf, at + 0x48, w["open_page"])
            log.append(f"widget {b['name'] or w['id']}: opens {w['open_page']}")
        if w.get("scripts") != b.get("scripts"):
            if len(w.get("scripts", [])) != len(b.get("scripts", [])):
                raise ValueError(f"widget {w['id']}: the number of action scripts is fixed")
            acts = m.ptr(at + 0x30)
            for k, (x, y) in enumerate(zip(w["scripts"], b["scripts"])):
                if x != y:
                    write_script(sdf, m, acts + 16 * k, x)
            log.append(f"widget {b['name'] or w['id']}: scripts")
    return log


def main():
    import json
    a = sys.argv[1:]
    if len(a) == 3 and a[0] == "export":
        sdf = parse(Path(a[1]).read_bytes())
        Path(a[2]).write_text(json.dumps(export_json(sdf), indent=1, ensure_ascii=False))
        return
    if len(a) == 4 and a[0] == "import":
        from sdf import serialize
        sdf = parse(Path(a[1]).read_bytes())
        for line in import_json(sdf, json.loads(Path(a[2]).read_text())):
            print(line)
        Path(a[3]).write_bytes(serialize(sdf))
        return
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
