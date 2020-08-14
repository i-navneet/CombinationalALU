`timescale 1ns / 1ps
//delay for OR/AND gate-1ns NOT delay is 0
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology
// Engineer: Navtejpreet Singh
//            Navneet Kumar
// 
// Create Date: 16.10.2019 00:28:32
// Design Name: 
// Module Name: multiplier_32bit
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

module multiplier_32bit(
    
    output [31:0] product,
    output over,
    input [31:0]a,[31:0]b
    );
    //p0,p1,p2..... are 32 bits 1st,2nd and 3rd partial products 
    wire [31:0] p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31;
    genvar i;
    generate for(i=0;i<32;i=i+1) begin 
        assign #1 p0[i]=b[0]&a[i];
    end   endgenerate

    assign p1[0]=0;
    generate for(i=1;i<32;i=i+1) begin
        assign #1 p1[i]=b[1]&a[i-1];
       end endgenerate
    
    assign p2[1:0]=2'b00;
    generate for(i=2;i<32;i=i+1) begin
        assign #1 p2[i]=b[2]&a[i-2];
    end endgenerate
    
    assign p3[2:0]=3'b0;
    generate for(i=3;i<32;i=i+1) begin
        assign #1 p3[i]=b[3]&a[i-3];
    end endgenerate
    
    assign p4[3:0]=4'b0;
    generate for(i=4;i<32;i=i+1) begin
        assign #1 p4[i]=b[4]&a[i-4];
    end endgenerate
    
    assign p5[4:0]=5'b0;
    generate for(i=5;i<32;i=i+1) begin
        assign #1 p5[i]=b[5]&a[i-5];
    end endgenerate
    
    assign p6[5:0]=6'b0;
    generate for(i=6;i<32;i=i+1) begin
        assign #1 p6[i]=b[6]&a[i-6];
    end endgenerate
    
    assign p7[6:0]=7'b0;
    generate for(i=7;i<32;i=i+1) begin
        assign #1 p7[i]=b[7]&a[i-7];
    end endgenerate
    
    
    assign p8[7:0]=8'b0;
    generate for(i=8;i<32;i=i+1) begin
        assign #1 p8[i]=b[8]&a[i-8];
    end endgenerate
    
    assign p9[8:0]=9'b0;
    generate for(i=9;i<32;i=i+1) begin
        assign #1 p9[i]=b[9]&a[i-9];
    end endgenerate
    
    assign p10[9:0]=10'b0;
    generate for(i=10;i<32;i=i+1) begin
        assign #1 p10[i]=b[10]&a[i-10];
    end endgenerate
    
    assign p11[10:0]=11'b0;
    generate for(i=11;i<32;i=i+1) begin
        assign #1 p11[i]=b[11]&a[i-11];
    end endgenerate
       
    assign p12[11:0]=12'b0;
    generate for(i=12;i<32;i=i+1) begin
        assign #1 p12[i]=b[12]&a[i-12];
    end endgenerate
    
    assign p13[12:0]=13'b0;
    generate for(i=13;i<32;i=i+1) begin
        assign #1 p13[i]=b[13]&a[i-13];
    end endgenerate
    
    assign p14[13:0]=14'b0;
    generate for(i=14;i<32;i=i+1) begin
        assign #1 p14[i]=b[14]&a[i-14];
    end endgenerate
    
    assign p15[14:0]=15'b0;
    generate for(i=15;i<32;i=i+1) begin
        assign #1 p15[i]=b[15]&a[i-15];
    end endgenerate
    
    assign p16[15:0]=16'b0;
    generate for(i=16;i<32;i=i+1) begin
        assign #1 p16[i]=b[16]&a[i-16];
    end endgenerate
    
    assign p17[16:0]=17'b0;
    generate for(i=17;i<32;i=i+1) begin
        assign #1 p17[i]=b[17]&a[i-17];
    end endgenerate
     
    assign p18[17:0]=18'b0;
    generate for(i=18;i<32;i=i+1) begin
        assign #1 p18[i]=b[18]&a[i-18];
    end endgenerate
    
    assign p19[18:0]=19'b0;
    generate for(i=19;i<32;i=i+1) begin
        assign #1 p19[i]=b[19]&a[i-19];
    end endgenerate
    
    assign p20[19:0]=20'b0;
    generate for(i=20;i<32;i=i+1) begin
        assign #1 p20[i]=b[20]&a[i-20];
    end endgenerate
    
    assign p21[20:0]=21'b0;
    generate for(i=0;i<32;i=i+1) begin
        assign #1 p21[i]=b[21]&a[i-21];
    end endgenerate
    
    assign p22[21:0]=22'b0;
    generate for(i=22;i<32;i=i+1) begin
        assign #1 p22[i]=b[22]&a[i-22];
    end endgenerate
    
    assign p23[22:0]=23'b0;
    generate for(i=23;i<32;i=i+1) begin
        assign #1 p23[i]=b[23]&a[i-23];
    end endgenerate
    
    assign p24[23:0]=24'b0;
    generate for(i=24;i<32;i=i+1) begin
        assign #1 p24[i]=b[24]&a[i-24];
    end endgenerate
    
    assign p25[24:0]=25'b0;
    generate for(i=25;i<32;i=i+1) begin
        assign #1 p25[i]=b[25]&a[i-25];
    end endgenerate
    
    assign p26[25:0]=26'b0;
    generate for(i=26;i<32;i=i+1) begin
        assign #1 p26[i]=b[26]&a[i-26];
    end endgenerate
    
    assign p27[26:0]=27'b0;
    generate for(i=27;i<32;i=i+1) begin
        assign #1 p27[i]=b[27]&a[i-27];
    end endgenerate
    
    assign p28[27:0]=28'b0;
    generate for(i=28;i<32;i=i+1) begin
        assign #1 p28[i]=b[28]&a[i-28];
    end endgenerate
    
    assign p29[28:0]=29'b0;
    generate for(i=29;i<32;i=i+1) begin
        assign #1 p29[i]=b[29]&a[i-29];
    end endgenerate
    
    assign p30[29:0]=30'b0;
    generate for(i=30;i<32;i=i+1) begin
        assign #1 p30[i]=b[30]&a[i-30];
    end endgenerate
   
    assign p31[30:0]=31'b0;
    generate for(i=31;i<32;i=i+1) begin
        assign #1 p31[i]=b[31]&a[i-31];
    end endgenerate
    
    
    //sums are used to add together in sum i's
    //p0+p1=sum0 
    //p0+p1+p2=sum1
    //p0+p1+p2+p3=sum2
    //....and so-on
    wire [31:0]sum0,sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,sum10,sum11,sum12,sum13,sum14,sum15,sum16,sum17,sum18,sum19,sum20,sum21,sum22,sum23,sum24,sum25,sum26,sum27,sum28,sum29;
    wire  [31:0]C;
    wire [31:0]overflow;
    wire [31:0]max=32'b11111111111111111111111111111111;
    wire zero=1'b0;
    
    fastAdder32bit u0(.S(sum0),.A(p1),.B(p0),.Cin(zero),.overflow(overflow[0]),.C(C[0]));  //p0 + p1 calculated here
    
    fastAdder32bit u1(.S(sum1),.A(p2),.B(sum0),.Cin(zero),.overflow(overflow[1]),.C(C[1]));  //p0 + p1+ p2 calculated here
    
    fastAdder32bit u2(.S(sum2),.A(p3),.B(sum1),.Cin(zero),.overflow(overflow[2]),.C(C[2]));
    
    fastAdder32bit u3(.S(sum3),.A(p4),.B(sum2),.Cin(zero),.overflow(overflow[3]),.C(C[3]));
    
    fastAdder32bit u4(.S(sum4),.A(p5),.B(sum3),.Cin(zero),.overflow(overflow[4]),.C(C[4]));
    
    fastAdder32bit u5(.S(sum5),.A(p6),.B(sum4),.Cin(zero),.overflow(overflow[5]),.C(C[5]));
    
    fastAdder32bit u6(.S(sum6),.A(p7),.B(sum5),.Cin(zero),.overflow(overflow[6]),.C(C[6]));
    
    fastAdder32bit u7(.S(sum7),.A(p8),.B(sum6),.Cin(zero),.overflow(overflow[7]),.C(C[7]));

    fastAdder32bit u8(.S(sum8),.A(p9),.B(sum7),.Cin(zero),.overflow(overflow[8]),.C(C[8]));

    fastAdder32bit u9(.S(sum9),.A(p10),.B(sum8),.Cin(zero),.overflow(overflow[9]),.C(C[9]));
    
    fastAdder32bit u10(.S(sum10),.A(p11),.B(sum9),.Cin(zero),.overflow(overflow[10]),.C(C[10]));

    fastAdder32bit u11(.S(sum11),.A(p12),.B(sum10),.Cin(zero),.overflow(overflow[11]),.C(C[11]));

    fastAdder32bit u12(.S(sum12),.A(p13),.B(sum11),.Cin(zero),.overflow(overflow[12]),.C(C[12]));

    fastAdder32bit u13(.S(sum13),.A(p14),.B(sum12),.Cin(zero),.overflow(overflow[13]),.C(C[13]));

    fastAdder32bit u14(.S(sum14),.A(p15),.B(sum13),.Cin(zero),.overflow(overflow[14]),.C(C[14]));

    fastAdder32bit u15(.S(sum15),.A(p16),.B(sum14),.Cin(zero),.overflow(overflow[15]),.C(C[15]));

    fastAdder32bit u16(.S(sum16),.A(p17),.B(sum15),.Cin(zero),.overflow(overflow[16]),.C(C[16]));

    fastAdder32bit u17(.S(sum17),.A(p18),.B(sum16),.Cin(zero),.overflow(overflow[17]),.C(C[17]));

    fastAdder32bit u18(.S(sum18),.A(p19),.B(sum17),.Cin(zero),.overflow(overflow[18]),.C(C[18]));

    fastAdder32bit u19(.S(sum19),.A(p20),.B(sum18),.Cin(zero),.overflow(overflow[19]),.C(C[19]));
    
    fastAdder32bit u20(.S(sum20),.A(p21),.B(sum19),.Cin(zero),.overflow(overflow[20]),.C(C[20]));

    fastAdder32bit u21(.S(sum21),.A(p22),.B(sum20),.Cin(zero),.overflow(overflow[21]),.C(C[21]));

    fastAdder32bit u22(.S(sum22),.A(p23),.B(sum21),.Cin(zero),.overflow(overflow[22]),.C(C[22]));

    fastAdder32bit u23(.S(sum23),.A(p24),.B(sum22),.Cin(zero),.overflow(overflow[23]),.C(C[23]));

    fastAdder32bit u24(.S(sum24),.A(p25),.B(sum23),.Cin(zero),.overflow(overflow[24]),.C(C[24]));

    fastAdder32bit u25(.S(sum25),.A(p26),.B(sum24),.Cin(zero),.overflow(overflow[25]),.C(C[25]));

    fastAdder32bit u26(.S(sum26),.A(p27),.B(sum25),.Cin(zero),.overflow(overflow[26]),.C(C[26]));

    fastAdder32bit u27(.S(sum27),.A(p28),.B(sum26),.Cin(zero),.overflow(overflow[27]),.C(C[27]));

    fastAdder32bit u28(.S(sum28),.A(p29),.B(sum27),.Cin(zero),.overflow(overflow[28]),.C(C[28]));

    fastAdder32bit u29(.S(sum29),.A(p30),.B(sum28),.Cin(zero),.overflow(overflow[29]),.C(C[29]));

    fastAdder32bit u30(.S(product),.A(p31),.B(sum29),.Cin(zero),.overflow(overflow[30]),.C(C[30])); //p0+p1+....+p31

/////////////////////////////////////
/////////////////////////////////////
/////////////////////////////////////
/////////////////////////////////////
//these conditions are used to check the overflow condition
// suppose in 8 bit multiplier if A=10110110
//                            and B=00001100
//one or more of the following cases arrive
//if 1st bit of B from right is 1 we have no issue multiplying any number A with it
//if 2nd bit of B from right is 1 we have a overflow if 1st bit of A from left is 1 (because 2nd bit of B from right means A is logically shifted left one time)
//if 3rd bit of B from right is 1 we have a overflow if any one of first two bits from left of A is 1(logically left shifted twice)
//if 4th bit of B from right is 1 we have a overflow if any one of first three bits from left of A is 1
wire y1;
assign #2 y1=(a[31] | a[31] ) & b[1];
wire y2;
assign #2 y2=(a[30] | a[31] | a[31] ) & b[2];
wire y3;
assign #2 y3=(a[29] | a[30] | a[31] | a[31] ) & b[3];
wire y4;
assign #2 y4=(a[28] | a[29] | a[30] | a[31] | a[31] ) & b[4];
wire y5;
assign #2 y5=(a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[5];
wire y6;
assign #2 y6=(a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[6];
wire y7;
assign #2 y7=(a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[7];
wire y8;
assign #2 y8=(a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[8];
wire y9;
assign #2 y9=(a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[9];
wire y10;
assign #2 y10=(a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[10];
wire y11;
assign #2 y11=(a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[11];
wire y12;
assign #2 y12=(a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[12];
wire y13;
assign #2 y13=(a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[13];
wire y14;
assign #2 y14=(a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[14];
wire y15;
assign #2 y15=(a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[15];
wire y16;
assign #2 y16=(a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[16];
wire y17;
assign #2 y17=(a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[17];
wire y18;
assign #2 y18=(a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[18];
wire y19;
assign #2 y19=(a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[19];
wire y20;
assign #2 y20=(a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[20];
wire y21;
assign #2 y21=(a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[21];
wire y22;
assign #2 y22=(a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[22];
wire y23;
assign #2 y23=(a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[23];
wire y24;
assign #2 y24=(a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[24];
wire y25;
assign #2 y25=(a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[25];
wire y26;
assign #2 y26=(a[6] | a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[26];
wire y27;
assign #2 y27=(a[5] | a[6] | a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[27];
wire y28;
assign #2 y28=(a[4] | a[5] | a[6] | a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[28];
wire y29;
assign #2 y29=(a[3] | a[4] | a[5] | a[6] | a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[29];
wire y30;
assign #2 y30=(a[2] | a[3] | a[4] | a[5] | a[6] | a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[30];
wire y31;
assign #2 y31=(a[1] | a[2] | a[3] | a[4] | a[5] | a[6] | a[7] | a[8] | a[9] | a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | a[17] | a[18] | a[19] | a[20] | a[21] | a[22] | a[23] | a[24] | a[25] | a[26] | a[27] | a[28] | a[29] | a[30] | a[31] | a[31] ) & b[31];
//if any of the above test case gives overflow then a overflow exists 
assign #1 over= y1 | y2 | y3 | y4 | y5 | y6 | y7 | y8 | y9 | y10 | y11 | y12 | y13 | y14 | y15 | y16 | y17 | y18 | y19 | y20 | y21 | y22 | y23 | y24 | y25 | y26 | y27 | y28 | y29 | y30 | y31 | y31;

endmodule
