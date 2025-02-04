`timescale 1ns / 1ps

module fsm(
    input clk,
    input reset,
    input [15:0] room,
    input [7:0] count,
    input [1:0] signal
    );
    
    localparam S00 = 0,S01 = 1, S10 = 2, S11 = 3;
    
    reg [1:0] current_state = 0;
    reg [1:0] next_state = 0;
    
    reg setsig = 2'b00;
    reg setled = 16'b0000000000000000;
    
    always @(posedge clk) begin
    if (reset) current_state <= S00;
    else current_state <= next_state;
    end
endmodule
