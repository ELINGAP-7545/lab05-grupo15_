//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:08:46 04/24/2020 
// Design Name: 
// Module Name:    sum3bcc 
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
module sum3bcc (xi,yi,ci,co,zi,init);

  input [2:0] xi;
  input [2:0] yi;
  input ci;
  input init;
  output co;
  output [2:0] zi;

  wire c1,c2;
  sum1bcc s0 (.A(xi[0]), .B(yi[0]), .Ci(ci), .Cout(c1) ,.S(zi[0]));
  sum1bcc s1 (.A(xi[1]), .B(yi[1]), .Ci(c1), .Cout(c2) ,.S(zi[1]));
  sum1bcc s2 (.A(xi[2]), .B(yi[2]), .Ci(c2), .Cout(co) ,.S(zi[2]));
	
endmodule
