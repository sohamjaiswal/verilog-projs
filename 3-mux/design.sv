// Code your design here
module sixteenToOne (input wire [15:0] data, input wire [3:0] selector, output reg out);
  always @* begin
    case (selector)
      4'b0000: 
        out = data[0];
      4'b0001: 
        out = data[1];
      4'b0010:
        out = data[2];
      4'b0011:
        out = data[3];
      4'b0100:
        out = data[4];
      4'b0101:
        out = data[5];
      4'b0110:
        out = data[6];
      4'b0111:
        out = data[7];
      4'b1000:
        out = data[8];
      4'b1001:
        out = data[9];
      4'b1010:
        out = data[10];
      4'b1011:
        out = data[11];
      4'b1100:
        out = data[12];
      4'b1101:
        out = data[13];
      4'b1110:
        out = data[14];
      4'b1111:
        out = data[15];
      default: out = 16'b0; // Default case (optional).
    endcase
  end
endmodule