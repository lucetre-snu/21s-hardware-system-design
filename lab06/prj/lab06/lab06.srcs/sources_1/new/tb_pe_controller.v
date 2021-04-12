`timescale 1ns / 1ps

module tb_pe_controller #(
    parameter L_RAM_SIZE = 6,
    parameter BITWIDTH = 32
);

    reg [BITWIDTH-1:0] gb [0:2**(L_RAM_SIZE+1)-1];
    
    // for pe_controller
    reg start;
    reg reset;
    reg clk;
    reg rddata;
    reg rdaddr;
    reg out;
    
    integer i;
    
    initial begin
        clk <= 0;
        start <= 0;
        reset <= 0;
        #20;
        start <= 1;
        
        // value setting in global buffers
        for(i = 0; i < 2**(L_RAM_SIZE+1); i = i+1) begin
            gb[i] = $urandom_range(2**30,2**30+2**26);
        end
    end
    
    // assume different address is used for pe_controller
    always @(rdaddr) begin
        rddata= gb[rdaddr];
    end
    
    always #5 clk = ~clk;

    pe_controller PE_CONTROLLER (
        .start(start),
        .reset(reset),
        .clk(clk),
        .rddata(rddata),
        .rdaddr(rdaddr),
        .out(out)
    );

endmodule
