`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module tb_decodeThreeToEight;
  reg [3:0] data;
  
  wire [7:0] out;
  
  decoderThreeToEight dut(.data(data), .out(out));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("Data: %b, Encode: %b", data, out);
    data = 3'b000;
    #10
    data = 3'b001;
    #10
    data = 3'b010;
    #10
    data = 3'b011;
    #10
    data = 3'b100;
    #10
    data = 3'b101;
    #10
    data = 3'b110;
    #10
    data = 3'b111;
    #10
    $finish;
  end
endmodule