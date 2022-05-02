`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Texas Tech University   
// Engineer: Steve Gillet
// 
// Create Date: 09/11/2021 06:16:29 PM
// Design Name: miniProject2
// Module Name: projectLab1b
// Project Name: DethKopter2000
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


module projectLab1b(
    input clock,
    input [1:0]switchInput1and2,
    input [1:0]switchInput3and4,
    input senseA,
    input senseB,
    input [3:0] switchEnB,
    input [3:0] switchEnA,
    input reset,
//    input switch12,
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] anSS,
    output input1,
    output input2,
    output input3,
    output input4,
    output PWMenB,
    output PWMenA
);
    
    localparam N = 17;
    reg [N:0]countSS; 
    reg [20:0] counter;  //sets period
//    reg [26:0] counterOverCurrent;
    reg [20:0] widthEnB;
    reg [20:0] widthEnA;
    reg tempPWMenB;
    reg tempPWMenA;
    reg [1:0]sseg;
    reg ssegSense; 
    reg [3:0]anSS_temp;
//    reg input1reg;
    
//always @ (switch12 == 1)
//begin
//    input1reg = 1;
//    widthEnA = 1666666;
//    widthEnA = 1666666;
//    #200000000;
//    input1reg = 0;
//end
    
always @ (posedge clock or posedge reset)
 begin
  if (reset)
   countSS <= 0;
  else
   countSS <= countSS + 1;
 end
 
 reg [6:0] sseg_temp; // 7 bit register to hold the binary value of each input given
 
 always @ (*)
 begin
  case(countSS[N:N-1]) //using only the 2 MSB's of the counter 
   
   2'b00 :  //When the 2 MSB's are 00 enable the fourth display
    begin
     sseg = switchInput1and2;
     anSS_temp = 4'b1110;
    end
   
   2'b01:  //When the 2 MSB's are 01 enable the third display
    begin
     sseg = switchInput3and4;
     anSS_temp = 4'b1101;
    end
   
   2'b10:  //When the 2 MSB's are 10 enable the second display
    begin
     if(senseA == 1)
     sseg = 2'b11; 
     else
     sseg = 0;
     anSS_temp = 4'b1011;
    end
    
   2'b11:  //When the 2 MSB's are 11 enable the first display
    begin
     if(senseB == 1)
     sseg = 2'b11; 
     else
     sseg = 0;
     anSS_temp = 4'b0111;
    end
  endcase
 end
assign anSS = anSS_temp;

 
always @ (*)
 begin
  case(sseg)
  2'b1: sseg_temp = 7'b0001110;     //f
  2'b10: sseg_temp = 7'b0000011;    //b
  2'b11: sseg_temp = 7'b1000000;    //0
  default: sseg_temp = 7'b0111111; //dash
  endcase
end
 
 assign {g, f, e, d, c, b, a} = sseg_temp; 
 assign dp = 1'b1;
 
    
initial begin
    counter = 0;
    widthEnB = 0;
    widthEnA = 0;
    tempPWMenB = 0;
    tempPWMenA = 0;
end

always@(posedge clock) begin
    if (reset || counter == 1666666)
        counter <= 0;
    else
        counter <= counter + 1;
//    if (senseA == 1)
//        counterOverCurrent <= counterOverCurrent+1;
//    else
//        counterOverCurrent <= 0;    
        
    if (counter <= widthEnB)
        tempPWMenB <= 1;
    else
        tempPWMenB <= 0;
    if (counter <= widthEnA)
        tempPWMenA <= 1;
    else
        tempPWMenA <= 0;
end
    
always @ (*) begin                 //Enable B
    case(switchEnB)
        4'd1 : widthEnB = 21'd416666;
        4'd2 : widthEnB = 21'd833333;
        4'd4 : widthEnB = 21'd1249999;
        4'd8 : widthEnB = 21'd1666666;
        default : widthEnB = 21'd0; 
    endcase
end

always @ (*) begin                  //Enable A
    case(switchEnA)
        4'd1 : widthEnA = 21'd416666;
        4'd2 : widthEnA = 21'd833333;
        4'd4 : widthEnA = 21'd1249999;
        4'd8 : widthEnA = 21'd1666666;
        default : widthEnA = 21'd0; 
    endcase
end

assign input1 = switchInput1and2[0];
assign input2 = switchInput1and2[1];
assign input4 = switchInput3and4[0];
assign input3 = switchInput3and4[1];
assign PWMenB = tempPWMenB;
assign PWMenA = tempPWMenA;
//assign input1 = input1reg;

endmodule
