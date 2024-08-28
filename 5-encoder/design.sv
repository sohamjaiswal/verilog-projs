// Code your design here
module encoderEightToThree (input wire [7:0] data, output wire [2:0] out);
  assign out[2] = data[4] + data[5] + data[6] + data[7];
  assign out[1] = data[2] + data[3] + data[6] + data[7];
  assign out[0] = data[1] + data[3] + data[5] + data[7];
endmodule