`timescale 1ns / 1ps

module pe_controller #(
    parameter L_RAM_SIZE = 6,
    parameter BITWIDTH = 32,
    
    // states
    parameter S_IDLE = 0,
    parameter S_LOAD = 1,
    parameter S_CALC = 2,
    parameter S_DONE = 3
)
(
    input clk,
    input start,
    input reset,
    input [BITWIDTH-1:0] rddata,
    output [(L_RAM_SIZE+1)-1:0] rdaddr,
    output out
);

    reg [2-1:0] state = S_IDLE;
    reg [4-1:0] dout_counter = 0;
    reg [5-1:0] addrb_counter = 0;

    // global buffers & addr buffer
    reg [BITWIDTH-1:0] gb1 [0:2**L_RAM_SIZE-1];
    reg [BITWIDTH-1:0] gb2 [0:2**L_RAM_SIZE-1];
    reg [(L_RAM_SIZE+1)-1:0] addrb [0:2**(L_RAM_SIZE+1)-1];

    // for my_pe
    reg [BITWIDTH-1:0] ain;
    reg [BITWIDTH-1:0] bin;
    reg my_pe_reset = 0;
    wire [BITWIDTH-1:0] dout;
    reg valid;
    wire dvalid;
    
    integer i;
    
    // value setting in address buffer
    initial begin
        for(i = 0; i < 16; i = i+1) begin
            addrb[i] = $urandom%(2**(L_RAM_SIZE+1));
        end
    end
    
    always @(start) begin
        if(start == 1)
            state = S_LOAD;
    end
    
    always @(dvalid) begin
        if(dvalid == 1)
            dout_counter = dout_counter + 1;
            if(dout_counter == 16) 
                state = S_DONE;
    end
    
    // TODO : 동일한 rddata 들어왔을 때의 처리 
    always @(rddata) begin
        if(addrb_counter < 16)
            gb1[addrb_counter] = rddata;
        else
            gb2[addrb_counter-16] = rddata;
            
        addrb_counter = addrb_counter + 1;
    end
    
    always @(addrb_counter) begin
        if(addrb_counter == 32)
            state = S_CALC;
    end
    
    // FSM
    always @(state) begin
        if(state == S_IDLE) begin
            // pass
        end
        
        if(state == S_LOAD) begin
            
        end
        
        if(state == S_CALC) begin
            for(i = 0; i < 16; i=i+1) begin
                if(i != 0) begin
                    wait (dvalid == 1);
                    wait (dvalid == 0);
                end
                ain = gb1[i];
                bin = gb2[i];
                #15;
                valid <= 1;
                #10;
                valid <= 0;
            end
        end
        
        if(state == S_DONE) begin
            for(i = 0; i < 5; i= i+1) begin
                wait(clk);
            end
            state = S_IDLE;
            
            // clean variables
        end
    end
    
    assign out = state == S_DONE ? dout : 0;
    assign rdaddr = state == S_LOAD ? addrb[addrb_counter] : 0;
    
    my_pe MY_PE (
        .aclk(clk),
        .aresetn(~my_pe_reset),
        .ain(ain),
        .bin(bin),
        .valid(valid),
        .dvalid(dvalid),
        .dout(dout)
    );

endmodule
