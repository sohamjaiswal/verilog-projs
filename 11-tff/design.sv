module tff (
    input wire t,       // T input (toggle)
    input wire clk,     // Clock input
    input wire reset,   // Reset input (asynchronous)
    output wire q,      // Output Q
    output wire qbar
);

reg q_int;  // Internal storage for Q

// Toggle flip-flop logic
always @(posedge clk, negedge reset) begin
    if (!reset)      // Asynchronous reset (active low)
        q_int = 1'b0;
    else if (t)      // Toggle when T is 1
        q_int = ~q_int;
end

assign q = q_int;  // Output Q
assign qbar = ~q;  

endmodule