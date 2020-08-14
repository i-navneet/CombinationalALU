`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology Ropar
// Engineer: Navtejpreet Singh
//          Navneet Kumar
// 
// Create Date: 15.10.2019 23:34:13
// Design Name: Control Unit 
// Module Name: controlUnit
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


module controlUnit(
    input [31:0] A,
    input [31:0] B,
    input [3:0] control,
    output [31:0] S,
    output equal,
    output lessthan,
    output carry,
    output overflow,
    output zero
    );
    //Control Commands
    //0000-BitwiseAND of A and B
    //0001-BitWiseOR
    //0010-BitWiseNOT of A
    //0011-BitWiseNOT of B
    //0100-BitWise XOR
    //0101-FastAdder
    //0110-Subtractor
    //0111-logical left
    //1000-logical right
    //1001-arithmetic right
    //1010-Multiplier
    //Rest are invalid and yield 0 on all ouputs
    //these are the ouputs of various operations
    wire [31:0]y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11;
    //these are the overflow of a given operation if any else it is 0 by default
    wire [5:0]ov;
    //these are carry if generated 0 by default
    wire [1:0]C;
    //instantiation of different modules of ALU
    bitwiseAND uu0(.A(A),.B(B),.S(y0));
    bitwiseOR uu1(.A(A),.B(B),.S(y1));
    bitwiseNOT uu2(.A(A),.S(y2));
    bitwiseNOT uu3(.A(B),.S(y3));
    bitwiseXOR uu4(.A(A),.B(B),.S(y4));
    fastAdder32bit uu5(.A(A),.B(B),.S(y5),.Cin(1'b0),.overflow(ov[0]),.C(C[0]));
    fastSubtractor uu6(.A(A),.B(B),.S(y6),.overflow(ov[1]),.C(C[1]));
    logicalLeftShift uu7(.A(A),.B(B),.S(y7),.overflow(ov[2]));
    logicalRightShift uu8(.A(A),.B(B),.S(y8),.overflow(ov[3]));
    arithmeticRightShift uu9(.A(A),.B(B),.S(y9),.overflow(ov[4]));
    multiplier_32bit uu10(.a(A),.b(B),.product(y10),.over(ov[5]));
    //assigning the values to the final ouput as selected by control
    genvar i;
    generate for(i=0;i<32;i=i+1) begin
        assign #2 S[i]= (~control[0] & ~control[1] & ~control[2] & ~control[3] & y0[i])|
                        (control[0] & ~control[1] & ~control[2] & ~control[3] & y1[i]) |
                        (~control[0] & control[1] & ~control[2] & ~control[3] & y2[i]) |
                        (control[0] & control[1] & ~control[2] & ~control[3] & y3[i])  |
                        (~control[0] & ~control[1] & control[2] & ~control[3] & y4[i]) |
                        (control[0] & ~control[1] & control[2] & ~control[3] & y5[i])  |
                        (~control[0] & control[1] & control[2] & ~control[3] & y6[i])  |
                        (control[0] & control[1] & control[2] & ~control[3] & y7[i])   |
                        (~control[0] & ~control[1] & ~control[2] & control[3] & y8[i]) |
                        (control[0] & ~control[1] & ~control[2] & control[3] & y9[i])  |
                        (~control[0] & control[1] & ~control[2] & control[3] & y10[i]) ;
                      
    
    end endgenerate
    //selection of carry by mux design
    assign #2 carry= ~control[0] & control[1] & control[2] & ~control[3] & C[0]  |
                      control[0] & control[1] & control[2] & ~control[3] & C[1] ;
    //selection of overflow
    assign #2 overflow = control[0] & ~control[1] & control[2] & ~control[3] & ov[0] |
                         ~control[0] & control[1] & control[2] & ~control[3] & ov[1] |
                         control[0] & control[1] & control[2] & ~control[3] & ov[2] |
                         ~control[0] & ~control[1] & ~control[2] & control[3] & ov[3] |
                         control[0] & ~control[1] & ~control[2] & control[3] & ov[4] |
                         ~control[0] & control[1] & ~control[2] & control[3] & ov[5];
    //instantiation of comparator for lessthan and equal output
    wire EQ,GE;
    comparator A1(.A(A),.B(B),.EQ(EQ),.GE(GE));
    assign lessthan=~GE;
    assign equal=EQ;
    //zero ouput-1 if all ouput bits are zero 0 by default
    assign #1 zero=~S[0]&~S[1]&~S[2]&~S[3]&~S[4]&~S[5]&~S[6]&~S[7]&~S[8]&~S[9]&~S[10]&~S[11]&~S[12]&~S[13]&~S[14]&~S[15]&~S[16]&~S[17]&~S[18]&~S[19]&~S[20]&~S[21]&~S[22]&~S[23]&~S[24]&~S[25]&~S[26]&~S[27]&~S[28]&~S[29]&~S[30]&~S[31];
    
endmodule
