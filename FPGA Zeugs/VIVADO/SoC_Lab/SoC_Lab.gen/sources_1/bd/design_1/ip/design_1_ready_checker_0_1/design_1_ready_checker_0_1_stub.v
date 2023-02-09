// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb  9 10:48:10 2023
// Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Master/SoC_Lab/Xilinx/SoC_Lab/SoC_Lab.gen/sources_1/bd/design_1/ip/design_1_ready_checker_0_1/design_1_ready_checker_0_1_stub.v
// Design      : design_1_ready_checker_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ready_checker,Vivado 2020.2" *)
module design_1_ready_checker_0_1(i_clk, i_IN, i_rst, o_rdy)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_IN[15:0],i_rst,o_rdy" */;
  input i_clk;
  input [15:0]i_IN;
  input i_rst;
  output o_rdy;
endmodule
