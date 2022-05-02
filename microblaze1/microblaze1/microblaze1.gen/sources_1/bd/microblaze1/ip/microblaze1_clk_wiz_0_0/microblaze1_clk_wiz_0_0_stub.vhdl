-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Wed Oct 27 16:27:13 2021
-- Host        : LAPTOP-1ENOPNGD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/steph/OneDrive/Desktop/School/ProjectLab1/microblaze1/microblaze1/microblaze1.gen/sources_1/bd/microblaze1/ip/microblaze1_clk_wiz_0_0/microblaze1_clk_wiz_0_0_stub.vhdl
-- Design      : microblaze1_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze1_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end microblaze1_clk_wiz_0_0;

architecture stub of microblaze1_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
