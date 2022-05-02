//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Wed Oct 27 18:30:28 2021
//Host        : LAPTOP-1ENOPNGD running 64-bit major release  (build 9200)
//Command     : generate_target microblaze1_wrapper.bd
//Design      : microblaze1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module microblaze1_wrapper
   (btn_tri_io,
    ja_pin10_io,
    ja_pin1_io,
    ja_pin2_io,
    ja_pin3_io,
    ja_pin4_io,
    ja_pin7_io,
    ja_pin8_io,
    ja_pin9_io,
    led_16bits_tri_o,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [3:0]btn_tri_io;
  inout ja_pin10_io;
  inout ja_pin1_io;
  inout ja_pin2_io;
  inout ja_pin3_io;
  inout ja_pin4_io;
  inout ja_pin7_io;
  inout ja_pin8_io;
  inout ja_pin9_io;
  output [15:0]led_16bits_tri_o;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]btn_tri_i_0;
  wire [1:1]btn_tri_i_1;
  wire [2:2]btn_tri_i_2;
  wire [3:3]btn_tri_i_3;
  wire [0:0]btn_tri_io_0;
  wire [1:1]btn_tri_io_1;
  wire [2:2]btn_tri_io_2;
  wire [3:3]btn_tri_io_3;
  wire [0:0]btn_tri_o_0;
  wire [1:1]btn_tri_o_1;
  wire [2:2]btn_tri_o_2;
  wire [3:3]btn_tri_o_3;
  wire [0:0]btn_tri_t_0;
  wire [1:1]btn_tri_t_1;
  wire [2:2]btn_tri_t_2;
  wire [3:3]btn_tri_t_3;
  wire ja_pin10_i;
  wire ja_pin10_io;
  wire ja_pin10_o;
  wire ja_pin10_t;
  wire ja_pin1_i;
  wire ja_pin1_io;
  wire ja_pin1_o;
  wire ja_pin1_t;
  wire ja_pin2_i;
  wire ja_pin2_io;
  wire ja_pin2_o;
  wire ja_pin2_t;
  wire ja_pin3_i;
  wire ja_pin3_io;
  wire ja_pin3_o;
  wire ja_pin3_t;
  wire ja_pin4_i;
  wire ja_pin4_io;
  wire ja_pin4_o;
  wire ja_pin4_t;
  wire ja_pin7_i;
  wire ja_pin7_io;
  wire ja_pin7_o;
  wire ja_pin7_t;
  wire ja_pin8_i;
  wire ja_pin8_io;
  wire ja_pin8_o;
  wire ja_pin8_t;
  wire ja_pin9_i;
  wire ja_pin9_io;
  wire ja_pin9_o;
  wire ja_pin9_t;
  wire [15:0]led_16bits_tri_o;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF btn_tri_iobuf_0
       (.I(btn_tri_o_0),
        .IO(btn_tri_io[0]),
        .O(btn_tri_i_0),
        .T(btn_tri_t_0));
  IOBUF btn_tri_iobuf_1
       (.I(btn_tri_o_1),
        .IO(btn_tri_io[1]),
        .O(btn_tri_i_1),
        .T(btn_tri_t_1));
  IOBUF btn_tri_iobuf_2
       (.I(btn_tri_o_2),
        .IO(btn_tri_io[2]),
        .O(btn_tri_i_2),
        .T(btn_tri_t_2));
  IOBUF btn_tri_iobuf_3
       (.I(btn_tri_o_3),
        .IO(btn_tri_io[3]),
        .O(btn_tri_i_3),
        .T(btn_tri_t_3));
  IOBUF ja_pin10_iobuf
       (.I(ja_pin10_o),
        .IO(ja_pin10_io),
        .O(ja_pin10_i),
        .T(ja_pin10_t));
  IOBUF ja_pin1_iobuf
       (.I(ja_pin1_o),
        .IO(ja_pin1_io),
        .O(ja_pin1_i),
        .T(ja_pin1_t));
  IOBUF ja_pin2_iobuf
       (.I(ja_pin2_o),
        .IO(ja_pin2_io),
        .O(ja_pin2_i),
        .T(ja_pin2_t));
  IOBUF ja_pin3_iobuf
       (.I(ja_pin3_o),
        .IO(ja_pin3_io),
        .O(ja_pin3_i),
        .T(ja_pin3_t));
  IOBUF ja_pin4_iobuf
       (.I(ja_pin4_o),
        .IO(ja_pin4_io),
        .O(ja_pin4_i),
        .T(ja_pin4_t));
  IOBUF ja_pin7_iobuf
       (.I(ja_pin7_o),
        .IO(ja_pin7_io),
        .O(ja_pin7_i),
        .T(ja_pin7_t));
  IOBUF ja_pin8_iobuf
       (.I(ja_pin8_o),
        .IO(ja_pin8_io),
        .O(ja_pin8_i),
        .T(ja_pin8_t));
  IOBUF ja_pin9_iobuf
       (.I(ja_pin9_o),
        .IO(ja_pin9_io),
        .O(ja_pin9_i),
        .T(ja_pin9_t));
  microblaze1 microblaze1_i
       (.btn_tri_i({btn_tri_i_3,btn_tri_i_2,btn_tri_i_1,btn_tri_i_0}),
        .btn_tri_o({btn_tri_o_3,btn_tri_o_2,btn_tri_o_1,btn_tri_o_0}),
        .btn_tri_t({btn_tri_t_3,btn_tri_t_2,btn_tri_t_1,btn_tri_t_0}),
        .ja_pin10_i(ja_pin10_i),
        .ja_pin10_o(ja_pin10_o),
        .ja_pin10_t(ja_pin10_t),
        .ja_pin1_i(ja_pin1_i),
        .ja_pin1_o(ja_pin1_o),
        .ja_pin1_t(ja_pin1_t),
        .ja_pin2_i(ja_pin2_i),
        .ja_pin2_o(ja_pin2_o),
        .ja_pin2_t(ja_pin2_t),
        .ja_pin3_i(ja_pin3_i),
        .ja_pin3_o(ja_pin3_o),
        .ja_pin3_t(ja_pin3_t),
        .ja_pin4_i(ja_pin4_i),
        .ja_pin4_o(ja_pin4_o),
        .ja_pin4_t(ja_pin4_t),
        .ja_pin7_i(ja_pin7_i),
        .ja_pin7_o(ja_pin7_o),
        .ja_pin7_t(ja_pin7_t),
        .ja_pin8_i(ja_pin8_i),
        .ja_pin8_o(ja_pin8_o),
        .ja_pin8_t(ja_pin8_t),
        .ja_pin9_i(ja_pin9_i),
        .ja_pin9_o(ja_pin9_o),
        .ja_pin9_t(ja_pin9_t),
        .led_16bits_tri_o(led_16bits_tri_o),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
