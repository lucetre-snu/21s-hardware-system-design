`timescale 1ns / 1ps

module mm_multiplier #(
    parameter L_RAM_SIZE   = 3,
    parameter BITWIDTH     = 32
)(
    input start,
    input reset,
    input clk,
    output [2*L_RAM_SIZE:0] rdaddr,
    output [2*L_RAM_SIZE:0] wraddr,
    input  [BITWIDTH-1:0]   rddata,
    output [BITWIDTH-1:0]   wrdata,
    output we,
    output done
);
    localparam S_IDLE = 3'd0, S_LOAD = 3'd1, S_CALC = 3'd2, S_HARV = 3'd3, S_DONE = 3'd4;
    localparam DONE_LATENCY = 5;
    localparam MATRIX_SIZE  = 2**(L_RAM_SIZE*2);
    localparam VECTOR_SIZE  = 2**(L_RAM_SIZE);
    localparam ZERO         = {BITWIDTH{1'b0}};
    
    reg [2*L_RAM_SIZE:0]    cnt_load, cnt_harv;
    reg [L_RAM_SIZE:0]      cnt_calc;
    reg [2:0]               cnt_done;
    reg [2:0]               present_state, next_state;
    reg                     rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done;
    reg                     valid = 0;
    
    reg [BITWIDTH-1:0]      gb1[0:MATRIX_SIZE-1];
    reg [BITWIDTH-1:0]      gb2[0:MATRIX_SIZE-1];
    reg [BITWIDTH-1:0]      ain[0:VECTOR_SIZE-1];
    reg [BITWIDTH-1:0]      bin[0:VECTOR_SIZE-1];
    
    wire [BITWIDTH-1:0]     dout[0:MATRIX_SIZE-1];
    wire [MATRIX_SIZE-1:0]  dvalid;
    
    always @(posedge clk or posedge reset)
        if (reset)          present_state <= S_IDLE; 
        else                present_state <= next_state;
    always @(posedge clk or posedge rst_cnt_load) 
        if (rst_cnt_load)   cnt_load <= 0; 
        else                cnt_load <= cnt_load + 1;
    always @(posedge dvalid or posedge rst_cnt_calc) 
        if (rst_cnt_calc)   cnt_calc <= 0;
        else if (dvalid)    cnt_calc <= cnt_calc + 1;
        else                cnt_calc <= cnt_calc;
    always @(posedge clk or posedge rst_cnt_harv) 
        if (rst_cnt_harv)   cnt_harv <= 0; 
        else                cnt_harv <= cnt_harv + 1;
    always @(posedge clk or posedge rst_cnt_done) 
        if (rst_cnt_done)   cnt_done <= 0; 
        else                cnt_done <= cnt_done + 1;
    
    always @(*)
        case (present_state)
            S_IDLE: if (start)                          next_state = S_LOAD; else next_state = present_state;
            S_LOAD: if (cnt_load == MATRIX_SIZE*2-1)    next_state = S_CALC; else next_state = present_state;
            S_CALC: if (cnt_calc == VECTOR_SIZE)        next_state = S_HARV; else next_state = present_state;
            S_HARV: if (cnt_harv == MATRIX_SIZE-1)      next_state = S_DONE; else next_state = present_state;
            S_DONE: if (cnt_done == DONE_LATENCY-1)     next_state = S_IDLE; else next_state = present_state;
            default: next_state = present_state;
        endcase
    
    always @(*)
        case (present_state)
            S_LOAD:  {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b0111;
            S_CALC:  {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1011;
            S_HARV:  {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1101;
            S_DONE:  {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1110;
            default: {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1111;
        endcase
        
    integer j;
    always @(*)
        case (present_state)
            S_IDLE: for (j = 0; j < MATRIX_SIZE; j = j+1)                       {gb1[j], gb2[j]} = {ZERO, ZERO};
            S_LOAD: for (j = 0; j < MATRIX_SIZE; j = j+1)
                    if (cnt_load >= MATRIX_SIZE && j == cnt_load - MATRIX_SIZE) {gb1[j], gb2[j]} = {gb1[j], rddata};
                    else if (cnt_load < MATRIX_SIZE && j == cnt_load)           {gb1[j], gb2[j]} = {rddata, gb2[j]};
                    else                                                        {gb1[j], gb2[j]} = {gb1[j], gb2[j]};
            S_HARV:  for (j = 0; j < MATRIX_SIZE; j = j+1)                      {gb1[j], gb2[j]} = {dout[j], ZERO};
            default: for (j = 0; j < MATRIX_SIZE; j = j+1)                      {gb1[j], gb2[j]} = {gb1[j], gb2[j]};
        endcase
    
    always @(*) begin
        valid <= (present_state == S_CALC) ? ~dvalid : 0;
        case (present_state)
            S_CALC: if (dvalid) for (j = 0; j < VECTOR_SIZE; j = j+1) {ain[j], bin[j]} = {ain[j], bin[j]};
                    else        for (j = 0; j < VECTOR_SIZE; j = j+1) {ain[j], bin[j]} = {gb1[j*VECTOR_SIZE + cnt_calc], gb2[cnt_calc*VECTOR_SIZE + j]};
            default:            for (j = 0; j < VECTOR_SIZE; j = j+1) {ain[j], bin[j]} = {ZERO, ZERO};
        endcase
    end
            
    assign rdaddr = (present_state == S_LOAD) ? cnt_load : 0;
    assign wrdata = (present_state == S_HARV) ? gb1[cnt_harv] : 0;
    assign wraddr = (present_state == S_HARV) ? cnt_harv : 0;
    assign we     = (present_state == S_HARV);
    assign done   = (present_state == S_DONE);
    
    genvar i;
    generate for (i = 0; i < MATRIX_SIZE; i = i+1) begin: MATRIX
        my_pe #(L_RAM_SIZE, BITWIDTH) MY_PE(
            .aclk(clk),
            .aresetn(~reset),
            .ain(ain[i/VECTOR_SIZE]),
            .bin(bin[i%VECTOR_SIZE]),
            .valid(valid),
            .dvalid(dvalid[i]),
            .dout(dout[i])
        );
    end endgenerate
endmodule