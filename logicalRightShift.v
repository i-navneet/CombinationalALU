`timescale 1ns/1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: 
// Module Name: logicalRightShift
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
module logicalRightShift(
    output [31:0] S,
    output overflow,
    input [31:0] A,
    input [31:0] B
);
//Y saves the ouput according to last 5 bits of B
//Right Shift shifts the input bit stream by given number of places to the right.
//new added bits are 0's
//mux32to1 is used to select the bit that would appear at the given location and 32 such muxes are used.
//however if the shift is more than 32 places the resultant output is all 0's bits
//Overflow occurs if we give a negative input as input and get a positive output accourding sign convention
wire [31:0] Y;
genvar i;
wire [31:0] Y0;
assign Y0[0]=A[31];
generate
for(i=1;i<32;i=i+1)begin
	assign Y0[i]=0;
end
endgenerate
mux32to1 E0(Y[31],Y0,B[4:0]);
wire [31:0] Y1;
assign Y1[0]=A[30];
assign Y1[1]=A[31];
generate
for(i=2;i<32;i=i+1)begin
	assign Y1[i]=0;
end
endgenerate
mux32to1 E1(Y[30],Y1,B[4:0]);
wire [31:0] Y2;
assign Y2[0]=A[29];
assign Y2[1]=A[30];
assign Y2[2]=A[31];
generate
for(i=3;i<32;i=i+1)begin
	assign Y2[i]=0;
end
endgenerate
mux32to1 E2(Y[29],Y2,B[4:0]);
wire [31:0] Y3;
assign Y3[0]=A[28];
assign Y3[1]=A[29];
assign Y3[2]=A[30];
assign Y3[3]=A[31];
generate
for(i=4;i<32;i=i+1)begin
	assign Y3[i]=0;
end
endgenerate
mux32to1 E3(Y[28],Y3,B[4:0]);
wire [31:0] Y4;
assign Y4[0]=A[27];
assign Y4[1]=A[28];
assign Y4[2]=A[29];
assign Y4[3]=A[30];
assign Y4[4]=A[31];
generate
for(i=5;i<32;i=i+1)begin
	assign Y4[i]=0;
end
endgenerate
mux32to1 E4(Y[27],Y4,B[4:0]);
wire [31:0] Y5;
assign Y5[0]=A[26];
assign Y5[1]=A[27];
assign Y5[2]=A[28];
assign Y5[3]=A[29];
assign Y5[4]=A[30];
assign Y5[5]=A[31];
generate
for(i=6;i<32;i=i+1)begin
	assign Y5[i]=0;
end
endgenerate
mux32to1 E5(Y[26],Y5,B[4:0]);
wire [31:0] Y6;
assign Y6[0]=A[25];
assign Y6[1]=A[26];
assign Y6[2]=A[27];
assign Y6[3]=A[28];
assign Y6[4]=A[29];
assign Y6[5]=A[30];
assign Y6[6]=A[31];
generate
for(i=7;i<32;i=i+1)begin
	assign Y6[i]=0;
end
endgenerate
mux32to1 E6(Y[25],Y6,B[4:0]);
wire [31:0] Y7;
assign Y7[0]=A[24];
assign Y7[1]=A[25];
assign Y7[2]=A[26];
assign Y7[3]=A[27];
assign Y7[4]=A[28];
assign Y7[5]=A[29];
assign Y7[6]=A[30];
assign Y7[7]=A[31];
generate
for(i=8;i<32;i=i+1)begin
	assign Y7[i]=0;
end
endgenerate
mux32to1 E7(Y[24],Y7,B[4:0]);
wire [31:0] Y8;
assign Y8[0]=A[23];
assign Y8[1]=A[24];
assign Y8[2]=A[25];
assign Y8[3]=A[26];
assign Y8[4]=A[27];
assign Y8[5]=A[28];
assign Y8[6]=A[29];
assign Y8[7]=A[30];
assign Y8[8]=A[31];
generate
for(i=9;i<32;i=i+1)begin
	assign Y8[i]=0;
end
endgenerate
mux32to1 E8(Y[23],Y8,B[4:0]);
wire [31:0] Y9;
assign Y9[0]=A[22];
assign Y9[1]=A[23];
assign Y9[2]=A[24];
assign Y9[3]=A[25];
assign Y9[4]=A[26];
assign Y9[5]=A[27];
assign Y9[6]=A[28];
assign Y9[7]=A[29];
assign Y9[8]=A[30];
assign Y9[9]=A[31];
generate
for(i=10;i<32;i=i+1)begin
	assign Y9[i]=0;
end
endgenerate
mux32to1 E9(Y[22],Y9,B[4:0]);
wire [31:0] Y10;
assign Y10[0]=A[21];
assign Y10[1]=A[22];
assign Y10[2]=A[23];
assign Y10[3]=A[24];
assign Y10[4]=A[25];
assign Y10[5]=A[26];
assign Y10[6]=A[27];
assign Y10[7]=A[28];
assign Y10[8]=A[29];
assign Y10[9]=A[30];
assign Y10[10]=A[31];
generate
for(i=11;i<32;i=i+1)begin
	assign Y10[i]=0;
end
endgenerate
mux32to1 E10(Y[21],Y10,B[4:0]);
wire [31:0] Y11;
assign Y11[0]=A[20];
assign Y11[1]=A[21];
assign Y11[2]=A[22];
assign Y11[3]=A[23];
assign Y11[4]=A[24];
assign Y11[5]=A[25];
assign Y11[6]=A[26];
assign Y11[7]=A[27];
assign Y11[8]=A[28];
assign Y11[9]=A[29];
assign Y11[10]=A[30];
assign Y11[11]=A[31];
generate
for(i=12;i<32;i=i+1)begin
	assign Y11[i]=0;
end
endgenerate
mux32to1 E11(Y[20],Y11,B[4:0]);
wire [31:0] Y12;
assign Y12[0]=A[19];
assign Y12[1]=A[20];
assign Y12[2]=A[21];
assign Y12[3]=A[22];
assign Y12[4]=A[23];
assign Y12[5]=A[24];
assign Y12[6]=A[25];
assign Y12[7]=A[26];
assign Y12[8]=A[27];
assign Y12[9]=A[28];
assign Y12[10]=A[29];
assign Y12[11]=A[30];
assign Y12[12]=A[31];
generate
for(i=13;i<32;i=i+1)begin
	assign Y12[i]=0;
end
endgenerate
mux32to1 E12(Y[19],Y12,B[4:0]);
wire [31:0] Y13;
assign Y13[0]=A[18];
assign Y13[1]=A[19];
assign Y13[2]=A[20];
assign Y13[3]=A[21];
assign Y13[4]=A[22];
assign Y13[5]=A[23];
assign Y13[6]=A[24];
assign Y13[7]=A[25];
assign Y13[8]=A[26];
assign Y13[9]=A[27];
assign Y13[10]=A[28];
assign Y13[11]=A[29];
assign Y13[12]=A[30];
assign Y13[13]=A[31];
generate
for(i=14;i<32;i=i+1)begin
	assign Y13[i]=0;
end
endgenerate
mux32to1 E13(Y[18],Y13,B[4:0]);
wire [31:0] Y14;
assign Y14[0]=A[17];
assign Y14[1]=A[18];
assign Y14[2]=A[19];
assign Y14[3]=A[20];
assign Y14[4]=A[21];
assign Y14[5]=A[22];
assign Y14[6]=A[23];
assign Y14[7]=A[24];
assign Y14[8]=A[25];
assign Y14[9]=A[26];
assign Y14[10]=A[27];
assign Y14[11]=A[28];
assign Y14[12]=A[29];
assign Y14[13]=A[30];
assign Y14[14]=A[31];
generate
for(i=15;i<32;i=i+1)begin
	assign Y14[i]=0;
end
endgenerate
mux32to1 E14(Y[17],Y14,B[4:0]);
wire [31:0] Y15;
assign Y15[0]=A[16];
assign Y15[1]=A[17];
assign Y15[2]=A[18];
assign Y15[3]=A[19];
assign Y15[4]=A[20];
assign Y15[5]=A[21];
assign Y15[6]=A[22];
assign Y15[7]=A[23];
assign Y15[8]=A[24];
assign Y15[9]=A[25];
assign Y15[10]=A[26];
assign Y15[11]=A[27];
assign Y15[12]=A[28];
assign Y15[13]=A[29];
assign Y15[14]=A[30];
assign Y15[15]=A[31];
generate
for(i=16;i<32;i=i+1)begin
	assign Y15[i]=0;
end
endgenerate
mux32to1 E15(Y[16],Y15,B[4:0]);
wire [31:0] Y16;
assign Y16[0]=A[15];
assign Y16[1]=A[16];
assign Y16[2]=A[17];
assign Y16[3]=A[18];
assign Y16[4]=A[19];
assign Y16[5]=A[20];
assign Y16[6]=A[21];
assign Y16[7]=A[22];
assign Y16[8]=A[23];
assign Y16[9]=A[24];
assign Y16[10]=A[25];
assign Y16[11]=A[26];
assign Y16[12]=A[27];
assign Y16[13]=A[28];
assign Y16[14]=A[29];
assign Y16[15]=A[30];
assign Y16[16]=A[31];
generate
for(i=17;i<32;i=i+1)begin
	assign Y16[i]=0;
end
endgenerate
mux32to1 E16(Y[15],Y16,B[4:0]);
wire [31:0] Y17;
assign Y17[0]=A[14];
assign Y17[1]=A[15];
assign Y17[2]=A[16];
assign Y17[3]=A[17];
assign Y17[4]=A[18];
assign Y17[5]=A[19];
assign Y17[6]=A[20];
assign Y17[7]=A[21];
assign Y17[8]=A[22];
assign Y17[9]=A[23];
assign Y17[10]=A[24];
assign Y17[11]=A[25];
assign Y17[12]=A[26];
assign Y17[13]=A[27];
assign Y17[14]=A[28];
assign Y17[15]=A[29];
assign Y17[16]=A[30];
assign Y17[17]=A[31];
generate
for(i=18;i<32;i=i+1)begin
	assign Y17[i]=0;
end
endgenerate
mux32to1 E17(Y[14],Y17,B[4:0]);
wire [31:0] Y18;
assign Y18[0]=A[13];
assign Y18[1]=A[14];
assign Y18[2]=A[15];
assign Y18[3]=A[16];
assign Y18[4]=A[17];
assign Y18[5]=A[18];
assign Y18[6]=A[19];
assign Y18[7]=A[20];
assign Y18[8]=A[21];
assign Y18[9]=A[22];
assign Y18[10]=A[23];
assign Y18[11]=A[24];
assign Y18[12]=A[25];
assign Y18[13]=A[26];
assign Y18[14]=A[27];
assign Y18[15]=A[28];
assign Y18[16]=A[29];
assign Y18[17]=A[30];
assign Y18[18]=A[31];
generate
for(i=19;i<32;i=i+1)begin
	assign Y18[i]=0;
end
endgenerate
mux32to1 E18(Y[13],Y18,B[4:0]);
wire [31:0] Y19;
assign Y19[0]=A[12];
assign Y19[1]=A[13];
assign Y19[2]=A[14];
assign Y19[3]=A[15];
assign Y19[4]=A[16];
assign Y19[5]=A[17];
assign Y19[6]=A[18];
assign Y19[7]=A[19];
assign Y19[8]=A[20];
assign Y19[9]=A[21];
assign Y19[10]=A[22];
assign Y19[11]=A[23];
assign Y19[12]=A[24];
assign Y19[13]=A[25];
assign Y19[14]=A[26];
assign Y19[15]=A[27];
assign Y19[16]=A[28];
assign Y19[17]=A[29];
assign Y19[18]=A[30];
assign Y19[19]=A[31];
generate
for(i=20;i<32;i=i+1)begin
	assign Y19[i]=0;
end
endgenerate
mux32to1 E19(Y[12],Y19,B[4:0]);
wire [31:0] Y20;
assign Y20[0]=A[11];
assign Y20[1]=A[12];
assign Y20[2]=A[13];
assign Y20[3]=A[14];
assign Y20[4]=A[15];
assign Y20[5]=A[16];
assign Y20[6]=A[17];
assign Y20[7]=A[18];
assign Y20[8]=A[19];
assign Y20[9]=A[20];
assign Y20[10]=A[21];
assign Y20[11]=A[22];
assign Y20[12]=A[23];
assign Y20[13]=A[24];
assign Y20[14]=A[25];
assign Y20[15]=A[26];
assign Y20[16]=A[27];
assign Y20[17]=A[28];
assign Y20[18]=A[29];
assign Y20[19]=A[30];
assign Y20[20]=A[31];
generate
for(i=21;i<32;i=i+1)begin
	assign Y20[i]=0;
end
endgenerate
mux32to1 E20(Y[11],Y20,B[4:0]);
wire [31:0] Y21;
assign Y21[0]=A[10];
assign Y21[1]=A[11];
assign Y21[2]=A[12];
assign Y21[3]=A[13];
assign Y21[4]=A[14];
assign Y21[5]=A[15];
assign Y21[6]=A[16];
assign Y21[7]=A[17];
assign Y21[8]=A[18];
assign Y21[9]=A[19];
assign Y21[10]=A[20];
assign Y21[11]=A[21];
assign Y21[12]=A[22];
assign Y21[13]=A[23];
assign Y21[14]=A[24];
assign Y21[15]=A[25];
assign Y21[16]=A[26];
assign Y21[17]=A[27];
assign Y21[18]=A[28];
assign Y21[19]=A[29];
assign Y21[20]=A[30];
assign Y21[21]=A[31];
generate
for(i=22;i<32;i=i+1)begin
	assign Y21[i]=0;
end
endgenerate
mux32to1 E21(Y[10],Y21,B[4:0]);
wire [31:0] Y22;
assign Y22[0]=A[9];
assign Y22[1]=A[10];
assign Y22[2]=A[11];
assign Y22[3]=A[12];
assign Y22[4]=A[13];
assign Y22[5]=A[14];
assign Y22[6]=A[15];
assign Y22[7]=A[16];
assign Y22[8]=A[17];
assign Y22[9]=A[18];
assign Y22[10]=A[19];
assign Y22[11]=A[20];
assign Y22[12]=A[21];
assign Y22[13]=A[22];
assign Y22[14]=A[23];
assign Y22[15]=A[24];
assign Y22[16]=A[25];
assign Y22[17]=A[26];
assign Y22[18]=A[27];
assign Y22[19]=A[28];
assign Y22[20]=A[29];
assign Y22[21]=A[30];
assign Y22[22]=A[31];
generate
for(i=23;i<32;i=i+1)begin
	assign Y22[i]=0;
end
endgenerate
mux32to1 E22(Y[9],Y22,B[4:0]);
wire [31:0] Y23;
assign Y23[0]=A[8];
assign Y23[1]=A[9];
assign Y23[2]=A[10];
assign Y23[3]=A[11];
assign Y23[4]=A[12];
assign Y23[5]=A[13];
assign Y23[6]=A[14];
assign Y23[7]=A[15];
assign Y23[8]=A[16];
assign Y23[9]=A[17];
assign Y23[10]=A[18];
assign Y23[11]=A[19];
assign Y23[12]=A[20];
assign Y23[13]=A[21];
assign Y23[14]=A[22];
assign Y23[15]=A[23];
assign Y23[16]=A[24];
assign Y23[17]=A[25];
assign Y23[18]=A[26];
assign Y23[19]=A[27];
assign Y23[20]=A[28];
assign Y23[21]=A[29];
assign Y23[22]=A[30];
assign Y23[23]=A[31];
generate
for(i=24;i<32;i=i+1)begin
	assign Y23[i]=0;
end
endgenerate
mux32to1 E23(Y[8],Y23,B[4:0]);
wire [31:0] Y24;
assign Y24[0]=A[7];
assign Y24[1]=A[8];
assign Y24[2]=A[9];
assign Y24[3]=A[10];
assign Y24[4]=A[11];
assign Y24[5]=A[12];
assign Y24[6]=A[13];
assign Y24[7]=A[14];
assign Y24[8]=A[15];
assign Y24[9]=A[16];
assign Y24[10]=A[17];
assign Y24[11]=A[18];
assign Y24[12]=A[19];
assign Y24[13]=A[20];
assign Y24[14]=A[21];
assign Y24[15]=A[22];
assign Y24[16]=A[23];
assign Y24[17]=A[24];
assign Y24[18]=A[25];
assign Y24[19]=A[26];
assign Y24[20]=A[27];
assign Y24[21]=A[28];
assign Y24[22]=A[29];
assign Y24[23]=A[30];
assign Y24[24]=A[31];
generate
for(i=25;i<32;i=i+1)begin
	assign Y24[i]=0;
end
endgenerate
mux32to1 E24(Y[7],Y24,B[4:0]);
wire [31:0] Y25;
assign Y25[0]=A[6];
assign Y25[1]=A[7];
assign Y25[2]=A[8];
assign Y25[3]=A[9];
assign Y25[4]=A[10];
assign Y25[5]=A[11];
assign Y25[6]=A[12];
assign Y25[7]=A[13];
assign Y25[8]=A[14];
assign Y25[9]=A[15];
assign Y25[10]=A[16];
assign Y25[11]=A[17];
assign Y25[12]=A[18];
assign Y25[13]=A[19];
assign Y25[14]=A[20];
assign Y25[15]=A[21];
assign Y25[16]=A[22];
assign Y25[17]=A[23];
assign Y25[18]=A[24];
assign Y25[19]=A[25];
assign Y25[20]=A[26];
assign Y25[21]=A[27];
assign Y25[22]=A[28];
assign Y25[23]=A[29];
assign Y25[24]=A[30];
assign Y25[25]=A[31];
generate
for(i=26;i<32;i=i+1)begin
	assign Y25[i]=0;
end
endgenerate
mux32to1 E25(Y[6],Y25,B[4:0]);
wire [31:0] Y26;
assign Y26[0]=A[5];
assign Y26[1]=A[6];
assign Y26[2]=A[7];
assign Y26[3]=A[8];
assign Y26[4]=A[9];
assign Y26[5]=A[10];
assign Y26[6]=A[11];
assign Y26[7]=A[12];
assign Y26[8]=A[13];
assign Y26[9]=A[14];
assign Y26[10]=A[15];
assign Y26[11]=A[16];
assign Y26[12]=A[17];
assign Y26[13]=A[18];
assign Y26[14]=A[19];
assign Y26[15]=A[20];
assign Y26[16]=A[21];
assign Y26[17]=A[22];
assign Y26[18]=A[23];
assign Y26[19]=A[24];
assign Y26[20]=A[25];
assign Y26[21]=A[26];
assign Y26[22]=A[27];
assign Y26[23]=A[28];
assign Y26[24]=A[29];
assign Y26[25]=A[30];
assign Y26[26]=A[31];
generate
for(i=27;i<32;i=i+1)begin
	assign Y26[i]=0;
end
endgenerate
mux32to1 E26(Y[5],Y26,B[4:0]);
wire [31:0] Y27;
assign Y27[0]=A[4];
assign Y27[1]=A[5];
assign Y27[2]=A[6];
assign Y27[3]=A[7];
assign Y27[4]=A[8];
assign Y27[5]=A[9];
assign Y27[6]=A[10];
assign Y27[7]=A[11];
assign Y27[8]=A[12];
assign Y27[9]=A[13];
assign Y27[10]=A[14];
assign Y27[11]=A[15];
assign Y27[12]=A[16];
assign Y27[13]=A[17];
assign Y27[14]=A[18];
assign Y27[15]=A[19];
assign Y27[16]=A[20];
assign Y27[17]=A[21];
assign Y27[18]=A[22];
assign Y27[19]=A[23];
assign Y27[20]=A[24];
assign Y27[21]=A[25];
assign Y27[22]=A[26];
assign Y27[23]=A[27];
assign Y27[24]=A[28];
assign Y27[25]=A[29];
assign Y27[26]=A[30];
assign Y27[27]=A[31];
generate
for(i=28;i<32;i=i+1)begin
	assign Y27[i]=0;
end
endgenerate
mux32to1 E27(Y[4],Y27,B[4:0]);
wire [31:0] Y28;
assign Y28[0]=A[3];
assign Y28[1]=A[4];
assign Y28[2]=A[5];
assign Y28[3]=A[6];
assign Y28[4]=A[7];
assign Y28[5]=A[8];
assign Y28[6]=A[9];
assign Y28[7]=A[10];
assign Y28[8]=A[11];
assign Y28[9]=A[12];
assign Y28[10]=A[13];
assign Y28[11]=A[14];
assign Y28[12]=A[15];
assign Y28[13]=A[16];
assign Y28[14]=A[17];
assign Y28[15]=A[18];
assign Y28[16]=A[19];
assign Y28[17]=A[20];
assign Y28[18]=A[21];
assign Y28[19]=A[22];
assign Y28[20]=A[23];
assign Y28[21]=A[24];
assign Y28[22]=A[25];
assign Y28[23]=A[26];
assign Y28[24]=A[27];
assign Y28[25]=A[28];
assign Y28[26]=A[29];
assign Y28[27]=A[30];
assign Y28[28]=A[31];
generate
for(i=29;i<32;i=i+1)begin
	assign Y28[i]=0;
end
endgenerate
mux32to1 E28(Y[3],Y28,B[4:0]);
wire [31:0] Y29;
assign Y29[0]=A[2];
assign Y29[1]=A[3];
assign Y29[2]=A[4];
assign Y29[3]=A[5];
assign Y29[4]=A[6];
assign Y29[5]=A[7];
assign Y29[6]=A[8];
assign Y29[7]=A[9];
assign Y29[8]=A[10];
assign Y29[9]=A[11];
assign Y29[10]=A[12];
assign Y29[11]=A[13];
assign Y29[12]=A[14];
assign Y29[13]=A[15];
assign Y29[14]=A[16];
assign Y29[15]=A[17];
assign Y29[16]=A[18];
assign Y29[17]=A[19];
assign Y29[18]=A[20];
assign Y29[19]=A[21];
assign Y29[20]=A[22];
assign Y29[21]=A[23];
assign Y29[22]=A[24];
assign Y29[23]=A[25];
assign Y29[24]=A[26];
assign Y29[25]=A[27];
assign Y29[26]=A[28];
assign Y29[27]=A[29];
assign Y29[28]=A[30];
assign Y29[29]=A[31];
generate
for(i=30;i<32;i=i+1)begin
	assign Y29[i]=0;
end
endgenerate
mux32to1 E29(Y[2],Y29,B[4:0]);
wire [31:0] Y30;
assign Y30[0]=A[1];
assign Y30[1]=A[2];
assign Y30[2]=A[3];
assign Y30[3]=A[4];
assign Y30[4]=A[5];
assign Y30[5]=A[6];
assign Y30[6]=A[7];
assign Y30[7]=A[8];
assign Y30[8]=A[9];
assign Y30[9]=A[10];
assign Y30[10]=A[11];
assign Y30[11]=A[12];
assign Y30[12]=A[13];
assign Y30[13]=A[14];
assign Y30[14]=A[15];
assign Y30[15]=A[16];
assign Y30[16]=A[17];
assign Y30[17]=A[18];
assign Y30[18]=A[19];
assign Y30[19]=A[20];
assign Y30[20]=A[21];
assign Y30[21]=A[22];
assign Y30[22]=A[23];
assign Y30[23]=A[24];
assign Y30[24]=A[25];
assign Y30[25]=A[26];
assign Y30[26]=A[27];
assign Y30[27]=A[28];
assign Y30[28]=A[29];
assign Y30[29]=A[30];
assign Y30[30]=A[31];
generate
for(i=31;i<32;i=i+1)begin
	assign Y30[i]=0;
end
endgenerate
mux32to1 E30(Y[1],Y30,B[4:0]);
wire [31:0] Y31;
assign Y31[0]=A[0];
assign Y31[1]=A[1];
assign Y31[2]=A[2];
assign Y31[3]=A[3];
assign Y31[4]=A[4];
assign Y31[5]=A[5];
assign Y31[6]=A[6];
assign Y31[7]=A[7];
assign Y31[8]=A[8];
assign Y31[9]=A[9];
assign Y31[10]=A[10];
assign Y31[11]=A[11];
assign Y31[12]=A[12];
assign Y31[13]=A[13];
assign Y31[14]=A[14];
assign Y31[15]=A[15];
assign Y31[16]=A[16];
assign Y31[17]=A[17];
assign Y31[18]=A[18];
assign Y31[19]=A[19];
assign Y31[20]=A[20];
assign Y31[21]=A[21];
assign Y31[22]=A[22];
assign Y31[23]=A[23];
assign Y31[24]=A[24];
assign Y31[25]=A[25];
assign Y31[26]=A[26];
assign Y31[27]=A[27];
assign Y31[28]=A[28];
assign Y31[29]=A[29];
assign Y31[30]=A[30];
assign Y31[31]=A[31];
generate
for(i=32;i<32;i=i+1)begin
	assign Y31[i]=0;
end
endgenerate
mux32to1 E31(Y[0],Y31,B[4:0]);
wire zero;
assign #1 zero=B[5]|B[6]|B[7]|B[8]|B[9]|B[10]|B[11]|B[12]|B[13]|B[14]|B[15]|B[16]|B[17]|B[18]|B[19]|B[20]|B[21]|B[22]|B[23]|B[24]|B[25]|B[26]|B[27]|B[28]|B[29]|B[30]|B[31];
generate
for(i=0;i<32;i=i+1) begin
    assign #1 S[i]=(~zero)&(Y[i]);
end
endgenerate
assign #2 overflow = (S[31] ^ A[31]);
endmodule