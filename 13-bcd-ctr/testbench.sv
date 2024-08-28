`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module bcd_ctr_tb;
  reg clk;
  reg reset;
  wire [3:0]out;
  bcd_ctr dut (.clk (clk),.reset (reset),.out (out));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      $monitor ("T=%0t rst=%b out=%b", $time,reset,out);
  end
  initial begin
    clk=0;
  forever #1 clk = ~clk;
  end
  initial begin
    reset=1;
    #4reset=0;
    #25$finish;
  end
endmodule