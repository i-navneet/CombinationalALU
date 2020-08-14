`timescale 1ns/1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: bitewiseAND
// Module Name: testbench
// Project Name: ALU(32-bit)
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
module bitwiseAND(
    output [31:0] S,
    input [31:0] A,
    input [31:0] B
);
genvar i;
for(i = 0;i < 32;i = i + 1) begin
    assign #1 S[i] = A[i] &B[i];
end
endmodule