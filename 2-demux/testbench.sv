`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module tb_oneToSixteen;
  // Inputs
  reg in;
  reg [3:0] selector;
  // Outputs
  wire [15:0] out;
  //wire out;
  // Instantiate the module under test
  oneToSixteen dut (
    .in(in),
    .selector(selector),
    .out(out)
  );
  // Stimulus
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("Selector: %b, Input: %b, Output: %b", selector, in, out);
    selector = 4'b0001;
    in = 1'b1;
    #10;
    selector = 4'b1111;
    in = 1'b1;
    #10;
    selector = 4'b1010;
    in = 1'b0;
    #10
    $finish;
  end
endmodule