`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module tb_fourBitAdder;
  // Inputs
  
  // would require an 8 bit bus input
  // we simulate that in a loop in the 
  // program later
  
  // Extra bit for loop rollover
  reg [4:0] dataA;
  reg [4:0] dataB;
  reg [1:0] dataC;
  
  // Outputs
  wire [3:0] sum;
  wire carry;
  // Instantiate the module under test
  fourBitFullAdder dut (
    .A(dataA),
    .B(dataB),
    .Cin(dataC),
    .S(sum),
    .Cout(carry)
  );
  // Stimulus
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor;
    for (dataC = 0; dataC <= 1; dataC = dataC + 1) begin
      for (dataA = 0; dataA <= 15; dataA = dataA + 1) begin 
        for (dataB = 0; dataB <= 15; dataB = dataB + 1) begin
        #5;
        end
      end
    end
    $finish;
  end
endmodule