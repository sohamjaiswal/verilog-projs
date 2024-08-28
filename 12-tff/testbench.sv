`include "./design.sv"
`timescale 1ns/1ns

module tff_tb;
  reg t, clk, reset;
  wire q, qbar;
  
  // Instantiate the module we want to test (srff_behave)
  tff dut (
    .t(t),
    .clk(clk),
    .q(q),
    .qbar(qbar),
    .reset(reset)
  );

  // Monitor TB ports
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("CLK = %b, T = %b, Q = %b, QBAR = %b, RESET = %b", clk, t, q, qbar, reset);
  end

  // Generate clock signal
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  // Apply test vectors
  initial begin
    #20;
    reset = 0;
    #10
    reset = 1;
    t = 1;
    #20;
    #20;
    reset = 0;
    #10
    reset = 1;
    t = 0;
    #20;
    reset = 0;
    #10
    reset = 1;
    t = 1;
    #20;
    reset = 0;
    #10
    reset = 1;
    t = 0;
    #20;
    $finish; // Terminate the simulation
  end
endmodule