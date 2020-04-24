`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:36 04/22/2020 
// Design Name: 
// Module Name:    div3bcc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module div3bcc (Divdo,divor,init,clk,reset,ResultD,done);
	
   input [2:0] Divdo;
   input [2:0] divor;
   input init;
	input clk;
	input reset;
   
	output [2:0] ResultD;
   output done;
	
	reg [2:0] acum;
	reg [2:0] ResultD;
	reg done;
	reg [1:0] i;

//always @ ( init,reset ) begin
//	while (reset !=1 )begin
	
  always @(init) 
			begin
				if(init==1) 
					begin
						acum =0;
						ResultD=0;
						done=0;
						ResultD = Divdo;
						for (i=0; i<3; i=i+1) 
							begin
								acum = acum << 1;
								acum[0] = ResultD[2];
								ResultD = ResultD << 1;
								if (acum >= divor) 
									begin
										ResultD = ResultD+1;
										acum = acum - divor;
									end
							end
							done = 1;
					end
			end

endmodule
