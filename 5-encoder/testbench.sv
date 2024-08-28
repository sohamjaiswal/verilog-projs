`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module tb_encodeEightToThree;
  reg [7:0] data;
  
  wire [2:0] out;
  
  encoderEightToThree dut(.data(data), .out(out));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("Data: %b, Encode: %b", data, out);
    data = 8'b0000_0000;
    #10
    data = 8'b0000_0010;
    #10
    data = 8'b0000_0100;
    #10
    data = 8'b0000_1000;
    #10
    data = 8'b0001_0000;
    #10
    data = 8'b0010_0000;
    #10
    data = 8'b0100_0000;
    #10
    data = 8'b1000_0000;
    #10
    $finish;
  end
endmodule