`timescale 1ns / 1ps



module tb_pe();

reg start;
reg areset;
reg clk;
reg [31:0] rddata; 
wire [5:0] raddr;
wire done;
wire [31:0] wrdata;
//wire dv;
//wire[2:0] state;

integer i;


initial begin

clk =0;
areset = 1;

#10;

start =1;
#10 start= 0;
#5;


for(i=0; i<32; i=i+1)begin
     rddata = $urandom%(2**31);
     rddata = {7'b0100000, rddata[24:0]};
     #10;
     
end
rddata = 0;






end



always #5 clk = ~clk;




pe_control pe(
.start(start),
.areset(areset),
.clk(clk),
.rddata(rddata),
.raddr(raddr),
.done(done),
.wrdata(wrdata)
//.dvalid(dv),
//.state(state)
);


endmodule
