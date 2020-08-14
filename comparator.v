`timescale 1ns/1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: 
// Module Name: Comparator
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
module comparator(
    output GE,
    output EQ,
    input [31:0] A,
    input [31:0] B
);
//for comparing two numbers we calculate A-B
//for A<B = negation of final Carry
//for A=B = Carry propagate P[31:0] should be zero
wire[31:0] S;
wire X;
fastSubtractor U1(S,GE,X,A,B);
wire [31:0] P;
genvar i;
generate
for(i=0;i<32;i=i+1) begin
    assign #1 P[i]=A[i]|B[i];
end
endgenerate
assign #1 EQ = P[0]&P[1]&P[2]&P[3]&P[4]&P[5]&P[6]&P[7]&P[8]&P[9]&P[10]&P[11]&P[12]&P[13]&P[14]&P[15]&P[16]&P[17]&P[18]&P[19]&P[20]&P[21]&P[22]&P[23]&P[24]&P[25]&P[26]&P[27]&P[28]&P[29]&P[30]&P[31];
endmodule
