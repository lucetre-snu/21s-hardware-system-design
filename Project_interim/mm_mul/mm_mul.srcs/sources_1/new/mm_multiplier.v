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
        localparam S_IDLE       = 3'b000;
        localparam S_LD_1       = 3'b010;
        localparam S_LD_2       = 3'b011;
        localparam S_CC_1       = 3'b100;
        localparam S_CC_2       = 3'b101;
        localparam S_HV_1       = 3'b110;
        localparam S_HV_2       = 3'b111;
        localparam S_DONE       = 3'b001;
        
        localparam DONE_LATENCY = 5;
        localparam MAT_SIZE     = 2**(L_RAM_SIZE*2);
        localparam VEC_SIZE     = 2**(L_RAM_SIZE);
        localparam ZERO         = {BITWIDTH{1'b0}};
        
        reg [2*L_RAM_SIZE:0]    cnt_load, cnt_harv;
        reg [L_RAM_SIZE:0]      cnt_calc;
        reg [2:0]               cnt_done;
        reg [2:0]               present_state, next_state;
        reg                     rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done;
        reg [BITWIDTH-1:0]      gb[0:MAT_SIZE/2*3-1];
        
        wire [BITWIDTH-1:0]     dout[0:MAT_SIZE/2-1];
        wire [MAT_SIZE/2-1:0]   dvalid;
        wire                    valid;
        
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
                S_IDLE: if (start)                          next_state = S_LD_1; else next_state = present_state;
                S_LD_1: if (cnt_load == MAT_SIZE/2*3-1)     next_state = S_CC_1; else next_state = present_state;
                S_CC_1: if (cnt_calc == VEC_SIZE)           next_state = S_HV_1; else next_state = present_state;
                S_HV_1: if (cnt_harv == MAT_SIZE/2-1)       next_state = S_LD_2; else next_state = present_state;
                S_LD_2: if (cnt_load == MAT_SIZE/2-1)       next_state = S_CC_2; else next_state = present_state;
                S_CC_2: if (cnt_calc == VEC_SIZE)           next_state = S_HV_2; else next_state = present_state;
                S_HV_2: if (cnt_harv == MAT_SIZE/2-1)       next_state = S_DONE; else next_state = present_state;
                S_DONE: if (cnt_done == DONE_LATENCY-1)     next_state = S_IDLE; else next_state = present_state;
                default: next_state = present_state;
            endcase
        
        always @(posedge clk)
            case (present_state)
                S_LD_1, S_LD_2: {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b0111;
                S_CC_1, S_CC_2: {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1011;
                S_HV_1, S_HV_2: {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1101;
                S_DONE:         {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1110;
                default:        {rst_cnt_load, rst_cnt_calc, rst_cnt_harv, rst_cnt_done} <= 4'b1111;
            endcase
            
        integer j;
        always @(posedge clk) begin
            for (j = 0; j < MAT_SIZE/2*3; j = j+1)                      gb[j]        = gb[j];
            case (present_state)
                S_IDLE: for (j = 0; j < MAT_SIZE/2*3; j = j+1)          gb[j]        = 0;
                S_LD_1, S_LD_2:                                         gb[cnt_load] = rddata;
                S_HV_1, S_HV_2: for (j = 0; j < MAT_SIZE/2; j = j+1)    gb[j]        = dvalid ? dout[j] : gb[j];
            endcase
        end
        
        assign addr   = (present_state == S_LD_1 ? (cnt_load < MAT_SIZE/2 ? cnt_load : cnt_load+MAT_SIZE/2) : 
                        (present_state == S_LD_2 ? cnt_load+MAT_SIZE/2 :
                        (present_state == S_HV_1 ? cnt_harv : 
                        (present_state == S_HV_2 ? cnt_harv+MAT_SIZE/2 : 0))));
        assign wrdata = (present_state == S_HV_1 || present_state == S_HV_2) ? gb[cnt_harv] : 0;
        assign we     = (present_state == S_HV_1 || present_state == S_HV_2);
        assign done   = (present_state == S_DONE);
        assign valid  = (present_state == S_CC_1 || present_state == S_CC_2) ? ~dvalid : 0;
        
        genvar i;
        generate for (i = 0; i < MAT_SIZE/2; i = i+1) begin: MATRIX
            wire [BITWIDTH-1:0] ain = gb[(i/VEC_SIZE)*VEC_SIZE + cnt_calc];
            wire [BITWIDTH-1:0] bin = gb[cnt_calc*VEC_SIZE + (i%VEC_SIZE) + MAT_SIZE/2];
            my_pe #(L_RAM_SIZE, BITWIDTH) MY_PE(
                .aclk(clk),
                .aresetn(~(reset || present_state == S_LD_2 || present_state == S_DONE)),
                .ain(valid ? ain : 0),
                .bin(valid ? bin : 0),
                .valid(valid),
                .dvalid(dvalid[i]),
                .dout(dout[i])
            );
        end endgenerate
    endmodule