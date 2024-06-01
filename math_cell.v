// Author: Rutuja Muttha

module math_cell (
    input wire [7:0] a,           // Operand A
    input wire [7:0] b,           // Operand B
    output wire [7:0] sum,        // Sum output
    output wire carry_out         // Carry out
);

// Addition logic
assign {carry_out, sum} = a + b;

endmodule
