`timescale 1ns / 1ps

module my_mul#(
    parameter BITWIDTH = 32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    output [2*BITWIDTH-1:0] dout
);

    /* IMPLEMENT HERE! */
    assign dout = ain * bin;
    
endmodule
