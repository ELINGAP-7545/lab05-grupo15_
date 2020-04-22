`timescale 1ns / 1ps

module sum1bcc (A, B, Ci,Cout,S); //definir funcion

  input  A; //definir entrada A
  input  B; //definir entrada B
  input  Ci; //definir entradas 
  
  output Cout; //definir salidas
  output S; //definir salidas

  wire [1:0] st; //conexion "alambre" salida sumador

  assign S = st[0];
  assign Cout = st[1];

  assign st = A+B+Ci; //realiza operacion suma
   
endmodule

