// Author: Rutuja Muttha

module flip_flop (
    input wire clk,               // Clock input
    input wire reset,             // Reset input
    input wire d,                 // Data input
    output reg q                  // Data output
);

// Flip-flop logic
always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
end

endmodule
