`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Partners: Mahir Ashab Enan & Navjot Bains 
// 
// Create Date: 09/04/2026 01:56:53 PM
// Design Name: 8TO1TESTBENCH
// Module Name: 8TO1TESTBENCH
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

module mux8to1_structural_tb;

reg [7:0] D;
reg [2:0] S;
wire Y;

mux8to1_structural uut(D,S,Y);

initial begin

#10 D=8'b01011010;

#10 S=3'b000;
#10 S=3'b001;
#10 S=3'b010;
#10 S=3'b011;
#10 S=3'b100;
#10 S=3'b101;
#10 S=3'b110;
#10 S=3'b111;

#10 $stop;

end

endmodule


