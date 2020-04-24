`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:29:30 04/24/2020
// Design Name:   sum3bcc
// Module Name:   D:/QUARTUS/PRUEBAS/SUMA/sum3bcc/testbench.v
// Project Name:  sum3bcc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sum3bcc
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
	reg [2:0] xi;
	reg [2:0] yi;
	reg ci;
	reg init;

	// Outputs
	wire co;
	wire [2:0] zi;

	// Instantiate the Unit Under Test (UUT)
	sum3bcc uut (
		.xi(xi), 
		.yi(yi), 
		.ci(ci), 
		.co(co), 
		.zi(zi), 
		.init(init)
	);

	initial begin
		// Initialize Inputs
		xi = 0;
		yi = 0;
		ci = 0;
		init = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		xi = 3'b100;
		yi = 3'b010;
		
	end
      
endmodule

