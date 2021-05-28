`timescale 1ns / 1ps

module tb_vv_multiplier #(
    parameter L_RAM_SIZE = 3,
    parameter BITWIDTH = 32,
    parameter FILENAME = "global_buffer_vv.txt"
)();
    localparam VECTOR_SIZE = 2**(L_RAM_SIZE);
    reg [BITWIDTH-1:0] gb[0:2*VECTOR_SIZE-1];
    wire [BITWIDTH-1:0] rddata;
    wire [BITWIDTH-1:0] out;
    wire [L_RAM_SIZE:0] rdaddr;
    wire done;
    
    reg start, clk, reset;
    integer i;
    initial begin
        for (i = 0; i < VECTOR_SIZE; i = i+1) begin
            gb[i]               = $urandom_range(2**30, 2**30+2**24);
            gb[VECTOR_SIZE + i] = $urandom_range(2**30, 2**30+2**24);
        end
        $writememh(FILENAME, gb);
    end    
    
    assign rddata = start ? gb[rdaddr] : 0;
    initial begin
        $readmemh(FILENAME, gb);
        clk <= 0;
        start <= 0; reset <= 1;
        #10 start <= 1; reset <= 0;
    end
    always #1 clk = ~clk;
    
    vv_multiplier #(L_RAM_SIZE, BITWIDTH) VV_MULTIPLIER(
        .start(start),
        .reset(reset),
        .clk(clk),
        .rdaddr(rdaddr),
        .rddata(rddata),
        .out(out),
        .done(done)
    );

endmodule