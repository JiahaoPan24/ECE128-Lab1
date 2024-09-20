`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/03 15:24:25
// Design Name: 
// Module Name: Mux4_1_str
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


module Mux4_1_str(
    input [1:0] i0, i1, i2, i3,
    input [1:0] s,
    output [1:0] o
    );
    
wire NS0, NS1;
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

not N1(NS0, s[0]);
not N2(NS1, s[1]);
and A1(Y0, i0[0], NS1, NS0);
and A2(Y1, i1[0], NS1, s[0]);
and A3(Y2, i2[0], s[1], NS0);
and A4(Y3, i3[0], s[1], s[0]);
and A5(Y4, i0[1], NS1, NS0);
and A6(Y5, i1[1], NS1, s[0]);
and A7(Y6, i2[1], s[1], NS0);
and A8(Y7, i3[1], s[1], s[0]);
or O1(o[0], Y0, Y1, Y2, Y3);
or O2(o[1], Y4, Y5, Y6, Y7);


endmodule
