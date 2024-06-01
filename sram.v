// Author: Rutuja Muttha

module sram (
    input wire clk,              // Clock input
    input wire we,               // Write enable
    input wire [9:0] address,    // 10-bit address (1KB SRAM)
    input wire [7:0] data_in,    // 8-bit data input
    output reg [7:0] data_out    // 8-bit data output
);

// Define memory array
reg [7:0] memory_array [1023:0];

// Read and write operations
always @(posedge clk) begin
    if (we) begin
        memory_array[address] <= data_in;
    end
    data_out <= memory_array[address];
end

endmodule
