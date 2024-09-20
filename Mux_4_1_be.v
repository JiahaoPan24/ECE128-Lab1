`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 14:58:18
// Design Name: 
// Module Name: Mux_4_1_be
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


module Mux4_1_be(o,i0, i1, i2, i3,s);
    input [1:0] i0, i1, i2, i3;
    input [1:0] s;
    output reg [1:0] o;
    
always @(s or i0, i1, i2, i3)
begin
    case(s)
        2'b00:o=i0;
        2'b01:o=i1;
        2'b10:o=i2;
        2'b11:o=i3;
        default : o = 2'bx;
       endcase 
      end
endmodule
