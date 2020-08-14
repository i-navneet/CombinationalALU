`timescale 1ns/1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: 
// Module Name: fastSubtractor
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
module fastSubtractor(
    output [31:0] S,
    output C,
    output overflow,
    input [31:0] A,
    input [31:0] B
);
//X wire is bitWise NOT of B
//Cin is 1 for adder
//We add A to 2's complement of B
wire [31:0] X;
bitwiseNOT U3(X,B);
fastAdder32bit U2(S[31:0],C,overflow,A[31:0],X[31:0],1);
endmodule