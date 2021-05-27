`timescale 1ns / 1ps



module tb_pe();

  reg clk;
  reg aresetn;
  reg [31:0] ain;
  reg [31:0] din;
  reg [5:0]  addr;
  reg we;
  reg valid;
  wire dvalid;
  wire [31:0] dout;
  
  
  integer i;
  
  initial begin
    clk = 0;
    valid=0;
    addr=0;
    aresetn =1;
    
    we=1;
    for(i=0 ; i<16 ; i=i+1)begin
        din = $urandom%(2**31);
        din = {7'b0100000, din[24:0]};
        #10;
        addr=addr+1;
    end
    
    we=0;
    addr=0;
    #10;
    
    for(i=0; i<16; i=i+1)begin
        ain = $urandom%(2**31);
        ain = {7'b0100000, ain[24:0]};
        valid=1;
        #10 valid =0;
        wait(dvalid) addr=addr+1;
        #10;
    end
    
  
  end
  
  
  always #5 clk = ~clk;
  
  my_pe pe(
  
    .aclk(clk),
    .aresetn(aresetn),
    .ain(ain),
    .din(din),
    .addr(addr),
    .we(we),
    .valid(valid),
    .dvalid(dvalid),
    .dout(dout)
  );
  





endmodule
