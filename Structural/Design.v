`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Partners: Mahir Ashab Enan & Navjot Bains
// 
// Create Date: 09/04/2026 01:57:53 PM
// Design Name: 8to1Design
// Module Name: 8TO1DESIGN
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

//8 to 1 Multiplexer
//Structural Modeling

module mux8to1_structural(D,S,Y);

input [7:0] D;
input [2:0] S;
output Y;

wire S0_not, S1_not, S2_not;
wire [7:0] w;

not N1(S0_not,S[0]);
not N2(S1_not,S[1]);
not N3(S2_not,S[2]);

and A1(w[0],D[0],S2_not,S1_not,S0_not);
and A2(w[1],D[1],S2_not,S1_not,S[0]);
and A3(w[2],D[2],S2_not,S[1],S0_not);
and A4(w[3],D[3],S2_not,S[1],S[0]);
and A5(w[4],D[4],S[2],S1_not,S0_not);
and A6(w[5],D[5],S[2],S1_not,S[0]);
and A7(w[6],D[6],S[2],S[1],S0_not);
and A8(w[7],D[7],S[2],S[1],S[0]);

or O1(Y,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7]);

endmodule



