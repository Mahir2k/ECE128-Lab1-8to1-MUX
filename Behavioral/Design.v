`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh
// Engineer: Navjot Bains, Mahir Ashab Enan
// 
// Create Date: 09/04/2026 03:22:37 PM
// Design Name: mux8to1_behavioral
// Module Name: mux8to1_behavioral
// Project Name: Lab 1
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mux8to1_behavioral(D,S,Y);

input [7:0] D;
input [2:0] S;
output reg Y;

always @(S or D)
begin

case (S)

3'b000 : Y = D[0];
3'b001 : Y = D[1];
3'b010 : Y = D[2];
3'b011 : Y = D[3];
3'b100 : Y = D[4];
3'b101 : Y = D[5];
3'b110 : Y = D[6];
3'b111 : Y = D[7];

default : Y = 1'bx;

endcase

end

endmodule









