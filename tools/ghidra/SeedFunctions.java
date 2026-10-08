// Create functions at every `jal` target inside the program (raw binary
// imports have no entry points, so auto-analysis finds little on its own),
// plus any extra addresses given as arguments (e.g. the entry point).
//
// usage: ... -postScript SeedFunctions.java [<addr> ...]
//@category MotoRacer

import java.util.TreeSet;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

public class SeedFunctions extends GhidraScript {
    @Override
    protected void run() throws Exception {
        Memory mem = currentProgram.getMemory();
        TreeSet<Long> targets = new TreeSet<>();
        for (String a : getScriptArgs()) {
            targets.add(Long.decode(a));
        }
        for (MemoryBlock block : mem.getBlocks()) {
            long start = block.getStart().getOffset();
            long end = block.getEnd().getOffset();
            for (long a = (start + 3) & ~3L; a + 4 <= end + 1; a += 4) {
                int w = mem.getInt(toAddr(a));
                if ((w >>> 26) == 0x03) { // jal
                    long t = (a & 0xF0000000L) | ((long) (w & 0x03FFFFFF) << 2);
                    if (t >= start && t <= end) {
                        targets.add(t);
                    }
                }
            }
        }
        int created = 0;
        for (long t : targets) {
            Address addr = toAddr(t);
            if (getFunctionAt(addr) != null) {
                continue;
            }
            disassemble(addr);
            if (createFunction(addr, null) != null) {
                created++;
            }
        }
        println("SeedFunctions: " + targets.size() + " targets, " + created + " functions created");
    }
}
