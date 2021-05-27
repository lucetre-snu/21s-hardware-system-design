`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module my_pe #(
    parameter L_RAM_SIZE = 6
    )
(
    // clk/reset
    input aclk,
    input aresetn,
    // port A
    input [31:0] ain,
    // peram -> port B
    input [31:0] din,
    input [L_RAM_SIZE-1:0] addr,
    input we,
    // integrated valid signal
    input valid,
    // computation result
    output dvalid,
    output [31:0] dout
);

(* ram_style = "block" *) reg [31:0] peram [0:2**L_RAM_SIZE - 1]; // local register
wire [31:0] psum;
reg [31:0] psumreg=0;
reg [31:0] bin=0;
reg clr=0;
wire aclr;
integer i;
wire clk;

assign clk =~aclk;

assign dout = psum;


floating_point_0 fp(
.aclk(aclk),
.aresetn(aresetn),
.s_axis_a_tvalid(valid),
.s_axis_b_tvalid(valid),
.s_axis_c_tvalid(valid),
.s_axis_a_tdata(ain),
.s_axis_b_tdata(bin),
.s_axis_c_tdata(psumreg),
.m_axis_result_tvalid (dvalid),
.m_axis_result_tdata (psum)
     );
     

always@(posedge clk)begin

  if(aresetn==0)begin
    psumreg<=0;
    bin<=0;
    for(i=0; i<64; i=i+1) peram[i]<=0;
  end
  
  if(dvalid==1)begin
    psumreg <=psum;
  end

  if(we==1)begin
    peram[addr] <= din;
  end
  else if(we==0)begin
     bin <= peram[addr];    
  end
  
end

endmodule
