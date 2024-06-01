// Author: Rutuja Muttha

module register_file (
    input wire clk,               // Clock input
    input wire we,                // Write enable
    input wire [3:0] read_addr1,  // Read address 1
    input wire [3:0] read_addr2,  // Read address 2
    input wire [3:0] write_addr,  // Write address
    input wire [7:0] write_data,  // Write data input
    output reg [7:0] read_data1,  // Read data output 1
    output reg [7:0] read_data2   // Read data output 2
);

// Define register array
reg [7:0] register_array [15:0];

// Read and write operations
always @(posedge clk) begin
    if (we) begin
        register_array[write_addr] <= write_data;
    end
    read_data1 <= register_array[read_addr1];
    read_data2 <= register_array[read_addr2];
end

endmodule
