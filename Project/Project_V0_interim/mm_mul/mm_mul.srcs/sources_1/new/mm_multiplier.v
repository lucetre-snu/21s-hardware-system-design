`timescale 1ns / 1ps

module mm_multiplier #(
    parameter L_RAM_SIZE   = 3,
    parameter BITWIDTH     = 32
)(
    input                   start,
    input                   reset,
    input                   clk,
    input  [BITWIDTH-1:0]   rddata,
    output [BITWIDTH-1:0]   wrdata,
    output [2*L_RAM_SIZE:0] addr,
    output                  we,
    output                  done
);
    localparam S_IDLE = 3'd0, S_LOAD = 3'd1, S_CALC = 3'd2, S_HARV = 3'd3, S_DONE = 3'd4;
    localparam DONE_LATENCY = 5;
    localparam MATRIX_SIZE  = 2**(L_RAM_SIZE*2);
    localparam VECTOR_SIZE  = 2**(L_RAM_SIZE);
    localparam ZERO         = {BITWIDTH{1'b0}};
    
    reg [2*L_RAM_SIZE:0]    cnt_buff;
    reg [L_RAM_SIZE:0]      cnt_calc;
    reg [2:0]               cnt_done;
    reg [2:0]               present_state, next_state;
    reg                     rst_cnt_buff, rst_cnt_calc, rst_cnt_done;
    reg [BITWIDTH-1:0]      gb1[0:MATRIX_SIZE-1];
    reg [BITWIDTH-1:0]      gb2[0:MATRIX_SIZE-1];
    
    wire [BITWIDTH-1:0]     dout[0:MATRIX_SIZE-1];
    wire [MATRIX_SIZE-1:0]  dvalid;
    wire                    valid;
    
    always @(posedge clk or posedge reset)
        if (reset)          present_state <= S_IDLE; 
        else                present_state <= next_state;
    always @(posedge clk or posedge rst_cnt_buff) 
        if (rst_cnt_buff)   cnt_buff <= 0; 
        else                cnt_buff <= cnt_buff + 1;
    always @(posedge dvalid or posedge rst_cnt_calc) 
        if (rst_cnt_calc)   cnt_calc <= 0;
        else if (dvalid)    cnt_calc <= cnt_calc + 1;
        else                cnt_calc <= cnt_calc;
    always @(posedge clk or posedge rst_cnt_done) 
        if (rst_cnt_done)   cnt_done <= 0; 
        else                cnt_done <= cnt_done + 1;
    
    always @(*)
        case (present_state)
            S_IDLE: if (start)                          next_state = S_LOAD; else next_state = present_state;
            S_LOAD: if (cnt_buff == MATRIX_SIZE*2-1)    next_state = S_CALC; else next_state = present_state;
            S_CALC: if (cnt_calc == VECTOR_SIZE)        next_state = S_HARV; else next_state = present_state;
            S_HARV: if (cnt_buff == MATRIX_SIZE-1)      next_state = S_DONE; else next_state = present_state;
            S_DONE: if (cnt_done == DONE_LATENCY-1)     next_state = S_IDLE; else next_state = present_state;
            default: next_state = present_state;
        endcase
    
    always @(posedge clk)
        case (present_state)
            S_LOAD:  {rst_cnt_buff, rst_cnt_calc, rst_cnt_done} <= 3'b011;
            S_CALC:  {rst_cnt_buff, rst_cnt_calc, rst_cnt_done} <= 3'b101;
            S_HARV:  {rst_cnt_buff, rst_cnt_calc, rst_cnt_done} <= 3'b011;
            S_DONE:  {rst_cnt_buff, rst_cnt_calc, rst_cnt_done} <= 3'b110;
            default: {rst_cnt_buff, rst_cnt_calc, rst_cnt_done} <= 3'b111;
        endcase
        
    integer j;
    always @(posedge clk) begin
        for (j = 0; j < MATRIX_SIZE; j = j+1)                   {gb1[j], gb2[j]} = {gb1[j], gb2[j]};
        case (present_state)
            S_IDLE: for (j = 0; j < MATRIX_SIZE; j = j+1)       {gb1[j], gb2[j]} = {ZERO, ZERO};
            S_LOAD: if (cnt_buff < MATRIX_SIZE)                 gb1[cnt_buff] = rddata;
                    else                                        gb2[cnt_buff-MATRIX_SIZE] = rddata;
            S_HARV: for (j = 0; j < MATRIX_SIZE; j = j+1)
                    if (dvalid)                                 {gb1[j], gb2[j]} = {dout[j], ZERO};
                    else                                        {gb1[j], gb2[j]} = {gb1[j], ZERO};
        endcase
    end
    
    assign addr   = (present_state == S_LOAD || present_state == S_HARV) ? cnt_buff : 0;
    assign wrdata = (present_state == S_HARV) ? gb1[cnt_buff] : 0;
    assign we     = (present_state == S_HARV);
    assign done   = (present_state == S_DONE);
    assign valid  = (present_state == S_CALC) ? ~dvalid : 0;
    
    genvar i;
    generate for (i = 0; i < MATRIX_SIZE; i = i+1) begin: MATRIX
        my_pe #(L_RAM_SIZE, BITWIDTH) MY_PE(
            .aclk(clk),
            .aresetn(~reset),
            .ain(valid ? gb1[(i/VECTOR_SIZE)*VECTOR_SIZE + cnt_calc] : 0),
            .bin(valid ? gb2[cnt_calc*VECTOR_SIZE + (i%VECTOR_SIZE)] : 0),
            .valid(valid),
            .dvalid(dvalid[i]),
            .dout(dout[i])
        );
    end endgenerate
endmodule