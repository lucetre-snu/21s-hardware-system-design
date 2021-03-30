`timescale 1ns / 1ps

// https://www.xilinx.com/products/intellectual-property/multiply_adder.html#documentation
module tb_int_muladd #(
        parameter BITWIDTH = 32
    )();

    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg [BITWIDTH*2-1:0] cin;
    wire [BITWIDTH*2-1:0] res;
    wire [47:0] res_cout;
    wire dvalid;
    
    integer i;
    initial begin
        for(i = 0; i < 32; i = i+1) begin
            ain = $urandom%(2**31);
            bin = $urandom%(2**31);
            cin = $urandom%(2**31);
            #20;
        end
    end
    
    xbip_multadd_MAC UUT(
        .A(ain),                // input wire [31 : 0] A
        .B(bin),                // input wire [31 : 0] B
        .C(cin),                // input wire [63 : 0] C
        .SUBTRACT(1'b0),        // input wire SUBTRACT
        .P(res),                // output wire [63 : 0] P
        .PCOUT(res_cout)        // output wire [47 : 0] PCOUT
    );
    
endmodule
