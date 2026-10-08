// Decompile the functions at the given addresses and write the C to a file.
//
// usage (headless, after the program has been imported and analysed):
//   ghidra-analyzeHeadless <project_dir> <project> -process <program> -noanalysis \
//     -scriptPath tools/ghidra -postScript DecompileFunctions.java <out.c> <addr> [<addr> ...]
//
// A function is created at an address if analysis didn't find one there.
//@category MotoRacer

import java.io.PrintWriter;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;

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
        try (PrintWriter out = new PrintWriter(args[0])) {
            for (int i = 1; i < args.length; i++) {
                Address addr = toAddr(args[i]);
                Function fn = getFunctionContaining(addr);
                if (fn == null) {
                    disassemble(addr);
                    fn = createFunction(addr, null);
                }
                if (fn == null) {
                    out.printf("// %s: no function%n%n", args[i]);
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
