`timescale 1ns / 1ps



module tb_bram();
  
  reg clk;
  wire [31:0]b1_out;
  wire [31:0]b2_out;
  reg [3:0] we;
  reg [14:0]addr;
  reg done;
  reg ars;
  
  
  integer i;

 
  
  
initial begin
    clk <=0;
    addr<=0;
    we<=0;
    done<=0;
    ars<=0;
    
    
    #30 we<=4'b1111;
    #10 we<=0;
    for(i=1; i<8192; i=i+1)begin
      addr<= addr+ 15'd4;
      #30;
      we<=4'b1111;
      #10 we<=0;
      #25;
    end
    done<=1'b1;
    #20
    ars<=1;
end
  



  
  always #5 clk= ~clk;
  
  my_bram #(
  15,"input.txt","output1.txt")
  bram1(
    .BRAM_ADDR(addr),
    .BRAM_CLK(clk),
    .BRAM_WRDATA(0),
    .BRAM_RDDATA(b1_out),
    .BRAM_EN(1'b1),
    .BRAM_RST(ars),
    .BRAM_WE(0),
    .done(0)
  );
  
  my_bram #(15,"","output.txt"
  )bram2(
    .BRAM_ADDR(addr),
    .BRAM_CLK(clk),
    .BRAM_WRDATA(b1_out),
    .BRAM_RDDATA(b2_out),
    .BRAM_EN(1'b1),
    .BRAM_RST(ars),
    .BRAM_WE(we),
    .done(done)
  );

endmodule
