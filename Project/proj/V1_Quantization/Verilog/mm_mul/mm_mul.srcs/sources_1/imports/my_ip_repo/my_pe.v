`timescale 1ns / 1ps

module my_pe #(
    parameter L_RAM_SIZE = 3,
    parameter BITWIDTH = 32
)(
    input aclk,
    input aresetn,
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input valid,
    output dvalid,
    output [BITWIDTH-1:0] dout
);
    reg [BITWIDTH-1:0] cin = 0;
    wire [BITWIDTH-1:0] res;
   
    assign dout = dvalid ? res : 0;
   
    integer_MAC UUT(
      .aclk(aclk),
      .aresetn(aresetn),
      .valid(valid),
      .ain(ain),
      .bin(bin),
      .cin(cin),
      .dvalid(dvalid),
      .res(res)
    );
    
    always @(posedge aclk)
        if (!aresetn)       cin <= 0;
        else if (dvalid)    cin <= res;
        else                cin <= cin;

endmodule