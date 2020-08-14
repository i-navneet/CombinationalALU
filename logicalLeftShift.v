`timescale 1ns/1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: 
// Module Name: logicalLeftShift
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
module logicalLeftShift(
    output [31:0] S,
    output overflow,
    input [31:0] A,
    input [31:0] B
);
//Y is output of shift according to last 5 bits of B
wire [31:0] Y;
//mux32to1 is used to select the bit that would be obtained after ith shift
//left shift shifts the bit to the left and remaining places are filled with 0
//the overflow occurs when msb is not same as msb of A
//Y0,..Y31 bus represent the bit that would be selected after the ith shift for the jth place
//However if the shift is more than 32 the output is automatically all 0s 
genvar i;
wire [31:0] Y0;
assign Y0[0]=A[31];
assign Y0[1]=A[30];
assign Y0[2]=A[29];
assign Y0[3]=A[28];
assign Y0[4]=A[27];
assign Y0[5]=A[26];
assign Y0[6]=A[25];
assign Y0[7]=A[24];
assign Y0[8]=A[23];
assign Y0[9]=A[22];
assign Y0[10]=A[21];
assign Y0[11]=A[20];
assign Y0[12]=A[19];
assign Y0[13]=A[18];
assign Y0[14]=A[17];
assign Y0[15]=A[16];
assign Y0[16]=A[15];
assign Y0[17]=A[14];
assign Y0[18]=A[13];
assign Y0[19]=A[12];
assign Y0[20]=A[11];
assign Y0[21]=A[10];
assign Y0[22]=A[9];
assign Y0[23]=A[8];
assign Y0[24]=A[7];
assign Y0[25]=A[6];
assign Y0[26]=A[5];
assign Y0[27]=A[4];
assign Y0[28]=A[3];
assign Y0[29]=A[2];
assign Y0[30]=A[1];
assign Y0[31]=A[0];
generate
for(i=32;i<=31;i=i+1)begin
	assign Y0[i]=0;
end
endgenerate
mux32to1 H0(Y[31],Y0,B[4:0]);
wire [31:0] Y1;
assign Y1[0]=A[30];
assign Y1[1]=A[29];
assign Y1[2]=A[28];
assign Y1[3]=A[27];
assign Y1[4]=A[26];
assign Y1[5]=A[25];
assign Y1[6]=A[24];
assign Y1[7]=A[23];
assign Y1[8]=A[22];
assign Y1[9]=A[21];
assign Y1[10]=A[20];
assign Y1[11]=A[19];
assign Y1[12]=A[18];
assign Y1[13]=A[17];
assign Y1[14]=A[16];
assign Y1[15]=A[15];
assign Y1[16]=A[14];
assign Y1[17]=A[13];
assign Y1[18]=A[12];
assign Y1[19]=A[11];
assign Y1[20]=A[10];
assign Y1[21]=A[9];
assign Y1[22]=A[8];
assign Y1[23]=A[7];
assign Y1[24]=A[6];
assign Y1[25]=A[5];
assign Y1[26]=A[4];
assign Y1[27]=A[3];
assign Y1[28]=A[2];
assign Y1[29]=A[1];
assign Y1[30]=A[0];
generate
for(i=31;i<=31;i=i+1)begin
	assign Y1[i]=0;
end
endgenerate
mux32to1 H1(Y[30],Y1,B[4:0]);
wire [31:0] Y2;
assign Y2[0]=A[29];
assign Y2[1]=A[28];
assign Y2[2]=A[27];
assign Y2[3]=A[26];
assign Y2[4]=A[25];
assign Y2[5]=A[24];
assign Y2[6]=A[23];
assign Y2[7]=A[22];
assign Y2[8]=A[21];
assign Y2[9]=A[20];
assign Y2[10]=A[19];
assign Y2[11]=A[18];
assign Y2[12]=A[17];
assign Y2[13]=A[16];
assign Y2[14]=A[15];
assign Y2[15]=A[14];
assign Y2[16]=A[13];
assign Y2[17]=A[12];
assign Y2[18]=A[11];
assign Y2[19]=A[10];
assign Y2[20]=A[9];
assign Y2[21]=A[8];
assign Y2[22]=A[7];
assign Y2[23]=A[6];
assign Y2[24]=A[5];
assign Y2[25]=A[4];
assign Y2[26]=A[3];
assign Y2[27]=A[2];
assign Y2[28]=A[1];
assign Y2[29]=A[0];
generate
for(i=30;i<=31;i=i+1)begin
	assign Y2[i]=0;
end
endgenerate
mux32to1 H2(Y[29],Y2,B[4:0]);
wire [31:0] Y3;
assign Y3[0]=A[28];
assign Y3[1]=A[27];
assign Y3[2]=A[26];
assign Y3[3]=A[25];
assign Y3[4]=A[24];
assign Y3[5]=A[23];
assign Y3[6]=A[22];
assign Y3[7]=A[21];
assign Y3[8]=A[20];
assign Y3[9]=A[19];
assign Y3[10]=A[18];
assign Y3[11]=A[17];
assign Y3[12]=A[16];
assign Y3[13]=A[15];
assign Y3[14]=A[14];
assign Y3[15]=A[13];
assign Y3[16]=A[12];
assign Y3[17]=A[11];
assign Y3[18]=A[10];
assign Y3[19]=A[9];
assign Y3[20]=A[8];
assign Y3[21]=A[7];
assign Y3[22]=A[6];
assign Y3[23]=A[5];
assign Y3[24]=A[4];
assign Y3[25]=A[3];
assign Y3[26]=A[2];
assign Y3[27]=A[1];
assign Y3[28]=A[0];
generate
for(i=29;i<=31;i=i+1)begin
	assign Y3[i]=0;
end
endgenerate
mux32to1 H3(Y[28],Y3,B[4:0]);
wire [31:0] Y4;
assign Y4[0]=A[27];
assign Y4[1]=A[26];
assign Y4[2]=A[25];
assign Y4[3]=A[24];
assign Y4[4]=A[23];
assign Y4[5]=A[22];
assign Y4[6]=A[21];
assign Y4[7]=A[20];
assign Y4[8]=A[19];
assign Y4[9]=A[18];
assign Y4[10]=A[17];
assign Y4[11]=A[16];
assign Y4[12]=A[15];
assign Y4[13]=A[14];
assign Y4[14]=A[13];
assign Y4[15]=A[12];
assign Y4[16]=A[11];
assign Y4[17]=A[10];
assign Y4[18]=A[9];
assign Y4[19]=A[8];
assign Y4[20]=A[7];
assign Y4[21]=A[6];
assign Y4[22]=A[5];
assign Y4[23]=A[4];
assign Y4[24]=A[3];
assign Y4[25]=A[2];
assign Y4[26]=A[1];
assign Y4[27]=A[0];
generate
for(i=28;i<=31;i=i+1)begin
	assign Y4[i]=0;
end
endgenerate
mux32to1 H4(Y[27],Y4,B[4:0]);
wire [31:0] Y5;
assign Y5[0]=A[26];
assign Y5[1]=A[25];
assign Y5[2]=A[24];
assign Y5[3]=A[23];
assign Y5[4]=A[22];
assign Y5[5]=A[21];
assign Y5[6]=A[20];
assign Y5[7]=A[19];
assign Y5[8]=A[18];
assign Y5[9]=A[17];
assign Y5[10]=A[16];
assign Y5[11]=A[15];
assign Y5[12]=A[14];
assign Y5[13]=A[13];
assign Y5[14]=A[12];
assign Y5[15]=A[11];
assign Y5[16]=A[10];
assign Y5[17]=A[9];
assign Y5[18]=A[8];
assign Y5[19]=A[7];
assign Y5[20]=A[6];
assign Y5[21]=A[5];
assign Y5[22]=A[4];
assign Y5[23]=A[3];
assign Y5[24]=A[2];
assign Y5[25]=A[1];
assign Y5[26]=A[0];
generate
for(i=27;i<=31;i=i+1)begin
	assign Y5[i]=0;
end
endgenerate
mux32to1 H5(Y[26],Y5,B[4:0]);
wire [31:0] Y6;
assign Y6[0]=A[25];
assign Y6[1]=A[24];
assign Y6[2]=A[23];
assign Y6[3]=A[22];
assign Y6[4]=A[21];
assign Y6[5]=A[20];
assign Y6[6]=A[19];
assign Y6[7]=A[18];
assign Y6[8]=A[17];
assign Y6[9]=A[16];
assign Y6[10]=A[15];
assign Y6[11]=A[14];
assign Y6[12]=A[13];
assign Y6[13]=A[12];
assign Y6[14]=A[11];
assign Y6[15]=A[10];
assign Y6[16]=A[9];
assign Y6[17]=A[8];
assign Y6[18]=A[7];
assign Y6[19]=A[6];
assign Y6[20]=A[5];
assign Y6[21]=A[4];
assign Y6[22]=A[3];
assign Y6[23]=A[2];
assign Y6[24]=A[1];
assign Y6[25]=A[0];
generate
for(i=26;i<=31;i=i+1)begin
	assign Y6[i]=0;
end
endgenerate
mux32to1 H6(Y[25],Y6,B[4:0]);
wire [31:0] Y7;
assign Y7[0]=A[24];
assign Y7[1]=A[23];
assign Y7[2]=A[22];
assign Y7[3]=A[21];
assign Y7[4]=A[20];
assign Y7[5]=A[19];
assign Y7[6]=A[18];
assign Y7[7]=A[17];
assign Y7[8]=A[16];
assign Y7[9]=A[15];
assign Y7[10]=A[14];
assign Y7[11]=A[13];
assign Y7[12]=A[12];
assign Y7[13]=A[11];
assign Y7[14]=A[10];
assign Y7[15]=A[9];
assign Y7[16]=A[8];
assign Y7[17]=A[7];
assign Y7[18]=A[6];
assign Y7[19]=A[5];
assign Y7[20]=A[4];
assign Y7[21]=A[3];
assign Y7[22]=A[2];
assign Y7[23]=A[1];
assign Y7[24]=A[0];
generate
for(i=25;i<=31;i=i+1)begin
	assign Y7[i]=0;
end
endgenerate
mux32to1 H7(Y[24],Y7,B[4:0]);
wire [31:0] Y8;
assign Y8[0]=A[23];
assign Y8[1]=A[22];
assign Y8[2]=A[21];
assign Y8[3]=A[20];
assign Y8[4]=A[19];
assign Y8[5]=A[18];
assign Y8[6]=A[17];
assign Y8[7]=A[16];
assign Y8[8]=A[15];
assign Y8[9]=A[14];
assign Y8[10]=A[13];
assign Y8[11]=A[12];
assign Y8[12]=A[11];
assign Y8[13]=A[10];
assign Y8[14]=A[9];
assign Y8[15]=A[8];
assign Y8[16]=A[7];
assign Y8[17]=A[6];
assign Y8[18]=A[5];
assign Y8[19]=A[4];
assign Y8[20]=A[3];
assign Y8[21]=A[2];
assign Y8[22]=A[1];
assign Y8[23]=A[0];
generate
for(i=24;i<=31;i=i+1)begin
	assign Y8[i]=0;
end
endgenerate
mux32to1 H8(Y[23],Y8,B[4:0]);
wire [31:0] Y9;
assign Y9[0]=A[22];
assign Y9[1]=A[21];
assign Y9[2]=A[20];
assign Y9[3]=A[19];
assign Y9[4]=A[18];
assign Y9[5]=A[17];
assign Y9[6]=A[16];
assign Y9[7]=A[15];
assign Y9[8]=A[14];
assign Y9[9]=A[13];
assign Y9[10]=A[12];
assign Y9[11]=A[11];
assign Y9[12]=A[10];
assign Y9[13]=A[9];
assign Y9[14]=A[8];
assign Y9[15]=A[7];
assign Y9[16]=A[6];
assign Y9[17]=A[5];
assign Y9[18]=A[4];
assign Y9[19]=A[3];
assign Y9[20]=A[2];
assign Y9[21]=A[1];
assign Y9[22]=A[0];
generate
for(i=23;i<=31;i=i+1)begin
	assign Y9[i]=0;
end
endgenerate
mux32to1 H9(Y[22],Y9,B[4:0]);
wire [31:0] Y10;
assign Y10[0]=A[21];
assign Y10[1]=A[20];
assign Y10[2]=A[19];
assign Y10[3]=A[18];
assign Y10[4]=A[17];
assign Y10[5]=A[16];
assign Y10[6]=A[15];
assign Y10[7]=A[14];
assign Y10[8]=A[13];
assign Y10[9]=A[12];
assign Y10[10]=A[11];
assign Y10[11]=A[10];
assign Y10[12]=A[9];
assign Y10[13]=A[8];
assign Y10[14]=A[7];
assign Y10[15]=A[6];
assign Y10[16]=A[5];
assign Y10[17]=A[4];
assign Y10[18]=A[3];
assign Y10[19]=A[2];
assign Y10[20]=A[1];
assign Y10[21]=A[0];
generate
for(i=22;i<=31;i=i+1)begin
	assign Y10[i]=0;
end
endgenerate
mux32to1 H10(Y[21],Y10,B[4:0]);
wire [31:0] Y11;
assign Y11[0]=A[20];
assign Y11[1]=A[19];
assign Y11[2]=A[18];
assign Y11[3]=A[17];
assign Y11[4]=A[16];
assign Y11[5]=A[15];
assign Y11[6]=A[14];
assign Y11[7]=A[13];
assign Y11[8]=A[12];
assign Y11[9]=A[11];
assign Y11[10]=A[10];
assign Y11[11]=A[9];
assign Y11[12]=A[8];
assign Y11[13]=A[7];
assign Y11[14]=A[6];
assign Y11[15]=A[5];
assign Y11[16]=A[4];
assign Y11[17]=A[3];
assign Y11[18]=A[2];
assign Y11[19]=A[1];
assign Y11[20]=A[0];
generate
for(i=21;i<=31;i=i+1)begin
	assign Y11[i]=0;
end
endgenerate
mux32to1 H11(Y[20],Y11,B[4:0]);
wire [31:0] Y12;
assign Y12[0]=A[19];
assign Y12[1]=A[18];
assign Y12[2]=A[17];
assign Y12[3]=A[16];
assign Y12[4]=A[15];
assign Y12[5]=A[14];
assign Y12[6]=A[13];
assign Y12[7]=A[12];
assign Y12[8]=A[11];
assign Y12[9]=A[10];
assign Y12[10]=A[9];
assign Y12[11]=A[8];
assign Y12[12]=A[7];
assign Y12[13]=A[6];
assign Y12[14]=A[5];
assign Y12[15]=A[4];
assign Y12[16]=A[3];
assign Y12[17]=A[2];
assign Y12[18]=A[1];
assign Y12[19]=A[0];
generate
for(i=20;i<=31;i=i+1)begin
	assign Y12[i]=0;
end
endgenerate
mux32to1 H12(Y[19],Y12,B[4:0]);
wire [31:0] Y13;
assign Y13[0]=A[18];
assign Y13[1]=A[17];
assign Y13[2]=A[16];
assign Y13[3]=A[15];
assign Y13[4]=A[14];
assign Y13[5]=A[13];
assign Y13[6]=A[12];
assign Y13[7]=A[11];
assign Y13[8]=A[10];
assign Y13[9]=A[9];
assign Y13[10]=A[8];
assign Y13[11]=A[7];
assign Y13[12]=A[6];
assign Y13[13]=A[5];
assign Y13[14]=A[4];
assign Y13[15]=A[3];
assign Y13[16]=A[2];
assign Y13[17]=A[1];
assign Y13[18]=A[0];
generate
for(i=19;i<=31;i=i+1)begin
	assign Y13[i]=0;
end
endgenerate
mux32to1 H13(Y[18],Y13,B[4:0]);
wire [31:0] Y14;
assign Y14[0]=A[17];
assign Y14[1]=A[16];
assign Y14[2]=A[15];
assign Y14[3]=A[14];
assign Y14[4]=A[13];
assign Y14[5]=A[12];
assign Y14[6]=A[11];
assign Y14[7]=A[10];
assign Y14[8]=A[9];
assign Y14[9]=A[8];
assign Y14[10]=A[7];
assign Y14[11]=A[6];
assign Y14[12]=A[5];
assign Y14[13]=A[4];
assign Y14[14]=A[3];
assign Y14[15]=A[2];
assign Y14[16]=A[1];
assign Y14[17]=A[0];
generate
for(i=18;i<=31;i=i+1)begin
	assign Y14[i]=0;
end
endgenerate
mux32to1 H14(Y[17],Y14,B[4:0]);
wire [31:0] Y15;
assign Y15[0]=A[16];
assign Y15[1]=A[15];
assign Y15[2]=A[14];
assign Y15[3]=A[13];
assign Y15[4]=A[12];
assign Y15[5]=A[11];
assign Y15[6]=A[10];
assign Y15[7]=A[9];
assign Y15[8]=A[8];
assign Y15[9]=A[7];
assign Y15[10]=A[6];
assign Y15[11]=A[5];
assign Y15[12]=A[4];
assign Y15[13]=A[3];
assign Y15[14]=A[2];
assign Y15[15]=A[1];
assign Y15[16]=A[0];
generate
for(i=17;i<=31;i=i+1)begin
	assign Y15[i]=0;
end
endgenerate
mux32to1 H15(Y[16],Y15,B[4:0]);
wire [31:0] Y16;
assign Y16[0]=A[15];
assign Y16[1]=A[14];
assign Y16[2]=A[13];
assign Y16[3]=A[12];
assign Y16[4]=A[11];
assign Y16[5]=A[10];
assign Y16[6]=A[9];
assign Y16[7]=A[8];
assign Y16[8]=A[7];
assign Y16[9]=A[6];
assign Y16[10]=A[5];
assign Y16[11]=A[4];
assign Y16[12]=A[3];
assign Y16[13]=A[2];
assign Y16[14]=A[1];
assign Y16[15]=A[0];
generate
for(i=16;i<=31;i=i+1)begin
	assign Y16[i]=0;
end
endgenerate
mux32to1 H16(Y[15],Y16,B[4:0]);
wire [31:0] Y17;
assign Y17[0]=A[14];
assign Y17[1]=A[13];
assign Y17[2]=A[12];
assign Y17[3]=A[11];
assign Y17[4]=A[10];
assign Y17[5]=A[9];
assign Y17[6]=A[8];
assign Y17[7]=A[7];
assign Y17[8]=A[6];
assign Y17[9]=A[5];
assign Y17[10]=A[4];
assign Y17[11]=A[3];
assign Y17[12]=A[2];
assign Y17[13]=A[1];
assign Y17[14]=A[0];
generate
for(i=15;i<=31;i=i+1)begin
	assign Y17[i]=0;
end
endgenerate
mux32to1 H17(Y[14],Y17,B[4:0]);
wire [31:0] Y18;
assign Y18[0]=A[13];
assign Y18[1]=A[12];
assign Y18[2]=A[11];
assign Y18[3]=A[10];
assign Y18[4]=A[9];
assign Y18[5]=A[8];
assign Y18[6]=A[7];
assign Y18[7]=A[6];
assign Y18[8]=A[5];
assign Y18[9]=A[4];
assign Y18[10]=A[3];
assign Y18[11]=A[2];
assign Y18[12]=A[1];
assign Y18[13]=A[0];
generate
for(i=14;i<=31;i=i+1)begin
	assign Y18[i]=0;
end
endgenerate
mux32to1 H18(Y[13],Y18,B[4:0]);
wire [31:0] Y19;
assign Y19[0]=A[12];
assign Y19[1]=A[11];
assign Y19[2]=A[10];
assign Y19[3]=A[9];
assign Y19[4]=A[8];
assign Y19[5]=A[7];
assign Y19[6]=A[6];
assign Y19[7]=A[5];
assign Y19[8]=A[4];
assign Y19[9]=A[3];
assign Y19[10]=A[2];
assign Y19[11]=A[1];
assign Y19[12]=A[0];
generate
for(i=13;i<=31;i=i+1)begin
	assign Y19[i]=0;
end
endgenerate
mux32to1 H19(Y[12],Y19,B[4:0]);
wire [31:0] Y20;
assign Y20[0]=A[11];
assign Y20[1]=A[10];
assign Y20[2]=A[9];
assign Y20[3]=A[8];
assign Y20[4]=A[7];
assign Y20[5]=A[6];
assign Y20[6]=A[5];
assign Y20[7]=A[4];
assign Y20[8]=A[3];
assign Y20[9]=A[2];
assign Y20[10]=A[1];
assign Y20[11]=A[0];
generate
for(i=12;i<=31;i=i+1)begin
	assign Y20[i]=0;
end
endgenerate
mux32to1 H20(Y[11],Y20,B[4:0]);
wire [31:0] Y21;
assign Y21[0]=A[10];
assign Y21[1]=A[9];
assign Y21[2]=A[8];
assign Y21[3]=A[7];
assign Y21[4]=A[6];
assign Y21[5]=A[5];
assign Y21[6]=A[4];
assign Y21[7]=A[3];
assign Y21[8]=A[2];
assign Y21[9]=A[1];
assign Y21[10]=A[0];
generate
for(i=11;i<=31;i=i+1)begin
	assign Y21[i]=0;
end
endgenerate
mux32to1 H21(Y[10],Y21,B[4:0]);
wire [31:0] Y22;
assign Y22[0]=A[9];
assign Y22[1]=A[8];
assign Y22[2]=A[7];
assign Y22[3]=A[6];
assign Y22[4]=A[5];
assign Y22[5]=A[4];
assign Y22[6]=A[3];
assign Y22[7]=A[2];
assign Y22[8]=A[1];
assign Y22[9]=A[0];
generate
for(i=10;i<=31;i=i+1)begin
	assign Y22[i]=0;
end
endgenerate
mux32to1 H22(Y[9],Y22,B[4:0]);
wire [31:0] Y23;
assign Y23[0]=A[8];
assign Y23[1]=A[7];
assign Y23[2]=A[6];
assign Y23[3]=A[5];
assign Y23[4]=A[4];
assign Y23[5]=A[3];
assign Y23[6]=A[2];
assign Y23[7]=A[1];
assign Y23[8]=A[0];
generate
for(i=9;i<=31;i=i+1)begin
	assign Y23[i]=0;
end
endgenerate
mux32to1 H23(Y[8],Y23,B[4:0]);
wire [31:0] Y24;
assign Y24[0]=A[7];
assign Y24[1]=A[6];
assign Y24[2]=A[5];
assign Y24[3]=A[4];
assign Y24[4]=A[3];
assign Y24[5]=A[2];
assign Y24[6]=A[1];
assign Y24[7]=A[0];
generate
for(i=8;i<=31;i=i+1)begin
	assign Y24[i]=0;
end
endgenerate
mux32to1 H24(Y[7],Y24,B[4:0]);
wire [31:0] Y25;
assign Y25[0]=A[6];
assign Y25[1]=A[5];
assign Y25[2]=A[4];
assign Y25[3]=A[3];
assign Y25[4]=A[2];
assign Y25[5]=A[1];
assign Y25[6]=A[0];
generate
for(i=7;i<=31;i=i+1)begin
	assign Y25[i]=0;
end
endgenerate
mux32to1 H25(Y[6],Y25,B[4:0]);
wire [31:0] Y26;
assign Y26[0]=A[5];
assign Y26[1]=A[4];
assign Y26[2]=A[3];
assign Y26[3]=A[2];
assign Y26[4]=A[1];
assign Y26[5]=A[0];
generate
for(i=6;i<=31;i=i+1)begin
	assign Y26[i]=0;
end
endgenerate
mux32to1 H26(Y[5],Y26,B[4:0]);
wire [31:0] Y27;
assign Y27[0]=A[4];
assign Y27[1]=A[3];
assign Y27[2]=A[2];
assign Y27[3]=A[1];
assign Y27[4]=A[0];
generate
for(i=5;i<=31;i=i+1)begin
	assign Y27[i]=0;
end
endgenerate
mux32to1 H27(Y[4],Y27,B[4:0]);
wire [31:0] Y28;
assign Y28[0]=A[3];
assign Y28[1]=A[2];
assign Y28[2]=A[1];
assign Y28[3]=A[0];
generate
for(i=4;i<=31;i=i+1)begin
	assign Y28[i]=0;
end
endgenerate
mux32to1 H28(Y[3],Y28,B[4:0]);
wire [31:0] Y29;
assign Y29[0]=A[2];
assign Y29[1]=A[1];
assign Y29[2]=A[0];
generate
for(i=3;i<=31;i=i+1)begin
	assign Y29[i]=0;
end
endgenerate
mux32to1 H29(Y[2],Y29,B[4:0]);
wire [31:0] Y30;
assign Y30[0]=A[1];
assign Y30[1]=A[0];
generate
for(i=2;i<=31;i=i+1)begin
	assign Y30[i]=0;
end
endgenerate
mux32to1 H30(Y[1],Y30,B[4:0]);
wire [31:0] Y31;
assign Y31[0]=A[0];
generate
for(i=1;i<=31;i=i+1)begin
	assign Y31[i]=0;
end
endgenerate
mux32to1 H31(Y[0],Y31,B[4:0]);
wire zero;
assign #1 zero=B[5]|B[6]|B[7]|B[8]|B[9]|B[10]|B[11]|B[12]|B[13]|B[14]|B[15]|B[16]|B[17]|B[18]|B[19]|B[20]|B[21]|B[22]|B[23]|B[24]|B[25]|B[26]|B[27]|B[28]|B[29]|B[30]|B[31];
generate
for(i=0;i<32;i=i+1) begin
    assign #1 S[i]=~zero&Y[i];
end
endgenerate
assign #2 overflow = (S[31] ^ A[31]);
endmodule