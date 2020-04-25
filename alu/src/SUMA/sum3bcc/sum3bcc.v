`timescale 1ns / 1ps

module sum4b(init, xi, yi,co,sal,Sel);

  input init;
  input [2 :0] xi;
  input [2 :0] yi;
  input Sel;
  output co;
  output [2 :0] sal;
  
  wire [2:0] s;
  
  xor(s[0],yi[0],Sel);
  xor(s[1],yi[1],Sel);
  xor(s[2],yi[2],Sel);
  wire [3:0] st;
  assign sal= st[2:0];
  assign co = st[3];
  
  assign st  = 	xi+s+Sel;

endmodule