`timescale 1ns / 1ps

module tb_add();
  parameter BITWIDTH =32;
  
  reg [BITWIDTH-1:0] ain;
  reg [BITWIDTH-1:0] bin;
  wire [BITWIDTH-1:0] dout;
  wire overflow;
  
  integer i;
  initial begin
  for(i=0; i<32; i=i+1)begin
    ain = $urandom%(2**31);
    bin = $urandom%(2**31);
    #10;
   end
   end
   
   my_add #(BITWIDTH) MY_ADD(
    .ain(ain),
    .bin(bin),
    .dout(dout),
    .overflow(overflow)
    );
    endmodule