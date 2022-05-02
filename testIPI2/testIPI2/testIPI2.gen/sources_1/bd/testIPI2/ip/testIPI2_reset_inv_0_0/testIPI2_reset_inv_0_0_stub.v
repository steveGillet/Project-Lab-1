// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Fri Oct 15 11:40:55 2021
// Host        : LAPTOP-1ENOPNGD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/steph/OneDrive/Desktop/School/ProjectLab1/testIPI2/testIPI2/testIPI2.gen/sources_1/bd/testIPI2/ip/testIPI2_reset_inv_0_0/testIPI2_reset_inv_0_0_stub.v
// Design      : testIPI2_reset_inv_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2.2" *)
module testIPI2_reset_inv_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
