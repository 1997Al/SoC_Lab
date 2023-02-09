-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Feb  9 10:48:10 2023
-- Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Master/SoC_Lab/Xilinx/SoC_Lab/SoC_Lab.gen/sources_1/bd/design_1/ip/design_1_ready_checker_0_0/design_1_ready_checker_0_0_stub.vhdl
-- Design      : design_1_ready_checker_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ready_checker_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_rst : in STD_LOGIC;
    o_rdy : out STD_LOGIC
  );

end design_1_ready_checker_0_0;

architecture stub of design_1_ready_checker_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_IN[15:0],i_rst,o_rdy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ready_checker,Vivado 2020.2";
begin
end;
