// Set the time scale for the simulation
timescale 1ns / 1ps

// Define the module and its inputs/outputs
module projectLab1b(
    input clock,          // Clock signal input
    input switch12,       // Switch input
    input senseA,         // Sensor input A
    input senseB,         // Sensor input B
    input senseFront,     // Sensor input for front
    input senseLeft,      // Sensor input for left
    input senseRight,     // Sensor input for right
    input senseObject,    // Sensor input for object detection
    output a, b, c, d, e, f, g, dp,          // Seven-segment display outputs
    output [3:0] anSS,                      // Multiplexed anode signals for seven-segment display
    output input1, input2, input3, input4, // Vehicle control inputs
    output PWMenB, PWMenA                  // PWM enable signals
);

    // Define internal parameters and registers
    localparam N = 16;
    reg [N:0] countSS;          // Register for seven-segment display count
    reg [20:0] counter;         // Register for period
    reg [6:0] counterTurn;      // Register for turning count
//  reg [26:0] counterOverCurrent;  // Register for over current protection (not used in this code)
    reg [20:0] widthEnB;        // Register for PWM width for motor B
    reg [20:0] widthEnA;        // Register for PWM width for motor A
    reg [20:0] tempWidthEnB;    // Temporary register for PWM width for motor B
    reg [20:0] tempWidthEnA;    // Temporary register for PWM width for motor A
    reg [20:0] tempWidthReverse;// Temporary register for reversing the PWM width
    reg tempPWMenB;             // Temporary register for PWM enable signal for motor B
    reg tempPWMenA;             // Temporary register for PWM enable signal for motor A
    reg [1:0] sseg;             // Register for seven-segment display value
    reg [3:0] anSS_temp;        // Temporary register for multiplexed anode signals
    reg [6:0] sseg_temp;        // Register for binary value of each input
    reg input1reg;              // Register for vehicle control input 1
    reg input2reg;              // Register for vehicle control input 2
    reg input3reg;              // Register for vehicle control input 3
    reg input4reg;              // Register for vehicle control input 4
    reg [1:0] stateTurn;        // Register for turning state

    parameter forward = 0,      // Parameter for forward direction
              backward = 1,     // Parameter for backward direction
              backwardFull = 2; // Parameter for full backward direction

    // Instantiate the seven-segment display module
    sevenSeg mainSS(
        .clock(clock),
        .senseA(senseA),
        .senseB(senseB),
        .a (a),
        .b (b),
        .c (c),
        .d (d),
        .e (e),
        .f (f),
        .g (g),
        .dp (dp),
        .input1(input1),
        .input2(input2),
        .input3(input3),
        .input4
        (input4),
        .anSS (anSS)
    );

    // Always block for clocked logic
    always@(posedge clock) begin
        // Increment counter
        if (counter == 1666666)
            counter <= 0;    
        else
            counter <= counter + 1;

        // Increment turn counter
        if (counterTurn == 10)
            counterTurn <= 0;    
        else
            counterTurn <= counterTurn + 1;

        // Handle switch12 input
        case (switch12)
            // Switch12 input is high
            1'b1: 
                begin
                    // If front sensor is high and left/right sensors are low
                    if(senseFront == 1 && senseLeft == 0 && senseRight == 0)
                    begin
                        // Set temporary PWM widths and input values for forward movement
                        tempWidthEnA <= 1666666;
                        tempWidthEnB <= 1666666;
                        input1reg <= 1;
                        input2reg <= 0;
                        input3reg <= 0;
                        input4reg <= 1;
                        widthEnA <= tempWidthEnA;
                        widthEnB <= tempWidthEnB;
                        tempWidthReverse = 0;
                        stateTurn = forward;
                    end 

                    // If left and front sensors are high and right sensor is low
                    if(senseLeft == 1 && senseFront == 1 && senseRight == 0)
                    begin
                        // Handle turning logic based on current state
                        case(stateTurn)
                            forward:
                                begin
                                    // Decrement temporary PWM width for motor A
                                    if (tempWidthEnA > 0)
                                    begin
                                        if(counterTurn == 0)
                                            tempWidthEnA <= tempWidthEnA - 1;
                                        widthEnA <= tempWidthEnA;
                                    end
                                    else
                                        stateTurn = backward;
                                end
                            backward:   
                                begin  
                                    // Set input values for left turn
                                    input1reg <= 0;
                                    input2reg <= 1;
                                    // Increment temporary PWM width for motor A
                                    if (tempWidthReverse < 1666666)
                                    begin
                                        if (counterTurn == 0)
                                        begin
                                            tempWidthReverse <= tempWidthReverse + 1;
                                            widthEnA <= tempWidthReverse;
                                        end
                                        stateTurn = backward;                   
                                    end
                                    else
                                        stateTurn = backwardFull;
                                end  
                            backwardFull:
                                begin
                                    // Set input values for full left turn
                                    input1reg <= 0;
                                    input2reg <= 1;
                                    widthEnA <= 1666666;
                                end 
                        endcase
                    end 

                    // If right and front sensors are high and left sensor is low
                    if(senseRight == 1 && senseFront == 1 && senseLeft == 0)
                    begin
                        // Handle turning logic based on current state
                        case(stateTurn)
                            forward:
                                begin
                                    // Decrement temporary PWM width for motor B
                                    if (tempWidthEnB > 0)
                                    begin
                                        if(counterTurn == 0)
                                            tempWidthEnB <= tempWidthEnB - 1;
                                        widthEnB <= tempWidthEnB;
                                    end
                                    else
                                        stateTurn = backward;
                                end
                            backward:   
                                begin  
                                    // Set input values for right turn
                                    input4reg <= 0;
                                    input3reg <= 1;
                                    // Increment temporary PWM width for motor B
                                    if (tempWidthReverse < 1666666)
                                   
                                        begin
                                            tempWidthReverse <= tempWidthReverse + 1;
                                            widthEnB <= tempWidthReverse;
                                        end
                                        stateTurn = backward;                   
                                    end
                                    else
                                        stateTurn = backwardFull;
                                end  
                            backwardFull:
                                begin
                                    // Set input values for full right turn
                                    input4reg <= 0;
                                    input3reg <= 1;
                                    widthEnB <= 1666666;
                                end  
                        endcase
                    end 

                    // If left sensor is high and front/right sensors are low
                    if(senseLeft == 1 && senseFront == 0 && senseRight == 0)
                    begin
                        // Set temporary PWM widths and input values for left turn
                        tempWidthEnA <= 1666666;
                        tempWidthEnB <= 1666666;
                        input1reg <= 0;
                        input2reg <= 1;
                        input3reg <= 0;
                        input4reg <= 1;
                        widthEnA <= tempWidthEnA;
                        widthEnB <= tempWidthEnB;
                        tempWidthReverse = 0;
                        stateTurn = forward;
                    end

                    // If right sensor is high and front/left sensors are low
                    if(senseRight == 1 && senseFront == 0 && senseLeft == 0)
                    begin
                        // Set temporary PWM widths and input values for right turn
                        tempWidthEnA <= 1666666;
                        tempWidthEnB <= 1666666;
                        input1reg <= 1;
                        input2reg <= 0;
                        input3reg <= 1;
                        input4reg <= 0;
                        widthEnA <= tempWidthEnA;
                        widthEnB <= tempWidthEnB;
                        tempWidthReverse = 0;
                        stateTurn = forward;
                    end 
                end
            // Switch12 input is low
            default:
                begin
                    // Set all temporary values to zero
                    tempWidthEnA <= 0;
                    tempWidthEnB <= 0;
                    input1reg <= 0;
                    input2reg <= 0;
                    input3reg <= 0;
                    input4reg <= 0;
                    widthEnA <= tempWidthEnA;
                    widthEnB <= tempWidthEnB; 
                end
        endcase

        // Determine PWM enable signals
        if (counter <= widthEnB)
            tempPWMenB <= 1;
        else
            tempPWMenB <= 0;
        if (counter <= widthEnA)
            tempPWMenA <= 1;
        else
            tempPWMenA <= 0;
    end
    
    // Assign outputs
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
