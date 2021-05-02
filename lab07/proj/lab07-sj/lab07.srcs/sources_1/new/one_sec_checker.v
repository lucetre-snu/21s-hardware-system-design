`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/02 13:10:23
// Design Name: 
// Module Name: one_sec_checker
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

module one_sec_checker#(
    parameter CLK_FREQ = 28'd100000000
)(
    input GCLK,
    input BTNC,
    output [7:0] LD
    );
    
    reg [27:0] down_counter;
    reg [7:0] up_counter;
    assign LD = up_counter;
    
    initial begin
        up_counter <= 0;
        down_counter <= CLK_FREQ;
    end
    
    always @(posedge GCLK or posedge BTNC) begin
        if (BTNC) begin
            up_counter <= 0;
            down_counter <= CLK_FREQ;
        end
        else begin
            if (down_counter == 0) begin
                up_counter <= up_counter + 8'd1;
                down_counter <= CLK_FREQ;
            end
            else begin
                down_counter <= down_counter - 28'd1;
            end
        end
    end
    
endmodule
