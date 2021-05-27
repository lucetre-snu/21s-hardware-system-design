`timescale 1ns / 1ps
module my_pe_controller #(
    parameter L_RAM_SIZE = 6,
    parameter BITWIDTH = 32
)(
    input start,
    input reset,
    input clk,
    output [L_RAM_SIZE:0] rdaddr,
    input [BITWIDTH-1:0] rddata,
    output [BITWIDTH-1:0] out,
    output done
);
    parameter DONE_LATENCY = 5;
    parameter S_IDLE = 2'd0, S_LOAD = 2'd1, S_CALC = 2'd2, S_DONE = 2'd3;
    reg [1:0] present_state, next_state;
    
    reg [L_RAM_SIZE:0] cnt_load, cnt_calc;
    reg [2:0] cnt_done;
    reg rst_cnt_load, rst_cnt_calc, rst_cnt_done;
    
    reg [BITWIDTH-1:0] gb1[0:2**L_RAM_SIZE-1];
    reg [BITWIDTH-1:0] gb2[0:2**L_RAM_SIZE-1];
    
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg valid = 0;
    
    wire [BITWIDTH-1:0] dout;
    wire dvalid;
    
    always @(posedge clk or posedge reset)
        if (reset) present_state <= S_IDLE; else present_state <= next_state;
        
    always @(posedge clk or posedge rst_cnt_load) 
        if (rst_cnt_load) cnt_load <= 0; else cnt_load <= cnt_load + 1;
    always @(posedge clk or posedge rst_cnt_calc) 
        if (rst_cnt_calc) cnt_calc <= 0;
    always @(posedge clk or posedge rst_cnt_done) 
        if (rst_cnt_done) cnt_done <= 0; else cnt_done <= cnt_done + 1;
    
    always @(*)
        case (present_state)
            S_IDLE: if (start)                              next_state = S_LOAD; else next_state = present_state;
            S_LOAD: if (cnt_load == 2**(L_RAM_SIZE+1)-1)    next_state = S_CALC; else next_state = present_state;
            S_CALC: if (cnt_calc == 2**L_RAM_SIZE)          next_state = S_DONE; else next_state = present_state;
            S_DONE: if (cnt_done == DONE_LATENCY-1)         next_state = S_IDLE; else next_state = present_state;
        endcase
    
    always @(*)
        case (present_state)
            S_LOAD: rst_cnt_load <= 0;
            S_CALC: rst_cnt_calc <= 0;
            S_DONE: rst_cnt_done <= 0;
            default: begin
                rst_cnt_load <= 1; 
                rst_cnt_calc <= 1;
                rst_cnt_done <= 1;
            end
        endcase
        
    always @(rddata or present_state)
        if (present_state == S_LOAD) begin
            if (cnt_load < 2**L_RAM_SIZE) gb1[cnt_load] = rddata; else gb2[cnt_load-2**L_RAM_SIZE] = rddata;
        end
    
    always @(dvalid or present_state)
        if (present_state == S_CALC) begin
            if (dvalid) begin
                cnt_calc <= cnt_calc + 1;
                valid <= 0;
            end
            else begin
                ain <= gb1[cnt_calc];
                bin <= gb2[cnt_calc];
                valid <= 1;
            end
        end
    
    assign rdaddr = present_state == S_LOAD ? cnt_load : 0;
    assign out = present_state == S_DONE ? dout : 0;
    assign done = present_state == S_DONE ? 1 : 0;
    
    my_pe #(L_RAM_SIZE, BITWIDTH) MY_PE(
        .aclk(clk),
        .aresetn(~reset),
        .ain(ain),
        .bin(bin),
        .valid(valid),
        .dvalid(dvalid),
        .dout(dout)
    );

endmodule