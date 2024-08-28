`include "./design.sv"
`timescale 1ns/1ns

module tb_oneBComparator;
  reg compared;
  reg comparer;
  
  wire lessThan;
  wire equalTo;
  wire moreThan;
  
  oneBComparator dut (.compared(compared), .comparer(comparer), .lessThan(lessThan), .equalTo(equalTo), .moreThan(moreThan));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
    $monitor("Compared: %b, Comparer: %b, lessThan: %b, equalTo: %b, moreThan: %b", compared, comparer, lessThan, equalTo, moreThan);
    compared = 1'b0;
    comparer = 1'b0;
    #10
    comparer = 1'b1;
    #10
    compared = 1'b1;
    comparer = 1'b0;
    #10
    comparer = 1'b1;
    #10
    $finish;
  end
endmodule