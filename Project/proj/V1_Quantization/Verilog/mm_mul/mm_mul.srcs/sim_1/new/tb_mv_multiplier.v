`timescale 1ns / 1ps

module tb_mv_multiplier #(
    parameter L_RAM_SIZE = 3,
    parameter BITWIDTH = 32,
    parameter FILENAME = "global_buffer_mv.txt"
)();
    localparam MATRIX_SIZE = 2**(L_RAM_SIZE*2);
    localparam VECTOR_SIZE = 2**(L_RAM_SIZE);
    reg [BITWIDTH-1:0] gb[0:MATRIX_SIZE+VECTOR_SIZE-1];
    wire [BITWIDTH-1:0] rddata;
    wire [2*L_RAM_SIZE:0] rdaddr;
    wire done;
    
    reg start, clk, reset;
    integer i;
//    initial begin
//        for (i = 0; i < MATRIX_SIZE; i = i+1) begin
//            gb[i] = $urandom_range(2**30, 2**30+2**24);
//        end
//        for (i = 0; i < VECTOR_SIZE; i = i+1) begin
//            gb[MATRIX_SIZE + i] = $urandom_range(2**30, 2**30+2**24);
//        end
//        $writememh(FILENAME, gb);
//    end    
    
    assign rddata = start ? gb[rdaddr] : 0;
    initial begin
        $readmemh(FILENAME, gb);
        clk <= 0;
        start <= 0; reset <= 1;
        #10 start <= 1; reset <= 0;
    end
    always #1 clk = ~clk;
    
    mv_multiplier #(L_RAM_SIZE, BITWIDTH) MV_MULTIPLIER(
        .start(start),
        .reset(reset),
        .clk(clk),
        .rdaddr(rdaddr),
        .rddata(rddata),
        .done(done)
    );

endmodule