`timescale 1ns / 1ps


module pe_control#(
    parameter DATASIZE = 16
)
(
input start,
input areset,
input clk,
input [31:0] rddata, 
output reg [5:0] raddr,
output reg done,
output  [31:0] wrdata
//output dvalid,
//output [2:0] state
);

wire dvalid;
reg [2:0] p_state,n_state;         //state
reg [4:0] counterdata, countercal;// fsm counter
reg [2:0] counter5;               // fsm counter
reg resetdata, reset5, resetcal;  // counter reset
reg  we;                          // my_pe enable
reg valid;                        // my_pe dvalid  Ãâ·Â¿ë

wire [31:0] dout;                // my_pe output
reg [31:0] ain,din;              // my_pe input
reg [5:0] addrin;                
reg calflag, calflag2;           // buffer for delay
wire reset;
reg pe_reset;
wire pe_areset;
reg pe_reset_flag;
//assign state = p_state;
assign pe_areset = ~pe_reset;

parameter IDLE = 3'd0, LOAD = 3'd1, CALC = 3'd2, DONE = 3'd3;

(* ram_style = "block" *) reg [31:0] globalram [0:2**6 - 1]; // global register
reg  [5:0] global_addr, local_addr;

assign reset = ~areset;
assign wrdata=dout;
initial begin
global_addr <= 0;
local_addr <= 0;
p_state <= IDLE;
end

always @(posedge clk or posedge resetdata)begin
  if(resetdata) counterdata <= 0;
  else begin 
    if(counterdata ==31) counterdata <= 0; else counterdata <= counterdata + 1; 
  end
end


always@(posedge clk or posedge reset5)begin
    if(reset5)begin counter5 <= 0; done <=0; end
    else begin
        if(counter5 < 4) begin
        done <= 1;
        counter5 <= counter5 + 1;
        end
        else begin
            done <=0;
        end
    end
end

always @(posedge clk or posedge resetcal)begin
    if(resetcal)begin countercal <= 0; calflag <=1; calflag2<=0; end
    else begin
        if(calflag ==1)begin calflag<=0; calflag2 <=1; end
        if(calflag2 ==1)begin valid<=1; calflag2<= 0; end
        if(valid ==1) valid <=0;
        if(dvalid ==1)begin
            countercal <= countercal +1; 
            calflag<=1;
        end
    end
end
 
always @(posedge clk or posedge reset5)
  if(reset5) counter5<=0; else counter5<=counter5+1;
  
always @(posedge clk or posedge reset)begin
  if(reset) p_state <= IDLE; else p_state <= n_state;
  if(reset || p_state == IDLE) pe_reset<=1; else pe_reset=0;
end
  


always @(*)begin
  case(p_state)
    IDLE: if(start) n_state = LOAD; else n_state = p_state;
    LOAD: if(counterdata==31) n_state = CALC; else n_state = p_state;
    CALC: if(countercal ==16) n_state = DONE; else n_state = p_state;
    DONE: if(counter5 ==4) n_state = IDLE; else n_state = p_state;
  endcase
end 


always@(*)begin
    case(p_state)
        LOAD: resetdata = 0;
        default: resetdata =1;
     endcase
end

always@(*)begin
    case(p_state)
       DONE: reset5 = 0;
       default: reset5 = 1;
    endcase
end

always@(*)begin
    case(p_state)
        CALC: resetcal = 0;
        default: resetcal =1;
     endcase
end


always@(posedge clk) begin
    case(p_state)
    
    LOAD: begin
        if(counterdata <= 15)begin
            globalram[counterdata] <= rddata;
            raddr <= counterdata;
        end
        if(counterdata > 15)begin      
            we <= 1;
            raddr <= counterdata- 16;
            local_addr<= counterdata - 16;
            din <= rddata;    
        end
    end
    
    CALC: begin
        we <= 0;
        ain <= globalram[countercal];
        local_addr <= countercal;
        raddr <= countercal;
        
    end
    
    default: begin
        raddr <= 0;
        
    end
    
    endcase
    
    
end




my_pe # (6)
pe(
    .aclk(~clk),
    .aresetn(pe_areset),
    .ain(ain),
    .din(din),
    .addr(local_addr),
    .we(we),
    .valid(valid),
    .dvalid(dvalid),
    .dout(dout)
);

 
 
endmodule
