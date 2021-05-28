`timescale 1ns / 1ps

module tb_mm_multiplier #(
    parameter L_RAM_SIZE = 3,
    parameter BITWIDTH = 32,
    parameter INFILE = "global_buffer_in.txt",
    parameter OUTFILE = "global_buffer_out.txt"
)();
    localparam MATRIX_SIZE = 2**(L_RAM_SIZE*2);
    localparam VECTOR_SIZE = 2**(L_RAM_SIZE);
    reg [BITWIDTH-1:0] rdgb[0:MATRIX_SIZE*2-1];
    reg [BITWIDTH-1:0] wrgb[0:MATRIX_SIZE-1];
    wire [BITWIDTH-1:0] rddata;
    wire [BITWIDTH-1:0] wrdata;
    wire [2*L_RAM_SIZE:0] rdaddr;
    wire [2*L_RAM_SIZE:0] wraddr;
    wire done, we;
    
    reg start, clk, reset;
//    integer i;
//    initial begin
//        for(i = 0; i < MATRIX_SIZE; i = i+1) begin
//            rdgb[i]               = $urandom_range(2**30, 2**30+2**24);
//            rdgb[MATRIX_SIZE + i] = $urandom_range(2**30, 2**30+2**24);
//        end
//        $writememh(INFILE, rdgb);
//    end
    assign rddata = start ? rdgb[rdaddr] : 0;
    initial begin
        $readmemh(INFILE, rdgb);
        clk <= 0;
        start <= 0; reset <= 1;
        #10 start <= 1; reset <= 0;
    end
    always @(*)
        if (we) wrgb[wraddr] = wrdata;
    always @(posedge done)
        $writememh(OUTFILE, wrgb);
    
    always #1 clk = ~clk;
    mm_multiplier #(L_RAM_SIZE, BITWIDTH) MM_MULTIPLIER(
        .start(start),
        .reset(reset),
        .clk(clk),
        .rdaddr(rdaddr),
        .rddata(rddata),
        .we(we),
        .wraddr(wraddr),
        .wrdata(wrdata),
        .done(done)
    );
endmodule