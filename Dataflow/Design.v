`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2026 02:03:27 PM
// Design Name: 
// Module Name: mux8to1_dataflow
// Project Name: 
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

module mux8to1_dataflow(D,S,Y);

input [7:0] D;
input [2:0] S;
output Y;

assign Y = (~S[2] & ~S[1] & ~S[0] & D[0]) |
           (~S[2] & ~S[1] &  S[0] & D[1]) |
           (~S[2] &  S[1] & ~S[0] & D[2]) |
           (~S[2] &  S[1] &  S[0] & D[3]) |
           ( S[2] & ~S[1] & ~S[0] & D[4]) |
           ( S[2] & ~S[1] &  S[0] & D[5]) |
           ( S[2] &  S[1] & ~S[0] & D[6]) |
           ( S[2] &  S[1] &  S[0] & D[7]);

endmodule



