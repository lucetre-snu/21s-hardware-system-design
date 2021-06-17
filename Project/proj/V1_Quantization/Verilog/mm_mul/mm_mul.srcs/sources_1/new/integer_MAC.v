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
        if (!aresetn)           {dout, cnt} <= {ZERO, 2'b00};
        if (cnt == 2'b10)       {dout, cnt} <= {valid ? (ain*bin + cin) : dout, 2'b00};
        else                    {dout, cnt} <= {valid ? (ain*bin + cin) : dout, cnt + ~valid};
    end    
endmodule
