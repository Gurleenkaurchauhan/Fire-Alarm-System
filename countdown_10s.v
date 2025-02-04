`timescale 1ns/1ps
module countdown_10s(
    input clk,
    input reset,
    input [1:0] sig,
    input [7:0] count
    );
    
    reg [7:0] current_count =0;
    
    always @(posedge clk) begin
    
    if(reset)
    current_count <= 10;
    
    else if(sig==2'b00)
    current_count <= 10;
    else if ((sig==2'b01)&(current_count != 0))
    current_count <= current_count -1;
    
    else
    current_count <= current_count;
    
    end
    assign count = current_count;
    endmodule
