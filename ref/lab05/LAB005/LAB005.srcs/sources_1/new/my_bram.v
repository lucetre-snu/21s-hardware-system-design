`timescale 1ns / 1ps



module my_bram #(
    parameter integer BRAM_ADDR_WIDTH = 15, // 4x8192
    parameter INIT_FILE = "input.txt",
    parameter OUT_FILE = "output.txt"
)(
    input wire [BRAM_ADDR_WIDTH-1:0] BRAM_ADDR,
    input wire BRAM_CLK,
    input wire [31:0] BRAM_WRDATA,
    output wire [31:0] BRAM_RDDATA,
    input wire BRAM_EN,
    input wire BRAM_RST,
    input wire [3:0] BRAM_WE,
    input wire done
);
    reg [31:0] mem[0:8191];
    wire [BRAM_ADDR_WIDTH-3:0] addr = BRAM_ADDR[BRAM_ADDR_WIDTH-1:2];
    reg [31:0] dout,buffer1,buffer2;
    
    reg [7:0] buff [0:3];
    reg [12:0] addbuff [0:3];
    reg [3:0] check;
    
    assign BRAM_RDDATA = dout;
    
    // code for reading & writing
    initial begin
      if (INIT_FILE != "") begin
// read data from INIT_FILE and store them into mem
        $readmemh(INIT_FILE, mem );
       end
      wait (done==1'b1)
// write data stored in mem into OUT_FILE
      $writememh(OUT_FILE, mem,0 );


    end
//code for BRAM implementation
   

  always @(posedge BRAM_CLK or posedge BRAM_RST)begin
    
    if(BRAM_RST==1)begin 
    dout<= 0;
    buffer1<=0;
    buffer2<=0;
    end
    else begin
      buffer2<=buffer1;
      dout<=buffer2;
      if(check[0]==1) mem[addbuff[0]][7:0]   <= buff[0];
      if(check[1]==1) mem[addbuff[1]][15:8]  <= buff[1];
      if(check[2]==1) mem[addbuff[2]][23:16] <= buff[2];
      if(check[3]==1) mem[addbuff[3]][31:24] <= buff[3];   
    end
    
    if(BRAM_EN ==1 && BRAM_RST != 1)begin///
      if(BRAM_WE == 4'b0000 ) begin   
          buffer1<= mem[addr];      
      end
      if(BRAM_WE[0] == 4'b1) begin
        buff[0] <= BRAM_WRDATA[7:0];
        addbuff[0] <= addr;
        check[0] <=1;
       // mem[addr][7:0] <= BRAM_WRDATA[7:0];
      end
      if(BRAM_WE[1] == 4'b1) begin
        buff[1] <= BRAM_WRDATA[15:8];
        addbuff[1] <= addr;
        check[1] <=1;
      //  mem[addr][15:8] <= BRAM_WRDATA[15:8];
      end
      if(BRAM_WE[2] == 4'b1) begin
        buff[2] <= BRAM_WRDATA[23:16];
        addbuff[2] <= addr;
        check[2] <= 1;
     //   mem[addr][23:16] <= BRAM_WRDATA[23:16];
      end
      if(BRAM_WE[3] == 4'b1) begin
        buff[3] <= BRAM_WRDATA[31:24];
        addbuff[3] <= addr;
        check[3] <=1;
   //     mem[addr][31:24] <= BRAM_WRDATA[31:24];
      end
    end////
    
 
  end




endmodule
