`timescale 1ns / 1ps

module tb_adder_array();
    reg [2:0] cmd;
    reg [31:0] ain0, ain1, ain2, ain3;
    reg [31:0] bin0, bin1, bin2, bin3;
    wire [31:0] dout0, dout1, dout2, dout3;
    wire [3:0] overflow;
    
    integer i, j;
    
    initial begin
        for(j=0; j<4; j=j+1) begin
            cmd <= j;
            for(i=0; i<8; i=i+1) begin
                ain0 = $urandom%(2**31) + ($urandom%2 << 31);
                ain1 = $urandom%(2**31) + ($urandom%2 << 31);
                ain2 = $urandom%(2**31) + ($urandom%2 << 31);
                ain3 = $urandom%(2**31) + ($urandom%2 << 31);
                
                bin0 = $urandom%(2**31) + ($urandom%2 << 31);
                bin1 = $urandom%(2**31) + ($urandom%2 << 31);
                bin2 = $urandom%(2**31) + ($urandom%2 << 31);
                bin3 = $urandom%(2**31) + ($urandom%2 << 31);
                #20;
            end
        end
    end
    
    adder_array ADDER_ARRAY (
        .cmd(cmd), 
        .ain0(ain0), 
        .ain1(ain1), 
        .ain2(ain2), 
        .ain3(ain3), 
        .bin0(bin0), 
        .bin1(bin1), 
        .bin2(bin2),
        .bin3(bin3), 
        .dout0(dout0), 
        .dout1(dout1), 
        .dout2(dout2), 
        .dout3(dout3), 
        .overflow(overflow)
    );

endmodule