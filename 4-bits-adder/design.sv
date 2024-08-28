// Code your design here

// single bit adder
module fullAdder (input wire A, input wire B, input wire Cin, output wire S, output wire C);
  assign S = Cin^(A^B); 
  assign C = (A&B)|(A&Cin)|(B&Cin);
endmodule

// 4 bit adder
module fourBitFullAdder (input wire [3:0] A, input wire [3:0] B, input wire Cin, output wire [3:0] S, output wire Cout);
  wire [3:0] S_internal;
  wire [3:0] C_internal;
  // using 4 x single bit adders for 1 x 4 bit adder
  fullAdder fa0 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(S_internal[0]), .C(C_internal[0]));
  fullAdder fa1 (.A(A[1]), .B(B[1]), .Cin(C_internal[0]), .S(S_internal[1]), .C(C_internal[1]));
  fullAdder fa2 (.A(A[2]), .B(B[2]), .Cin(C_internal[1]), .S(S_internal[2]), .C(C_internal[2]));
  fullAdder fa3 (.A(A[3]), .B(B[3]), .Cin(C_internal[2]), .S(S_internal[3]), .C(C_internal[3]));
  assign S = S_internal;
  assign Cout = C_internal[3];
endmodule