`timescale 1ns / 1ps

module my_pe #(
    parameter L_RAM_SIZE = 6,
    parameter BITWIDTH = 32
)
(
    input aclk,
    input aresetn,
    input [BITWIDTH-1:0] ain,
    input [BITWIDTH-1:0] bin,
    input valid,
    output dvalid,
    output [BITWIDTH-1:0] dout
);

    // local reg ( can make overflow )
    reg [BITWIDTH-1:0] psum = 0;
    wire [BITWIDTH-1:0] res;
    
    floating_point_MAC UUT (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axis_a_tvalid(valid),
        .s_axis_b_tvalid(valid),
        .s_axis_c_tvalid(valid),
        .s_axis_a_tdata(ain),
        .s_axis_b_tdata(bin),
        .s_axis_c_tdata(psum),
        .m_axis_result_tvalid(dvalid), 
        .m_axis_result_tdata(res)
    );
  
    always @(dvalid) begin
        if(dvalid == 1) begin
            psum = res;
        end
    end
    
    assign dout = dvalid == 1 ? psum : 0;
    
endmodule