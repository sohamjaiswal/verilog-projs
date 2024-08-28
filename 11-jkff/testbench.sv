`include "./design.sv"
`timescale 1ns/1ns

// Code your testbench here
// or browse Examples
module jkff_tb;
  reg j, k, clk;
  wire q, qbar;

  // Instantiate the module we want to test (srff_behave)
  jkff dut (
    .j(j),
    .k(k),
    .clk(clk),
    .q(q),
    .qbar(qbar)
  );

  // Monitor TB ports
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("CLK = %b, J = %b, K = %b, Q = %b, QBAR = %b", clk, j, k, q, qbar);
  end

  // Generate clock signal
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  // Apply test vectors
  initial begin
    j = 0;
    k = 0;
    #20;
    j = 0;
    k = 1;
    #20;
    j = 1;
    k = 1;
    #20;
    j = 1;
    k = 0;
    #20;
    j = 1;
    k = 1;
    #20;
    $finish; // Terminate the simulation
  end
endmodule