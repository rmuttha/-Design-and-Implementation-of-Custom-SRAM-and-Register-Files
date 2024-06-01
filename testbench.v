// Author: Rutuja Muttha

module testbench;

// Declare signals
reg clk, we, reset;
reg [9:0] address;
reg [7:0] data_in;
wire [7:0] sram_data_out;
reg [3:0] read_addr1, read_addr2, write_addr;
reg [7:0] write_data;
wire [7:0] reg_data1, reg_data2;

// Instantiate modules
sram sram_inst (
    .clk(clk),
    .we(we),
    .address(address),
    .data_in(data_in),
    .data_out(sram_data_out)
);

register_file reg_file_inst (
    .clk(clk),
    .we(we),
    .read_addr1(read_addr1),
    .read_addr2(read_addr2),
    .write_addr(write_addr),
    .write_data(write_data),
    .read_data1(reg_data1),
    .read_data2(reg_data2)
);

level_shifter level_shifter_inst (
    .in_signal(data_in),
    .out_signal()
);

flip_flop flip_flop_inst (
    .clk(clk),
    .reset(reset),
    .d(data_in[0]),
    .q()
);

math_cell math_cell_inst (
    .a(data_in),
    .b(write_data),
    .sum(),
    .carry_out()
);

// Initialize inputs
initial begin
    clk = 1'b0;
    we = 1'b0;
    reset = 1'b1;
    address = 10'b0;
    data_in = 8'b0;
    read_addr1 = 4'b0;
    read_addr2 = 4'b0;
    write_addr = 4'b0;
    write_data = 8'b0;
    #10 reset = 1'b0;
    #10 we = 1'b1; data_in = 8'hAA; address = 10'b0000000001; write_addr = 4'b0001; write_data = 8'h55;
    #10 we = 1'b0; read_addr1 = 4'b0001; read_addr2 = 4'b0001;
    #10 $finish;
end

// Clock generation
always #5 clk = ~clk;

endmodule
