# Custom SRAM and Register File Design

This project includes Verilog code for designing a custom 1KB SRAM and a 16x8 Register File, along with supporting modules like flip-flops, level shifters, and math cells. The project demonstrates the creation and integration of these components into a functional memory system.

## Files and Modules

1. **`sram.v`**: Custom 1KB SRAM design.
2. **`register_file.v`**: 16x8 Register File design.
3. **`level_shifter.v`**: Level shifter module.
4. **`flip_flop.v`**: Flip-flop design.
5. **`math_cell.v`**: Math cell for addition.
6. **`testbench.v`**: Testbench to simulate and verify the functionality of the SRAM and Register File.

## Simulation

To simulate the design:
1. Compile all Verilog files (`sram.v`, `register_file.v`, `level_shifter.v`, `flip_flop.v`, `math_cell.v`, and `testbench.v`) using a Verilog simulator like ModelSim or Vivado.
2. Run the simulation and observe the waveforms to verify the functionality of the SRAM, Register File, and other components.

## Usage

- **SRAM**: A 1KB static RAM module with synchronous read and write operations.
- **Register File**: A 16x8 register file with two read ports and one write port.
- **Level Shifter**: Simple module to illustrate level shifting.
- **Flip-Flop**: Basic D-type flip-flop with reset functionality.
- **Math Cell**: Module to perform addition and output sum and carry.

## Author

Rutuja Muttha
(rmuttha@pdx.edu)

