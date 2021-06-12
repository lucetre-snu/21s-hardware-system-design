`timescale 1ns / 1ps



module tb_mul();

    reg [32-1:0] ain;
    reg [32-1:0] bin;
    reg [32-1:0] cin;
    reg clk;
    wire [64-1:0] P;
    wire [48-1:0] pcout;
    
    
    integer i;
    
    initial begin
        clk<=0;
        for(i=0; i<50; i=i+1)begin
          ain = $urandom%(2**31);
          bin = $urandom%(2**31);
          cin = $urandom%(2**31);
          #20;
        end
     end
     
     always #5 clk=~clk;
     
     multadd_0 UUT(
        .CLK(clk),
        .SUBTRACT(1'b0),
        .SCLR(1'b0),
        .CE(1'b1),
        .A(ain),
        .B(bin),
        .C(cin),
        .P(P),
        .PCOUT(pcout)
     );
     
        
endmodule
