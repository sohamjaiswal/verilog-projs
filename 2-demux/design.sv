// Code your design here
module oneToSixteen (input wire in, input wire [3:0] selector, output reg [15:0] out);
  always @* begin
    case (selector)
      4'b0000: 
        assign out = in ? 16'b0000_0000_0000_0001 : 16'b0;
      4'b0001: 
        assign out = in ? 16'b0000_0000_0000_0010 : 16'b0;
      4'b0010:
        assign out = in ? 16'b0000_0000_0000_0100 : 16'b0;
      4'b0011:
        assign out = in ? 16'b0000_0000_0000_1000 : 16'b0;
      4'b0100:
        assign out = in ? 16'b0000_0000_0001_0000 : 16'b0;
      4'b0101:
        assign out = in ? 16'b0000_0000_0010_0000 : 16'b0;
      4'b0110:
        assign out = in ? 16'b0000_0000_0100_0000 : 16'b0;
      4'b0111:
        assign out = in ? 16'b0000_0000_1000_0000 : 16'b0;
      4'b1000:
        assign out = in ? 16'b0000_0001_0000_0000 : 16'b0;
      4'b1001:
        assign out = in ? 16'b0000_0010_0000_0000 : 16'b0;
      4'b1010:
        assign out = in ? 16'b0000_0100_0000_0000 : 16'b0;
      4'b1011:
        assign out = in ? 16'b0000_1000_0000_0000 : 16'b0;
      4'b1100:
        assign out = in ? 16'b0001_0000_0000_0000 : 16'b0;
      4'b1101:
        assign out = in ? 16'b0010_0000_0000_0000 : 16'b0;
      4'b1110:
        assign out = in ? 16'b0100_0000_0000_0000 : 16'b0;
      4'b1111:
        assign out = in ? 16'b1000_0000_0000_0000 : 16'b0;
      default: out = 16'b0;
    endcase
  end
endmodule