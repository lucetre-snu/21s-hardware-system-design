`timescale 1ns / 1ps

module my_fusedmult #(
    parameter BITWIDTH = 32
)
(
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input en,
    input clk, 
    output reg [2*BITWIDTH-1:0] dout
);
    
    /* IMPLEMENT HERE! */
    // read en when clk is posedge
    always @(posedge clk) begin
        if(en == 1)
            dout <= dout + ain * bin;
        else 
            dout = 0;
    end
        
endmodule
