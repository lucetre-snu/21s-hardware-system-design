`timescale 1ns / 1ps

module tb_my_bram #(
    parameter integer BRAM_ADDR_WIDTH = 15,
    parameter INIT_FILE = "input.txt"
)();
    reg [31:0] BRAM_INIT[0:8191];
    reg [BRAM_ADDR_WIDTH-1:0] BRAM_ADDR;
    reg BRAM_CLK;
    reg BRAM_RST;
    reg [3:0] BRAM_WE;
    reg done;
    wire [31:0] BRAM_WRDATA1, BRAM_RDDATA1;
    wire [31:0] BRAM_WRDATA2, BRAM_RDDATA2;
    integer i;
    
    initial begin
        BRAM_ADDR <= 0;
        BRAM_CLK <= 1;
        BRAM_RST <= 0;
        BRAM_WE <= 0;
        done <= 0;
        for (i = 0; i < 8192; i = i + 1) begin
            BRAM_INIT[i][31:0] <= i;
        end
        #10 $writememh(INIT_FILE, BRAM_INIT);
        
        for (i = 0; i <= 8192; i = i + 1) begin
            BRAM_ADDR <= i << 2; #20;
            BRAM_WE <= 4'b1111; #10;
            BRAM_WE <= 0; #30;
        end
        done <= 1'b1; #30;
        BRAM_RST <= 1'b1;
    end
    
    always #5 BRAM_CLK = ~BRAM_CLK;
    assign BRAM_WRDATA2 = BRAM_RDDATA1;
    
    my_bram MY_BRAM1 (
        .BRAM_ADDR(BRAM_ADDR),
        .BRAM_CLK(BRAM_CLK),
        .BRAM_WRDATA(BRAM_WRDATA1),
        .BRAM_RDDATA(BRAM_RDDATA1),
        .BRAM_EN(1'b1),
        .BRAM_RST(BRAM_RST),
        .BRAM_WE(0),
        .done(0)
    );
    my_bram #(.INIT_FILE("")) MY_BRAM2 (
        .BRAM_ADDR(BRAM_ADDR),
        .BRAM_CLK(BRAM_CLK),
        .BRAM_WRDATA(BRAM_WRDATA2),
        .BRAM_RDDATA(BRAM_RDDATA2),
        .BRAM_EN(1'b1),
        .BRAM_RST(BRAM_RST),
        .BRAM_WE(BRAM_WE),
        .done(done)
    );
endmodule
