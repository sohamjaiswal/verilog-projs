// Code your design here
// Code your design here
module ring_ctr ( input clk,rstn,
                  output reg [3:0]out
  );    
  always@(posedge clk)
    begin
      if(rstn)
        out=4'b1000;
      else begin
        // We just need to shift bits, for 
        // behavioural simulation, no need 
        // for d flip flops as in reference 
        out=out>>1;
        if(out==0001)
          #1 out=1000;
      end
    end
endmodule