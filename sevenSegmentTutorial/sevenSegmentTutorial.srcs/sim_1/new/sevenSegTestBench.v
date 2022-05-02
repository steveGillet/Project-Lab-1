`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2021 08:23:50 PM
// Design Name: 
// Module Name: sevenSegTestBench
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


module sevenSegTestBench(
    );
    reg clock, reset;       //default 1 bit
    reg[3:0] in0, in1, in2, in3;  //the 4 inputs for each display
    wire a, b, c, d, e, f, g, dp; //the individual LED output for the seven segment along with the digital point
    wire [3:0] an;   // the 4 bit enable signal

    sevenSegment1 UUT(clock, reset, in0, in1, in2, in3, a,b,c,d,e,f,g,dp,an);
    
    initial begin
        clock=0;
        reset=0;
        in0=0;
        in1=0;
        in2=0;
        in3=0;
        #100;
        in0=2;
        in1=0;
        in2=0;
        in3=0;
        #100;
        in0=0;
        in1=5;
        in2=0;
        in3=0;
        #100;
        in0=0;
        in1=0;
        in2=0;
        in3=9;
    end
    
    always begin
    #5 clock = -clock;
    end
    
endmodule
