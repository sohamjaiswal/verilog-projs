`include "./design.sv"
`timescale 1ns/1ns

module srff_tb;
  reg s, r, clk;
  wire q, qbar;

  // Instantiate the module we want to test (srff_behave)
  srff dut (
    .s(s),
    .r(r),
    .clk(clk),
    .q(q),
    .qbar(qbar)
  );

  // Monitor TB ports
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("CLK = %b, S = %b, R = %b, Q = %b, QBAR = %b", clk, s, r, q, qbar);
  end

  // Generate clock signal
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  // Apply test vectors
  initial begin
    s = 1;
    r = 0;
    #100;
    s = 0;
    r = 1;
    #100;
    s = 0;
    r = 0;
    #100;
    $finish; // Terminate the simulation
  end
endmodule