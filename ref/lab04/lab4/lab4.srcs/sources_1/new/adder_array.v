`timescale 1ns / 1ps



module adder_array(cmd, Ain0, Ain1, Ain2, Ain3, Bin0, Bin1, Bin2, Bin3,Dout0, Dout1, Dout2, Dout3, overflow);
    input [2:0] cmd;
    input [31:0] Ain0;
    input [31:0] Ain1;
    input [31:0] Ain2;
    input [31:0] Ain3;
    input [31:0] Bin0;
    input [31:0] Bin1;
    input [31:0] Bin2;
    input [31:0] Bin3;
    output reg [31:0] Dout0;
    output reg [31:0] Dout1;
    output reg [31:0] Dout2;
    output reg [31:0] Dout3;
    output reg [3:0] overflow;
    
    wire [31:0] ain[3:0];
    wire [31:0] bin[3:0];
    wire [31:0] dout[3:0];
    wire ov[3:0];
    
    assign {ain[0], ain[1], ain[2], ain[3]} = {Ain0, Ain1, Ain2, Ain3};
    assign {bin[0], bin[1], bin[2], bin[3]} = {Bin0, Bin1, Bin2, Bin3};
    
    
    genvar i;
    
    generate for(i=0; i< 4; i=i+1) begin: a_add
    
    myadder a_a(ain[i], bin[i], dout[i], ov[i]);
    
    end endgenerate
    
    
    
    always@(*)begin
    if(cmd == 3'd0)begin
        Dout0 <= dout[0];
        Dout1 <= 0;
        Dout2 <= 0;
        Dout3 <= 0;
        overflow[0] <= ov[0];
        overflow[1] <= 0;
        overflow[2] <= 0;
        overflow[3] <= 0;
    end
    else if(cmd == 3'd1)begin
        Dout0 <= 0;
        Dout1 <= dout[1];
        Dout2 <= 0;
        Dout3 <= 0;
        overflow[0] <= 0;
        overflow[1] <= ov[1];
        overflow[2] <= 0;
        overflow[3] <= 0;
    end
    else if(cmd == 3'd2)begin
        Dout0 <= 0;
        Dout1 <= 0;
        Dout2 <= dout[2];
        Dout3 <= 0;
        overflow[0] <= 0;
        overflow[1] <= 0;
        overflow[2] <= ov[2];
        overflow[3] <= 0;
    end
    else if(cmd ==3'd3)begin
        Dout0 <= 0;
        Dout1 <= 0;
        Dout2 <= 0;
        Dout3 <= dout[3];
        overflow[0] <= 0;
        overflow[1] <= 0;
        overflow[2] <= ov[3];
        overflow[3] <= 0;
    end
    else if(cmd ==3'd4)begin
        Dout0 <= dout[0];
        Dout1 <= dout[1];
        Dout2 <= dout[2];
        Dout3 <= dout[3];
        overflow[0] <= ov[0];
        overflow[1] <= ov[1];
        overflow[2] <= ov[2];
        overflow[3] <= ov[3];
        
    end
    end

endmodule      
    
  
    
    
    
    
    
    
    

