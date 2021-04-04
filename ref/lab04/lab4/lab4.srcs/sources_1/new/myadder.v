`timescale 1ns / 1ps



module myadder (
    input [32-1:0] ain,
    input [32-1:0] bin,
    output [32-1:0] dout,
    output overflow
    

    );
    assign {overflow,dout} = ain+bin;
endmodule
