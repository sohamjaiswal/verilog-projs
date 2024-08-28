// Code your design here
// Code your design here
module bcdToSeven (input wire [3:0] data, output wire a,b,c,d,e,f,g);
  assign a = data[3] | data[2] & data[0] | data[1] | ~data[2] & ~data[0];
  assign b = ~data[2] | ~data[1] & ~data[0] | data[1] & data[0];
  assign c = ~data[1] | data[0] | data[2];
  assign d = ~data[2] & ~data[0] | ~data[2] & data[1] | data[2] & ~data[1] & data[0] | data[1] & ~data[0] | data[3];
  assign e = ~data[2] & ~data[0] | data[1] & ~data[0];
  assign f = ~data[1] & ~data[0] | data[2] & ~data[1] | data[2] & ~data[0] | data[3];
  assign g = ~data[2] & data[1] | data[2] & ~data[1] | data[3] | data[2] & ~data[0];
endmodule