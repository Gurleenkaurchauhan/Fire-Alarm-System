module alarm_indicator(
    input [15:0] room,
    output [15:0] led
    );
    assign led=room;
endmodule
