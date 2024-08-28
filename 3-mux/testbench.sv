`include "./design.sv"
`timescale 1ns/1ns

module tb_sixteenToOne;
  // Inputs
  reg [15:0] data;
  reg [3:0] selector;
  // Outputs
  wire out;
  // Instantiate the module under test
  sixteenToOne dut (
    .data(data),
    .selector(selector),
    .out(out)
  );
  // Stimulus
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("Selector: %b, Data: %b, Output: %b", selector, data, out);
    selector = 4'b0000;
    data = 16'b0000_0000_0000_0001;
    #10
    selector = 4'b0001;
    data = 16'b0000_0000_0000_0010;
    #10
    selector = 4'b0010;
    data = 16'b0000_0000_0000_0100;
    #10
    selector = 4'b0011;
    data = 16'b0000_0000_0000_1000;
    #10
    selector = 4'b0100;
    data = 16'b0000_0000_0001_0000;
    #10
    selector = 4'b0101;
    data = 16'b0000_0000_0010_0000;
    #10
    selector = 4'b0110;
    data = 16'b0000_0000_0100_0000;
    #10
    selector = 4'b0111;
    data = 16'b0000_0000_1000_0000;
    #10
    selector = 4'b1000;
    data = 16'b0000_0001_0000_0000;
    #10
    selector = 4'b1001;
    data = 16'b0000_0010_0000_0000;
    #10
    selector = 4'b1010;
    data = 16'b0000_0100_0000_0000;
    #10
    selector = 4'b1011;
    data = 16'b0000_1000_0000_0000;
    #10
    selector = 4'b1100;
    data = 16'b0001_0000_0000_0000;
    #10
    selector = 4'b1101;
    data = 16'b0010_0000_0000_0000;
    #10
    selector = 4'b1110;
    data = 16'b0100_0000_0000_0000;
    #10
    selector = 4'b1111;
    data = 16'b1000_0000_0000_0000;
    #10
    $finish;
  end
endmodule