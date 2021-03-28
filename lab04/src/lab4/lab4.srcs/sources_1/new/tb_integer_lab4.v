`timescale 1ns / 1ps

module tb_integer_lab4();
    parameter BITWIDTH = 32;

    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg [BITWIDTH-1:0] cin;
    wire [BITWIDTH*2-1:0] res;
    wire [48-1:0] res_cout;
    
    integer i;
    
    initial begin
        for(i=0; i<32; i=i+1) begin
            ain = $urandom%(2**31);
            bin = $urandom%(2**31);
            cin = $urandom%(2**31);
            #20;
        end
        
    end
    
    xbip_multadd_MAC UUT (
        .A(ain),
        .B(bin),
        .C(cin),
        .SUBTRACT(1'b0),
        .P(res),
        .PCOUT(res_cout)
    );

endmodule
