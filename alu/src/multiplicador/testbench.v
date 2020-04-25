`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:19:17 04/24/2020
// Design Name:   multiplicador
// Module Name:   D:/QUARTUS/PRUEBAS/multiplicacion/multiplicador/testbench.v
// Project Name:  multiplicador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplicador
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
	reg [2:0] MR;
	reg [2:0] MD;
	reg init;
	reg clk;

	// Outputs
	wire [5:0] pp;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	multiplicador uut (
		.MR(MR), 
		.MD(MD), 
		.init(init), 
		.clk(clk), 
		.pp(pp), 
		.done(done)
	);
	always #1 clk = ~clk;
	initial begin
		// Initialize Inputs
		MR = 0;
		MD = 0;
		init = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		MR = 3'b100;
		MD = 3'b011;
		//init = 2'b01;
		//clk = 2'b01;
		init = 1;
		clk = 1;
	end
      
endmodule

