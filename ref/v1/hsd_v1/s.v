`timescale 1ns / 1ps
module my_pearray#(
    parameter integer BRAM_ADDR_WIDTH = 32,
    parameter integer BRAM_DATA_WIDTH = 32,
    parameter integer BRAM_WE_WIDTH = 4
 
)
(
    input start,
    output done,
    input S_AXI_ACLK,
    input S_AXI_ARESETIN,
    input [31:0] num_input,
    input [31:0] num_output,
    
    output [BRAM_ADDR_WIDTH-1:0]BRAM_ADDR,
    output [BRAM_DATA_WIDTH-1:0]BRAM_WRDATA,
    output [BRAM_WE_WIDTH-1:0]BRAM_WE,
    output BRAM_CLK,
    input [BRAM_DATA_WIDTH-1:0]BRAM_RDDATA
    
    
//    output cal11,
//    output cal22,
//    output savee,
//    output matt,
//    output vecc,
//    output save11,
//    output fm,
//    output nm

    );
    
    clk_wiz_0 u_clk_180 (.clk_out1(BRAM_CLK), .clk_in1(S_AXI_ACLK));
    
 
    reg [31:0] num_in;
    reg [31:0] num_out;
    reg [BRAM_WE_WIDTH-1:0] we;
    reg [BRAM_ADDR_WIDTH-1:0] addr;
    reg [BRAM_DATA_WIDTH-1:0] wrdata;
    reg [BRAM_ADDR_WIDTH-1:0] addr1;
    reg [BRAM_ADDR_WIDTH-1:0] addr2;
    reg [BRAM_ADDR_WIDTH-1:0] addr3;
    wire reset;
    
    
////////// vector
   
    reg vecon;
    reg [31:0] vecsize;
    reg vecin;
    reg [31:0] vec[0:40];
    reg [31:0]v_c;
    
    
/////////// mat
    reg [31:0] matpos;
    reg firstmat;
    reg firstmat1;
    reg firstmat2;
    reg [31:0] matsize;
    reg [31:0] m_c;
    reg [31:0] mat[0:40];        

///////////// cal
    reg [31:0] temp;
    reg cal;
    reg cal1;
    reg cal2;
    integer i, ii;
    reg [31:0] out[0:40];
    reg [31:0] outpoint;
    
/////////////// save
    reg save;
    reg save1;
    reg done1;
    reg [31:0] s_c;
    reg nextmat;
    
    reg resett;
    
/////////////////// assign
assign done = done1;
assign reset = ~S_AXI_ARESETIN;
assign BRAM_WRDATA =  wrdata;
assign BRAM_WE = we;
assign BRAM_ADDR = (save1 == 1)? addr2 :
                   (firstmat ==1 || firstmat1 ==1 || nextmat ==1)? addr1 :
                   (vecon ==1)? addr : 32'd0;
                   
///////////////////////////////
//assign cal11 = cal1;
//assign cal22 = cal22;
//assign savee = save;
//assign matt = firstmat2;
//assign save11 = save1;
//assign vecc = vecon;
//assign fm = firstmat1;
//assign nm = nextmat;
///////                   

initial begin
    we <= 0;
    addr <= 0;
    vecsize <=0;
    v_c <=0;
    
    matsize <=0;
    m_c <=0;
    temp <= 0;
    outpoint <= 0;
    save <= 0;
    addr2 <= 0;
    addr3 <= 0;
    resett <= 0;


end



always@(posedge S_AXI_ACLK)begin

    if(reset ==1 || resett ==1)begin
        vecon <=0;
    end

    if(start ==1)begin
    //    num_in <= num_input;
     //   num_out <= num_output;
        num_in <= 32'd30;
        num_out <= 32'd4056;
        vecon <= 1;
    end
    
    if(vecon ==1 && vecsize == num_in -32'd1)begin
        vecon <=0;
        matpos <= num_in*32'd4;
    end
    
    
end

always@(posedge S_AXI_ACLK)begin

    if(reset ==1 || resett==1)begin
        addr <=0;
        vecsize <=0;
        v_c <= 0;
        firstmat <= 0;
        vecin <= 0;
    end
    
    if(vecon ==1) begin
        addr<= addr + 32'd4;
        vecsize <= vecsize + 32'd1;
        vecin <=1;
    end
    
    if(vecin ==1)begin
        vec[v_c] <= BRAM_RDDATA;
        v_c <= v_c + 32'd1;
        if(v_c == num_in- 32'd1)begin 
            v_c <= 0;
            vecin <=0;
            firstmat <= 1;
        end
    end
    
    if(firstmat ==1) firstmat <=0;
    
end


always@(posedge S_AXI_ACLK)begin
    
    if(reset ==1 || resett ==1)begin
        addr1 <= 0;
        matsize <=0;
        m_c <=0;
        cal <=0;
        firstmat1 <= 0;
        firstmat2 <= 0;
        
    end
    
    
    if(firstmat ==1)begin
        addr1 <= matpos;
        firstmat1 <= 1;
        matsize <=0;
    end
    
    if(nextmat ==1)begin
        addr1 <= matpos + outpoint * num_in;
        firstmat1 <= 1;
        matsize <=0;
    end
    
    if(firstmat1 ==1)begin
        addr1 <= addr1+32'd4;
        matsize <= matsize + 32'd1;
        firstmat2<=1;
        if(matsize == num_input - 32'd2) firstmat1 <= 0;
    end
    
    if(firstmat2==1) begin
        mat[m_c] <= BRAM_RDDATA;
        m_c <= m_c + 32'd1;
        if(m_c == num_in-1)begin
            m_c <= 0;
            firstmat2 <= 0;
            cal <=1;
        end
        
    end
    if(cal ==1) cal <= 0;
    
end

always@(posedge S_AXI_ACLK)begin
    if(reset ==1 || resett ==1 )begin
        temp <= 0;
        i<=0;
        cal1<=0;
        cal2<=0;
        
        for( ii=0; ii<40; ii= ii+1)begin
            out[ii] <= 32'd0;
        end
    end
    
    if(cal ==1)begin
        cal1<=1;
        i<=0;
        out[outpoint] <= 32'd0;    
    end
    
    if(cal1 ==1)begin
        temp <= vec[i] * mat[i];
        cal1 <= 0;
        cal2 <= 1;
    end
    
    if(cal2 ==1)begin
        out[outpoint] <= out[outpoint] + temp;
        cal2 <= 0;
        
        if(i == num_in-1)begin
            save <= 1;
            i <= 0;
        end
        else begin
            i <= i+1;
            cal1 <= 1;
        end
    end
    
    if(save ==1) save <= 0;

end


always@(posedge S_AXI_ACLK)begin
    
    if(reset ==1 || resett ==1)begin
        outpoint <= 32'd0;
        save1 <= 0;
        addr2 <= 0;
        addr3 <= 0;
        s_c <= 0;
        done1 <= 0;
        nextmat <=0;
        wrdata <= 0;
        we <= 4'b0000;
    end

    if(save ==1)begin
        if(outpoint < num_out -1)begin // goto mat
            outpoint <= outpoint + 32'd1;
            nextmat <=1;
        end
        else begin  // finish
            save1 <= 1;
            s_c <= 0;
        end
    end
    
    if(save1==1) begin
        we<= 4'b1111;
        wrdata <= out[s_c];
        addr2 <= addr3;
        addr3 <= addr3 +32'd4;
        s_c <= s_c + 32'd1;
        if(s_c == num_out)begin
            save1 <= 0;
            s_c <= 0;
            addr2 <=0;
            addr3 <= 0;
            done1 <= 1;
            we <= 4'b0000;
        end
    
    end
    
    if(done1 ==1) done1 <= 0;
    if(nextmat ==1) nextmat <=0;

end
    
    
    
    
    
    
endmodule
