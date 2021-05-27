`timescale 1ns / 1ps



module sec_checker(
    input reset,
    input clk,
    output [7:0]LD

    );
    
    reg [7:0]led;
    reg [29:0]counter;
    assign LD= led;
    
    initial begin
        led = 0;
        counter = 30'd100000000;
    end
    
    always@(posedge clk)begin
        if(reset ==1)begin
            led <=0;
            counter <= 30'd100000000;
        end
        else begin
            
            if(counter == 27'd0)begin
            led <= led + 8'd1;
            counter <= 30'd100000000;
            end
            else begin
            counter <= counter -30'd1;
            end
        end
        
    
    end
endmodule
