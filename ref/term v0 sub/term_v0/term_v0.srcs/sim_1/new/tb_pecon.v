`timescale 1ns / 1ps



module tb_pe();

reg start;
reg areset;
reg clk;
reg [31:0] rddata; 
wire [8:0] raddr;
wire done;
wire [31:0] w0;
wire [31:0] w1;
wire [31:0] w2;
wire [31:0] w3;
wire [31:0] w4;
wire [31:0] w5;
wire [31:0] w6;
wire [31:0] w7;
wire [31:0] w8;
wire [31:0] w9;
wire [31:0] w10;
wire [31:0] w11;
wire [31:0] w12;
wire [31:0] w13;
wire [31:0] w14;
wire [31:0] w15;





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


for(i=0; i<272; i=i+1)begin
     rddata = $urandom%(2**31);
     rddata = {7'b0100000, rddata[24:0]};
     #10;
     
end
rddata = 0;

#3000;
areset =0;







end



always #5 clk = ~clk;




pe_control pe(
.start(start),
.areset(areset),
.clk(clk),
.rddata(rddata),
.raddr(raddr),
.done(done),
.wrdata0(w0),
.wrdata1(w1),
.wrdata2(w2),
.wrdata3(w3),
.wrdata4(w4),
.wrdata5(w5),
.wrdata6(w6),
.wrdata7(w7),
.wrdata8(w8),
.wrdata9(w9),
.wrdata10(w10),
.wrdata11(w11),
.wrdata12(w12),
.wrdata13(w13),
.wrdata14(w14),
.wrdata15(w15)

//.dvalid(dv),
//.state(state)
);


endmodule
