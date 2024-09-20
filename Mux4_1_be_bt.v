`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 14:50:16
// Design Name: 
// Module Name: Mux4_1_be_bt
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


module Mux4_1_be_bt();
wire [1:0] o;
reg [1:0] i0,i1,i2,i3;
reg [1:0] s;
Mux4_1_be uut (o,i0,i1,i2,i3,s);

initial begin
    #10 i0=2'b01;i1=2'b00;i2=2'b00; i3=2'b00; s=2'b00;
    #10 i0=2'b10;i1=2'b00;i2=2'b00; i3=2'b00; s=2'b00;
    #10 i0=2'b00;i1=2'b01;i2=2'b00; i3=2'b00; s=2'b01;
    #10 i0=2'b00;i1=2'b10;i2=2'b00; i3=2'b00; s=2'b01;
    
    #10 i0=2'b00;i1=2'b00;i2=2'b01; i3=2'b00; s=2'b10;
    #10 i0=2'b00;i1=2'b00;i2=2'b10; i3=2'b00; s=2'b10;
    #10 i0=2'b00;i1=2'b00;i2=2'b00; i3=2'b01; s=2'b11;
    #10 i0=2'b00;i1=2'b00;i2=2'b00; i3=2'b10; s=2'b11;
    #10 $stop;
    
end
endmodule
