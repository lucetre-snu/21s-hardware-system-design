`timescale 1ns / 1ps

module integer_MAC #(
    parameter BITWIDTH = 32
)
(
    input aclk,                                         
    input aresetn,                                      
    input valid,
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input [BITWIDTH-1:0] cin,
    output dvalid,              
    output [BITWIDTH-1:0] res
);
    localparam ZERO = {BITWIDTH{1'd0}};
    
    reg [BITWIDTH-1:0] dout = ZERO;
    reg [1:0] cnt = 0;
    
    assign dvalid = cnt > 0;
    assign res = dout;
    
    always @(posedge aclk) begin
        if (!aresetn)           dout <= ZERO;
        else if (valid)         dout <= ain*bin + cin;
        else                    dout <= dout;
    end
    
    always @(posedge aclk) begin
        if (!aresetn)           cnt <= 2'b00;
        else if (cnt == 2'b10)  cnt <= 2'b00;
        else                    cnt <= cnt + 1;
    end    
endmodule
