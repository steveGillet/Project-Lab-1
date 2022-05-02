module main(
    input clk,
    input [4:0] sw,
    output [1:0] pwm
);
    pwmVT #(21, 2000000)
    wave1(
        .clk(clk),
        .duty(pwm)
    );