`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module allTb;
  reg a1,b1;
  wire xorOut1, xnorOut1, andOut1, nandOut1, notOut1, orOut1, norOut1;
  
  allGates xorTb(.a(a1),.b(b1),.xorOut(xorOut1),.xnorOut(xnorOut1),.andOut(andOut1),.nandOut(nandOut1),.notOut(notOut1),.orOut(orOut1),.norOut(norOut1));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    
    a1=1'b0; b1=1'b0;
    #1 $display("Settings Vars to: \n a1:%b,b1:%b",a1,b1);
    #2
    #1 $display("XOR Output:%b", xorOut1);
    #2
    #1 $display("XNOR Output:%b", xnorOut1);
    #2
    #1 $display("AND Output:%b", andOut1);
    #2
    #1 $display("NAND Output:%b", nandOut1);
    #2
    #1 $display("NOT Output:%b", notOut1);
    #2
    #1 $display("OR Output:%b", orOut1);
    #2
    #1 $display("NOR Output:%b", norOut1);
    a1=1'b0; b1=1'b1;
    #1 $display("Settings Vars to: \n a1:%b,b1:%b",a1,b1);
    #2
    #1 $display("XOR Output:%b", xorOut1);
    #2
    #1 $display("XNOR Output:%b", xnorOut1);
    #2
    #1 $display("AND Output:%b", andOut1);
    #2
    #1 $display("NAND Output:%b", nandOut1);
    #2
    #1 $display("NOT Output:%b", notOut1);
    #2
    #1 $display("OR Output:%b", orOut1);
    #2
    #1 $display("NOR Output:%b", norOut1);
    a1=1'b1; b1=1'b0;
    #1 $display("Settings Vars to: \n a1:%b,b1:%b",a1,b1);
    #2
    #1 $display("XOR Output:%b", xorOut1);
    #2
    #1 $display("XNOR Output:%b", xnorOut1);
    #2
    #1 $display("AND Output:%b", andOut1);
    #2
    #1 $display("NAND Output:%b", nandOut1);
    #2
    #1 $display("NOT Output:%b", notOut1);
    #2
    #1 $display("OR Output:%b", orOut1);
    #2
    #1 $display("NOR Output:%b", norOut1);
    a1=1'b1; b1=1'b1;
    #1 $display("Settings Vars to: \n a1:%b,b1:%b",a1,b1);
    #2
    #1 $display("XOR Output:%b", xorOut1);
    #2
    #1 $display("XNOR Output:%b", xnorOut1);
    #2
    #1 $display("AND Output:%b", andOut1);
    #2
    #1 $display("NAND Output:%b", nandOut1);
    #2
    #1 $display("NOT Output:%b", notOut1);
    #2
    #1 $display("OR Output:%b", orOut1);
    #2
    #1 $display("NOR Output:%b", norOut1);
    
  end
endmodule
    