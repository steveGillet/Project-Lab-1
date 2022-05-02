`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2021 06:16:29 PM
// Design Name: 
// Module Name: pwmTutorial
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwmTutorial(
input clock,
input [1:0] speed,
input reset,
output PWM
    );
    
    reg [4:0] counter;  //sets period
    reg [4:0] width;
    reg tempPWM;
    
initial begin
    counter = 0;
    width = 0;
    tempPWM = 0;
end

always@(posedge clock) begin
    if (reset)
        counter <= 0;
    else
        counter <= counter + 1;
        
        
    if (counter < width)
        tempPWM <= 1;
    else
        tempPWM <= 0;
end

always @ (*) begin
    case(speed)
        2'd0 : width = 5'd0;
        2'd1 : width = 5'd8;
        2'd2 : width = 5'd16;
        2'd3 : width = 5'd32;
        default : width = 5'd0;
    endcase
    end

assign PWM = tempPWM;

endmodule
