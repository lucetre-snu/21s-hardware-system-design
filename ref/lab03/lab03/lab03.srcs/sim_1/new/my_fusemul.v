`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/25 18:21:43
// Design Name: 
// Module Name: my_fusemul
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


module my_fusemul #(
    parameter BITWIDTH =32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input en,
    input clk,
    output reg [2*BITWIDTH-1:0] dout
    
 );
 always@(posedge clk) begin
   if(en ==0) begin
     dout =0;
 
   end
   else begin
   dout = dout + ain*bin;   
   end
 end
 
 
endmodule
