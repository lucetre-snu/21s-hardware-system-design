`timescale 1ns / 1ps

module tb_float_fused();
    parameter BITWIDTH = 32;

    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg [BITWIDTH-1:0] cin;
    reg rst;
    reg clk;
    wire [BITWIDTH-1:0] res;
    wire dvalid;
    
    integer i;
    
    initial begin
        clk<=0;
        rst<=0;
        
        for(i=0; i<32; i=i+1) begin
            ain = $urandom_range(2**30,2**30+2**26);
            bin = $urandom_range(2**30,2**30+2**26);
            cin = $urandom_range(2**30,2**30+2**26);
            #20;
        end
        
    end
    
    always #5 clk = ~clk;
    
    floating_point_MAC UUT(
        .aclk(clk),
        .aresetn(~rst),
        .s_axis_a_tvalid(1'b1),
        .s_axis_b_tvalid(1'b1),
        .s_axis_c_tvalid(1'b1),
        .s_axis_a_tdata(ain),
        .s_axis_b_tdata(bin),
        .s_axis_c_tdata(cin),
        .m_axis_result_tvalid(dvalid), 
        .m_axis_result_tdata(res)
    );
        
endmodule