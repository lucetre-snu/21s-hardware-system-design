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
    output [BITWIDTH-1:0] sth2,
    output sth_dvalid
);
    parameter DONE_LATENCY = 5;
    parameter S_IDLE = 2'd0, S_LOAD = 2'd1, S_CALC = 2'd2, S_DONE = 2'd3;
    reg [1:0] present_state, next_state;
    
    reg [L_RAM_SIZE:0] counter;
    reg counter_rst_load;
    reg counter_rst_calc;
    reg [L_RAM_SIZE:0] counter_calc = 0;
    reg [2:0] counter_done;
    
    reg [BITWIDTH-1:0] gb1[0:2**L_RAM_SIZE-1];
    reg [BITWIDTH-1:0] gb2[0:2**L_RAM_SIZE-1];
    reg done_load = 0;
    reg done_calc = 0;
    reg done_done = 0;
    reg [BITWIDTH-1:0]done_out = 0;
    
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg valid = 0;
    wire dvalid;
    wire [BITWIDTH-1:0] dout;
    
    
    always @(posedge clk or posedge counter_rst_load) begin
        if (counter_rst_load) counter <= 0; else counter <= counter+1;
    end
    
    always @(posedge clk or posedge counter_rst_calc) begin
        if (counter_rst_calc) counter_calc <= 0;
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) present_state <= S_IDLE; else present_state <= next_state;
    end
    
    always @(posedge clk) begin
        if (present_state == S_DONE) counter_done <= counter_done+1; else counter_done <= 0;
    end

    always @(*) begin
        case (present_state)
            S_IDLE: if (start)                          next_state = S_LOAD; else next_state = present_state;
            S_LOAD: if (counter == 2**(L_RAM_SIZE+1)-1) next_state = S_CALC; else next_state = present_state;
            S_CALC: if (counter_calc == 2**L_RAM_SIZE)  next_state = S_DONE; else next_state = present_state;
            S_DONE: if (counter_done == DONE_LATENCY+1) next_state = S_IDLE; else next_state = present_state;         
        endcase
    end
    
    always @(*) begin
        case (present_state)
            S_LOAD: counter_rst_load <= 0;
            S_CALC: counter_rst_calc <= 0;
            default: begin
                 counter_rst_load <= 1; 
                 counter_rst_calc <= 1; 
            end
        endcase
    end
            
    always @(rddata or present_state) begin
        if (present_state == S_LOAD) begin
            if (counter < 2**L_RAM_SIZE) gb1[counter] = rddata; else gb2[counter-2**L_RAM_SIZE] = rddata;
        end
    end
    
    integer i;
    always @(dvalid or present_state) begin
        if (present_state == S_CALC) begin
            if (dvalid == 1) begin
                valid <= 0;
                counter_calc <= counter_calc+1;
            end
            else begin
                ain <= gb1[counter_calc];
                bin <= gb2[counter_calc];
                valid <= 1;
            end
        end
    end
    
    assign rdaddr = counter;
    assign out = present_state == S_DONE ? dout : 0;
    assign done = present_state == S_DONE ? 1 : 0;
    assign state = present_state;
    assign sth = ain;
    assign sth1 = bin;
    assign sth2 = dout;
    assign sth_dvalid = dvalid;
    
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