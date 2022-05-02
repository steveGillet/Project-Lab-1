`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2021 08:49:31 PM
// Design Name: 
// Module Name: projectLab1bTestBench
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


module projectLab1bTestBench(

    );
    reg clock;
    reg [1:0]switchInput1and2;
    reg [1:0]switchInput3and4;
    reg senseA;
    reg senseB;
    reg [3:0] switchEnB;
    reg [3:0] switchEnA;
    reg reset;
    wire a, b, c, d, e, f, g, dp; //the individual LED output for the seven segment along with the digital point
    wire [3:0] anSS;
    wire input1;
    wire input2;
    wire input3;
    wire input4;
    wire PWMenB;
    wire PWMenA;
endmodule
