`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module tb_bcdToSeven;
  reg [3:0] data;
  
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  
  bcdToSeven dut (.data(data), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("Data: %b, a: %b, b: %b, c: %b, d: %b, e: %b, f: %b, g: %b", data, a,b,c,d,e,f,g);
    data = 4'b0000;
    #10
    data = 4'b0001;
    #10
    data = 4'b0010;
    #10
    data = 4'b0011;
    #10
    data = 4'b0100;
    #10
    data = 4'b0101;
    #10
    data = 4'b0110;
    #10
    data = 4'b0111;
    #10
    data = 4'b1000;
    #10
    data = 4'b1001;
    #10
    $finish;
  end
endmodule