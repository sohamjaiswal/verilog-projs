// Code your design here
module bcd_ctr (input clk,reset,
                 output reg [3:0]out
  );    
  always@(posedge clk)
    begin
      if(reset)
        out=4'b0000;
      else begin
        out=out+1;
        // behavioural simulation, complex logic
        // not required
        if(out==4'b1010)
          out=4'b0000;
      end
    end
endmodule