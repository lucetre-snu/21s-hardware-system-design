`timescale 1ns / 1ps


module pe_control#(
    parameter MSIZE = 4,
    parameter VSIZE =4
)
(
input start,
input areset,
input clk,
input [31:0] rddata, 
output reg [MSIZE+VSIZE:0] raddr,
output reg done,
output  [31:0] wrdata0
//output  [31:0] wrdata1,
//output  [31:0] wrdata2,
//output  [31:0] wrdata3,
//output  [31:0] wrdata4,
//output  [31:0] wrdata5,
//output  [31:0] wrdata6,
//output  [31:0] wrdata7,
//output  [31:0] wrdata8,
//output  [31:0] wrdata9,
//output  [31:0] wrdata10,
//output  [31:0] wrdata11,
//output  [31:0] wrdata12,
//output  [31:0] wrdata13,
//output  [31:0] wrdata14,
//output  [31:0] wrdata15,
//output wew,
//output [MSIZE+VSIZE:0] co
//output dvalid[0:7'b1<<MSIZE],
//output reg [2:0] state,
//output [MSIZE:0] cc
);
//reg [31:0] wrdatai [0:2**MSIZE -1];
//////////////////////////////////////////////////////////////////////////////////

reg [31:0]wrdata;
reg [31:0]wrdata1;
assign wrdata0 = wrdata;
//assign wrdata1 = pe[1].douti;
//assign wrdata2 = pe[2].douti;
//assign wrdata3 = pe[3].douti;
//assign wrdata4 = pe[4].douti;
//assign wrdata5 = pe[5].douti;
//assign wrdata6 = pe[6].douti;
//assign wrdata7 = pe[7].douti;
//assign wrdata8 = pe[8].douti;
//assign wrdata9 = pe[9].douti;
//assign wrdata10 = pe[10].douti;
//assign wrdata11 = pe[11].douti;
//assign wrdata12 = pe[12].douti;
//assign wrdata13 = pe[13].douti;
//assign wrdata14 = pe[14].douti;
//assign wrdata15 = pe[15].douti;
/////////////////////////////////////////////////////////////////////////////////////
wire dvalid[0:2**MSIZE];
reg [2:0] p_state,n_state;         //state
reg [MSIZE+VSIZE : 0] counterdata, countercal;// fsm counter
reg [MSIZE:0] counter5;               // fsm counter
reg resetdata, reset5, resetcal;  // counter reset
reg  we[0:(2**MSIZE)-1];                          // my_pe enable
reg valid;                        // my_pe dvalid  ?????

wire [31:0] dout;                // my_pe output
reg [31:0] ain;
reg[31:0] din;              // my_pe input
reg calflag, calflag2;           // buffer for delay
wire reset;
reg pe_reset;
wire pe_areset;
genvar i;
integer ii;

//assign cc = counter5;

//assign state = p_state;
assign pe_areset = ~pe_reset;

localparam IDLE = 3'd0, LOAD = 3'd1, CALC = 3'd2, DONE = 3'd3;

(* ram_style = "block" *) reg [31:0] globalram [0:(2**(MSIZE+VSIZE)) + (2**(VSIZE)) -1'b1]; // global register
reg [31:0] douti[0:(2**MSIZE)-1'b1];
wire [31:0]doutii[0:(2**MSIZE)-1'b1];
//assign wew = we[15];
//assign co = counterdata;

reg  [5:0] global_addr, local_addr;

assign reset = ~areset;
initial begin
global_addr <= 0;
local_addr <= 0;
p_state <= IDLE;
end


///////////////////////////////// LOAD
always @(posedge clk or posedge resetdata)begin
  if(resetdata) counterdata <= 0;
  else begin 
    if(counterdata ==(2**(MSIZE+VSIZE)) + (2**(VSIZE)) -1'b1) counterdata <= 0; else counterdata <= counterdata + 1; 
  end
end

reg donereg;
/////////////////////////////////////// DONE
always@(posedge clk or posedge reset5)begin
    if(reset5)begin counter5 <= 0; done <=0; donereg<=0; end
    else begin
        if((counter5 <= (2**MSIZE)) && donereg ==1) begin
        done <= 1;
        counter5 <= counter5 + 1'b1;
        wrdata1 <= douti[counter5];
        wrdata <= wrdata1;
        end
        else begin
            done <=0;
        end
        //
        if(donereg==0)begin
            donereg <= 1;
            for(ii=0; ii < 2**MSIZE; ii=ii+1)begin
                douti[ii] <= doutii[ii];
            end
        end
    end
end


/////////////////////////////////////////////////// CAL
always @(posedge clk or posedge resetcal)begin
    if(resetcal)begin countercal <= 0; calflag <=1; calflag2<=0; valid <=0; end
    else begin
        if(calflag ==1)begin calflag<=0; calflag2 <=1; end
        if(calflag2 ==1)begin valid<=1; calflag2<= 0; end
        if(valid ==1) valid <=0;
        if(dvalid[0] ==1)begin
            countercal <= countercal +1; 
            calflag<=1;
        end
    end
end
 



always @(posedge clk or posedge reset)begin
  if(reset) p_state <= IDLE; else p_state <= n_state;
  if(reset || p_state == IDLE) pe_reset<=1; else pe_reset=0;
end
  

/////////////////////////////////////////////////////////////
always @(*)begin
  case(p_state)
    IDLE: if(start) n_state = LOAD; else n_state = p_state;
    LOAD: if(counterdata==(2**(MSIZE+VSIZE)) + (2**(VSIZE)) -1) n_state = CALC; else n_state = p_state;
    CALC: if(countercal ==2**VSIZE) n_state = DONE; else n_state = p_state;
    DONE: if(counter5 == (2**MSIZE)+1 ) n_state = IDLE; else n_state = p_state;
  endcase
end 

//////////////////////////////////////////////////////////////
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

wire [MSIZE:0]local_temp;

assign local_temp = (counterdata - (2**VSIZE)) >> VSIZE;

//for(i =0; i< 2**MSIZE; i = i+1)begin
//    assign we[i] = (local_temp == i && p_state == LOAD)? 1'd1 : 1'd0;
//end


always@(posedge clk) begin
    case(p_state)
    
    LOAD: begin
        if(counterdata <= (2**VSIZE) -1'b1)begin
            globalram[counterdata] <= rddata;
            raddr <= counterdata;
        end
        if(counterdata >  (2**VSIZE) -1'b1)begin
            for(ii =0; ii< 2**MSIZE; ii = ii+1)begin
                we[ii] <= (local_temp == ii && p_state == LOAD)? 1'd1 : 1'd0;
            end

            raddr <= counterdata- (2**VSIZE) - local_temp*(2**VSIZE);
            local_addr<= counterdata- 2**VSIZE - local_temp*(2**VSIZE);
            din <= rddata;
        end
    end
    
    CALC: begin
        for(ii =0; ii< 2**MSIZE; ii = ii+1)begin
                we[ii] <= 1'd0;
            end
        
         ain <= globalram[countercal];
        
        
        local_addr <= countercal;
        raddr <= countercal;
        
    end
    DONE: begin
        
         ain <= 0;
        
    
    end
    
    default: begin
        raddr <= 0;
        
    end
    
    endcase
    
    
end



generate for(i=0; i<2**MSIZE; i=i+1) begin : pe

my_pe # (.L_RAM_SIZE(VSIZE))
pe(
    .aclk(~clk),
    .aresetn(pe_areset),
    .ain(ain),
    .din(din),
    .addr(local_addr),
    .we(we[i]),
    .valid(valid),
    .dvalid(dvalid[i]),
    .dout(doutii[i])
);
end
endgenerate

 
 
endmodule
