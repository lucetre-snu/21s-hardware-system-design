`timescale 1ns / 1ps
module my_pe #(
    parameter L_RAM_SIZE = 6,
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
    
    floating_point_MAC UUT(
      .aclk(aclk),                                  // input wire aclk
      .aresetn(aresetn),                            // input wire aresetn
      .s_axis_a_tvalid(valid),                      // input wire s_axis_a_tvalid
      .s_axis_a_tdata(ain),                         // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(valid),                      // input wire s_axis_b_tvalid
      .s_axis_b_tdata(bin),                         // input wire [31 : 0] s_axis_b_tdata
      .s_axis_c_tvalid(valid),                      // input wire s_axis_c_tvalid
      .s_axis_c_tdata(cin),                         // input wire [31 : 0] s_axis_c_tdata
      .m_axis_result_tvalid(dvalid),                // output wire m_axis_result_tvalid
      .m_axis_result_tdata(res)                     // output wire [31 : 0] m_axis_result_tdata
    );
    
    always @(posedge aclk) begin
        if(dvalid == 1) cin = res;
    end
    assign dout = dvalid ? res : 0;

endmodule