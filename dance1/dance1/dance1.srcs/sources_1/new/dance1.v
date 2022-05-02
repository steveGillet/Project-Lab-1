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
    input switch12,
    input senseA,
    input senseB,
    input reset,
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] anSS,
    output input1,
    output input2,
    output input3,
    output input4,
    output PWMenB,
    output PWMenA
);
    
    localparam N = 16;
    reg [N:0]countSS; 
    reg [20:0] counter;  //sets period
//    reg [26:0] counterOverCurrent;
    reg [20:0] widthEnB;
    reg [20:0] widthEnA;
    reg tempPWMenB;
    reg tempPWMenA;
    reg [1:0]sseg;
    reg [3:0]anSS_temp;
    reg [6:0] sseg_temp; // 7 bit register to hold the binary value of each input given
    reg input1reg;
    reg input2reg;
    reg input3reg;
    reg input4reg;
    reg [20:0]counter2;

initial begin
    counter = 0;
    countSS = 0;
    counter2 = 0;
    widthEnB = 0;
    widthEnA = 0;
    tempPWMenB = 0;
    tempPWMenA = 0;
end    
    
always @ (posedge clock or posedge reset)
 begin
  if (reset)
   countSS <= 0;
  else
   countSS <= countSS + 1;
 end
 
 always @ (*)
 begin
  case(countSS[N:N-1]) //using only the 2 MSB's of the counter 
   
   2'b00 :  //When the 2 MSB's are 00 enable the fourth display
    begin
    if(input1reg == 1)
     sseg = 2'b1;
     else if(input2reg == 1)
     sseg = 2'b10;
     else
     sseg = 2'b0;
     anSS_temp = 4'b1110;
    end
   
   2'b01:  //When the 2 MSB's are 01 enable the third display
    begin
     if(input4reg == 1)
     sseg = 2'b1;
     else if(input3reg == 1)
     sseg = 2'b10;
     else
     sseg = 2'b0;
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

always @ (*)
 begin
  case(sseg)
  2'b1: sseg_temp = 7'b0001110;     //f
  2'b10: sseg_temp = 7'b0000011;    //b
  2'b11: sseg_temp = 7'b1000000;    //0
  default: sseg_temp = 7'b0111111; //dash
  endcase
end

always@(posedge clock) begin
    if (reset)
        begin
        counter2 <= 0;
        counter <= 0;
        end
    else if (counter == 1666666)
        counter <= 0;
    else
        counter <= counter + 1;
//    if (senseA == 1)
//        counterOverCurrent <= counterOverCurrent+1;
//    else
//        counterOverCurrent <= 0;    
    case (switch12)
        1'b1: 
        begin
        if(counter == 1666666)
        counter2 = counter2 + 1;
        if(counter2 <= 60)
        begin
        input1reg = 1;
        input2reg = 0;
        input3reg = 0;
        input4reg = 1;
        widthEnA = 1666666;
        widthEnB = 1666666;
        end
        if(counter2 > 60 && counter2 <= 120)
        begin
        input1reg = 0;
        input2reg = 0;
        input3reg = 0;
        input4reg = 0;
        widthEnA = 0;
        widthEnB = 0;
        end
        if(counter2 > 120 && counter2 <= 180)
        begin
        input1reg = 0;
        input2reg = 1;
        input3reg = 1;
        input4reg = 0;
        widthEnA = 1666666;
        widthEnB = 1666666;
        end
        if(counter2 > 180 && counter2 <= 240)
        begin
        input1reg = 0;
        input2reg = 0;
        input3reg = 0;
        input4reg = 0;
        widthEnA = 0;
        widthEnB = 0;
        end
        if(counter2 > 240 && counter2 <= 300)
        begin
        input1reg = 1;
        input2reg = 0;
        input3reg = 1;
        input4reg = 0;
        widthEnA = 1666666;
        widthEnB = 1666666;
        end
        if(counter2 > 300 && counter2 <= 360)
        begin
        input1reg = 0;
        input2reg = 1;
        input3reg = 0;
        input4reg = 1;
        widthEnA = 1666666;
        widthEnB = 1666666;
        end
        if(counter2 > 360 && counter2 <= 420)
        begin
        input1reg = 1;
        input2reg = 0;
        input3reg = 0;
        input4reg = 1;
        widthEnA = 0;
        widthEnB = 1666666;
        end
        if(counter2 > 420 && counter2 <= 480)
        begin
        input1reg = 0;
        input2reg = 1;
        input3reg = 1;
        input4reg = 0;
        widthEnA = 1666666;
        widthEnB = 0;
        end
        if(counter2 > 480 && counter2 <= 540)
        begin
        input1reg = 1;
        input2reg = 0;
        input3reg = 0;
        input4reg = 1;
        widthEnA = 0;
        widthEnB = 1666666;
        end
        if(counter2 > 540 && counter2 <= 600)
        begin
        input1reg = 0;
        input2reg = 1;
        input3reg = 1;
        input4reg = 0;
        widthEnA = 1666666;
        widthEnB = 0;
        end
        if(counter2 > 600)
        begin
        input1reg = 0;
        input2reg = 0;
        input3reg = 0;
        input4reg = 0;
        widthEnA = 0;
        widthEnB = 0;
        end
        end
        default:
        begin
        input1reg = 0;
        input2reg = 0;
        input3reg = 0;
        input4reg = 0;
        widthEnA = 0;
        widthEnB = 0;
        end
    endcase    
        
    if (counter <= widthEnB)
        tempPWMenB <= 1;
    else
        tempPWMenB <= 0;
    if (counter <= widthEnA)
        tempPWMenA <= 1;
    else
        tempPWMenA <= 0;
end
    
assign {g, f, e, d, c, b, a} = sseg_temp; 
assign dp = 1'b1;
assign anSS = anSS_temp;
assign input1 = input1reg;
assign input2 = input2reg;
assign input4 = input4reg;
assign input3 = input3reg;
assign PWMenB = tempPWMenB;
assign PWMenA = tempPWMenA;

endmodule
