module pwm(
    input clk,
    input [7:0] duty,
    output pulse
);

//Reg Wire
reg [7:0] counter;

initial begin
    counter = 0;
end

always @(posedge clk) begin
    counter = counter + 1;

    if(counter < duty)
        pulse <= 1;
    else
        pulse <= 0;

end

endmodule