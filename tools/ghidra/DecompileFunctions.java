// Decompile the functions at the given addresses and write the C to a file.
//
// usage (headless, after the program has been imported and analysed):
//   ghidra-analyzeHeadless <project_dir> <project> -process <program> -noanalysis \
//     -scriptPath tools/ghidra -postScript DecompileFunctions.java <out.c> <addr> [<addr> ...]
//
// With the single address "all", every function of the program is written.
//
// A function is created at an address if analysis didn't find one there.
//@category MotoRacer

import java.io.PrintWriter;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import java.util.ArrayList;
import java.util.List;

public class DecompileFunctions extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2) {
            printerr("usage: DecompileFunctions.java <out.c> <addr> [<addr> ...]");
            return;
        }
        DecompInterface decomp = new DecompInterface();
        decomp.openProgram(currentProgram);
        List<String> addrs = new ArrayList<>();
        if (args.length == 2 && args[1].equals("all")) {
            for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
                addrs.add(f.getEntryPoint().toString());
            }
        } else {
            for (int i = 1; i < args.length; i++) {
                addrs.add(args[i]);
            }
        }
        try (PrintWriter out = new PrintWriter(args[0])) {
            for (String a : addrs) {
                Address addr = toAddr(a);
                Function fn = getFunctionContaining(addr);
                if (fn == null) {
                    disassemble(addr);
                    fn = createFunction(addr, null);
                }
                if (fn == null) {
                    out.printf("// %s: no function%n%n", a);
                    continue;
                }
                DecompileResults res = decomp.decompileFunction(fn, 120, monitor);
                out.printf("// %s @ %s%n", fn.getName(), fn.getEntryPoint());
                out.println(res.decompileCompleted()
                        ? res.getDecompiledFunction().getC()
                        : "// decompilation failed: " + res.getErrorMessage());
            }
        }
        decomp.dispose();
    }
}
