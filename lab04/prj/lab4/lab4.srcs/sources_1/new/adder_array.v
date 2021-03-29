`timescale 1ns / 1ps

/* Add Module from lab03 */
module my_add #(
    parameter BITWIDTH = 32
)
(
    input[BITWIDTH-1 : 0] ain,
    input[BITWIDTH-1 : 0] bin,
    output[BITWIDTH-1 : 0] dout,
    output overflow
);
    
    // concatnate (overflow, dout) & detecting overflow
    assign {overflow,dout} = ain + bin;
    
endmodule

/* Adder Array Module for lab04 */
module adder_array (cmd, ain0, ain1, ain2, ain3, bin0, bin1, bin2, bin3, dout0, dout1, dout2, dout3, overflow);

    input [2:0] cmd;
    input [31:0] ain0, ain1, ain2, ain3;
    input [31:0] bin0, bin1, bin2, bin3;
    output [31:0] dout0, dout1, dout2, dout3;
    output [3:0] overflow;
    
    wire [31:0] ain[3:0];
    wire [31:0] bin[3:0];
    wire [31:0] dout[3:0];
    wire overflow_arr[3:0];
    
    assign {ain[0], ain[1], ain[2], ain[3]} = {ain0, ain1, ain2, ain3};       
    assign {bin[0], bin[1], bin[2], bin[3]} = {bin0, bin1, bin2, bin3};

    // for-generate statement
    genvar i;          
    
    generate
        for (i=0; i < 4; i=i+1) begin : gen_my_add
            my_add MY_ADD ( ain[i], bin[i], dout[i], overflow_arr[i]);
        end
    endgenerate
    
    // assign output regarding cmd value
    assign {dout0, dout1, dout2, dout3} = {(cmd == 0) ? dout[0] : 0, (cmd == 1) ? dout[1] : 0, (cmd == 2) ? dout[2] : 0, (cmd == 3) ? dout[3] : 0};
    assign overflow = {(cmd == 0) ? overflow_arr[0] : 0, (cmd == 1) ? overflow_arr[0] : 0, (cmd == 2) ? overflow_arr[0] : 0, (cmd == 3) ? overflow_arr[0] : 0};

endmodule
