`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:42 04/24/2020
// Design Name:   div3bcc
// Module Name:   D:/QUARTUS/GitHub/lab05-grupo15_/alu/src/div3bcc/testbench.v
// Project Name:  div3bcc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div3bcc
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
	reg [2:0] Divdo;
	reg [2:0] divor;
	reg init;
	reg clk;
	reg reset;

	// Outputs
	wire [2:0] ResultD;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	div3bcc uut (
		.Divdo(Divdo), 
		.divor(divor), 
		.init(init), 
		.clk(clk), 
		.reset(reset), 
		.ResultD(ResultD), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		Divdo = 0;
		divor = 0;
		init = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Divdo = 3'b100;
		divor = 3'b010;
		init = 2'b01;
		
	end
      
endmodule

