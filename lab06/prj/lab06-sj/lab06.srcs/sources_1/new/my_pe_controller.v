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
    output done,
    output [1:0] state,
    output [BITWIDTH-1:0] sth,
    output [BITWIDTH-1:0] sth1,
    output [BITWIDTH-1:0] sth2
);
    parameter S_IDLE = 2'd0, S_LOAD = 2'd1, S_CALC = 2'd2, S_DONE = 2'd3;
    reg [1:0] present_state, next_state;
    
    reg [L_RAM_SIZE:0] counter;
    reg counter_rst;
    
    reg [BITWIDTH-1:0] gb1[0:2**L_RAM_SIZE-1];
    reg [BITWIDTH-1:0] gb2[0:2**L_RAM_SIZE-1];
    reg done_load = 0;
    
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg valid = 0;
    wire [BITWIDTH-1:0] dout;
    wire dvalid;
    
    always @(posedge clk or posedge counter_rst) 
        if (counter_rst) counter <= 0; else counter <= counter+1;
    
    always @(posedge clk or posedge reset)
        if (reset) present_state <= S_IDLE; else present_state <= next_state;
    
    always @(*)
        case (present_state)
            S_IDLE: if (start) next_state = S_LOAD; else next_state = present_state;
            S_LOAD: if (done_load) next_state = S_CALC; else next_state = present_state;
            S_CALC: next_state = present_state;
            S_DONE: ;            
        endcase
    
    always @(*)
        case (present_state)
            S_LOAD:  counter_rst <= 0;
            default: counter_rst <= 1;
        endcase
        
    always @(rddata or present_state)
        if (present_state == S_LOAD) begin
            if (counter < 2**L_RAM_SIZE) gb1[counter] = rddata; else gb2[counter-2**L_RAM_SIZE] = rddata;
            if (counter == 2**(L_RAM_SIZE+1)-1) begin
                done_load = 1;
            end
        end
    
    integer i;
    always @(present_state)
        if (present_state == S_CALC) begin
            for(i = 0; i < 2**L_RAM_SIZE; i = i+1) begin
                ain = gb1[i];
                bin = gb2[i];                
                valid <= 1; wait (dvalid == 1);
                valid <= 0; wait (dvalid == 0);
            end
        end
    
    assign rdaddr = counter;
    assign state = present_state;
    assign sth = ain;
    assign sth1 = bin;
    assign sth2 = dout;
    
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