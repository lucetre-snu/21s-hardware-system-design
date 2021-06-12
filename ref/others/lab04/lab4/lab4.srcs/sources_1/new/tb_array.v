`timescale 1ns / 1ps



module tb_array();

    reg [2:0] cm;
    reg [31:0] a0;
    reg [31:0] a1;
    reg [31:0] a2;
    reg [31:0] a3;
    reg [31:0] b0;
    reg [31:0] b1;
    reg [31:0] b2;
    reg [31:0] b3;
    wire [31:0] do0;
    wire [31:0] do1;
    wire [31:0] do2;
    wire [31:0] do3;
    wire [3:0] over;
    
    integer i;
    
    initial begin
        for(i=0; i<64; i=i+1)begin
            a0 <= $urandom%(2**5);
            a1 <= $urandom%(2**5);
            a2 <= $urandom%(2**5);
            a3 <= $urandom%(2**5);
            b0 <= $urandom%(2**5);
            b1 <= $urandom%(2**5);
            b2 <= $urandom%(2**5);
            b3 <= $urandom%(2**5);
            cm <= $urandom%(5);

            #20;       
        end
      
    end
    
    adder_array UUT(
        .cmd(cm),
        .Ain0(a0),
        .Ain1(a1),
        .Ain2(a2),
        .Ain3(a3),
        .Bin0(b0),
        .Bin1(b1),
        .Bin2(b2),
        .Bin3(b3),
        .Dout0(do0),
        .Dout1(do1),
        .Dout2(do2),
        .Dout3(do3),
        .overflow(over)
    );


endmodule
