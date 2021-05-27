`timescale 1ns / 1ps

module my_pearray#(
    parameter integer BRAM_ADDR_WIDTH = 32,
    parameter integer BRAM_DATA_WIDTH = 32,
    parameter integer BRAM_WE_WIDTH = 4,
    parameter MSIZE = 4,
    parameter VSIZE = 4
)
(
    input start,
    output done,
    input S_AXI_ACLK,
    input S_AXI_ARESETIN,
    
    output [BRAM_ADDR_WIDTH-1:0]BRAM_ADDR,
    output [BRAM_DATA_WIDTH-1:0]BRAM_WRDATA,
    output [BRAM_WE_WIDTH-1:0]BRAM_WE,
    output BRAM_CLK,
    input [BRAM_DATA_WIDTH-1:0]BRAM_RDDATA,
    
   output [8:0] addrr
 //   output p

    

    );
    
    clk_wiz_0 u_clk_180 (.clk_out1(BRAM_CLK), .clk_in1(S_AXI_ACLK));
    

    
    reg [BRAM_ADDR_WIDTH-1:0]counter;
    reg [BRAM_ADDR_WIDTH-1:0]size;
    reg startload;
    reg pe_start1;
    reg pe_start2;
    wire pe_done;
    reg pe_start3;
    reg pe_start4;
    
    wire [31:0]pe_dout;
    
    reg [BRAM_ADDR_WIDTH-1:0] addr;
    reg [BRAM_DATA_WIDTH-1:0] wrdata;
    reg [BRAM_ADDR_WIDTH-1:0] addr1;
    reg [BRAM_ADDR_WIDTH-1:0] addr2;
    reg [BRAM_WE_WIDTH-1:0] we;

    wire reset;
    assign reset = ~S_AXI_ARESETIN;

   
    reg flag;
    reg done1;
    
    integer sizeparam = (2**(MSIZE+VSIZE)) + (2**VSIZE) -1'b1;
    
    assign done = done1;
    assign BRAM_ADDR = (we == 4'b1111)? addr: counter;
    assign BRAM_WRDATA =  wrdata;
    assign BRAM_WE = we;
    


initial begin
    size <=0;
    counter <=0;
    pe_start1<=0;
    pe_start2<=0;
   
    addr <=0;
    addr1<=1;
    flag<=0;
    wrdata<=0;
    we<=0;
    
   
end


 always@(posedge S_AXI_ACLK)begin

        
        if(reset==1)begin
            startload <=0;
            pe_start1 <=0;
        end
         if(start==1)begin
            startload <=1;
            pe_start1<=1;
        end
        
        if(pe_start1 ==1) pe_start1 <= 0;
        
        if(size == sizeparam) startload <= 0;

 end
    
//    assign pp = flag;



    always@(posedge S_AXI_ACLK)begin
        if(reset==1)begin
            counter <=0;
            size <= 0;
            pe_start2 <=0;       
           
        end
        
    
        if(startload ==1)begin
            counter <= counter + 32'd4;
            size <= size + 32'd1;
            if(pe_start1==1) pe_start2 <= 1; else pe_start2 <= 0;
        
        end
        else begin
            counter <= 0;
            size <= 0;
        end   
    
    
    end




    always@(posedge S_AXI_ACLK)begin
        
        if(reset==1)begin

            we <=0;
            flag <=0;
            addr<=0;
            addr1 <=0;
            addr2<=0;
        end
    
         
      
        if(pe_done ==1)begin
           we <= 4'b1111;
           wrdata <= pe_dout;
           addr1<= addr1 + 32'd4;
           addr2 <= addr1;
           addr <= addr2;
           flag<=1;

        end
       else if(flag==1)begin
        done1 <= 1;
       flag <=0;
       end else begin
           we <= 4'b0000;
           wrdata <= pe_dout;
           addr1<= 0;
           addr <= 0;
           addr2<=0;
           done1<=0;
        end
        
    
    end
    
pe_control #( 
.MSIZE(MSIZE),
.VSIZE(VSIZE)
)PE(
    .start(start),
    .areset(S_AXI_ARESETIN),
    .clk(S_AXI_ACLK),
    .rddata(BRAM_RDDATA),
    .raddr(addrr),
    .done(pe_done),
    .wrdata0(pe_dout)
);
    
    
    
endmodule
  