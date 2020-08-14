`timescale 1ns/1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: 
// Module Name: fastAdder32bit
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
module fastAdder32bit(
    output [31:0] S,
    output C,
    output overflow,
    input [31:0] A,
    input [31:0] B,
    input Cin
);
//S saves the sum
//C is carry
//overflow is 1 if sum meets overflow condition
//Cin is initial carry
//Carry and Carry1 saves last carry and second last carry of each 4 bit CLA
wire [7:0]Carry;
wire [7:0]Carry1;
genvar i;

CLA4bit O2(S[3:0],Carry[0],Carry1,A[3:0],B[3:0],Cin);

generate
for(i = 1;i < 8;i = i + 1) begin
    CLA4bit O1(S[4*i+3:4*i],Carry[i],Carry1[i],A[4*i+3:4*i],B[4*i+3:4*i],Carry[i-1]);
end
endgenerate
assign C = Carry[7];
//overflow condition is xor of last carry and second last carry
assign #2 overflow = C ^ Carry1[7];
endmodule
