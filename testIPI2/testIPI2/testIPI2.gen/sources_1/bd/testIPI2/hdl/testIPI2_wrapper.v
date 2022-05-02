//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Fri Oct 15 11:38:04 2021
//Host        : LAPTOP-1ENOPNGD running 64-bit major release  (build 9200)
//Command     : generate_target testIPI2_wrapper.bd
//Design      : testIPI2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module testIPI2_wrapper
   (led_4bits_tri_o,
    push_buttons_4bits_tri_i,
    reset,
    rgb_led_tri_o,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]led_4bits_tri_o;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  output [11:0]rgb_led_tri_o;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]led_4bits_tri_o;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire [11:0]rgb_led_tri_o;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  testIPI2 testIPI2_i
       (.led_4bits_tri_o(led_4bits_tri_o),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .rgb_led_tri_o(rgb_led_tri_o),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
