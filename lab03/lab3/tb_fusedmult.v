`timescale 1ns / 1ps

module tb_fusedmult();
    parameter BITWIDTH = 32;
    
    // for my IP
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg clk;
    reg en;
    wire [2*BITWIDTH-1:0] dout;
    
    integer i;
    
    // random test vector generation
    initial begin
        clk<=0;
        en<=0;
        
        for(i=0; i<32; i=i+1) begin
            ain = $urandom%(2**31);
            bin = $urandom%(2**31);
            #10;
        end
    end
    
    my_fusedmult #(BITWIDTH) MY_FUSEDMULT(
        .ain(ain),
        .bin(bin),
        .clk(clk),
        .en(en),
        .dout(dout)
    );
    
    always #5 clk = ~clk;
    always #30 en = ~en;

endmodule
