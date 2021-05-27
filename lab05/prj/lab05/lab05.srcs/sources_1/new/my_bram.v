`timescale 1ns / 1ps
module my_bram #(
    parameter integer BRAM_ADDR_WIDTH = 15,
    parameter INIT_FILE = "input.txt",
    parameter OUT_FILE = "output.txt"
)(
    input wire [BRAM_ADDR_WIDTH-1:0] BRAM_ADDR,
    input wire BRAM_CLK,
    input wire [31:0] BRAM_WRDATA,
    output reg [31:0] BRAM_RDDATA,
    input wire BRAM_EN,
    input wire BRAM_RST,
    input wire [3:0] BRAM_WE,
    input wire done
);
    reg [31:0] mem[0:8191];
    wire [BRAM_ADDR_WIDTH-3:0] addr = BRAM_ADDR[BRAM_ADDR_WIDTH-1:2];
    reg [31:0] dout;
    
    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, mem);
        end
        wait (done) begin
            $writememh(OUT_FILE, mem);
        end
    end
    
    always @(posedge BRAM_CLK or posedge BRAM_RST) begin
        if (BRAM_RST) begin 
            BRAM_RDDATA <= 0;
        end
        if (BRAM_EN) begin
            if (BRAM_WE) begin
                if (BRAM_WE[0]) mem[addr][7:0] <= BRAM_WRDATA[7:0];
                if (BRAM_WE[1]) mem[addr][15:8] <= BRAM_WRDATA[15:8];
                if (BRAM_WE[2]) mem[addr][23:16] <= BRAM_WRDATA[23:16];
                if (BRAM_WE[3]) mem[addr][31:24] <= BRAM_WRDATA[31:24]; 
            end
            else begin
                dout <= mem[addr];
                BRAM_RDDATA <= dout;
            end
        end
    end
endmodule