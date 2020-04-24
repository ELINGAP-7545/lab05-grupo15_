`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:28 04/24/2020
// Design Name:   BCDtoSSeg
// Module Name:   D:/QUARTUS/PRUEBAS/display/BCDtoSSeg/testbench.v
// Project Name:  BCDtoSSeg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDtoSSeg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [3:0] BCD;

	// Outputs
	wire [6:0] SSeg;

	// Instantiate the Unit Under Test (UUT)
	BCDtoSSeg uut (
		.BCD(BCD), 
		.SSeg(SSeg)
	);

	initial begin
		// Initialize Inputs
		BCD = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		BCD = 4'b1111;
		
	end
      
endmodule

