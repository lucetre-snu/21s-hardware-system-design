`timescale 1ns / 1ps

module tb_my_pe #(
    parameter L_RAM_SIZE = 6,
    parameter BITWIDTH = 32
);

    reg [BITWIDTH-1:0] gb1 [0:2**L_RAM_SIZE-1];
    reg [BITWIDTH-1:0] gb2 [0:2**L_RAM_SIZE-1];
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg rst;
    reg clk;
    wire [BITWIDTH-1:0] dout;
    reg valid;
    wire dvalid;
   
    integer i;         
    initial begin
        clk <= 0;
        rst <= 1;
        #20;
        rst <= 0;
        
        // value setting in global buffers
        for(i = 0; i < 16; i = i+1) begin
            gb1[i] = $urandom_range(2**30,2**30+2**26);
            gb2[i] = $urandom_range(2**30,2**30+2**26);
//            gb1[i] <= ($urandom%2 << 31) + ($urandom%(2**8) << 23) + $urandom%(2**23);
//            gb2[i] <= ($urandom%2 << 31) + ($urandom%(2**8) << 23) + $urandom%(2**23);
        end
        
        // execute PE
        for(i = 0; i < 16; i = i+1) begin
            if(i != 0) begin
                wait (dvalid == 1);
                wait (dvalid == 0);
            end
            ain = gb1[i];
            bin = gb2[i];
            #15;
            valid <= 1;
            #10;
            valid <= 0;
        end
    end
    
    always #5 clk = ~clk;
    
    my_pe MY_PE (
        .aclk(clk),
        .aresetn(~rst),
        .ain(ain),
        .bin(bin),
        .valid(valid),
        .dvalid(dvalid),
        .dout(dout)
    );
    
endmodule