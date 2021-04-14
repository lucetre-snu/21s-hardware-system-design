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
    reg done_calc = 0;
    reg done_done = 0;
    
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg [BITWIDTH-1:0] done_out;
    reg valid = 0;
    wire [BITWIDTH-1:0] dout;
    wire dvalid;
    
    always @(posedge clk or posedge counter_rst) begin
        if (counter_rst) counter <= 0; else counter <= counter+1;
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) present_state <= S_IDLE; 
        else begin
            present_state <= next_state;
        end
    end
    
    always @(*) begin
        case (present_state)
            S_IDLE: if (start)     next_state = S_LOAD; else next_state = present_state;
            S_LOAD: if (done_load) next_state = S_CALC; else next_state = present_state;
            S_CALC: if (done_calc) next_state = S_DONE; else next_state = present_state;
            S_DONE: if (done_done) next_state = S_IDLE; else next_state = present_state;         
        endcase
    end
    
    always @(*) begin
        case (present_state)
            S_LOAD: counter_rst <= 0; 
            default: counter_rst <= 1;
        endcase
    end
    
    always @(*) begin
        case (present_state)
            S_IDLE: begin done_done <= 0; end
            S_LOAD: ;
            S_CALC: begin done_load <= 0; end
            S_DONE: begin done_calc <= 0; end
        endcase
    end
            
    always @(rddata or present_state) begin
        if (present_state == S_LOAD) begin
            if (counter < 2**L_RAM_SIZE) gb1[counter] = rddata; else gb2[counter-2**L_RAM_SIZE] = rddata;
            if (counter == 2**(L_RAM_SIZE+1)-1) begin
                done_load <= 1;
            end
        end
    end
    
    integer i,j;
    always @(present_state) begin
        if (present_state == S_CALC) begin
//            for(i = 0; i < 2**L_RAM_SIZE; i = i+1) begin
//                ain = gb1[i];
//                bin = gb2[i];                
//                valid <= 1; wait (dvalid == 1);
//                valid <= 0; wait (dvalid == 0);
//            end
            
            for(i = 0; i < 2**L_RAM_SIZE; i = i+1) begin
                if(i != 0) begin
                    wait (dvalid == 1);
                    wait (dvalid == 0);
                end
                
                ain = gb1[i];
                bin = gb2[i];
                
                for(j = 0; j < 3; j = j+1) begin
                    wait(clk == 1);
                    wait(clk == 0);
                end
                valid <= 1;
                for(j = 0; j < 2; j = j+1) begin
                    wait(clk == 1);
                    wait(clk == 0);
                end
                valid <= 0;
                
                if(i == 2**L_RAM_SIZE-1) begin
                    wait (dvalid == 1);
                    done_out = dout;
                    wait (dvalid == 0);
                end
            end
            done_calc <= 1;
        end
        
        if (present_state == S_DONE) begin
            for(i = 0; i < 5; i = i+1) begin
                wait(clk == 1);
                wait(clk == 0);
            end
            done_done <= 1;
        end
    end
    
    assign rdaddr = counter;
    assign out = present_state == S_DONE ? done_out : 0;
    assign done = present_state == S_DONE ? 1 : 0;
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